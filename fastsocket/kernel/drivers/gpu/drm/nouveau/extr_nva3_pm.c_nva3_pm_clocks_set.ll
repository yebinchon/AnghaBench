; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nva3_pm.c_nva3_pm_clocks_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nva3_pm.c_nva3_pm_clocks_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_device = type { i32 }
%struct.nouveau_drm = type { i32 }
%struct.nva3_pm_state = type { %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@EAGAIN = common dso_local global i32 0, align 4
@nva3_pm_grcp_idle = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"pm: ctxprog didn't go idle\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"pm: fifo didn't go idle\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nva3_pm_clocks_set(%struct.drm_device* %0, i8* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.nouveau_device*, align 8
  %6 = alloca %struct.nouveau_drm*, align 8
  %7 = alloca %struct.nva3_pm_state*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %10 = call %struct.nouveau_device* @nouveau_dev(%struct.drm_device* %9)
  store %struct.nouveau_device* %10, %struct.nouveau_device** %5, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %12 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %11)
  store %struct.nouveau_drm* %12, %struct.nouveau_drm** %6, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.nva3_pm_state*
  store %struct.nva3_pm_state* %14, %struct.nva3_pm_state** %7, align 8
  %15 = load i32, i32* @EAGAIN, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %8, align 4
  %17 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %18 = call i32 @nv_wr32(%struct.nouveau_device* %17, i32 4195108, i32 0)
  %19 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %20 = call i32 @nv_wr32(%struct.nouveau_device* %19, i32 4195112, i32 5242908)
  %21 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %22 = load i32, i32* @nva3_pm_grcp_idle, align 4
  %23 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %24 = call i32 @nv_wait_cb(%struct.nouveau_device* %21, i32 %22, %struct.drm_device* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %28 = call i32 @NV_ERROR(%struct.nouveau_drm* %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %71

29:                                               ; preds = %2
  %30 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %31 = call i32 @nv_mask(%struct.nouveau_device* %30, i32 9476, i32 1, i32 1)
  %32 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %33 = call i32 @nv_wait(%struct.nouveau_device* %32, i32 9476, i32 16, i32 16)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %37 = call i32 @NV_ERROR(%struct.nouveau_drm* %36, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %71

38:                                               ; preds = %29
  %39 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %40 = load %struct.nva3_pm_state*, %struct.nva3_pm_state** %7, align 8
  %41 = getelementptr inbounds %struct.nva3_pm_state, %struct.nva3_pm_state* %40, i32 0, i32 4
  %42 = call i32 @prog_pll(%struct.drm_device* %39, i32 0, i32 16896, i32* %41)
  %43 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %44 = load %struct.nva3_pm_state*, %struct.nva3_pm_state** %7, align 8
  %45 = getelementptr inbounds %struct.nva3_pm_state, %struct.nva3_pm_state* %44, i32 0, i32 3
  %46 = call i32 @prog_pll(%struct.drm_device* %43, i32 1, i32 16928, i32* %45)
  %47 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %48 = load %struct.nva3_pm_state*, %struct.nva3_pm_state** %7, align 8
  %49 = getelementptr inbounds %struct.nva3_pm_state, %struct.nva3_pm_state* %48, i32 0, i32 2
  %50 = call i32 @prog_clk(%struct.drm_device* %47, i32 32, i32* %49)
  %51 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %52 = load %struct.nva3_pm_state*, %struct.nva3_pm_state** %7, align 8
  %53 = getelementptr inbounds %struct.nva3_pm_state, %struct.nva3_pm_state* %52, i32 0, i32 1
  %54 = call i32 @prog_clk(%struct.drm_device* %51, i32 33, i32* %53)
  %55 = load %struct.nva3_pm_state*, %struct.nva3_pm_state** %7, align 8
  %56 = getelementptr inbounds %struct.nva3_pm_state, %struct.nva3_pm_state* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %38
  %61 = load %struct.nva3_pm_state*, %struct.nva3_pm_state** %7, align 8
  %62 = getelementptr inbounds %struct.nva3_pm_state, %struct.nva3_pm_state* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %60, %38
  %67 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %68 = load %struct.nva3_pm_state*, %struct.nva3_pm_state** %7, align 8
  %69 = call i32 @prog_mem(%struct.drm_device* %67, %struct.nva3_pm_state* %68)
  br label %70

70:                                               ; preds = %66, %60
  store i32 0, i32* %8, align 4
  br label %71

71:                                               ; preds = %70, %35, %26
  %72 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %73 = call i32 @nv_mask(%struct.nouveau_device* %72, i32 9476, i32 1, i32 0)
  %74 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %75 = call i32 @nv_wr32(%struct.nouveau_device* %74, i32 4195108, i32 0)
  %76 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %77 = call i32 @nv_wr32(%struct.nouveau_device* %76, i32 4195112, i32 7340188)
  %78 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %79 = call i32 @nv_rd32(%struct.nouveau_device* %78, i32 4195080)
  %80 = icmp eq i32 %79, 5242908
  br i1 %80, label %81, label %84

81:                                               ; preds = %71
  %82 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %83 = call i32 @nv_mask(%struct.nouveau_device* %82, i32 4196388, i32 268435456, i32 268435456)
  br label %84

84:                                               ; preds = %81, %71
  %85 = load %struct.nva3_pm_state*, %struct.nva3_pm_state** %7, align 8
  %86 = call i32 @kfree(%struct.nva3_pm_state* %85)
  %87 = load i32, i32* %8, align 4
  ret i32 %87
}

declare dso_local %struct.nouveau_device* @nouveau_dev(%struct.drm_device*) #1

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i32 @nv_wr32(%struct.nouveau_device*, i32, i32) #1

declare dso_local i32 @nv_wait_cb(%struct.nouveau_device*, i32, %struct.drm_device*) #1

declare dso_local i32 @NV_ERROR(%struct.nouveau_drm*, i8*) #1

declare dso_local i32 @nv_mask(%struct.nouveau_device*, i32, i32, i32) #1

declare dso_local i32 @nv_wait(%struct.nouveau_device*, i32, i32, i32) #1

declare dso_local i32 @prog_pll(%struct.drm_device*, i32, i32, i32*) #1

declare dso_local i32 @prog_clk(%struct.drm_device*, i32, i32*) #1

declare dso_local i32 @prog_mem(%struct.drm_device*, %struct.nva3_pm_state*) #1

declare dso_local i32 @nv_rd32(%struct.nouveau_device*, i32) #1

declare dso_local i32 @kfree(%struct.nva3_pm_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
