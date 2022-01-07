; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_cp.c_radeon_read_fb_location.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_cp.c_radeon_read_fb_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@RADEON_FAMILY_MASK = common dso_local global i32 0, align 4
@CHIP_RV770 = common dso_local global i32 0, align 4
@R700_MC_VM_FB_LOCATION = common dso_local global i32 0, align 4
@CHIP_R600 = common dso_local global i32 0, align 4
@R600_MC_VM_FB_LOCATION = common dso_local global i32 0, align 4
@CHIP_RV515 = common dso_local global i32 0, align 4
@RV515_MC_FB_LOCATION = common dso_local global i32 0, align 4
@CHIP_RS690 = common dso_local global i32 0, align 4
@CHIP_RS740 = common dso_local global i32 0, align 4
@RS690_MC_FB_LOCATION = common dso_local global i32 0, align 4
@CHIP_RS600 = common dso_local global i32 0, align 4
@RS600_MC_FB_LOCATION = common dso_local global i32 0, align 4
@R520_MC_FB_LOCATION = common dso_local global i32 0, align 4
@RADEON_MC_FB_LOCATION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_read_fb_location(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @RADEON_FAMILY_MASK, align 4
  %8 = and i32 %6, %7
  %9 = load i32, i32* @CHIP_RV770, align 4
  %10 = icmp sge i32 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @R700_MC_VM_FB_LOCATION, align 4
  %13 = call i32 @RADEON_READ(i32 %12)
  store i32 %13, i32* %2, align 4
  br label %84

14:                                               ; preds = %1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @RADEON_FAMILY_MASK, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @CHIP_R600, align 4
  %21 = icmp sge i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = load i32, i32* @R600_MC_VM_FB_LOCATION, align 4
  %24 = call i32 @RADEON_READ(i32 %23)
  store i32 %24, i32* %2, align 4
  br label %84

25:                                               ; preds = %14
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @RADEON_FAMILY_MASK, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @CHIP_RV515, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %35 = load i32, i32* @RV515_MC_FB_LOCATION, align 4
  %36 = call i32 @R500_READ_MCIND(%struct.TYPE_6__* %34, i32 %35)
  store i32 %36, i32* %2, align 4
  br label %84

37:                                               ; preds = %25
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @RADEON_FAMILY_MASK, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* @CHIP_RS690, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %53, label %45

45:                                               ; preds = %37
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @RADEON_FAMILY_MASK, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* @CHIP_RS740, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %45, %37
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %55 = load i32, i32* @RS690_MC_FB_LOCATION, align 4
  %56 = call i32 @RS690_READ_MCIND(%struct.TYPE_6__* %54, i32 %55)
  store i32 %56, i32* %2, align 4
  br label %84

57:                                               ; preds = %45
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @RADEON_FAMILY_MASK, align 4
  %62 = and i32 %60, %61
  %63 = load i32, i32* @CHIP_RS600, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %57
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %67 = load i32, i32* @RS600_MC_FB_LOCATION, align 4
  %68 = call i32 @RS600_READ_MCIND(%struct.TYPE_6__* %66, i32 %67)
  store i32 %68, i32* %2, align 4
  br label %84

69:                                               ; preds = %57
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @RADEON_FAMILY_MASK, align 4
  %74 = and i32 %72, %73
  %75 = load i32, i32* @CHIP_RV515, align 4
  %76 = icmp sgt i32 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %69
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %79 = load i32, i32* @R520_MC_FB_LOCATION, align 4
  %80 = call i32 @R500_READ_MCIND(%struct.TYPE_6__* %78, i32 %79)
  store i32 %80, i32* %2, align 4
  br label %84

81:                                               ; preds = %69
  %82 = load i32, i32* @RADEON_MC_FB_LOCATION, align 4
  %83 = call i32 @RADEON_READ(i32 %82)
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %81, %77, %65, %53, %33, %22, %11
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @RADEON_READ(i32) #1

declare dso_local i32 @R500_READ_MCIND(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @RS690_READ_MCIND(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @RS600_READ_MCIND(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
