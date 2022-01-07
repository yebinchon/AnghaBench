; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_ene_ir.c_ene_rx_read_hw_pointer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_ene_ir.c_ene_rx_read_hw_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ene_device = type { i32, i32, i64 }

@ENE_FW_RX_POINTER = common dso_local global i32 0, align 4
@ENE_FW2 = common dso_local global i32 0, align 4
@ENE_FW2_BUF_WPTR = common dso_local global i32 0, align 4
@ENE_FW_PACKET_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"RB: HW write pointer: %02x, driver read pointer: %02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ene_device*)* @ene_rx_read_hw_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ene_rx_read_hw_pointer(%struct.ene_device* %0) #0 {
  %2 = alloca %struct.ene_device*, align 8
  store %struct.ene_device* %0, %struct.ene_device** %2, align 8
  %3 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %4 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %9 = load i32, i32* @ENE_FW_RX_POINTER, align 4
  %10 = call i32 @ene_read_reg(%struct.ene_device* %8, i32 %9)
  %11 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %12 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  br label %27

13:                                               ; preds = %1
  %14 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %15 = load i32, i32* @ENE_FW2, align 4
  %16 = call i32 @ene_read_reg(%struct.ene_device* %14, i32 %15)
  %17 = load i32, i32* @ENE_FW2_BUF_WPTR, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %23

21:                                               ; preds = %13
  %22 = load i32, i32* @ENE_FW_PACKET_SIZE, align 4
  br label %23

23:                                               ; preds = %21, %20
  %24 = phi i32 [ 0, %20 ], [ %22, %21 ]
  %25 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %26 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  br label %27

27:                                               ; preds = %23, %7
  %28 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %29 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %32 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dbg_verbose(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %33)
  ret void
}

declare dso_local i32 @ene_read_reg(%struct.ene_device*, i32) #1

declare dso_local i32 @dbg_verbose(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
