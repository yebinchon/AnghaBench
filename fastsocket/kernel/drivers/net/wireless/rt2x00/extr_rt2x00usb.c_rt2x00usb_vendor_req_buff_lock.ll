; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00usb.c_rt2x00usb_vendor_req_buff_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00usb.c_rt2x00usb_vendor_req_buff_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8* }

@CSR_CACHE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"CSR cache not available\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@USB_VENDOR_REQUEST_OUT = common dso_local global i64 0, align 8
@USB_VENDOR_REQUEST_IN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt2x00usb_vendor_req_buff_lock(%struct.rt2x00_dev* %0, i64 %1, i64 %2, i64 %3, i8* %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.rt2x00_dev*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i8* %4, i8** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  %17 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %9, align 8
  %18 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %17, i32 0, i32 1
  %19 = call i32 @mutex_is_locked(i32* %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %9, align 8
  %25 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %7
  %30 = load i64, i64* %14, align 8
  %31 = load i64, i64* @CSR_CACHE_SIZE, align 8
  %32 = icmp sgt i64 %30, %31
  br label %33

33:                                               ; preds = %29, %7
  %34 = phi i1 [ true, %7 ], [ %32, %29 ]
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %9, align 8
  %40 = call i32 @rt2x00_err(%struct.rt2x00_dev* %39, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %8, align 4
  br label %83

43:                                               ; preds = %33
  %44 = load i64, i64* %11, align 8
  %45 = load i64, i64* @USB_VENDOR_REQUEST_OUT, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  %48 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %9, align 8
  %49 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load i8*, i8** %13, align 8
  %53 = load i64, i64* %14, align 8
  %54 = call i32 @memcpy(i8* %51, i8* %52, i64 %53)
  br label %55

55:                                               ; preds = %47, %43
  %56 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %9, align 8
  %57 = load i64, i64* %10, align 8
  %58 = load i64, i64* %11, align 8
  %59 = load i64, i64* %12, align 8
  %60 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %9, align 8
  %61 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load i64, i64* %14, align 8
  %65 = load i32, i32* %15, align 4
  %66 = call i32 @rt2x00usb_vendor_request(%struct.rt2x00_dev* %56, i64 %57, i64 %58, i64 %59, i32 0, i8* %63, i64 %64, i32 %65)
  store i32 %66, i32* %16, align 4
  %67 = load i32, i32* %16, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %81, label %69

69:                                               ; preds = %55
  %70 = load i64, i64* %11, align 8
  %71 = load i64, i64* @USB_VENDOR_REQUEST_IN, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %69
  %74 = load i8*, i8** %13, align 8
  %75 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %9, align 8
  %76 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = load i64, i64* %14, align 8
  %80 = call i32 @memcpy(i8* %74, i8* %78, i64 %79)
  br label %81

81:                                               ; preds = %73, %69, %55
  %82 = load i32, i32* %16, align 4
  store i32 %82, i32* %8, align 4
  br label %83

83:                                               ; preds = %81, %38
  %84 = load i32, i32* %8, align 4
  ret i32 %84
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rt2x00_err(%struct.rt2x00_dev*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @rt2x00usb_vendor_request(%struct.rt2x00_dev*, i64, i64, i64, i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
