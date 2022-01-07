; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/siano/extr_smscoreapi.c_smscore_load_firmware_from_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/siano/extr_smscoreapi.c_smscore_load_firmware_from_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smscore_device_t = type { i32, i32, i32 }
%struct.firmware = type { i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@SMS_DEVICE_FAMILY2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"failed to open \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"read FW %s, size=%zd\00", align 1
@SMS_ALLOC_ALIGNMENT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"failed to allocate firmware buffer\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smscore_device_t*, i8*, i32 (i32, i32*, i32)*)* @smscore_load_firmware_from_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smscore_load_firmware_from_file(%struct.smscore_device_t* %0, i8* %1, i32 (i32, i32*, i32)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.smscore_device_t*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32 (i32, i32*, i32)*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.firmware*, align 8
  %10 = alloca i32*, align 8
  store %struct.smscore_device_t* %0, %struct.smscore_device_t** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 (i32, i32*, i32)* %2, i32 (i32, i32*, i32)** %7, align 8
  %11 = load i32, i32* @ENOENT, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %8, align 4
  %13 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %7, align 8
  %14 = icmp eq i32 (i32, i32*, i32)* %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %3
  %16 = load %struct.smscore_device_t*, %struct.smscore_device_t** %5, align 8
  %17 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @SMS_DEVICE_FAMILY2, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %15
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %98

25:                                               ; preds = %15, %3
  %26 = load i8*, i8** %6, align 8
  %27 = load %struct.smscore_device_t*, %struct.smscore_device_t** %5, align 8
  %28 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @request_firmware(%struct.firmware** %9, i8* %26, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 (i8*, ...) @sms_info(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %34)
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %4, align 4
  br label %98

37:                                               ; preds = %25
  %38 = load i8*, i8** %6, align 8
  %39 = load %struct.firmware*, %struct.firmware** %9, align 8
  %40 = getelementptr inbounds %struct.firmware, %struct.firmware* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i8*, ...) @sms_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %38, i32 %41)
  %43 = load %struct.firmware*, %struct.firmware** %9, align 8
  %44 = getelementptr inbounds %struct.firmware, %struct.firmware* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @SMS_ALLOC_ALIGNMENT, align 4
  %47 = call i32 @ALIGN(i32 %45, i32 %46)
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = load i32, i32* @GFP_DMA, align 4
  %50 = or i32 %48, %49
  %51 = call i32* @kmalloc(i32 %47, i32 %50)
  store i32* %51, i32** %10, align 8
  %52 = load i32*, i32** %10, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %90

54:                                               ; preds = %37
  %55 = load i32*, i32** %10, align 8
  %56 = load %struct.firmware*, %struct.firmware** %9, align 8
  %57 = getelementptr inbounds %struct.firmware, %struct.firmware* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.firmware*, %struct.firmware** %9, align 8
  %60 = getelementptr inbounds %struct.firmware, %struct.firmware* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @memcpy(i32* %55, i32 %58, i32 %61)
  %63 = load %struct.smscore_device_t*, %struct.smscore_device_t** %5, align 8
  %64 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @SMS_DEVICE_FAMILY2, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %54
  %70 = load %struct.smscore_device_t*, %struct.smscore_device_t** %5, align 8
  %71 = load i32*, i32** %10, align 8
  %72 = load %struct.firmware*, %struct.firmware** %9, align 8
  %73 = getelementptr inbounds %struct.firmware, %struct.firmware* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @smscore_load_firmware_family2(%struct.smscore_device_t* %70, i32* %71, i32 %74)
  br label %86

76:                                               ; preds = %54
  %77 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %7, align 8
  %78 = load %struct.smscore_device_t*, %struct.smscore_device_t** %5, align 8
  %79 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %10, align 8
  %82 = load %struct.firmware*, %struct.firmware** %9, align 8
  %83 = getelementptr inbounds %struct.firmware, %struct.firmware* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 %77(i32 %80, i32* %81, i32 %84)
  br label %86

86:                                               ; preds = %76, %69
  %87 = phi i32 [ %75, %69 ], [ %85, %76 ]
  store i32 %87, i32* %8, align 4
  %88 = load i32*, i32** %10, align 8
  %89 = call i32 @kfree(i32* %88)
  br label %94

90:                                               ; preds = %37
  %91 = call i32 (i8*, ...) @sms_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %92 = load i32, i32* @ENOMEM, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %8, align 4
  br label %94

94:                                               ; preds = %90, %86
  %95 = load %struct.firmware*, %struct.firmware** %9, align 8
  %96 = call i32 @release_firmware(%struct.firmware* %95)
  %97 = load i32, i32* %8, align 4
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %94, %33, %22
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32) #1

declare dso_local i32 @sms_info(i8*, ...) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @smscore_load_firmware_family2(%struct.smscore_device_t*, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
