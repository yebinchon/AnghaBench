; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_usb.c_zd_usb_iowrite16v_async_end.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_usb.c_zd_usb_iowrite16v_async_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_usb = type { i32, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"error in zd_submit_waiting_usb(). Error number %d\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"timed out\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zd_usb_iowrite16v_async_end(%struct.zd_usb* %0, i32 %1) #0 {
  %3 = alloca %struct.zd_usb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.zd_usb* %0, %struct.zd_usb** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.zd_usb*, %struct.zd_usb** %3, align 8
  %7 = call %struct.TYPE_2__* @zd_usb_to_chip(%struct.zd_usb* %6)
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = call i64 @mutex_is_locked(i32* %8)
  %10 = call i32 @ZD_ASSERT(i64 %9)
  %11 = load %struct.zd_usb*, %struct.zd_usb** %3, align 8
  %12 = getelementptr inbounds %struct.zd_usb, %struct.zd_usb* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @ZD_ASSERT(i64 %13)
  %15 = load %struct.zd_usb*, %struct.zd_usb** %3, align 8
  %16 = call i32 @zd_submit_waiting_urb(%struct.zd_usb* %15, i32 1)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load %struct.zd_usb*, %struct.zd_usb** %3, align 8
  %21 = call i32 @zd_usb_dev(%struct.zd_usb* %20)
  %22 = load i32, i32* %5, align 4
  %23 = call i32 (i32, i8*, ...) @dev_dbg_f(i32 %21, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.zd_usb*, %struct.zd_usb** %3, align 8
  %25 = getelementptr inbounds %struct.zd_usb, %struct.zd_usb* %24, i32 0, i32 2
  %26 = call i32 @usb_kill_anchored_urbs(i32* %25)
  br label %59

27:                                               ; preds = %2
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load %struct.zd_usb*, %struct.zd_usb** %3, align 8
  %32 = getelementptr inbounds %struct.zd_usb, %struct.zd_usb* %31, i32 0, i32 2
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @usb_wait_anchor_empty_timeout(i32* %32, i32 %33)
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %30, %27
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %55, label %38

38:                                               ; preds = %35
  %39 = load %struct.zd_usb*, %struct.zd_usb** %3, align 8
  %40 = getelementptr inbounds %struct.zd_usb, %struct.zd_usb* %39, i32 0, i32 2
  %41 = call i32 @usb_kill_anchored_urbs(i32* %40)
  %42 = load %struct.zd_usb*, %struct.zd_usb** %3, align 8
  %43 = getelementptr inbounds %struct.zd_usb, %struct.zd_usb* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @ENOENT, align 4
  %46 = sub nsw i32 0, %45
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %38
  %49 = load %struct.zd_usb*, %struct.zd_usb** %3, align 8
  %50 = call i32 @zd_usb_dev(%struct.zd_usb* %49)
  %51 = call i32 (i32, i8*, ...) @dev_dbg_f(i32 %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* @ETIMEDOUT, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  br label %59

54:                                               ; preds = %38
  br label %55

55:                                               ; preds = %54, %35
  %56 = load %struct.zd_usb*, %struct.zd_usb** %3, align 8
  %57 = getelementptr inbounds %struct.zd_usb, %struct.zd_usb* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %55, %48, %19
  %60 = load %struct.zd_usb*, %struct.zd_usb** %3, align 8
  %61 = getelementptr inbounds %struct.zd_usb, %struct.zd_usb* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @ZD_ASSERT(i64) #1

declare dso_local i64 @mutex_is_locked(i32*) #1

declare dso_local %struct.TYPE_2__* @zd_usb_to_chip(%struct.zd_usb*) #1

declare dso_local i32 @zd_submit_waiting_urb(%struct.zd_usb*, i32) #1

declare dso_local i32 @dev_dbg_f(i32, i8*, ...) #1

declare dso_local i32 @zd_usb_dev(%struct.zd_usb*) #1

declare dso_local i32 @usb_kill_anchored_urbs(i32*) #1

declare dso_local i32 @usb_wait_anchor_empty_timeout(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
