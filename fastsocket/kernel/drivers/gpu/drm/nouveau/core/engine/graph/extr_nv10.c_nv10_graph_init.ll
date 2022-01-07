; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv10.c_nv10_graph_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv10.c_nv10_graph_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_engine = type { i32 (%struct.nouveau_engine*, i32)* }
%struct.nouveau_fb = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.nv10_graph_priv = type { i32 }
%struct.TYPE_4__ = type { i32 }

@NV03_PGRAPH_INTR = common dso_local global i32 0, align 4
@NV03_PGRAPH_INTR_EN = common dso_local global i32 0, align 4
@NV04_PGRAPH_DEBUG_0 = common dso_local global i32 0, align 4
@NV04_PGRAPH_DEBUG_1 = common dso_local global i32 0, align 4
@NV04_PGRAPH_DEBUG_2 = common dso_local global i32 0, align 4
@NV04_PGRAPH_DEBUG_3 = common dso_local global i32 0, align 4
@NV10_PGRAPH_DEBUG_4 = common dso_local global i32 0, align 4
@NV10_PGRAPH_STATE = common dso_local global i32 0, align 4
@NV10_PGRAPH_CTX_USER = common dso_local global i32 0, align 4
@NV10_PGRAPH_CTX_CONTROL = common dso_local global i32 0, align 4
@NV10_PGRAPH_FFINTFC_ST2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*)* @nv10_graph_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv10_graph_init(%struct.nouveau_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nouveau_object*, align 8
  %4 = alloca %struct.nouveau_engine*, align 8
  %5 = alloca %struct.nouveau_fb*, align 8
  %6 = alloca %struct.nv10_graph_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %3, align 8
  %9 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %10 = call %struct.nouveau_engine* @nv_engine(%struct.nouveau_object* %9)
  store %struct.nouveau_engine* %10, %struct.nouveau_engine** %4, align 8
  %11 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %12 = call %struct.nouveau_fb* @nouveau_fb(%struct.nouveau_object* %11)
  store %struct.nouveau_fb* %12, %struct.nouveau_fb** %5, align 8
  %13 = load %struct.nouveau_engine*, %struct.nouveau_engine** %4, align 8
  %14 = bitcast %struct.nouveau_engine* %13 to i8*
  %15 = bitcast i8* %14 to %struct.nv10_graph_priv*
  store %struct.nv10_graph_priv* %15, %struct.nv10_graph_priv** %6, align 8
  %16 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %6, align 8
  %17 = getelementptr inbounds %struct.nv10_graph_priv, %struct.nv10_graph_priv* %16, i32 0, i32 0
  %18 = call i32 @nouveau_graph_init(i32* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %2, align 4
  br label %112

23:                                               ; preds = %1
  %24 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %6, align 8
  %25 = load i32, i32* @NV03_PGRAPH_INTR, align 4
  %26 = call i32 @nv_wr32(%struct.nv10_graph_priv* %24, i32 %25, i32 -1)
  %27 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %6, align 8
  %28 = load i32, i32* @NV03_PGRAPH_INTR_EN, align 4
  %29 = call i32 @nv_wr32(%struct.nv10_graph_priv* %27, i32 %28, i32 -1)
  %30 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %6, align 8
  %31 = load i32, i32* @NV04_PGRAPH_DEBUG_0, align 4
  %32 = call i32 @nv_wr32(%struct.nv10_graph_priv* %30, i32 %31, i32 -1)
  %33 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %6, align 8
  %34 = load i32, i32* @NV04_PGRAPH_DEBUG_0, align 4
  %35 = call i32 @nv_wr32(%struct.nv10_graph_priv* %33, i32 %34, i32 0)
  %36 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %6, align 8
  %37 = load i32, i32* @NV04_PGRAPH_DEBUG_1, align 4
  %38 = call i32 @nv_wr32(%struct.nv10_graph_priv* %36, i32 %37, i32 1148672)
  %39 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %6, align 8
  %40 = load i32, i32* @NV04_PGRAPH_DEBUG_2, align 4
  %41 = call i32 @nv_wr32(%struct.nv10_graph_priv* %39, i32 %40, i32 637086425)
  %42 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %6, align 8
  %43 = load i32, i32* @NV04_PGRAPH_DEBUG_3, align 4
  %44 = call i32 @nv_wr32(%struct.nv10_graph_priv* %42, i32 %43, i32 -169998288)
  %45 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %6, align 8
  %46 = call %struct.TYPE_4__* @nv_device(%struct.nv10_graph_priv* %45)
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp sge i32 %48, 23
  br i1 %49, label %50, label %62

50:                                               ; preds = %23
  %51 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %6, align 8
  %52 = load i32, i32* @NV10_PGRAPH_DEBUG_4, align 4
  %53 = call i32 @nv_wr32(%struct.nv10_graph_priv* %51, i32 %52, i32 520093696)
  %54 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %6, align 8
  %55 = call i32 @nv_wr32(%struct.nv10_graph_priv* %54, i32 4196880, i32 67059638)
  %56 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %6, align 8
  %57 = call i32 @nv_wr32(%struct.nv10_graph_priv* %56, i32 4196408, i32 3114628)
  %58 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %6, align 8
  %59 = call i32 @nv_wr32(%struct.nv10_graph_priv* %58, i32 4196412, i32 1138495)
  %60 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %6, align 8
  %61 = call i32 @nv_wr32(%struct.nv10_graph_priv* %60, i32 4196016, i32 1073741856)
  br label %66

62:                                               ; preds = %23
  %63 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %6, align 8
  %64 = load i32, i32* @NV10_PGRAPH_DEBUG_4, align 4
  %65 = call i32 @nv_wr32(%struct.nv10_graph_priv* %63, i32 %64, i32 0)
  br label %66

66:                                               ; preds = %62, %50
  store i32 0, i32* %8, align 4
  br label %67

67:                                               ; preds = %81, %66
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.nouveau_fb*, %struct.nouveau_fb** %5, align 8
  %70 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %68, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %67
  %75 = load %struct.nouveau_engine*, %struct.nouveau_engine** %4, align 8
  %76 = getelementptr inbounds %struct.nouveau_engine, %struct.nouveau_engine* %75, i32 0, i32 0
  %77 = load i32 (%struct.nouveau_engine*, i32)*, i32 (%struct.nouveau_engine*, i32)** %76, align 8
  %78 = load %struct.nouveau_engine*, %struct.nouveau_engine** %4, align 8
  %79 = load i32, i32* %8, align 4
  %80 = call i32 %77(%struct.nouveau_engine* %78, i32 %79)
  br label %81

81:                                               ; preds = %74
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %8, align 4
  br label %67

84:                                               ; preds = %67
  %85 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %6, align 8
  %86 = call i32 @NV10_PGRAPH_CTX_SWITCH(i32 0)
  %87 = call i32 @nv_wr32(%struct.nv10_graph_priv* %85, i32 %86, i32 0)
  %88 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %6, align 8
  %89 = call i32 @NV10_PGRAPH_CTX_SWITCH(i32 1)
  %90 = call i32 @nv_wr32(%struct.nv10_graph_priv* %88, i32 %89, i32 0)
  %91 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %6, align 8
  %92 = call i32 @NV10_PGRAPH_CTX_SWITCH(i32 2)
  %93 = call i32 @nv_wr32(%struct.nv10_graph_priv* %91, i32 %92, i32 0)
  %94 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %6, align 8
  %95 = call i32 @NV10_PGRAPH_CTX_SWITCH(i32 3)
  %96 = call i32 @nv_wr32(%struct.nv10_graph_priv* %94, i32 %95, i32 0)
  %97 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %6, align 8
  %98 = call i32 @NV10_PGRAPH_CTX_SWITCH(i32 4)
  %99 = call i32 @nv_wr32(%struct.nv10_graph_priv* %97, i32 %98, i32 0)
  %100 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %6, align 8
  %101 = load i32, i32* @NV10_PGRAPH_STATE, align 4
  %102 = call i32 @nv_wr32(%struct.nv10_graph_priv* %100, i32 %101, i32 -1)
  %103 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %6, align 8
  %104 = load i32, i32* @NV10_PGRAPH_CTX_USER, align 4
  %105 = call i32 @nv_mask(%struct.nv10_graph_priv* %103, i32 %104, i32 -16777216, i32 520093696)
  %106 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %6, align 8
  %107 = load i32, i32* @NV10_PGRAPH_CTX_CONTROL, align 4
  %108 = call i32 @nv_wr32(%struct.nv10_graph_priv* %106, i32 %107, i32 268435712)
  %109 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %6, align 8
  %110 = load i32, i32* @NV10_PGRAPH_FFINTFC_ST2, align 4
  %111 = call i32 @nv_wr32(%struct.nv10_graph_priv* %109, i32 %110, i32 134217728)
  store i32 0, i32* %2, align 4
  br label %112

112:                                              ; preds = %84, %21
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local %struct.nouveau_engine* @nv_engine(%struct.nouveau_object*) #1

declare dso_local %struct.nouveau_fb* @nouveau_fb(%struct.nouveau_object*) #1

declare dso_local i32 @nouveau_graph_init(i32*) #1

declare dso_local i32 @nv_wr32(%struct.nv10_graph_priv*, i32, i32) #1

declare dso_local %struct.TYPE_4__* @nv_device(%struct.nv10_graph_priv*) #1

declare dso_local i32 @NV10_PGRAPH_CTX_SWITCH(i32) #1

declare dso_local i32 @nv_mask(%struct.nv10_graph_priv*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
