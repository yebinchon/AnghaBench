; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv40.c_nv40_graph_tile_prog.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv40.c_nv40_graph_tile_prog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_engine = type { i32 }
%struct.nouveau_fb_tile = type { i32, i32, i32, i32 }
%struct.nouveau_fifo = type { i32 (%struct.nouveau_fifo*, i64*)*, i32 (%struct.nouveau_fifo*, i64*)* }
%struct.nv40_graph_priv = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nouveau_fb_tile* }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_engine*, i32)* @nv40_graph_tile_prog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv40_graph_tile_prog(%struct.nouveau_engine* %0, i32 %1) #0 {
  %3 = alloca %struct.nouveau_engine*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nouveau_fb_tile*, align 8
  %6 = alloca %struct.nouveau_fifo*, align 8
  %7 = alloca %struct.nv40_graph_priv*, align 8
  %8 = alloca i64, align 8
  store %struct.nouveau_engine* %0, %struct.nouveau_engine** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.nouveau_engine*, %struct.nouveau_engine** %3, align 8
  %10 = call %struct.TYPE_6__* @nouveau_fb(%struct.nouveau_engine* %9)
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.nouveau_fb_tile*, %struct.nouveau_fb_tile** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.nouveau_fb_tile, %struct.nouveau_fb_tile* %13, i64 %15
  store %struct.nouveau_fb_tile* %16, %struct.nouveau_fb_tile** %5, align 8
  %17 = load %struct.nouveau_engine*, %struct.nouveau_engine** %3, align 8
  %18 = call %struct.nouveau_fifo* @nouveau_fifo(%struct.nouveau_engine* %17)
  store %struct.nouveau_fifo* %18, %struct.nouveau_fifo** %6, align 8
  %19 = load %struct.nouveau_engine*, %struct.nouveau_engine** %3, align 8
  %20 = bitcast %struct.nouveau_engine* %19 to i8*
  %21 = bitcast i8* %20 to %struct.nv40_graph_priv*
  store %struct.nv40_graph_priv* %21, %struct.nv40_graph_priv** %7, align 8
  %22 = load %struct.nouveau_fifo*, %struct.nouveau_fifo** %6, align 8
  %23 = getelementptr inbounds %struct.nouveau_fifo, %struct.nouveau_fifo* %22, i32 0, i32 1
  %24 = load i32 (%struct.nouveau_fifo*, i64*)*, i32 (%struct.nouveau_fifo*, i64*)** %23, align 8
  %25 = load %struct.nouveau_fifo*, %struct.nouveau_fifo** %6, align 8
  %26 = call i32 %24(%struct.nouveau_fifo* %25, i64* %8)
  %27 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %7, align 8
  %28 = call i32 @nv04_graph_idle(%struct.nv40_graph_priv* %27)
  %29 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %7, align 8
  %30 = call %struct.TYPE_5__* @nv_device(%struct.nv40_graph_priv* %29)
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %198 [
    i32 64, label %33
    i32 65, label %33
    i32 66, label %33
    i32 67, label %33
    i32 69, label %33
    i32 78, label %33
    i32 68, label %112
    i32 74, label %112
    i32 70, label %134
    i32 76, label %134
    i32 71, label %134
    i32 73, label %134
    i32 75, label %134
    i32 99, label %134
    i32 103, label %134
    i32 104, label %134
  ]

33:                                               ; preds = %2, %2, %2, %2, %2, %2
  %34 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %7, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @NV20_PGRAPH_TSIZE(i32 %35)
  %37 = load %struct.nouveau_fb_tile*, %struct.nouveau_fb_tile** %5, align 8
  %38 = getelementptr inbounds %struct.nouveau_fb_tile, %struct.nouveau_fb_tile* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @nv_wr32(%struct.nv40_graph_priv* %34, i32 %36, i32 %39)
  %41 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %7, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @NV20_PGRAPH_TLIMIT(i32 %42)
  %44 = load %struct.nouveau_fb_tile*, %struct.nouveau_fb_tile** %5, align 8
  %45 = getelementptr inbounds %struct.nouveau_fb_tile, %struct.nouveau_fb_tile* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @nv_wr32(%struct.nv40_graph_priv* %41, i32 %43, i32 %46)
  %48 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %7, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @NV20_PGRAPH_TILE(i32 %49)
  %51 = load %struct.nouveau_fb_tile*, %struct.nouveau_fb_tile** %5, align 8
  %52 = getelementptr inbounds %struct.nouveau_fb_tile, %struct.nouveau_fb_tile* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @nv_wr32(%struct.nv40_graph_priv* %48, i32 %50, i32 %53)
  %55 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %7, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @NV40_PGRAPH_TSIZE1(i32 %56)
  %58 = load %struct.nouveau_fb_tile*, %struct.nouveau_fb_tile** %5, align 8
  %59 = getelementptr inbounds %struct.nouveau_fb_tile, %struct.nouveau_fb_tile* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @nv_wr32(%struct.nv40_graph_priv* %55, i32 %57, i32 %60)
  %62 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %7, align 8
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @NV40_PGRAPH_TLIMIT1(i32 %63)
  %65 = load %struct.nouveau_fb_tile*, %struct.nouveau_fb_tile** %5, align 8
  %66 = getelementptr inbounds %struct.nouveau_fb_tile, %struct.nouveau_fb_tile* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @nv_wr32(%struct.nv40_graph_priv* %62, i32 %64, i32 %67)
  %69 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %7, align 8
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @NV40_PGRAPH_TILE1(i32 %70)
  %72 = load %struct.nouveau_fb_tile*, %struct.nouveau_fb_tile** %5, align 8
  %73 = getelementptr inbounds %struct.nouveau_fb_tile, %struct.nouveau_fb_tile* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @nv_wr32(%struct.nv40_graph_priv* %69, i32 %71, i32 %74)
  %76 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %7, align 8
  %77 = call %struct.TYPE_5__* @nv_device(%struct.nv40_graph_priv* %76)
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  switch i32 %79, label %110 [
    i32 64, label %80
    i32 69, label %80
    i32 65, label %95
    i32 66, label %95
    i32 67, label %95
  ]

80:                                               ; preds = %33, %33
  %81 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %7, align 8
  %82 = load i32, i32* %4, align 4
  %83 = call i32 @NV20_PGRAPH_ZCOMP(i32 %82)
  %84 = load %struct.nouveau_fb_tile*, %struct.nouveau_fb_tile** %5, align 8
  %85 = getelementptr inbounds %struct.nouveau_fb_tile, %struct.nouveau_fb_tile* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @nv_wr32(%struct.nv40_graph_priv* %81, i32 %83, i32 %86)
  %88 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %7, align 8
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @NV40_PGRAPH_ZCOMP1(i32 %89)
  %91 = load %struct.nouveau_fb_tile*, %struct.nouveau_fb_tile** %5, align 8
  %92 = getelementptr inbounds %struct.nouveau_fb_tile, %struct.nouveau_fb_tile* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @nv_wr32(%struct.nv40_graph_priv* %88, i32 %90, i32 %93)
  br label %111

95:                                               ; preds = %33, %33, %33
  %96 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %7, align 8
  %97 = load i32, i32* %4, align 4
  %98 = call i32 @NV41_PGRAPH_ZCOMP0(i32 %97)
  %99 = load %struct.nouveau_fb_tile*, %struct.nouveau_fb_tile** %5, align 8
  %100 = getelementptr inbounds %struct.nouveau_fb_tile, %struct.nouveau_fb_tile* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @nv_wr32(%struct.nv40_graph_priv* %96, i32 %98, i32 %101)
  %103 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %7, align 8
  %104 = load i32, i32* %4, align 4
  %105 = call i32 @NV41_PGRAPH_ZCOMP1(i32 %104)
  %106 = load %struct.nouveau_fb_tile*, %struct.nouveau_fb_tile** %5, align 8
  %107 = getelementptr inbounds %struct.nouveau_fb_tile, %struct.nouveau_fb_tile* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @nv_wr32(%struct.nv40_graph_priv* %103, i32 %105, i32 %108)
  br label %111

110:                                              ; preds = %33
  br label %111

111:                                              ; preds = %110, %95, %80
  br label %199

112:                                              ; preds = %2, %2
  %113 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %7, align 8
  %114 = load i32, i32* %4, align 4
  %115 = call i32 @NV20_PGRAPH_TSIZE(i32 %114)
  %116 = load %struct.nouveau_fb_tile*, %struct.nouveau_fb_tile** %5, align 8
  %117 = getelementptr inbounds %struct.nouveau_fb_tile, %struct.nouveau_fb_tile* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @nv_wr32(%struct.nv40_graph_priv* %113, i32 %115, i32 %118)
  %120 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %7, align 8
  %121 = load i32, i32* %4, align 4
  %122 = call i32 @NV20_PGRAPH_TLIMIT(i32 %121)
  %123 = load %struct.nouveau_fb_tile*, %struct.nouveau_fb_tile** %5, align 8
  %124 = getelementptr inbounds %struct.nouveau_fb_tile, %struct.nouveau_fb_tile* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @nv_wr32(%struct.nv40_graph_priv* %120, i32 %122, i32 %125)
  %127 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %7, align 8
  %128 = load i32, i32* %4, align 4
  %129 = call i32 @NV20_PGRAPH_TILE(i32 %128)
  %130 = load %struct.nouveau_fb_tile*, %struct.nouveau_fb_tile** %5, align 8
  %131 = getelementptr inbounds %struct.nouveau_fb_tile, %struct.nouveau_fb_tile* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @nv_wr32(%struct.nv40_graph_priv* %127, i32 %129, i32 %132)
  br label %199

134:                                              ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %135 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %7, align 8
  %136 = load i32, i32* %4, align 4
  %137 = call i32 @NV47_PGRAPH_TSIZE(i32 %136)
  %138 = load %struct.nouveau_fb_tile*, %struct.nouveau_fb_tile** %5, align 8
  %139 = getelementptr inbounds %struct.nouveau_fb_tile, %struct.nouveau_fb_tile* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @nv_wr32(%struct.nv40_graph_priv* %135, i32 %137, i32 %140)
  %142 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %7, align 8
  %143 = load i32, i32* %4, align 4
  %144 = call i32 @NV47_PGRAPH_TLIMIT(i32 %143)
  %145 = load %struct.nouveau_fb_tile*, %struct.nouveau_fb_tile** %5, align 8
  %146 = getelementptr inbounds %struct.nouveau_fb_tile, %struct.nouveau_fb_tile* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @nv_wr32(%struct.nv40_graph_priv* %142, i32 %144, i32 %147)
  %149 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %7, align 8
  %150 = load i32, i32* %4, align 4
  %151 = call i32 @NV47_PGRAPH_TILE(i32 %150)
  %152 = load %struct.nouveau_fb_tile*, %struct.nouveau_fb_tile** %5, align 8
  %153 = getelementptr inbounds %struct.nouveau_fb_tile, %struct.nouveau_fb_tile* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @nv_wr32(%struct.nv40_graph_priv* %149, i32 %151, i32 %154)
  %156 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %7, align 8
  %157 = load i32, i32* %4, align 4
  %158 = call i32 @NV40_PGRAPH_TSIZE1(i32 %157)
  %159 = load %struct.nouveau_fb_tile*, %struct.nouveau_fb_tile** %5, align 8
  %160 = getelementptr inbounds %struct.nouveau_fb_tile, %struct.nouveau_fb_tile* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @nv_wr32(%struct.nv40_graph_priv* %156, i32 %158, i32 %161)
  %163 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %7, align 8
  %164 = load i32, i32* %4, align 4
  %165 = call i32 @NV40_PGRAPH_TLIMIT1(i32 %164)
  %166 = load %struct.nouveau_fb_tile*, %struct.nouveau_fb_tile** %5, align 8
  %167 = getelementptr inbounds %struct.nouveau_fb_tile, %struct.nouveau_fb_tile* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @nv_wr32(%struct.nv40_graph_priv* %163, i32 %165, i32 %168)
  %170 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %7, align 8
  %171 = load i32, i32* %4, align 4
  %172 = call i32 @NV40_PGRAPH_TILE1(i32 %171)
  %173 = load %struct.nouveau_fb_tile*, %struct.nouveau_fb_tile** %5, align 8
  %174 = getelementptr inbounds %struct.nouveau_fb_tile, %struct.nouveau_fb_tile* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @nv_wr32(%struct.nv40_graph_priv* %170, i32 %172, i32 %175)
  %177 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %7, align 8
  %178 = call %struct.TYPE_5__* @nv_device(%struct.nv40_graph_priv* %177)
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  switch i32 %180, label %196 [
    i32 71, label %181
    i32 73, label %181
    i32 75, label %181
  ]

181:                                              ; preds = %134, %134, %134
  %182 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %7, align 8
  %183 = load i32, i32* %4, align 4
  %184 = call i32 @NV47_PGRAPH_ZCOMP0(i32 %183)
  %185 = load %struct.nouveau_fb_tile*, %struct.nouveau_fb_tile** %5, align 8
  %186 = getelementptr inbounds %struct.nouveau_fb_tile, %struct.nouveau_fb_tile* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @nv_wr32(%struct.nv40_graph_priv* %182, i32 %184, i32 %187)
  %189 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %7, align 8
  %190 = load i32, i32* %4, align 4
  %191 = call i32 @NV47_PGRAPH_ZCOMP1(i32 %190)
  %192 = load %struct.nouveau_fb_tile*, %struct.nouveau_fb_tile** %5, align 8
  %193 = getelementptr inbounds %struct.nouveau_fb_tile, %struct.nouveau_fb_tile* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @nv_wr32(%struct.nv40_graph_priv* %189, i32 %191, i32 %194)
  br label %197

196:                                              ; preds = %134
  br label %197

197:                                              ; preds = %196, %181
  br label %199

198:                                              ; preds = %2
  br label %199

199:                                              ; preds = %198, %197, %112, %111
  %200 = load %struct.nouveau_fifo*, %struct.nouveau_fifo** %6, align 8
  %201 = getelementptr inbounds %struct.nouveau_fifo, %struct.nouveau_fifo* %200, i32 0, i32 0
  %202 = load i32 (%struct.nouveau_fifo*, i64*)*, i32 (%struct.nouveau_fifo*, i64*)** %201, align 8
  %203 = load %struct.nouveau_fifo*, %struct.nouveau_fifo** %6, align 8
  %204 = call i32 %202(%struct.nouveau_fifo* %203, i64* %8)
  ret void
}

declare dso_local %struct.TYPE_6__* @nouveau_fb(%struct.nouveau_engine*) #1

declare dso_local %struct.nouveau_fifo* @nouveau_fifo(%struct.nouveau_engine*) #1

declare dso_local i32 @nv04_graph_idle(%struct.nv40_graph_priv*) #1

declare dso_local %struct.TYPE_5__* @nv_device(%struct.nv40_graph_priv*) #1

declare dso_local i32 @nv_wr32(%struct.nv40_graph_priv*, i32, i32) #1

declare dso_local i32 @NV20_PGRAPH_TSIZE(i32) #1

declare dso_local i32 @NV20_PGRAPH_TLIMIT(i32) #1

declare dso_local i32 @NV20_PGRAPH_TILE(i32) #1

declare dso_local i32 @NV40_PGRAPH_TSIZE1(i32) #1

declare dso_local i32 @NV40_PGRAPH_TLIMIT1(i32) #1

declare dso_local i32 @NV40_PGRAPH_TILE1(i32) #1

declare dso_local i32 @NV20_PGRAPH_ZCOMP(i32) #1

declare dso_local i32 @NV40_PGRAPH_ZCOMP1(i32) #1

declare dso_local i32 @NV41_PGRAPH_ZCOMP0(i32) #1

declare dso_local i32 @NV41_PGRAPH_ZCOMP1(i32) #1

declare dso_local i32 @NV47_PGRAPH_TSIZE(i32) #1

declare dso_local i32 @NV47_PGRAPH_TLIMIT(i32) #1

declare dso_local i32 @NV47_PGRAPH_TILE(i32) #1

declare dso_local i32 @NV47_PGRAPH_ZCOMP0(i32) #1

declare dso_local i32 @NV47_PGRAPH_ZCOMP1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
