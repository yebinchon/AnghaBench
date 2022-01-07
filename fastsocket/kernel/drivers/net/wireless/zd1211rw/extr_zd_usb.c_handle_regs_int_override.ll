; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_usb.c_handle_regs_int_override.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_usb.c_handle_regs_int_override.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { %struct.zd_usb* }
%struct.zd_usb = type { %struct.zd_usb_interrupt }
%struct.zd_usb_interrupt = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @handle_regs_int_override to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_regs_int_override(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.zd_usb*, align 8
  %4 = alloca %struct.zd_usb_interrupt*, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %5 = load %struct.urb*, %struct.urb** %2, align 8
  %6 = getelementptr inbounds %struct.urb, %struct.urb* %5, i32 0, i32 0
  %7 = load %struct.zd_usb*, %struct.zd_usb** %6, align 8
  store %struct.zd_usb* %7, %struct.zd_usb** %3, align 8
  %8 = load %struct.zd_usb*, %struct.zd_usb** %3, align 8
  %9 = getelementptr inbounds %struct.zd_usb, %struct.zd_usb* %8, i32 0, i32 0
  store %struct.zd_usb_interrupt* %9, %struct.zd_usb_interrupt** %4, align 8
  %10 = load %struct.zd_usb_interrupt*, %struct.zd_usb_interrupt** %4, align 8
  %11 = getelementptr inbounds %struct.zd_usb_interrupt, %struct.zd_usb_interrupt* %10, i32 0, i32 1
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.zd_usb_interrupt*, %struct.zd_usb_interrupt** %4, align 8
  %14 = getelementptr inbounds %struct.zd_usb_interrupt, %struct.zd_usb_interrupt* %13, i32 0, i32 3
  %15 = call i64 @atomic_read(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %1
  %18 = load %struct.zd_usb_interrupt*, %struct.zd_usb_interrupt** %4, align 8
  %19 = getelementptr inbounds %struct.zd_usb_interrupt, %struct.zd_usb_interrupt* %18, i32 0, i32 3
  %20 = call i32 @atomic_set(i32* %19, i32 0)
  %21 = load %struct.zd_usb_interrupt*, %struct.zd_usb_interrupt** %4, align 8
  %22 = getelementptr inbounds %struct.zd_usb_interrupt, %struct.zd_usb_interrupt* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  %23 = load %struct.zd_usb_interrupt*, %struct.zd_usb_interrupt** %4, align 8
  %24 = getelementptr inbounds %struct.zd_usb_interrupt, %struct.zd_usb_interrupt* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @complete(i32* %25)
  br label %27

27:                                               ; preds = %17, %1
  %28 = load %struct.zd_usb_interrupt*, %struct.zd_usb_interrupt** %4, align 8
  %29 = getelementptr inbounds %struct.zd_usb_interrupt, %struct.zd_usb_interrupt* %28, i32 0, i32 1
  %30 = call i32 @spin_unlock(i32* %29)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
