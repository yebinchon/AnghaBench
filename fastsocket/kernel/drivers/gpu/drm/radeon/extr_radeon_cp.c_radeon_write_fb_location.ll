; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_cp.c_radeon_write_fb_location.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_cp.c_radeon_write_fb_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32)* @radeon_write_fb_location to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_write_fb_location(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @RADEON_FAMILY_MASK, align 4
  %9 = and i32 %7, %8
  %10 = load i32, i32* @CHIP_RV770, align 4
  %11 = icmp sge i32 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* @R700_MC_VM_FB_LOCATION, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @RADEON_WRITE(i32 %13, i32 %14)
  br label %93

16:                                               ; preds = %2
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @RADEON_FAMILY_MASK, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @CHIP_R600, align 4
  %23 = icmp sge i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %16
  %25 = load i32, i32* @R600_MC_VM_FB_LOCATION, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @RADEON_WRITE(i32 %25, i32 %26)
  br label %92

28:                                               ; preds = %16
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @RADEON_FAMILY_MASK, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* @CHIP_RV515, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %28
  %37 = load i32, i32* @RV515_MC_FB_LOCATION, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @R500_WRITE_MCIND(i32 %37, i32 %38)
  br label %91

40:                                               ; preds = %28
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @RADEON_FAMILY_MASK, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* @CHIP_RS690, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %56, label %48

48:                                               ; preds = %40
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @RADEON_FAMILY_MASK, align 4
  %53 = and i32 %51, %52
  %54 = load i32, i32* @CHIP_RS740, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %48, %40
  %57 = load i32, i32* @RS690_MC_FB_LOCATION, align 4
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @RS690_WRITE_MCIND(i32 %57, i32 %58)
  br label %90

60:                                               ; preds = %48
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @RADEON_FAMILY_MASK, align 4
  %65 = and i32 %63, %64
  %66 = load i32, i32* @CHIP_RS600, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %60
  %69 = load i32, i32* @RS600_MC_FB_LOCATION, align 4
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @RS600_WRITE_MCIND(i32 %69, i32 %70)
  br label %89

72:                                               ; preds = %60
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @RADEON_FAMILY_MASK, align 4
  %77 = and i32 %75, %76
  %78 = load i32, i32* @CHIP_RV515, align 4
  %79 = icmp sgt i32 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %72
  %81 = load i32, i32* @R520_MC_FB_LOCATION, align 4
  %82 = load i32, i32* %4, align 4
  %83 = call i32 @R500_WRITE_MCIND(i32 %81, i32 %82)
  br label %88

84:                                               ; preds = %72
  %85 = load i32, i32* @RADEON_MC_FB_LOCATION, align 4
  %86 = load i32, i32* %4, align 4
  %87 = call i32 @RADEON_WRITE(i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %84, %80
  br label %89

89:                                               ; preds = %88, %68
  br label %90

90:                                               ; preds = %89, %56
  br label %91

91:                                               ; preds = %90, %36
  br label %92

92:                                               ; preds = %91, %24
  br label %93

93:                                               ; preds = %92, %12
  ret void
}

declare dso_local i32 @RADEON_WRITE(i32, i32) #1

declare dso_local i32 @R500_WRITE_MCIND(i32, i32) #1

declare dso_local i32 @RS690_WRITE_MCIND(i32, i32) #1

declare dso_local i32 @RS600_WRITE_MCIND(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
