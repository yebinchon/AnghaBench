; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv40.c_nv40_graph_context_fini.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv40.c_nv40_graph_context_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i64 }
%struct.nv40_graph_priv = type { i32 }
%struct.nv40_graph_chan = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"ctxprog timeout 0x%08x\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, i32)* @nv40_graph_context_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv40_graph_context_fini(%struct.nouveau_object* %0, i32 %1) #0 {
  %3 = alloca %struct.nouveau_object*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nv40_graph_priv*, align 8
  %6 = alloca %struct.nv40_graph_chan*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %11 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = bitcast i8* %13 to %struct.nv40_graph_priv*
  store %struct.nv40_graph_priv* %14, %struct.nv40_graph_priv** %5, align 8
  %15 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %16 = bitcast %struct.nouveau_object* %15 to i8*
  %17 = bitcast i8* %16 to %struct.nv40_graph_chan*
  store %struct.nv40_graph_chan* %17, %struct.nv40_graph_chan** %6, align 8
  %18 = load %struct.nv40_graph_chan*, %struct.nv40_graph_chan** %6, align 8
  %19 = call %struct.TYPE_2__* @nv_gpuobj(%struct.nv40_graph_chan* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = ashr i32 %21, 4
  %23 = or i32 16777216, %22
  store i32 %23, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %24 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %5, align 8
  %25 = call i32 @nv_mask(%struct.nv40_graph_priv* %24, i32 4196128, i32 1, i32 0)
  %26 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %5, align 8
  %27 = call i32 @nv_rd32(%struct.nv40_graph_priv* %26, i32 4195116)
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %58

30:                                               ; preds = %2
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %55

33:                                               ; preds = %30
  %34 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %5, align 8
  %35 = call i32 @nv_wr32(%struct.nv40_graph_priv* %34, i32 4196128, i32 0)
  %36 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %5, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @nv_wr32(%struct.nv40_graph_priv* %36, i32 4196228, i32 %37)
  %39 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %5, align 8
  %40 = call i32 @nv_mask(%struct.nv40_graph_priv* %39, i32 4195088, i32 32, i32 32)
  %41 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %5, align 8
  %42 = call i32 @nv_mask(%struct.nv40_graph_priv* %41, i32 4195076, i32 1, i32 1)
  %43 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %5, align 8
  %44 = call i32 @nv_wait(%struct.nv40_graph_priv* %43, i32 4195072, i32 1, i32 0)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %33
  %47 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %5, align 8
  %48 = call i32 @nv_rd32(%struct.nv40_graph_priv* %47, i32 4195080)
  store i32 %48, i32* %9, align 4
  %49 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %5, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @nv_warn(%struct.nv40_graph_priv* %49, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @EBUSY, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %46, %33
  br label %55

55:                                               ; preds = %54, %30
  %56 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %5, align 8
  %57 = call i32 @nv_mask(%struct.nv40_graph_priv* %56, i32 4195116, i32 16777216, i32 0)
  br label %58

58:                                               ; preds = %55, %2
  %59 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %5, align 8
  %60 = call i32 @nv_rd32(%struct.nv40_graph_priv* %59, i32 4195120)
  %61 = load i32, i32* %7, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %5, align 8
  %65 = call i32 @nv_mask(%struct.nv40_graph_priv* %64, i32 4195120, i32 16777216, i32 0)
  br label %66

66:                                               ; preds = %63, %58
  %67 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %5, align 8
  %68 = call i32 @nv_mask(%struct.nv40_graph_priv* %67, i32 4196128, i32 1, i32 1)
  %69 = load i32, i32* %8, align 4
  ret i32 %69
}

declare dso_local %struct.TYPE_2__* @nv_gpuobj(%struct.nv40_graph_chan*) #1

declare dso_local i32 @nv_mask(%struct.nv40_graph_priv*, i32, i32, i32) #1

declare dso_local i32 @nv_rd32(%struct.nv40_graph_priv*, i32) #1

declare dso_local i32 @nv_wr32(%struct.nv40_graph_priv*, i32, i32) #1

declare dso_local i32 @nv_wait(%struct.nv40_graph_priv*, i32, i32, i32) #1

declare dso_local i32 @nv_warn(%struct.nv40_graph_priv*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
