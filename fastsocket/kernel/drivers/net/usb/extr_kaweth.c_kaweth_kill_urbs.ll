; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_kaweth.c_kaweth_kill_urbs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_kaweth.c_kaweth_kill_urbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kaweth_device = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kaweth_device*)* @kaweth_kill_urbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kaweth_kill_urbs(%struct.kaweth_device* %0) #0 {
  %2 = alloca %struct.kaweth_device*, align 8
  store %struct.kaweth_device* %0, %struct.kaweth_device** %2, align 8
  %3 = load %struct.kaweth_device*, %struct.kaweth_device** %2, align 8
  %4 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @usb_kill_urb(i32 %5)
  %7 = load %struct.kaweth_device*, %struct.kaweth_device** %2, align 8
  %8 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @usb_kill_urb(i32 %9)
  %11 = load %struct.kaweth_device*, %struct.kaweth_device** %2, align 8
  %12 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @usb_kill_urb(i32 %13)
  %15 = load %struct.kaweth_device*, %struct.kaweth_device** %2, align 8
  %16 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %15, i32 0, i32 2
  %17 = call i32 @cancel_delayed_work_sync(i32* %16)
  %18 = load %struct.kaweth_device*, %struct.kaweth_device** %2, align 8
  %19 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @usb_kill_urb(i32 %20)
  %22 = load %struct.kaweth_device*, %struct.kaweth_device** %2, align 8
  %23 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @usb_kill_urb(i32 %24)
  ret void
}

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
