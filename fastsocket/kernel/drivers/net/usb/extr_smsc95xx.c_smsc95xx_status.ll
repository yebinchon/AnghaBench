; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_smsc95xx.c_smsc95xx_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_smsc95xx.c_smsc95xx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32 }
%struct.urb = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"unexpected urb length %d\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"intdata: 0x%08X\00", align 1
@INT_ENP_PHY_INT_ = common dso_local global i32 0, align 4
@EVENT_LINK_RESET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"unexpected interrupt, intdata=0x%08X\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbnet*, %struct.urb*)* @smsc95xx_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smsc95xx_status(%struct.usbnet* %0, %struct.urb* %1) #0 {
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca %struct.urb*, align 8
  %5 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %3, align 8
  store %struct.urb* %1, %struct.urb** %4, align 8
  %6 = load %struct.urb*, %struct.urb** %4, align 8
  %7 = getelementptr inbounds %struct.urb, %struct.urb* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 4
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %12 = load %struct.urb*, %struct.urb** %4, align 8
  %13 = getelementptr inbounds %struct.urb, %struct.urb* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @devwarn(%struct.usbnet* %11, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %42

16:                                               ; preds = %2
  %17 = load %struct.urb*, %struct.urb** %4, align 8
  %18 = getelementptr inbounds %struct.urb, %struct.urb* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @memcpy(i32* %5, i32 %19, i32 4)
  %21 = call i32 @le32_to_cpus(i32* %5)
  %22 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %23 = call i64 @netif_msg_link(%struct.usbnet* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %16
  %26 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @devdbg(%struct.usbnet* %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %25, %16
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @INT_ENP_PHY_INT_, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %36 = load i32, i32* @EVENT_LINK_RESET, align 4
  %37 = call i32 @usbnet_defer_kevent(%struct.usbnet* %35, i32 %36)
  br label %42

38:                                               ; preds = %29
  %39 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @devwarn(%struct.usbnet* %39, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %10, %38, %34
  ret void
}

declare dso_local i32 @devwarn(%struct.usbnet*, i8*, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @le32_to_cpus(i32*) #1

declare dso_local i64 @netif_msg_link(%struct.usbnet*) #1

declare dso_local i32 @devdbg(%struct.usbnet*, i8*, i32) #1

declare dso_local i32 @usbnet_defer_kevent(%struct.usbnet*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
