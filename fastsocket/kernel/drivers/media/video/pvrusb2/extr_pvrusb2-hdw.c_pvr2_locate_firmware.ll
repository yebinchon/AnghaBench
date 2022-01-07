; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-hdw.c_pvr2_locate_firmware.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-hdw.c_pvr2_locate_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_hdw = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.firmware = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Located %s firmware: %s; uploading...\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@PVR2_TRACE_ERROR_LEGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"request_firmware fatal error with code=%d\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"***WARNING*** Device %s firmware seems to be missing.\00", align 1
@.str.3 = private unnamed_addr constant [69 x i8] c"Did you install the pvrusb2 firmware files in their proper location?\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"request_firmware unable to locate %s file %s\00", align 1
@.str.5 = private unnamed_addr constant [65 x i8] c"request_firmware unable to locate one of the following %s files:\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"request_firmware: Failed to find %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvr2_hdw*, %struct.firmware**, i8*, i32, i8**)* @pvr2_locate_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvr2_locate_firmware(%struct.pvr2_hdw* %0, %struct.firmware** %1, i8* %2, i32 %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pvr2_hdw*, align 8
  %8 = alloca %struct.firmware**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pvr2_hdw* %0, %struct.pvr2_hdw** %7, align 8
  store %struct.firmware** %1, %struct.firmware*** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8** %4, i8*** %11, align 8
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %16

16:                                               ; preds = %54, %5
  %17 = load i32, i32* %12, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %57

20:                                               ; preds = %16
  %21 = load %struct.firmware**, %struct.firmware*** %8, align 8
  %22 = load i8**, i8*** %11, align 8
  %23 = load i32, i32* %12, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %22, i64 %24
  %26 = load i8*, i8** %25, align 8
  %27 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %7, align 8
  %28 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @request_firmware(%struct.firmware** %21, i8* %26, i32* %30)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %20
  %35 = load i8*, i8** %9, align 8
  %36 = load i8**, i8*** %11, align 8
  %37 = load i32, i32* %12, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %36, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @trace_firmware(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %35, i8* %40)
  %42 = load i32, i32* %12, align 4
  store i32 %42, i32* %6, align 4
  br label %94

43:                                               ; preds = %20
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* @ENOENT, align 4
  %46 = sub nsw i32 0, %45
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %54

49:                                               ; preds = %43
  %50 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %51 = load i32, i32* %13, align 4
  %52 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %50, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %13, align 4
  store i32 %53, i32* %6, align 4
  br label %94

54:                                               ; preds = %48
  %55 = load i32, i32* %12, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %12, align 4
  br label %16

57:                                               ; preds = %16
  %58 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %59 = load i8*, i8** %9, align 8
  %60 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %58, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i8* %59)
  %61 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %62 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %61, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.3, i64 0, i64 0))
  %63 = load i32, i32* %10, align 4
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %72

65:                                               ; preds = %57
  %66 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %67 = load i8*, i8** %9, align 8
  %68 = load i8**, i8*** %11, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 0
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %66, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i8* %67, i8* %70)
  br label %92

72:                                               ; preds = %57
  %73 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %74 = load i8*, i8** %9, align 8
  %75 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %73, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.5, i64 0, i64 0), i8* %74)
  store i32 0, i32* %12, align 4
  br label %76

76:                                               ; preds = %88, %72
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp ult i32 %77, %78
  br i1 %79, label %80, label %91

80:                                               ; preds = %76
  %81 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %82 = load i8**, i8*** %11, align 8
  %83 = load i32, i32* %12, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i8*, i8** %82, i64 %84
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %81, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i8* %86)
  br label %88

88:                                               ; preds = %80
  %89 = load i32, i32* %12, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %12, align 4
  br label %76

91:                                               ; preds = %76
  br label %92

92:                                               ; preds = %91, %65
  %93 = load i32, i32* %13, align 4
  store i32 %93, i32* %6, align 4
  br label %94

94:                                               ; preds = %92, %49, %34
  %95 = load i32, i32* %6, align 4
  ret i32 %95
}

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32*) #1

declare dso_local i32 @trace_firmware(i8*, i8*, i8*) #1

declare dso_local i32 @pvr2_trace(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
