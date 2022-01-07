; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_usb.c_prepare_read_regs_int.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_usb.c_prepare_read_regs_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_usb = type { %struct.zd_usb_interrupt }
%struct.zd_usb_interrupt = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, %struct.usb_req_read_regs* }
%struct.usb_req_read_regs = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zd_usb*, %struct.usb_req_read_regs*, i32)* @prepare_read_regs_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_read_regs_int(%struct.zd_usb* %0, %struct.usb_req_read_regs* %1, i32 %2) #0 {
  %4 = alloca %struct.zd_usb*, align 8
  %5 = alloca %struct.usb_req_read_regs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.zd_usb_interrupt*, align 8
  store %struct.zd_usb* %0, %struct.zd_usb** %4, align 8
  store %struct.usb_req_read_regs* %1, %struct.usb_req_read_regs** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.zd_usb*, %struct.zd_usb** %4, align 8
  %9 = getelementptr inbounds %struct.zd_usb, %struct.zd_usb* %8, i32 0, i32 0
  store %struct.zd_usb_interrupt* %9, %struct.zd_usb_interrupt** %7, align 8
  %10 = load %struct.zd_usb_interrupt*, %struct.zd_usb_interrupt** %7, align 8
  %11 = getelementptr inbounds %struct.zd_usb_interrupt, %struct.zd_usb_interrupt* %10, i32 0, i32 0
  %12 = call i32 @spin_lock_irq(i32* %11)
  %13 = load %struct.zd_usb_interrupt*, %struct.zd_usb_interrupt** %7, align 8
  %14 = getelementptr inbounds %struct.zd_usb_interrupt, %struct.zd_usb_interrupt* %13, i32 0, i32 2
  %15 = call i32 @atomic_set(i32* %14, i32 1)
  %16 = load %struct.usb_req_read_regs*, %struct.usb_req_read_regs** %5, align 8
  %17 = load %struct.zd_usb_interrupt*, %struct.zd_usb_interrupt** %7, align 8
  %18 = getelementptr inbounds %struct.zd_usb_interrupt, %struct.zd_usb_interrupt* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  store %struct.usb_req_read_regs* %16, %struct.usb_req_read_regs** %19, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.zd_usb_interrupt*, %struct.zd_usb_interrupt** %7, align 8
  %22 = getelementptr inbounds %struct.zd_usb_interrupt, %struct.zd_usb_interrupt* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 8
  %24 = load %struct.zd_usb_interrupt*, %struct.zd_usb_interrupt** %7, align 8
  %25 = getelementptr inbounds %struct.zd_usb_interrupt, %struct.zd_usb_interrupt* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @INIT_COMPLETION(i32 %27)
  %29 = load %struct.zd_usb_interrupt*, %struct.zd_usb_interrupt** %7, align 8
  %30 = getelementptr inbounds %struct.zd_usb_interrupt, %struct.zd_usb_interrupt* %29, i32 0, i32 0
  %31 = call i32 @spin_unlock_irq(i32* %30)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @INIT_COMPLETION(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
