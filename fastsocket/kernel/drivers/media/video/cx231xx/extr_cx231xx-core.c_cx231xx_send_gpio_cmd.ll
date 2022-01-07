; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-core.c_cx231xx_send_gpio_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-core.c_cx231xx_send_gpio_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32 }
%struct.VENDOR_REQUEST_IN = type { i32, i64, i64*, i64, i8*, i32, i8* }

@VRT_GET_GPIO = common dso_local global i32 0, align 4
@VRT_SET_GPIO = common dso_local global i32 0, align 4
@VRT_GET_GPIE = common dso_local global i32 0, align 4
@VRT_SET_GPIE = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"UsbInterface::sendCommand, failed with status -%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx231xx_send_gpio_cmd(%struct.cx231xx* %0, i32 %1, i64* %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.cx231xx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.VENDOR_REQUEST_IN, align 8
  store %struct.cx231xx* %0, %struct.cx231xx** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64* %2, i64** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %15 = load i32, i32* %8, align 4
  %16 = ashr i32 %15, 16
  %17 = and i32 %16, 65535
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to i8*
  %20 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %14, i32 0, i32 6
  store i8* %19, i8** %20, align 8
  %21 = load i64, i64* %11, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %6
  %24 = load i64, i64* %12, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* @VRT_GET_GPIO, align 4
  %28 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %14, i32 0, i32 5
  store i32 %27, i32* %28, align 8
  br label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @VRT_SET_GPIO, align 4
  %31 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %14, i32 0, i32 5
  store i32 %30, i32* %31, align 8
  br label %32

32:                                               ; preds = %29, %26
  br label %43

33:                                               ; preds = %6
  %34 = load i64, i64* %12, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* @VRT_GET_GPIE, align 4
  %38 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %14, i32 0, i32 5
  store i32 %37, i32* %38, align 8
  br label %42

39:                                               ; preds = %33
  %40 = load i32, i32* @VRT_SET_GPIE, align 4
  %41 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %14, i32 0, i32 5
  store i32 %40, i32* %41, align 8
  br label %42

42:                                               ; preds = %39, %36
  br label %43

43:                                               ; preds = %42, %32
  %44 = load i32, i32* %8, align 4
  %45 = and i32 %44, 65535
  %46 = sext i32 %45 to i64
  %47 = inttoptr i64 %46 to i8*
  %48 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %14, i32 0, i32 4
  store i8* %47, i8** %48, align 8
  %49 = load i64, i64* %10, align 8
  %50 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %14, i32 0, i32 1
  store i64 %49, i64* %50, align 8
  %51 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %14, i32 0, i32 3
  store i64 0, i64* %51, align 8
  %52 = load i64*, i64** %9, align 8
  %53 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %14, i32 0, i32 2
  store i64* %52, i64** %53, align 8
  %54 = load i64, i64* %12, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %43
  %57 = load i32, i32* @USB_DIR_IN, align 4
  %58 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %14, i32 0, i32 0
  store i32 %57, i32* %58, align 8
  %59 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %14, i32 0, i32 2
  %60 = load i64*, i64** %59, align 8
  %61 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %14, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @memset(i64* %60, i32 0, i64 %62)
  br label %67

64:                                               ; preds = %43
  %65 = load i32, i32* @USB_DIR_OUT, align 4
  %66 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %14, i32 0, i32 0
  store i32 %65, i32* %66, align 8
  br label %67

67:                                               ; preds = %64, %56
  %68 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %69 = call i32 @cx231xx_send_vendor_cmd(%struct.cx231xx* %68, %struct.VENDOR_REQUEST_IN* %14)
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %13, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i32, i32* %13, align 4
  %74 = call i32 @cx231xx_info(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %72, %67
  %76 = load i32, i32* %13, align 4
  ret i32 %76
}

declare dso_local i32 @memset(i64*, i32, i64) #1

declare dso_local i32 @cx231xx_send_vendor_cmd(%struct.cx231xx*, %struct.VENDOR_REQUEST_IN*) #1

declare dso_local i32 @cx231xx_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
