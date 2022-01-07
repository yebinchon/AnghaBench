; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nv04.c_nv04_fifo_chan_fini.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nv04.c_nv04_fifo_chan_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i64 }
%struct.nv04_fifo_priv = type { %struct.TYPE_3__, %struct.ramfc_desc*, %struct.nouveau_gpuobj* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ramfc_desc = type { i64, i64, i64, i32, i32 }
%struct.nouveau_gpuobj = type { i32 }
%struct.nv04_fifo_chan = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@NV03_PFIFO_CACHES = common dso_local global i32 0, align 4
@NV03_PFIFO_CACHE1_PUSH1 = common dso_local global i32 0, align 4
@NV04_PFIFO_CACHE1_DMA_PUSH = common dso_local global i32 0, align 4
@NV03_PFIFO_CACHE1_PUSH0 = common dso_local global i32 0, align 4
@NV04_PFIFO_CACHE1_PULL0 = common dso_local global i32 0, align 4
@NV03_PFIFO_CACHE1_GET = common dso_local global i32 0, align 4
@NV03_PFIFO_CACHE1_PUT = common dso_local global i32 0, align 4
@NV04_PFIFO_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv04_fifo_chan_fini(%struct.nouveau_object* %0, i32 %1) #0 {
  %3 = alloca %struct.nouveau_object*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nv04_fifo_priv*, align 8
  %6 = alloca %struct.nv04_fifo_chan*, align 8
  %7 = alloca %struct.nouveau_gpuobj*, align 8
  %8 = alloca %struct.ramfc_desc*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %3, align 8
  store i32 %1, i32* %4, align 4
  %16 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %17 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = bitcast i8* %19 to %struct.nv04_fifo_priv*
  store %struct.nv04_fifo_priv* %20, %struct.nv04_fifo_priv** %5, align 8
  %21 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %22 = bitcast %struct.nouveau_object* %21 to i8*
  %23 = bitcast i8* %22 to %struct.nv04_fifo_chan*
  store %struct.nv04_fifo_chan* %23, %struct.nv04_fifo_chan** %6, align 8
  %24 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %5, align 8
  %25 = getelementptr inbounds %struct.nv04_fifo_priv, %struct.nv04_fifo_priv* %24, i32 0, i32 2
  %26 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %25, align 8
  store %struct.nouveau_gpuobj* %26, %struct.nouveau_gpuobj** %7, align 8
  %27 = load %struct.nv04_fifo_chan*, %struct.nv04_fifo_chan** %6, align 8
  %28 = getelementptr inbounds %struct.nv04_fifo_chan, %struct.nv04_fifo_chan* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %10, align 4
  %30 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %5, align 8
  %31 = getelementptr inbounds %struct.nv04_fifo_priv, %struct.nv04_fifo_priv* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i64, i64* %9, align 8
  %34 = call i32 @spin_lock_irqsave(i32* %32, i64 %33)
  %35 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %5, align 8
  %36 = load i32, i32* @NV03_PFIFO_CACHES, align 4
  %37 = call i32 @nv_wr32(%struct.nv04_fifo_priv* %35, i32 %36, i32 0)
  %38 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %5, align 8
  %39 = load i32, i32* @NV03_PFIFO_CACHE1_PUSH1, align 4
  %40 = call i32 @nv_rd32(%struct.nv04_fifo_priv* %38, i32 %39)
  %41 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %5, align 8
  %42 = getelementptr inbounds %struct.nv04_fifo_priv, %struct.nv04_fifo_priv* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = and i32 %40, %44
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load %struct.nv04_fifo_chan*, %struct.nv04_fifo_chan** %6, align 8
  %48 = getelementptr inbounds %struct.nv04_fifo_chan, %struct.nv04_fifo_chan* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %46, %50
  br i1 %51, label %52, label %165

52:                                               ; preds = %2
  %53 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %5, align 8
  %54 = load i32, i32* @NV04_PFIFO_CACHE1_DMA_PUSH, align 4
  %55 = call i32 @nv_mask(%struct.nv04_fifo_priv* %53, i32 %54, i32 1, i32 0)
  %56 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %5, align 8
  %57 = load i32, i32* @NV03_PFIFO_CACHE1_PUSH0, align 4
  %58 = call i32 @nv_wr32(%struct.nv04_fifo_priv* %56, i32 %57, i32 0)
  %59 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %5, align 8
  %60 = load i32, i32* @NV04_PFIFO_CACHE1_PULL0, align 4
  %61 = call i32 @nv_mask(%struct.nv04_fifo_priv* %59, i32 %60, i32 1, i32 0)
  %62 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %5, align 8
  %63 = getelementptr inbounds %struct.nv04_fifo_priv, %struct.nv04_fifo_priv* %62, i32 0, i32 1
  %64 = load %struct.ramfc_desc*, %struct.ramfc_desc** %63, align 8
  store %struct.ramfc_desc* %64, %struct.ramfc_desc** %8, align 8
  br label %65

65:                                               ; preds = %123, %52
  %66 = load %struct.ramfc_desc*, %struct.ramfc_desc** %8, align 8
  %67 = getelementptr inbounds %struct.ramfc_desc, %struct.ramfc_desc* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = shl i64 1, %68
  %70 = sub i64 %69, 1
  %71 = load %struct.ramfc_desc*, %struct.ramfc_desc** %8, align 8
  %72 = getelementptr inbounds %struct.ramfc_desc, %struct.ramfc_desc* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = shl i64 %70, %73
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %12, align 4
  %76 = load %struct.ramfc_desc*, %struct.ramfc_desc** %8, align 8
  %77 = getelementptr inbounds %struct.ramfc_desc, %struct.ramfc_desc* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = shl i64 1, %78
  %80 = sub i64 %79, 1
  %81 = load %struct.ramfc_desc*, %struct.ramfc_desc** %8, align 8
  %82 = getelementptr inbounds %struct.ramfc_desc, %struct.ramfc_desc* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = shl i64 %80, %83
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %13, align 4
  %86 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %5, align 8
  %87 = load %struct.ramfc_desc*, %struct.ramfc_desc** %8, align 8
  %88 = getelementptr inbounds %struct.ramfc_desc, %struct.ramfc_desc* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @nv_rd32(%struct.nv04_fifo_priv* %86, i32 %89)
  %91 = load i32, i32* %12, align 4
  %92 = and i32 %90, %91
  %93 = load %struct.ramfc_desc*, %struct.ramfc_desc** %8, align 8
  %94 = getelementptr inbounds %struct.ramfc_desc, %struct.ramfc_desc* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = trunc i64 %95 to i32
  %97 = ashr i32 %92, %96
  store i32 %97, i32* %14, align 4
  %98 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %7, align 8
  %99 = load %struct.ramfc_desc*, %struct.ramfc_desc** %8, align 8
  %100 = getelementptr inbounds %struct.ramfc_desc, %struct.ramfc_desc* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %101, %102
  %104 = call i32 @nv_ro32(%struct.nouveau_gpuobj* %98, i32 %103)
  %105 = load i32, i32* %13, align 4
  %106 = xor i32 %105, -1
  %107 = and i32 %104, %106
  store i32 %107, i32* %15, align 4
  %108 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %7, align 8
  %109 = load %struct.ramfc_desc*, %struct.ramfc_desc** %8, align 8
  %110 = getelementptr inbounds %struct.ramfc_desc, %struct.ramfc_desc* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %111, %112
  %114 = load i32, i32* %15, align 4
  %115 = load i32, i32* %14, align 4
  %116 = load %struct.ramfc_desc*, %struct.ramfc_desc** %8, align 8
  %117 = getelementptr inbounds %struct.ramfc_desc, %struct.ramfc_desc* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = trunc i64 %118 to i32
  %120 = shl i32 %115, %119
  %121 = or i32 %114, %120
  %122 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %108, i32 %113, i32 %121)
  br label %123

123:                                              ; preds = %65
  %124 = load %struct.ramfc_desc*, %struct.ramfc_desc** %8, align 8
  %125 = getelementptr inbounds %struct.ramfc_desc, %struct.ramfc_desc* %124, i32 1
  store %struct.ramfc_desc* %125, %struct.ramfc_desc** %8, align 8
  %126 = getelementptr inbounds %struct.ramfc_desc, %struct.ramfc_desc* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %65, label %129

129:                                              ; preds = %123
  %130 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %5, align 8
  %131 = getelementptr inbounds %struct.nv04_fifo_priv, %struct.nv04_fifo_priv* %130, i32 0, i32 1
  %132 = load %struct.ramfc_desc*, %struct.ramfc_desc** %131, align 8
  store %struct.ramfc_desc* %132, %struct.ramfc_desc** %8, align 8
  br label %133

133:                                              ; preds = %139, %129
  %134 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %5, align 8
  %135 = load %struct.ramfc_desc*, %struct.ramfc_desc** %8, align 8
  %136 = getelementptr inbounds %struct.ramfc_desc, %struct.ramfc_desc* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @nv_wr32(%struct.nv04_fifo_priv* %134, i32 %137, i32 0)
  br label %139

139:                                              ; preds = %133
  %140 = load %struct.ramfc_desc*, %struct.ramfc_desc** %8, align 8
  %141 = getelementptr inbounds %struct.ramfc_desc, %struct.ramfc_desc* %140, i32 1
  store %struct.ramfc_desc* %141, %struct.ramfc_desc** %8, align 8
  %142 = getelementptr inbounds %struct.ramfc_desc, %struct.ramfc_desc* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %133, label %145

145:                                              ; preds = %139
  %146 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %5, align 8
  %147 = load i32, i32* @NV03_PFIFO_CACHE1_GET, align 4
  %148 = call i32 @nv_wr32(%struct.nv04_fifo_priv* %146, i32 %147, i32 0)
  %149 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %5, align 8
  %150 = load i32, i32* @NV03_PFIFO_CACHE1_PUT, align 4
  %151 = call i32 @nv_wr32(%struct.nv04_fifo_priv* %149, i32 %150, i32 0)
  %152 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %5, align 8
  %153 = load i32, i32* @NV03_PFIFO_CACHE1_PUSH1, align 4
  %154 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %5, align 8
  %155 = getelementptr inbounds %struct.nv04_fifo_priv, %struct.nv04_fifo_priv* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @nv_wr32(%struct.nv04_fifo_priv* %152, i32 %153, i32 %157)
  %159 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %5, align 8
  %160 = load i32, i32* @NV03_PFIFO_CACHE1_PUSH0, align 4
  %161 = call i32 @nv_wr32(%struct.nv04_fifo_priv* %159, i32 %160, i32 1)
  %162 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %5, align 8
  %163 = load i32, i32* @NV04_PFIFO_CACHE1_PULL0, align 4
  %164 = call i32 @nv_wr32(%struct.nv04_fifo_priv* %162, i32 %163, i32 1)
  br label %165

165:                                              ; preds = %145, %2
  %166 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %5, align 8
  %167 = load i32, i32* @NV04_PFIFO_MODE, align 4
  %168 = load %struct.nv04_fifo_chan*, %struct.nv04_fifo_chan** %6, align 8
  %169 = getelementptr inbounds %struct.nv04_fifo_chan, %struct.nv04_fifo_chan* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = shl i32 1, %171
  %173 = call i32 @nv_mask(%struct.nv04_fifo_priv* %166, i32 %167, i32 %172, i32 0)
  %174 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %5, align 8
  %175 = load i32, i32* @NV03_PFIFO_CACHES, align 4
  %176 = call i32 @nv_wr32(%struct.nv04_fifo_priv* %174, i32 %175, i32 1)
  %177 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %5, align 8
  %178 = getelementptr inbounds %struct.nv04_fifo_priv, %struct.nv04_fifo_priv* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 1
  %180 = load i64, i64* %9, align 8
  %181 = call i32 @spin_unlock_irqrestore(i32* %179, i64 %180)
  %182 = load %struct.nv04_fifo_chan*, %struct.nv04_fifo_chan** %6, align 8
  %183 = getelementptr inbounds %struct.nv04_fifo_chan, %struct.nv04_fifo_chan* %182, i32 0, i32 1
  %184 = load i32, i32* %4, align 4
  %185 = call i32 @nouveau_fifo_channel_fini(%struct.TYPE_4__* %183, i32 %184)
  ret i32 %185
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @nv_wr32(%struct.nv04_fifo_priv*, i32, i32) #1

declare dso_local i32 @nv_rd32(%struct.nv04_fifo_priv*, i32) #1

declare dso_local i32 @nv_mask(%struct.nv04_fifo_priv*, i32, i32, i32) #1

declare dso_local i32 @nv_ro32(%struct.nouveau_gpuobj*, i32) #1

declare dso_local i32 @nv_wo32(%struct.nouveau_gpuobj*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @nouveau_fifo_channel_fini(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
