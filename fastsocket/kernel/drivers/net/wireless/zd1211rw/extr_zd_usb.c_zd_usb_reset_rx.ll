; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_usb.c_zd_usb_reset_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_usb.c_zd_usb_reset_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_usb = type { %struct.zd_usb_rx }
%struct.zd_usb_rx = type { i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zd_usb*)* @zd_usb_reset_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zd_usb_reset_rx(%struct.zd_usb* %0) #0 {
  %2 = alloca %struct.zd_usb*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.zd_usb_rx*, align 8
  %5 = alloca i64, align 8
  store %struct.zd_usb* %0, %struct.zd_usb** %2, align 8
  %6 = load %struct.zd_usb*, %struct.zd_usb** %2, align 8
  %7 = getelementptr inbounds %struct.zd_usb, %struct.zd_usb* %6, i32 0, i32 0
  store %struct.zd_usb_rx* %7, %struct.zd_usb_rx** %4, align 8
  %8 = load %struct.zd_usb_rx*, %struct.zd_usb_rx** %4, align 8
  %9 = getelementptr inbounds %struct.zd_usb_rx, %struct.zd_usb_rx* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.zd_usb_rx*, %struct.zd_usb_rx** %4, align 8
  %12 = getelementptr inbounds %struct.zd_usb_rx, %struct.zd_usb_rx* %11, i32 0, i32 1
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.zd_usb_rx*, %struct.zd_usb_rx** %4, align 8
  %16 = getelementptr inbounds %struct.zd_usb_rx, %struct.zd_usb_rx* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %3, align 4
  %20 = load %struct.zd_usb_rx*, %struct.zd_usb_rx** %4, align 8
  %21 = getelementptr inbounds %struct.zd_usb_rx, %struct.zd_usb_rx* %20, i32 0, i32 1
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32* %21, i64 %22)
  %24 = load i32, i32* %3, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %1
  %27 = load %struct.zd_usb*, %struct.zd_usb** %2, align 8
  %28 = call i32 @__zd_usb_disable_rx(%struct.zd_usb* %27)
  %29 = load %struct.zd_usb*, %struct.zd_usb** %2, align 8
  %30 = call i32 @__zd_usb_enable_rx(%struct.zd_usb* %29)
  br label %31

31:                                               ; preds = %26, %1
  %32 = load %struct.zd_usb_rx*, %struct.zd_usb_rx** %4, align 8
  %33 = getelementptr inbounds %struct.zd_usb_rx, %struct.zd_usb_rx* %32, i32 0, i32 0
  %34 = call i32 @mutex_unlock(i32* %33)
  %35 = load i32, i32* %3, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load %struct.zd_usb*, %struct.zd_usb** %2, align 8
  %39 = call i32 @zd_usb_reset_rx_idle_timer(%struct.zd_usb* %38)
  br label %40

40:                                               ; preds = %37, %31
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @__zd_usb_disable_rx(%struct.zd_usb*) #1

declare dso_local i32 @__zd_usb_enable_rx(%struct.zd_usb*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @zd_usb_reset_rx_idle_timer(%struct.zd_usb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
