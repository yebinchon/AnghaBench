; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-main.c_firmware_download.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-main.c_firmware_download.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { %struct.TYPE_4__**, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.firmware = type { i64, i32 }

@firmware_name = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"download err : %d\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"\09\09 download size : %d\00", align 1
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*)* @firmware_download to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @firmware_download(%struct.usb_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.firmware*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.usb_device* %0, %struct.usb_device** %3, align 8
  store i32 0, i32* %4, align 4
  store %struct.firmware* null, %struct.firmware** %6, align 8
  store i8* null, i8** %7, align 8
  store i64 0, i64* %8, align 8
  %11 = load i32, i32* @firmware_name, align 4
  %12 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %13 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %12, i32 0, i32 1
  %14 = call i32 @request_firmware(%struct.firmware** %6, i32 %11, i32* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @log(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %82

21:                                               ; preds = %1
  %22 = load %struct.firmware*, %struct.firmware** %6, align 8
  %23 = getelementptr inbounds %struct.firmware, %struct.firmware* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %8, align 8
  %25 = load %struct.firmware*, %struct.firmware** %6, align 8
  %26 = getelementptr inbounds %struct.firmware, %struct.firmware* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i8* @kmemdup(i32 %27, i64 %28, i32 %29)
  store i8* %30, i8** %7, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %21
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %78

36:                                               ; preds = %21
  %37 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %38 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %39, i64 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %10, align 8
  %45 = load i64, i64* %10, align 8
  %46 = trunc i64 %45 to i32
  %47 = call i32 @log(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  store i64 0, i64* %9, align 8
  br label %48

48:                                               ; preds = %71, %36
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* %8, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %52, label %75

52:                                               ; preds = %48
  store i32 0, i32* %5, align 4
  %53 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %54 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %55 = call i32 @usb_sndbulkpipe(%struct.usb_device* %54, i32 1)
  %56 = load i8*, i8** %7, align 8
  %57 = load i64, i64* %9, align 8
  %58 = getelementptr i8, i8* %56, i64 %57
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* %9, align 8
  %62 = sub i64 %60, %61
  %63 = call i32 @min(i64 %59, i64 %62)
  %64 = load i32, i32* @HZ, align 4
  %65 = mul nsw i32 %64, 10
  %66 = call i32 @usb_bulk_msg(%struct.usb_device* %53, i32 %55, i8* %58, i32 %63, i32* %5, i32 %65)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %52
  br label %75

70:                                               ; preds = %52
  br label %71

71:                                               ; preds = %70
  %72 = load i64, i64* %10, align 8
  %73 = load i64, i64* %9, align 8
  %74 = add i64 %73, %72
  store i64 %74, i64* %9, align 8
  br label %48

75:                                               ; preds = %69, %48
  %76 = load i8*, i8** %7, align 8
  %77 = call i32 @kfree(i8* %76)
  br label %78

78:                                               ; preds = %75, %33
  %79 = load %struct.firmware*, %struct.firmware** %6, align 8
  %80 = call i32 @release_firmware(%struct.firmware* %79)
  %81 = load i32, i32* %4, align 4
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %78, %17
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @request_firmware(%struct.firmware**, i32, i32*) #1

declare dso_local i32 @log(i8*, i32) #1

declare dso_local i8* @kmemdup(i32, i64, i32) #1

declare dso_local i32 @usb_bulk_msg(%struct.usb_device*, i32, i8*, i32, i32*, i32) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @min(i64, i64) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
