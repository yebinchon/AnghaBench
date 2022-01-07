; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_nve0.c_nve0_disp_ctor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_nve0.c_nve0_disp_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_oclass = type { i32 }
%struct.nv50_disp_priv = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_8__ = type { i32, i32*, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_10__ = type { i32*, i32 }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"PDISP\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"display\00", align 1
@nve0_disp_base_oclass = common dso_local global i32 0, align 4
@nv50_disp_cclass = common dso_local global i32 0, align 4
@nvd0_disp_intr = common dso_local global i32 0, align 4
@nvd0_disp_intr_supervisor = common dso_local global i32 0, align 4
@nve0_disp_sclass = common dso_local global i32 0, align 4
@nv50_dac_power = common dso_local global i32 0, align 4
@nv50_dac_sense = common dso_local global i32 0, align 4
@nv50_sor_power = common dso_local global i32 0, align 4
@nvd0_hda_eld = common dso_local global i32 0, align 4
@nvd0_hdmi_ctrl = common dso_local global i32 0, align 4
@nvd0_sor_dp_func = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i8*, i32, %struct.nouveau_object**)* @nve0_disp_ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nve0_disp_ctor(%struct.nouveau_object* %0, %struct.nouveau_object* %1, %struct.nouveau_oclass* %2, i8* %3, i32 %4, %struct.nouveau_object** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_object*, align 8
  %9 = alloca %struct.nouveau_object*, align 8
  %10 = alloca %struct.nouveau_oclass*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nouveau_object**, align 8
  %14 = alloca %struct.nv50_disp_priv*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %8, align 8
  store %struct.nouveau_object* %1, %struct.nouveau_object** %9, align 8
  store %struct.nouveau_oclass* %2, %struct.nouveau_oclass** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.nouveau_object** %5, %struct.nouveau_object*** %13, align 8
  %17 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %18 = call i32 @nv_rd32(%struct.nouveau_object* %17, i32 140360)
  store i32 %18, i32* %15, align 4
  %19 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %20 = load %struct.nouveau_object*, %struct.nouveau_object** %9, align 8
  %21 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %10, align 8
  %22 = load i32, i32* %15, align 4
  %23 = call i32 @nouveau_disp_create(%struct.nouveau_object* %19, %struct.nouveau_object* %20, %struct.nouveau_oclass* %21, i32 %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %struct.nv50_disp_priv** %14)
  store i32 %23, i32* %16, align 4
  %24 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %14, align 8
  %25 = call %struct.nouveau_object* @nv_object(%struct.nv50_disp_priv* %24)
  %26 = load %struct.nouveau_object**, %struct.nouveau_object*** %13, align 8
  store %struct.nouveau_object* %25, %struct.nouveau_object** %26, align 8
  %27 = load i32, i32* %16, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %6
  %30 = load i32, i32* %16, align 4
  store i32 %30, i32* %7, align 4
  br label %83

31:                                               ; preds = %6
  %32 = load i32, i32* @nve0_disp_base_oclass, align 4
  %33 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %14, align 8
  %34 = call %struct.TYPE_10__* @nv_engine(%struct.nv50_disp_priv* %33)
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  store i32 %32, i32* %35, align 8
  %36 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %14, align 8
  %37 = call %struct.TYPE_10__* @nv_engine(%struct.nv50_disp_priv* %36)
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  store i32* @nv50_disp_cclass, i32** %38, align 8
  %39 = load i32, i32* @nvd0_disp_intr, align 4
  %40 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %14, align 8
  %41 = call %struct.TYPE_9__* @nv_subdev(%struct.nv50_disp_priv* %40)
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 4
  %43 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %14, align 8
  %44 = getelementptr inbounds %struct.nv50_disp_priv, %struct.nv50_disp_priv* %43, i32 0, i32 4
  %45 = load i32, i32* @nvd0_disp_intr_supervisor, align 4
  %46 = call i32 @INIT_WORK(i32* %44, i32 %45)
  %47 = load i32, i32* @nve0_disp_sclass, align 4
  %48 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %14, align 8
  %49 = getelementptr inbounds %struct.nv50_disp_priv, %struct.nv50_disp_priv* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* %15, align 4
  %51 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %14, align 8
  %52 = getelementptr inbounds %struct.nv50_disp_priv, %struct.nv50_disp_priv* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 4
  %54 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %14, align 8
  %55 = getelementptr inbounds %struct.nv50_disp_priv, %struct.nv50_disp_priv* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  store i32 3, i32* %56, align 8
  %57 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %14, align 8
  %58 = getelementptr inbounds %struct.nv50_disp_priv, %struct.nv50_disp_priv* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  store i32 4, i32* %59, align 8
  %60 = load i32, i32* @nv50_dac_power, align 4
  %61 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %14, align 8
  %62 = getelementptr inbounds %struct.nv50_disp_priv, %struct.nv50_disp_priv* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 2
  store i32 %60, i32* %63, align 8
  %64 = load i32, i32* @nv50_dac_sense, align 4
  %65 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %14, align 8
  %66 = getelementptr inbounds %struct.nv50_disp_priv, %struct.nv50_disp_priv* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  store i32 %64, i32* %67, align 4
  %68 = load i32, i32* @nv50_sor_power, align 4
  %69 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %14, align 8
  %70 = getelementptr inbounds %struct.nv50_disp_priv, %struct.nv50_disp_priv* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 4
  store i32 %68, i32* %71, align 8
  %72 = load i32, i32* @nvd0_hda_eld, align 4
  %73 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %14, align 8
  %74 = getelementptr inbounds %struct.nv50_disp_priv, %struct.nv50_disp_priv* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 3
  store i32 %72, i32* %75, align 4
  %76 = load i32, i32* @nvd0_hdmi_ctrl, align 4
  %77 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %14, align 8
  %78 = getelementptr inbounds %struct.nv50_disp_priv, %struct.nv50_disp_priv* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 2
  store i32 %76, i32* %79, align 8
  %80 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %14, align 8
  %81 = getelementptr inbounds %struct.nv50_disp_priv, %struct.nv50_disp_priv* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  store i32* @nvd0_sor_dp_func, i32** %82, align 8
  store i32 0, i32* %7, align 4
  br label %83

83:                                               ; preds = %31, %29
  %84 = load i32, i32* %7, align 4
  ret i32 %84
}

declare dso_local i32 @nv_rd32(%struct.nouveau_object*, i32) #1

declare dso_local i32 @nouveau_disp_create(%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i32, i8*, i8*, %struct.nv50_disp_priv**) #1

declare dso_local %struct.nouveau_object* @nv_object(%struct.nv50_disp_priv*) #1

declare dso_local %struct.TYPE_10__* @nv_engine(%struct.nv50_disp_priv*) #1

declare dso_local %struct.TYPE_9__* @nv_subdev(%struct.nv50_disp_priv*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
