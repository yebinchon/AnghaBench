; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_nva3.c_nva3_disp_ctor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_nva3.c_nva3_disp_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_oclass = type { i32 }
%struct.nv50_disp_priv = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_10__ = type { i32, i32*, i32 }
%struct.TYPE_9__ = type { i32, i32*, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_12__ = type { i32*, i32 }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"PDISP\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"display\00", align 1
@nva3_disp_base_oclass = common dso_local global i32 0, align 4
@nv50_disp_cclass = common dso_local global i32 0, align 4
@nv50_disp_intr = common dso_local global i32 0, align 4
@nv50_disp_intr_supervisor = common dso_local global i32 0, align 4
@nva3_disp_sclass = common dso_local global i32 0, align 4
@nv50_dac_power = common dso_local global i32 0, align 4
@nv50_dac_sense = common dso_local global i32 0, align 4
@nv50_sor_power = common dso_local global i32 0, align 4
@nva3_hda_eld = common dso_local global i32 0, align 4
@nva3_hdmi_ctrl = common dso_local global i32 0, align 4
@nv94_sor_dp_func = common dso_local global i32 0, align 4
@nv50_pior_power = common dso_local global i32 0, align 4
@nv50_pior_dp_func = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i8*, i32, %struct.nouveau_object**)* @nva3_disp_ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nva3_disp_ctor(%struct.nouveau_object* %0, %struct.nouveau_object* %1, %struct.nouveau_oclass* %2, i8* %3, i32 %4, %struct.nouveau_object** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_object*, align 8
  %9 = alloca %struct.nouveau_object*, align 8
  %10 = alloca %struct.nouveau_oclass*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nouveau_object**, align 8
  %14 = alloca %struct.nv50_disp_priv*, align 8
  %15 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %8, align 8
  store %struct.nouveau_object* %1, %struct.nouveau_object** %9, align 8
  store %struct.nouveau_oclass* %2, %struct.nouveau_oclass** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.nouveau_object** %5, %struct.nouveau_object*** %13, align 8
  %16 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %17 = load %struct.nouveau_object*, %struct.nouveau_object** %9, align 8
  %18 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %10, align 8
  %19 = call i32 @nouveau_disp_create(%struct.nouveau_object* %16, %struct.nouveau_object* %17, %struct.nouveau_oclass* %18, i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %struct.nv50_disp_priv** %14)
  store i32 %19, i32* %15, align 4
  %20 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %14, align 8
  %21 = call %struct.nouveau_object* @nv_object(%struct.nv50_disp_priv* %20)
  %22 = load %struct.nouveau_object**, %struct.nouveau_object*** %13, align 8
  store %struct.nouveau_object* %21, %struct.nouveau_object** %22, align 8
  %23 = load i32, i32* %15, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %6
  %26 = load i32, i32* %15, align 4
  store i32 %26, i32* %7, align 4
  br label %88

27:                                               ; preds = %6
  %28 = load i32, i32* @nva3_disp_base_oclass, align 4
  %29 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %14, align 8
  %30 = call %struct.TYPE_12__* @nv_engine(%struct.nv50_disp_priv* %29)
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 8
  %32 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %14, align 8
  %33 = call %struct.TYPE_12__* @nv_engine(%struct.nv50_disp_priv* %32)
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  store i32* @nv50_disp_cclass, i32** %34, align 8
  %35 = load i32, i32* @nv50_disp_intr, align 4
  %36 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %14, align 8
  %37 = call %struct.TYPE_11__* @nv_subdev(%struct.nv50_disp_priv* %36)
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 4
  %39 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %14, align 8
  %40 = getelementptr inbounds %struct.nv50_disp_priv, %struct.nv50_disp_priv* %39, i32 0, i32 5
  %41 = load i32, i32* @nv50_disp_intr_supervisor, align 4
  %42 = call i32 @INIT_WORK(i32* %40, i32 %41)
  %43 = load i32, i32* @nva3_disp_sclass, align 4
  %44 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %14, align 8
  %45 = getelementptr inbounds %struct.nv50_disp_priv, %struct.nv50_disp_priv* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 8
  %46 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %14, align 8
  %47 = getelementptr inbounds %struct.nv50_disp_priv, %struct.nv50_disp_priv* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  store i32 2, i32* %48, align 4
  %49 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %14, align 8
  %50 = getelementptr inbounds %struct.nv50_disp_priv, %struct.nv50_disp_priv* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  store i32 3, i32* %51, align 8
  %52 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %14, align 8
  %53 = getelementptr inbounds %struct.nv50_disp_priv, %struct.nv50_disp_priv* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  store i32 4, i32* %54, align 8
  %55 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %14, align 8
  %56 = getelementptr inbounds %struct.nv50_disp_priv, %struct.nv50_disp_priv* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  store i32 3, i32* %57, align 8
  %58 = load i32, i32* @nv50_dac_power, align 4
  %59 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %14, align 8
  %60 = getelementptr inbounds %struct.nv50_disp_priv, %struct.nv50_disp_priv* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 2
  store i32 %58, i32* %61, align 8
  %62 = load i32, i32* @nv50_dac_sense, align 4
  %63 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %14, align 8
  %64 = getelementptr inbounds %struct.nv50_disp_priv, %struct.nv50_disp_priv* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  store i32 %62, i32* %65, align 4
  %66 = load i32, i32* @nv50_sor_power, align 4
  %67 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %14, align 8
  %68 = getelementptr inbounds %struct.nv50_disp_priv, %struct.nv50_disp_priv* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 4
  store i32 %66, i32* %69, align 8
  %70 = load i32, i32* @nva3_hda_eld, align 4
  %71 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %14, align 8
  %72 = getelementptr inbounds %struct.nv50_disp_priv, %struct.nv50_disp_priv* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 3
  store i32 %70, i32* %73, align 4
  %74 = load i32, i32* @nva3_hdmi_ctrl, align 4
  %75 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %14, align 8
  %76 = getelementptr inbounds %struct.nv50_disp_priv, %struct.nv50_disp_priv* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 2
  store i32 %74, i32* %77, align 8
  %78 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %14, align 8
  %79 = getelementptr inbounds %struct.nv50_disp_priv, %struct.nv50_disp_priv* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  store i32* @nv94_sor_dp_func, i32** %80, align 8
  %81 = load i32, i32* @nv50_pior_power, align 4
  %82 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %14, align 8
  %83 = getelementptr inbounds %struct.nv50_disp_priv, %struct.nv50_disp_priv* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 2
  store i32 %81, i32* %84, align 8
  %85 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %14, align 8
  %86 = getelementptr inbounds %struct.nv50_disp_priv, %struct.nv50_disp_priv* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  store i32* @nv50_pior_dp_func, i32** %87, align 8
  store i32 0, i32* %7, align 4
  br label %88

88:                                               ; preds = %27, %25
  %89 = load i32, i32* %7, align 4
  ret i32 %89
}

declare dso_local i32 @nouveau_disp_create(%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i32, i8*, i8*, %struct.nv50_disp_priv**) #1

declare dso_local %struct.nouveau_object* @nv_object(%struct.nv50_disp_priv*) #1

declare dso_local %struct.TYPE_12__* @nv_engine(%struct.nv50_disp_priv*) #1

declare dso_local %struct.TYPE_11__* @nv_subdev(%struct.nv50_disp_priv*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
