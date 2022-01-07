; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv30.c_nv30_graph_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv30.c_nv30_graph_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_engine = type { i32 (%struct.nouveau_engine*, i32)* }
%struct.nv20_graph_priv = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.nouveau_fb = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@NV20_PGRAPH_CHANNEL_CTX_TABLE = common dso_local global i32 0, align 4
@NV03_PGRAPH_INTR = common dso_local global i32 0, align 4
@NV03_PGRAPH_INTR_EN = common dso_local global i32 0, align 4
@NV04_PGRAPH_DEBUG_0 = common dso_local global i32 0, align 4
@NV04_PGRAPH_DEBUG_1 = common dso_local global i32 0, align 4
@NV04_PGRAPH_DEBUG_3 = common dso_local global i32 0, align 4
@NV10_PGRAPH_DEBUG_4 = common dso_local global i32 0, align 4
@NV04_PGRAPH_LIMIT_VIOL_PIX = common dso_local global i32 0, align 4
@NV10_PGRAPH_RDI_INDEX = common dso_local global i32 0, align 4
@NV10_PGRAPH_RDI_DATA = common dso_local global i32 0, align 4
@NV10_PGRAPH_CTX_CONTROL = common dso_local global i32 0, align 4
@NV10_PGRAPH_STATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv30_graph_init(%struct.nouveau_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nouveau_object*, align 8
  %4 = alloca %struct.nouveau_engine*, align 8
  %5 = alloca %struct.nv20_graph_priv*, align 8
  %6 = alloca %struct.nouveau_fb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %3, align 8
  %9 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %10 = call %struct.nouveau_engine* @nv_engine(%struct.nouveau_object* %9)
  store %struct.nouveau_engine* %10, %struct.nouveau_engine** %4, align 8
  %11 = load %struct.nouveau_engine*, %struct.nouveau_engine** %4, align 8
  %12 = bitcast %struct.nouveau_engine* %11 to i8*
  %13 = bitcast i8* %12 to %struct.nv20_graph_priv*
  store %struct.nv20_graph_priv* %13, %struct.nv20_graph_priv** %5, align 8
  %14 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %15 = call %struct.nouveau_fb* @nouveau_fb(%struct.nouveau_object* %14)
  store %struct.nouveau_fb* %15, %struct.nouveau_fb** %6, align 8
  %16 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %17 = getelementptr inbounds %struct.nv20_graph_priv, %struct.nv20_graph_priv* %16, i32 0, i32 1
  %18 = call i32 @nouveau_graph_init(i32* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %2, align 4
  br label %167

23:                                               ; preds = %1
  %24 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %25 = load i32, i32* @NV20_PGRAPH_CHANNEL_CTX_TABLE, align 4
  %26 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %27 = getelementptr inbounds %struct.nv20_graph_priv, %struct.nv20_graph_priv* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = ashr i32 %30, 4
  %32 = call i32 @nv_wr32(%struct.nv20_graph_priv* %24, i32 %25, i32 %31)
  %33 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %34 = load i32, i32* @NV03_PGRAPH_INTR, align 4
  %35 = call i32 @nv_wr32(%struct.nv20_graph_priv* %33, i32 %34, i32 -1)
  %36 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %37 = load i32, i32* @NV03_PGRAPH_INTR_EN, align 4
  %38 = call i32 @nv_wr32(%struct.nv20_graph_priv* %36, i32 %37, i32 -1)
  %39 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %40 = load i32, i32* @NV04_PGRAPH_DEBUG_0, align 4
  %41 = call i32 @nv_wr32(%struct.nv20_graph_priv* %39, i32 %40, i32 -1)
  %42 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %43 = load i32, i32* @NV04_PGRAPH_DEBUG_0, align 4
  %44 = call i32 @nv_wr32(%struct.nv20_graph_priv* %42, i32 %43, i32 0)
  %45 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %46 = load i32, i32* @NV04_PGRAPH_DEBUG_1, align 4
  %47 = call i32 @nv_wr32(%struct.nv20_graph_priv* %45, i32 %46, i32 1074956224)
  %48 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %49 = call i32 @nv_wr32(%struct.nv20_graph_priv* %48, i32 4196496, i32 28599295)
  %50 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %51 = load i32, i32* @NV04_PGRAPH_DEBUG_3, align 4
  %52 = call i32 @nv_wr32(%struct.nv20_graph_priv* %50, i32 %51, i32 -220330891)
  %53 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %54 = load i32, i32* @NV10_PGRAPH_DEBUG_4, align 4
  %55 = call i32 @nv_wr32(%struct.nv20_graph_priv* %53, i32 %54, i32 32768)
  %56 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %57 = load i32, i32* @NV04_PGRAPH_LIMIT_VIOL_PIX, align 4
  %58 = call i32 @nv_wr32(%struct.nv20_graph_priv* %56, i32 %57, i32 -263462922)
  %59 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %60 = call i32 @nv_wr32(%struct.nv20_graph_priv* %59, i32 4197248, i32 268687496)
  %61 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %62 = call i32 @nv_wr32(%struct.nv20_graph_priv* %61, i32 4197252, i32 201326592)
  %63 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %64 = call i32 @nv_wr32(%struct.nv20_graph_priv* %63, i32 4194456, i32 0)
  %65 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %66 = call i32 @nv_wr32(%struct.nv20_graph_priv* %65, i32 4194460, i32 371968)
  %67 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %68 = call i32 @nv_wr32(%struct.nv20_graph_priv* %67, i32 4197256, i32 1660879103)
  %69 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %70 = call i32 @nv_wr32(%struct.nv20_graph_priv* %69, i32 4194464, i32 0)
  %71 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %72 = call i32 @nv_wr32(%struct.nv20_graph_priv* %71, i32 4194468, i32 8)
  %73 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %74 = call i32 @nv_wr32(%struct.nv20_graph_priv* %73, i32 4196520, i32 -1216044032)
  %75 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %76 = call i32 @nv_wr32(%struct.nv20_graph_priv* %75, i32 4197280, i32 3114629)
  %77 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %78 = call i32 @nv_wr32(%struct.nv20_graph_priv* %77, i32 4197284, i32 2301759)
  %79 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %80 = call i32 @nv_wr32(%struct.nv20_graph_priv* %79, i32 4196516, i32 1073741856)
  %81 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %82 = call %struct.TYPE_6__* @nv_device(%struct.nv20_graph_priv* %81)
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 52
  br i1 %85, label %86, label %111

86:                                               ; preds = %23
  %87 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %88 = load i32, i32* @NV10_PGRAPH_RDI_INDEX, align 4
  %89 = call i32 @nv_wr32(%struct.nv20_graph_priv* %87, i32 %88, i32 15335428)
  %90 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %91 = load i32, i32* @NV10_PGRAPH_RDI_DATA, align 4
  %92 = call i32 @nv_wr32(%struct.nv20_graph_priv* %90, i32 %91, i32 2097665)
  %93 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %94 = load i32, i32* @NV10_PGRAPH_RDI_INDEX, align 4
  %95 = call i32 @nv_wr32(%struct.nv20_graph_priv* %93, i32 %94, i32 15335432)
  %96 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %97 = load i32, i32* @NV10_PGRAPH_RDI_DATA, align 4
  %98 = call i32 @nv_wr32(%struct.nv20_graph_priv* %96, i32 %97, i32 8)
  %99 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %100 = load i32, i32* @NV10_PGRAPH_RDI_INDEX, align 4
  %101 = call i32 @nv_wr32(%struct.nv20_graph_priv* %99, i32 %100, i32 15335424)
  %102 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %103 = load i32, i32* @NV10_PGRAPH_RDI_DATA, align 4
  %104 = call i32 @nv_wr32(%struct.nv20_graph_priv* %102, i32 %103, i32 50)
  %105 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %106 = load i32, i32* @NV10_PGRAPH_RDI_INDEX, align 4
  %107 = call i32 @nv_wr32(%struct.nv20_graph_priv* %105, i32 %106, i32 14680068)
  %108 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %109 = load i32, i32* @NV10_PGRAPH_RDI_DATA, align 4
  %110 = call i32 @nv_wr32(%struct.nv20_graph_priv* %108, i32 %109, i32 2)
  br label %111

111:                                              ; preds = %86, %23
  %112 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %113 = call i32 @nv_wr32(%struct.nv20_graph_priv* %112, i32 4194496, i32 22)
  store i32 0, i32* %8, align 4
  br label %114

114:                                              ; preds = %128, %111
  %115 = load i32, i32* %8, align 4
  %116 = load %struct.nouveau_fb*, %struct.nouveau_fb** %6, align 8
  %117 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = icmp slt i32 %115, %119
  br i1 %120, label %121, label %131

121:                                              ; preds = %114
  %122 = load %struct.nouveau_engine*, %struct.nouveau_engine** %4, align 8
  %123 = getelementptr inbounds %struct.nouveau_engine, %struct.nouveau_engine* %122, i32 0, i32 0
  %124 = load i32 (%struct.nouveau_engine*, i32)*, i32 (%struct.nouveau_engine*, i32)** %123, align 8
  %125 = load %struct.nouveau_engine*, %struct.nouveau_engine** %4, align 8
  %126 = load i32, i32* %8, align 4
  %127 = call i32 %124(%struct.nouveau_engine* %125, i32 %126)
  br label %128

128:                                              ; preds = %121
  %129 = load i32, i32* %8, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %8, align 4
  br label %114

131:                                              ; preds = %114
  %132 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %133 = load i32, i32* @NV10_PGRAPH_CTX_CONTROL, align 4
  %134 = call i32 @nv_wr32(%struct.nv20_graph_priv* %132, i32 %133, i32 268435712)
  %135 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %136 = load i32, i32* @NV10_PGRAPH_STATE, align 4
  %137 = call i32 @nv_wr32(%struct.nv20_graph_priv* %135, i32 %136, i32 -1)
  %138 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %139 = call i32 @nv_wr32(%struct.nv20_graph_priv* %138, i32 4196188, i32 1)
  %140 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %141 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %142 = call i32 @nv_rd32(%struct.nv20_graph_priv* %141, i32 1049088)
  %143 = call i32 @nv_wr32(%struct.nv20_graph_priv* %140, i32 4196772, i32 %142)
  %144 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %145 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %146 = call i32 @nv_rd32(%struct.nv20_graph_priv* %145, i32 1049092)
  %147 = call i32 @nv_wr32(%struct.nv20_graph_priv* %144, i32 4196776, i32 %146)
  %148 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %149 = call %struct.TYPE_6__* @nv_device(%struct.nv20_graph_priv* %148)
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = icmp ne i32 %151, 52
  br i1 %152, label %153, label %166

153:                                              ; preds = %131
  %154 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %155 = call i32 @nv_wr32(%struct.nv20_graph_priv* %154, i32 4196176, i32 15335424)
  %156 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %157 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %158 = call i32 @nv_rd32(%struct.nv20_graph_priv* %157, i32 1049088)
  %159 = call i32 @nv_wr32(%struct.nv20_graph_priv* %156, i32 4196180, i32 %158)
  %160 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %161 = call i32 @nv_wr32(%struct.nv20_graph_priv* %160, i32 4196176, i32 15335428)
  %162 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %163 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %164 = call i32 @nv_rd32(%struct.nv20_graph_priv* %163, i32 1049092)
  %165 = call i32 @nv_wr32(%struct.nv20_graph_priv* %162, i32 4196180, i32 %164)
  br label %166

166:                                              ; preds = %153, %131
  store i32 0, i32* %2, align 4
  br label %167

167:                                              ; preds = %166, %21
  %168 = load i32, i32* %2, align 4
  ret i32 %168
}

declare dso_local %struct.nouveau_engine* @nv_engine(%struct.nouveau_object*) #1

declare dso_local %struct.nouveau_fb* @nouveau_fb(%struct.nouveau_object*) #1

declare dso_local i32 @nouveau_graph_init(i32*) #1

declare dso_local i32 @nv_wr32(%struct.nv20_graph_priv*, i32, i32) #1

declare dso_local %struct.TYPE_6__* @nv_device(%struct.nv20_graph_priv*) #1

declare dso_local i32 @nv_rd32(%struct.nv20_graph_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
