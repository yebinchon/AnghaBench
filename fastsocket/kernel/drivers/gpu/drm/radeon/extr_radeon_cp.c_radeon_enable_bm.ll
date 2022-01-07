; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_cp.c_radeon_enable_bm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_cp.c_radeon_enable_bm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_radeon_private = type { i32 }

@RADEON_FAMILY_MASK = common dso_local global i32 0, align 4
@CHIP_RS690 = common dso_local global i32 0, align 4
@CHIP_RS740 = common dso_local global i32 0, align 4
@RADEON_BUS_CNTL = common dso_local global i32 0, align 4
@RS600_BUS_MASTER_DIS = common dso_local global i32 0, align 4
@CHIP_RV350 = common dso_local global i32 0, align 4
@CHIP_R420 = common dso_local global i32 0, align 4
@CHIP_RS400 = common dso_local global i32 0, align 4
@CHIP_RS480 = common dso_local global i32 0, align 4
@RADEON_BUS_MASTER_DIS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_enable_bm(%struct.drm_radeon_private* %0) #0 {
  %2 = alloca %struct.drm_radeon_private*, align 8
  %3 = alloca i32, align 4
  store %struct.drm_radeon_private* %0, %struct.drm_radeon_private** %2, align 8
  %4 = load %struct.drm_radeon_private*, %struct.drm_radeon_private** %2, align 8
  %5 = getelementptr inbounds %struct.drm_radeon_private, %struct.drm_radeon_private* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @RADEON_FAMILY_MASK, align 4
  %8 = and i32 %6, %7
  %9 = load i32, i32* @CHIP_RS690, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %19, label %11

11:                                               ; preds = %1
  %12 = load %struct.drm_radeon_private*, %struct.drm_radeon_private** %2, align 8
  %13 = getelementptr inbounds %struct.drm_radeon_private, %struct.drm_radeon_private* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @RADEON_FAMILY_MASK, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* @CHIP_RS740, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %11, %1
  %20 = load i32, i32* @RADEON_BUS_CNTL, align 4
  %21 = call i32 @RADEON_READ(i32 %20)
  %22 = load i32, i32* @RS600_BUS_MASTER_DIS, align 4
  %23 = xor i32 %22, -1
  %24 = and i32 %21, %23
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* @RADEON_BUS_CNTL, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @RADEON_WRITE(i32 %25, i32 %26)
  br label %70

28:                                               ; preds = %11
  %29 = load %struct.drm_radeon_private*, %struct.drm_radeon_private** %2, align 8
  %30 = getelementptr inbounds %struct.drm_radeon_private, %struct.drm_radeon_private* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @RADEON_FAMILY_MASK, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* @CHIP_RV350, align 4
  %35 = icmp sle i32 %33, %34
  br i1 %35, label %60, label %36

36:                                               ; preds = %28
  %37 = load %struct.drm_radeon_private*, %struct.drm_radeon_private** %2, align 8
  %38 = getelementptr inbounds %struct.drm_radeon_private, %struct.drm_radeon_private* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @RADEON_FAMILY_MASK, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* @CHIP_R420, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %60, label %44

44:                                               ; preds = %36
  %45 = load %struct.drm_radeon_private*, %struct.drm_radeon_private** %2, align 8
  %46 = getelementptr inbounds %struct.drm_radeon_private, %struct.drm_radeon_private* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @RADEON_FAMILY_MASK, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* @CHIP_RS400, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %60, label %52

52:                                               ; preds = %44
  %53 = load %struct.drm_radeon_private*, %struct.drm_radeon_private** %2, align 8
  %54 = getelementptr inbounds %struct.drm_radeon_private, %struct.drm_radeon_private* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @RADEON_FAMILY_MASK, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* @CHIP_RS480, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %52, %44, %36, %28
  %61 = load i32, i32* @RADEON_BUS_CNTL, align 4
  %62 = call i32 @RADEON_READ(i32 %61)
  %63 = load i32, i32* @RADEON_BUS_MASTER_DIS, align 4
  %64 = xor i32 %63, -1
  %65 = and i32 %62, %64
  store i32 %65, i32* %3, align 4
  %66 = load i32, i32* @RADEON_BUS_CNTL, align 4
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @RADEON_WRITE(i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %60, %52
  br label %70

70:                                               ; preds = %69, %19
  ret void
}

declare dso_local i32 @RADEON_READ(i32) #1

declare dso_local i32 @RADEON_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
