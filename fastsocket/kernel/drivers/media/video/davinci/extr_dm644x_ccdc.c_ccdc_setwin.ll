; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_dm644x_ccdc.c_ccdc_setwin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_dm644x_ccdc.c_ccdc_setwin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_rect = type { i32, i32, i32, i32 }

@dev = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"\0AStarting ccdc_setwin...\00", align 1
@CCDC_HORZ_INFO_SPH_SHIFT = common dso_local global i32 0, align 4
@CCDC_HORZ_INFO = common dso_local global i32 0, align 4
@CCDC_FRMFMT_INTERLACED = common dso_local global i32 0, align 4
@CCDC_VDINT_VDINT0_SHIFT = common dso_local global i32 0, align 4
@CCDC_VDINT = common dso_local global i32 0, align 4
@CCDC_VDINT_VDINT1_MASK = common dso_local global i32 0, align 4
@CCDC_VERT_START_SLV0_SHIFT = common dso_local global i32 0, align 4
@CCDC_VERT_START = common dso_local global i32 0, align 4
@CCDC_VERT_LINES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"\0AEnd of ccdc_setwin...\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ccdc_setwin(%struct.v4l2_rect* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.v4l2_rect*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.v4l2_rect* %0, %struct.v4l2_rect** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* @dev, align 4
  %14 = call i32 @dev_dbg(i32 %13, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %16 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = sub nsw i32 %18, 1
  %20 = shl i32 %17, %19
  store i32 %20, i32* %7, align 4
  %21 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %22 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = sub nsw i32 %24, 1
  %26 = shl i32 %23, %25
  %27 = sub nsw i32 %26, 1
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @CCDC_HORZ_INFO_SPH_SHIFT, align 4
  %30 = shl i32 %28, %29
  %31 = load i32, i32* %8, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @CCDC_HORZ_INFO, align 4
  %34 = call i32 @regw(i32 %32, i32 %33)
  %35 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %36 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @CCDC_FRMFMT_INTERLACED, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %57

41:                                               ; preds = %3
  %42 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %43 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = ashr i32 %44, 1
  %46 = sub nsw i32 %45, 1
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %9, align 4
  %48 = ashr i32 %47, 1
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @CCDC_VDINT_VDINT0_SHIFT, align 4
  %53 = shl i32 %51, %52
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @CCDC_VDINT, align 4
  %56 = call i32 @regw(i32 %54, i32 %55)
  br label %80

57:                                               ; preds = %3
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %9, align 4
  %60 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %61 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 %62, 1
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %66 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = sdiv i32 %67, 2
  %69 = add nsw i32 %64, %68
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @CCDC_VDINT_VDINT0_SHIFT, align 4
  %72 = shl i32 %70, %71
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* @CCDC_VDINT_VDINT1_MASK, align 4
  %75 = and i32 %73, %74
  %76 = or i32 %72, %75
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* @CCDC_VDINT, align 4
  %79 = call i32 @regw(i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %57, %41
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @CCDC_VERT_START_SLV0_SHIFT, align 4
  %83 = shl i32 %81, %82
  %84 = load i32, i32* %9, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @CCDC_VERT_START, align 4
  %87 = call i32 @regw(i32 %85, i32 %86)
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* @CCDC_VERT_LINES, align 4
  %90 = call i32 @regw(i32 %88, i32 %89)
  %91 = load i32, i32* @dev, align 4
  %92 = call i32 @dev_dbg(i32 %91, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @regw(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
