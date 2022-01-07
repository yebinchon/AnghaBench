; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_cp.c_radeon_test_writeback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_cp.c_radeon_test_writeback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64 }

@RADEON_SCRATCH_REG1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"writeback test succeeded in %d usecs\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"writeback test failed\0A\00", align 1
@radeon_no_wb = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"writeback forced off\0A\00", align 1
@RADEON_CP_RB_CNTL = common dso_local global i32 0, align 4
@RADEON_RB_NO_UPDATE = common dso_local global i32 0, align 4
@RADEON_SCRATCH_UMSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @radeon_test_writeback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_test_writeback(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i32 0, i32* %6, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %8 = call i32 @RADEON_SCRATCHOFF(i32 1)
  %9 = call i32 @radeon_write_ring_rptr(%struct.TYPE_5__* %7, i32 %8, i32 0)
  %10 = load i32, i32* @RADEON_SCRATCH_REG1, align 4
  %11 = call i32 @RADEON_WRITE(i32 %10, i32 -559038737)
  store i64 0, i64* %3, align 8
  br label %12

12:                                               ; preds = %27, %1
  %13 = load i64, i64* %3, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %13, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %12
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %20 = call i32 @RADEON_SCRATCHOFF(i32 1)
  %21 = call i64 @radeon_read_ring_rptr(%struct.TYPE_5__* %19, i32 %20)
  store i64 %21, i64* %4, align 8
  %22 = load i64, i64* %4, align 8
  %23 = icmp eq i64 %22, 3735928559
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %30

25:                                               ; preds = %18
  %26 = call i32 @DRM_UDELAY(i32 1)
  br label %27

27:                                               ; preds = %25
  %28 = load i64, i64* %3, align 8
  %29 = add nsw i64 %28, 1
  store i64 %29, i64* %3, align 8
  br label %12

30:                                               ; preds = %24, %12
  %31 = load i64, i64* %3, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp slt i64 %31, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  %39 = load i64, i64* %3, align 8
  %40 = call i32 (i8*, ...) @DRM_INFO(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %39)
  br label %45

41:                                               ; preds = %30
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  store i32 0, i32* %43, align 8
  %44 = call i32 (i8*, ...) @DRM_INFO(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %41, %36
  %46 = load i32, i32* @radeon_no_wb, align 4
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  store i32 0, i32* %50, align 8
  %51 = call i32 (i8*, ...) @DRM_INFO(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %52

52:                                               ; preds = %48, %45
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %66, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* @RADEON_CP_RB_CNTL, align 4
  %59 = load i32, i32* @RADEON_CP_RB_CNTL, align 4
  %60 = call i32 @RADEON_READ(i32 %59)
  %61 = load i32, i32* @RADEON_RB_NO_UPDATE, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @RADEON_WRITE(i32 %58, i32 %62)
  %64 = load i32, i32* @RADEON_SCRATCH_UMSK, align 4
  %65 = call i32 @RADEON_WRITE(i32 %64, i32 0)
  br label %66

66:                                               ; preds = %57, %52
  ret void
}

declare dso_local i32 @radeon_write_ring_rptr(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @RADEON_SCRATCHOFF(i32) #1

declare dso_local i32 @RADEON_WRITE(i32, i32) #1

declare dso_local i64 @radeon_read_ring_rptr(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @DRM_UDELAY(i32) #1

declare dso_local i32 @DRM_INFO(i8*, ...) #1

declare dso_local i32 @RADEON_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
