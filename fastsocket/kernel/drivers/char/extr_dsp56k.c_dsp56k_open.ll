; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_dsp56k.c_dsp56k_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_dsp56k.c_dsp56k_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.inode = type { i32 }
%struct.file = type { i32 }

@dsp56k = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@EBUSY = common dso_local global i32 0, align 4
@TIMEOUT = common dso_local global i32 0, align 4
@MAXIO = common dso_local global i32 0, align 4
@DSP56K_TX_INT_OFF = common dso_local global i32 0, align 4
@DSP56K_RX_INT_OFF = common dso_local global i32 0, align 4
@DSP56K_ICR_HF0 = common dso_local global i32 0, align 4
@dsp56k_host_interface = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@DSP56K_ICR_HF1 = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @dsp56k_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsp56k_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = load %struct.inode*, %struct.inode** %3, align 8
  %8 = call i32 @iminor(%struct.inode* %7)
  %9 = and i32 %8, 15
  store i32 %9, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = call i32 (...) @lock_kernel()
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %31 [
    i32 128, label %12
  ]

12:                                               ; preds = %2
  %13 = call i32 @test_and_set_bit(i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dsp56k, i32 0, i32 4))
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32, i32* @EBUSY, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %6, align 4
  br label %35

18:                                               ; preds = %12
  %19 = load i32, i32* @TIMEOUT, align 4
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dsp56k, i32 0, i32 3), align 4
  %20 = load i32, i32* @MAXIO, align 4
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dsp56k, i32 0, i32 2), align 4
  store i32 4, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dsp56k, i32 0, i32 1), align 4
  store i32 4, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dsp56k, i32 0, i32 0), align 4
  %21 = load i32, i32* @DSP56K_TX_INT_OFF, align 4
  %22 = load i32, i32* @DSP56K_RX_INT_OFF, align 4
  %23 = load i32, i32* @DSP56K_ICR_HF0, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dsp56k_host_interface, i32 0, i32 0), align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dsp56k_host_interface, i32 0, i32 0), align 4
  %27 = load i32, i32* @DSP56K_ICR_HF1, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dsp56k_host_interface, i32 0, i32 0), align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dsp56k_host_interface, i32 0, i32 0), align 4
  br label %34

31:                                               ; preds = %2
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %31, %18
  br label %35

35:                                               ; preds = %34, %15
  %36 = call i32 (...) @unlock_kernel()
  %37 = load i32, i32* %6, align 4
  ret i32 %37
}

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
