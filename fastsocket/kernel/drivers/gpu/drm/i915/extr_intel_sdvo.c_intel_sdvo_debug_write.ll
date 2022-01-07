; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sdvo.c_intel_sdvo_debug_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sdvo.c_intel_sdvo_debug_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }
%struct.intel_sdvo = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"%s: W: %02X \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%02X \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@sdvo_cmd_names = common dso_local global %struct.TYPE_3__* null, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"(%s)\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"(%02X)\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_sdvo*, i64, i8*, i32)* @intel_sdvo_debug_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_sdvo_debug_write(%struct.intel_sdvo* %0, i64 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.intel_sdvo*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.intel_sdvo* %0, %struct.intel_sdvo** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.intel_sdvo*, %struct.intel_sdvo** %5, align 8
  %11 = call i32 @SDVO_NAME(%struct.intel_sdvo* %10)
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %11, i64 %12)
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %26, %4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %14
  %19 = load i8*, i8** %7, align 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = call i32 (i8*, ...) @DRM_LOG_KMS(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %24)
  br label %26

26:                                               ; preds = %18
  %27 = load i32, i32* %9, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %9, align 4
  br label %14

29:                                               ; preds = %14
  br label %30

30:                                               ; preds = %35, %29
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %31, 8
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = call i32 (i8*, ...) @DRM_LOG_KMS(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %9, align 4
  br label %30

38:                                               ; preds = %30
  store i32 0, i32* %9, align 4
  br label %39

39:                                               ; preds = %62, %38
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sdvo_cmd_names, align 8
  %42 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %41)
  %43 = icmp slt i32 %40, %42
  br i1 %43, label %44, label %65

44:                                               ; preds = %39
  %45 = load i64, i64* %6, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sdvo_cmd_names, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %45, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %44
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sdvo_cmd_names, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 (i8*, ...) @DRM_LOG_KMS(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %59)
  br label %65

61:                                               ; preds = %44
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %9, align 4
  br label %39

65:                                               ; preds = %53, %39
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sdvo_cmd_names, align 8
  %68 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %67)
  %69 = icmp eq i32 %66, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i64, i64* %6, align 8
  %72 = call i32 (i8*, ...) @DRM_LOG_KMS(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i64 %71)
  br label %73

73:                                               ; preds = %70, %65
  %74 = call i32 (i8*, ...) @DRM_LOG_KMS(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i64) #1

declare dso_local i32 @SDVO_NAME(%struct.intel_sdvo*) #1

declare dso_local i32 @DRM_LOG_KMS(i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
