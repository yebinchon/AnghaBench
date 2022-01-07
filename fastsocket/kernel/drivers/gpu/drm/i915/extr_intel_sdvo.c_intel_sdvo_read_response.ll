; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sdvo.c_intel_sdvo_read_response.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sdvo.c_intel_sdvo_read_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_sdvo = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"%s: R: \00", align 1
@SDVO_I2C_CMD_STATUS = common dso_local global i64 0, align 8
@SDVO_CMD_STATUS_PENDING = common dso_local global i32 0, align 4
@SDVO_CMD_STATUS_SCALING_NOT_SUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"(%s)\00", align 1
@cmd_status_names = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"(??? %d)\00", align 1
@SDVO_CMD_STATUS_SUCCESS = common dso_local global i32 0, align 4
@SDVO_I2C_RETURN_0 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c" %02X\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"... failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_sdvo*, i8*, i32)* @intel_sdvo_read_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_sdvo_read_response(%struct.intel_sdvo* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_sdvo*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.intel_sdvo* %0, %struct.intel_sdvo** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 15, i32* %8, align 4
  %11 = load %struct.intel_sdvo*, %struct.intel_sdvo** %5, align 8
  %12 = call i32 @SDVO_NAME(%struct.intel_sdvo* %11)
  %13 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.intel_sdvo*, %struct.intel_sdvo** %5, align 8
  %15 = load i64, i64* @SDVO_I2C_CMD_STATUS, align 8
  %16 = call i32 @intel_sdvo_read_byte(%struct.intel_sdvo* %14, i64 %15, i32* %9)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %95

19:                                               ; preds = %3
  br label %20

20:                                               ; preds = %43, %19
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @SDVO_CMD_STATUS_PENDING, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i32, i32* %8, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br label %28

28:                                               ; preds = %24, %20
  %29 = phi i1 [ false, %20 ], [ %27, %24 ]
  br i1 %29, label %30, label %44

30:                                               ; preds = %28
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 10
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = call i32 @msleep(i32 15)
  br label %37

35:                                               ; preds = %30
  %36 = call i32 @udelay(i32 15)
  br label %37

37:                                               ; preds = %35, %33
  %38 = load %struct.intel_sdvo*, %struct.intel_sdvo** %5, align 8
  %39 = load i64, i64* @SDVO_I2C_CMD_STATUS, align 8
  %40 = call i32 @intel_sdvo_read_byte(%struct.intel_sdvo* %38, i64 %39, i32* %9)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  br label %95

43:                                               ; preds = %37
  br label %20

44:                                               ; preds = %28
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @SDVO_CMD_STATUS_SCALING_NOT_SUPP, align 4
  %47 = icmp sle i32 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = load i32*, i32** @cmd_status_names, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (i8*, ...) @DRM_LOG_KMS(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  br label %58

55:                                               ; preds = %44
  %56 = load i32, i32* %9, align 4
  %57 = call i32 (i8*, ...) @DRM_LOG_KMS(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %55, %48
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @SDVO_CMD_STATUS_SUCCESS, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  br label %95

63:                                               ; preds = %58
  store i32 0, i32* %10, align 4
  br label %64

64:                                               ; preds = %90, %63
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %93

68:                                               ; preds = %64
  %69 = load %struct.intel_sdvo*, %struct.intel_sdvo** %5, align 8
  %70 = load i64, i64* @SDVO_I2C_RETURN_0, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %70, %72
  %74 = load i8*, i8** %6, align 8
  %75 = bitcast i8* %74 to i32*
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = call i32 @intel_sdvo_read_byte(%struct.intel_sdvo* %69, i64 %73, i32* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %68
  br label %95

82:                                               ; preds = %68
  %83 = load i8*, i8** %6, align 8
  %84 = bitcast i8* %83 to i32*
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (i8*, ...) @DRM_LOG_KMS(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %82
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %10, align 4
  br label %64

93:                                               ; preds = %64
  %94 = call i32 (i8*, ...) @DRM_LOG_KMS(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %97

95:                                               ; preds = %81, %62, %42, %18
  %96 = call i32 (i8*, ...) @DRM_LOG_KMS(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %97

97:                                               ; preds = %95, %93
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

declare dso_local i32 @SDVO_NAME(%struct.intel_sdvo*) #1

declare dso_local i32 @intel_sdvo_read_byte(%struct.intel_sdvo*, i64, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @DRM_LOG_KMS(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
