; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_asix.c_asix_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_asix.c_asix_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32 }
%struct.urb = type { i32, %struct.ax88172_int_data* }
%struct.ax88172_int_data = type { i32 }

@EVENT_LINK_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Link Status is: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbnet*, %struct.urb*)* @asix_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asix_status(%struct.usbnet* %0, %struct.urb* %1) #0 {
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca %struct.urb*, align 8
  %5 = alloca %struct.ax88172_int_data*, align 8
  %6 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %3, align 8
  store %struct.urb* %1, %struct.urb** %4, align 8
  %7 = load %struct.urb*, %struct.urb** %4, align 8
  %8 = getelementptr inbounds %struct.urb, %struct.urb* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %9, 8
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %46

12:                                               ; preds = %2
  %13 = load %struct.urb*, %struct.urb** %4, align 8
  %14 = getelementptr inbounds %struct.urb, %struct.urb* %13, i32 0, i32 1
  %15 = load %struct.ax88172_int_data*, %struct.ax88172_int_data** %14, align 8
  store %struct.ax88172_int_data* %15, %struct.ax88172_int_data** %5, align 8
  %16 = load %struct.ax88172_int_data*, %struct.ax88172_int_data** %5, align 8
  %17 = getelementptr inbounds %struct.ax88172_int_data, %struct.ax88172_int_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 1
  store i32 %19, i32* %6, align 4
  %20 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %21 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @netif_carrier_ok(i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %46

26:                                               ; preds = %12
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %26
  %30 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %31 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @netif_carrier_on(i32 %32)
  %34 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %35 = load i32, i32* @EVENT_LINK_RESET, align 4
  %36 = call i32 @usbnet_defer_kevent(%struct.usbnet* %34, i32 %35)
  br label %42

37:                                               ; preds = %26
  %38 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %39 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @netif_carrier_off(i32 %40)
  br label %42

42:                                               ; preds = %37, %29
  %43 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @devdbg(%struct.usbnet* %43, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %11, %42, %12
  ret void
}

declare dso_local i32 @netif_carrier_ok(i32) #1

declare dso_local i32 @netif_carrier_on(i32) #1

declare dso_local i32 @usbnet_defer_kevent(%struct.usbnet*, i32) #1

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i32 @devdbg(%struct.usbnet*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
