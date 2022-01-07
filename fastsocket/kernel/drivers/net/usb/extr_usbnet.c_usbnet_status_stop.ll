; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_usbnet.c_usbnet_status_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_usbnet.c_usbnet_status_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i64, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"decremented interrupt URB count to %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usbnet_status_stop(%struct.usbnet* %0) #0 {
  %2 = alloca %struct.usbnet*, align 8
  store %struct.usbnet* %0, %struct.usbnet** %2, align 8
  %3 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %4 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %3, i32 0, i32 3
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %44

7:                                                ; preds = %1
  %8 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %9 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %8, i32 0, i32 1
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %12 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @WARN_ON(i32 %15)
  %17 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %18 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %7
  %22 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %23 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, -1
  store i64 %25, i64* %23, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %29 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @usb_kill_urb(i64 %30)
  br label %32

32:                                               ; preds = %27, %21, %7
  %33 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %34 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %38 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @dev_dbg(i32* %36, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %39)
  %41 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %42 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %41, i32 0, i32 1
  %43 = call i32 @mutex_unlock(i32* %42)
  br label %44

44:                                               ; preds = %32, %1
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @usb_kill_urb(i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
