; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nv50.c_nv50_fifo_chan_ctor_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nv50.c_nv50_fifo_chan_ctor_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_oclass = type { i32 }
%struct.nouveau_bar = type { i32 (%struct.nouveau_bar*)* }
%struct.nv50_fifo_base = type { i32 }
%struct.nv50_fifo_chan = type { %struct.TYPE_14__*, %struct.TYPE_10__ }
%struct.TYPE_14__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.nv03_channel_dma_class = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@NVDEV_ENGINE_DMAOBJ = common dso_local global i64 0, align 8
@NVDEV_ENGINE_SW = common dso_local global i64 0, align 8
@NVDEV_ENGINE_GR = common dso_local global i64 0, align 8
@NVDEV_ENGINE_MPEG = common dso_local global i64 0, align 8
@nv50_fifo_context_attach = common dso_local global i32 0, align 4
@nv50_fifo_context_detach = common dso_local global i32 0, align 4
@nv50_fifo_object_attach = common dso_local global i32 0, align 4
@nv50_fifo_object_detach = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i8*, i32, %struct.nouveau_object**)* @nv50_fifo_chan_ctor_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_fifo_chan_ctor_dma(%struct.nouveau_object* %0, %struct.nouveau_object* %1, %struct.nouveau_oclass* %2, i8* %3, i32 %4, %struct.nouveau_object** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_object*, align 8
  %9 = alloca %struct.nouveau_object*, align 8
  %10 = alloca %struct.nouveau_oclass*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nouveau_object**, align 8
  %14 = alloca %struct.nouveau_bar*, align 8
  %15 = alloca %struct.nv50_fifo_base*, align 8
  %16 = alloca %struct.nv50_fifo_chan*, align 8
  %17 = alloca %struct.nv03_channel_dma_class*, align 8
  %18 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %8, align 8
  store %struct.nouveau_object* %1, %struct.nouveau_object** %9, align 8
  store %struct.nouveau_oclass* %2, %struct.nouveau_oclass** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.nouveau_object** %5, %struct.nouveau_object*** %13, align 8
  %19 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %20 = call %struct.nouveau_bar* @nouveau_bar(%struct.nouveau_object* %19)
  store %struct.nouveau_bar* %20, %struct.nouveau_bar** %14, align 8
  %21 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %22 = bitcast %struct.nouveau_object* %21 to i8*
  %23 = bitcast i8* %22 to %struct.nv50_fifo_base*
  store %struct.nv50_fifo_base* %23, %struct.nv50_fifo_base** %15, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = bitcast i8* %24 to %struct.nv03_channel_dma_class*
  store %struct.nv03_channel_dma_class* %25, %struct.nv03_channel_dma_class** %17, align 8
  %26 = load i32, i32* %12, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp ult i64 %27, 8
  br i1 %28, label %29, label %32

29:                                               ; preds = %6
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  br label %181

32:                                               ; preds = %6
  %33 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %34 = load %struct.nouveau_object*, %struct.nouveau_object** %9, align 8
  %35 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %10, align 8
  %36 = load %struct.nv03_channel_dma_class*, %struct.nv03_channel_dma_class** %17, align 8
  %37 = getelementptr inbounds %struct.nv03_channel_dma_class, %struct.nv03_channel_dma_class* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* @NVDEV_ENGINE_DMAOBJ, align 8
  %40 = shl i64 1, %39
  %41 = load i64, i64* @NVDEV_ENGINE_SW, align 8
  %42 = shl i64 1, %41
  %43 = or i64 %40, %42
  %44 = load i64, i64* @NVDEV_ENGINE_GR, align 8
  %45 = shl i64 1, %44
  %46 = or i64 %43, %45
  %47 = load i64, i64* @NVDEV_ENGINE_MPEG, align 8
  %48 = shl i64 1, %47
  %49 = or i64 %46, %48
  %50 = call i32 @nouveau_fifo_channel_create(%struct.nouveau_object* %33, %struct.nouveau_object* %34, %struct.nouveau_oclass* %35, i32 0, i32 12582912, i32 8192, i32 %38, i64 %49, %struct.nv50_fifo_chan** %16)
  store i32 %50, i32* %18, align 4
  %51 = load %struct.nv50_fifo_chan*, %struct.nv50_fifo_chan** %16, align 8
  %52 = call %struct.nouveau_object* @nv_object(%struct.nv50_fifo_chan* %51)
  %53 = load %struct.nouveau_object**, %struct.nouveau_object*** %13, align 8
  store %struct.nouveau_object* %52, %struct.nouveau_object** %53, align 8
  %54 = load i32, i32* %18, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %32
  %57 = load i32, i32* %18, align 4
  store i32 %57, i32* %7, align 4
  br label %181

58:                                               ; preds = %32
  %59 = load i32, i32* @nv50_fifo_context_attach, align 4
  %60 = load %struct.nv50_fifo_chan*, %struct.nv50_fifo_chan** %16, align 8
  %61 = call %struct.TYPE_13__* @nv_parent(%struct.nv50_fifo_chan* %60)
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 3
  store i32 %59, i32* %62, align 4
  %63 = load i32, i32* @nv50_fifo_context_detach, align 4
  %64 = load %struct.nv50_fifo_chan*, %struct.nv50_fifo_chan** %16, align 8
  %65 = call %struct.TYPE_13__* @nv_parent(%struct.nv50_fifo_chan* %64)
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 2
  store i32 %63, i32* %66, align 4
  %67 = load i32, i32* @nv50_fifo_object_attach, align 4
  %68 = load %struct.nv50_fifo_chan*, %struct.nv50_fifo_chan** %16, align 8
  %69 = call %struct.TYPE_13__* @nv_parent(%struct.nv50_fifo_chan* %68)
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 1
  store i32 %67, i32* %70, align 4
  %71 = load i32, i32* @nv50_fifo_object_detach, align 4
  %72 = load %struct.nv50_fifo_chan*, %struct.nv50_fifo_chan** %16, align 8
  %73 = call %struct.TYPE_13__* @nv_parent(%struct.nv50_fifo_chan* %72)
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 4
  %75 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %76 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %77 = load %struct.nv50_fifo_chan*, %struct.nv50_fifo_chan** %16, align 8
  %78 = getelementptr inbounds %struct.nv50_fifo_chan, %struct.nv50_fifo_chan* %77, i32 0, i32 0
  %79 = call i32 @nouveau_ramht_new(%struct.nouveau_object* %75, %struct.nouveau_object* %76, i32 32768, i32 16, %struct.TYPE_14__** %78)
  store i32 %79, i32* %18, align 4
  %80 = load i32, i32* %18, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %58
  %83 = load i32, i32* %18, align 4
  store i32 %83, i32* %7, align 4
  br label %181

84:                                               ; preds = %58
  %85 = load %struct.nv50_fifo_base*, %struct.nv50_fifo_base** %15, align 8
  %86 = getelementptr inbounds %struct.nv50_fifo_base, %struct.nv50_fifo_base* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.nv03_channel_dma_class*, %struct.nv03_channel_dma_class** %17, align 8
  %89 = getelementptr inbounds %struct.nv03_channel_dma_class, %struct.nv03_channel_dma_class* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @lower_32_bits(i32 %90)
  %92 = call i32 @nv_wo32(i32 %87, i32 8, i32 %91)
  %93 = load %struct.nv50_fifo_base*, %struct.nv50_fifo_base** %15, align 8
  %94 = getelementptr inbounds %struct.nv50_fifo_base, %struct.nv50_fifo_base* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.nv03_channel_dma_class*, %struct.nv03_channel_dma_class** %17, align 8
  %97 = getelementptr inbounds %struct.nv03_channel_dma_class, %struct.nv03_channel_dma_class* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @upper_32_bits(i32 %98)
  %100 = call i32 @nv_wo32(i32 %95, i32 12, i32 %99)
  %101 = load %struct.nv50_fifo_base*, %struct.nv50_fifo_base** %15, align 8
  %102 = getelementptr inbounds %struct.nv50_fifo_base, %struct.nv50_fifo_base* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.nv03_channel_dma_class*, %struct.nv03_channel_dma_class** %17, align 8
  %105 = getelementptr inbounds %struct.nv03_channel_dma_class, %struct.nv03_channel_dma_class* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @lower_32_bits(i32 %106)
  %108 = call i32 @nv_wo32(i32 %103, i32 16, i32 %107)
  %109 = load %struct.nv50_fifo_base*, %struct.nv50_fifo_base** %15, align 8
  %110 = getelementptr inbounds %struct.nv50_fifo_base, %struct.nv50_fifo_base* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.nv03_channel_dma_class*, %struct.nv03_channel_dma_class** %17, align 8
  %113 = getelementptr inbounds %struct.nv03_channel_dma_class, %struct.nv03_channel_dma_class* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @upper_32_bits(i32 %114)
  %116 = call i32 @nv_wo32(i32 %111, i32 20, i32 %115)
  %117 = load %struct.nv50_fifo_base*, %struct.nv50_fifo_base** %15, align 8
  %118 = getelementptr inbounds %struct.nv50_fifo_base, %struct.nv50_fifo_base* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @nv_wo32(i32 %119, i32 60, i32 4153464)
  %121 = load %struct.nv50_fifo_base*, %struct.nv50_fifo_base** %15, align 8
  %122 = getelementptr inbounds %struct.nv50_fifo_base, %struct.nv50_fifo_base* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @nv_wo32(i32 %123, i32 68, i32 16793599)
  %125 = load %struct.nv50_fifo_base*, %struct.nv50_fifo_base** %15, align 8
  %126 = getelementptr inbounds %struct.nv50_fifo_base, %struct.nv50_fifo_base* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.nv50_fifo_chan*, %struct.nv50_fifo_chan** %16, align 8
  %129 = getelementptr inbounds %struct.nv50_fifo_chan, %struct.nv50_fifo_chan* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = ashr i32 %135, 4
  %137 = call i32 @nv_wo32(i32 %127, i32 72, i32 %136)
  %138 = load %struct.nv50_fifo_base*, %struct.nv50_fifo_base** %15, align 8
  %139 = getelementptr inbounds %struct.nv50_fifo_base, %struct.nv50_fifo_base* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @nv_wo32(i32 %140, i32 76, i32 -1)
  %142 = load %struct.nv50_fifo_base*, %struct.nv50_fifo_base** %15, align 8
  %143 = getelementptr inbounds %struct.nv50_fifo_base, %struct.nv50_fifo_base* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @nv_wo32(i32 %144, i32 96, i32 2147483647)
  %146 = load %struct.nv50_fifo_base*, %struct.nv50_fifo_base** %15, align 8
  %147 = getelementptr inbounds %struct.nv50_fifo_base, %struct.nv50_fifo_base* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @nv_wo32(i32 %148, i32 120, i32 0)
  %150 = load %struct.nv50_fifo_base*, %struct.nv50_fifo_base** %15, align 8
  %151 = getelementptr inbounds %struct.nv50_fifo_base, %struct.nv50_fifo_base* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @nv_wo32(i32 %152, i32 124, i32 805306369)
  %154 = load %struct.nv50_fifo_base*, %struct.nv50_fifo_base** %15, align 8
  %155 = getelementptr inbounds %struct.nv50_fifo_base, %struct.nv50_fifo_base* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.nv50_fifo_chan*, %struct.nv50_fifo_chan** %16, align 8
  %158 = getelementptr inbounds %struct.nv50_fifo_chan, %struct.nv50_fifo_chan* %157, i32 0, i32 0
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = sub nsw i32 %161, 9
  %163 = shl i32 %162, 27
  %164 = or i32 %163, 67108864
  %165 = load %struct.nv50_fifo_chan*, %struct.nv50_fifo_chan** %16, align 8
  %166 = getelementptr inbounds %struct.nv50_fifo_chan, %struct.nv50_fifo_chan* %165, i32 0, i32 0
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = ashr i32 %172, 4
  %174 = or i32 %164, %173
  %175 = call i32 @nv_wo32(i32 %156, i32 128, i32 %174)
  %176 = load %struct.nouveau_bar*, %struct.nouveau_bar** %14, align 8
  %177 = getelementptr inbounds %struct.nouveau_bar, %struct.nouveau_bar* %176, i32 0, i32 0
  %178 = load i32 (%struct.nouveau_bar*)*, i32 (%struct.nouveau_bar*)** %177, align 8
  %179 = load %struct.nouveau_bar*, %struct.nouveau_bar** %14, align 8
  %180 = call i32 %178(%struct.nouveau_bar* %179)
  store i32 0, i32* %7, align 4
  br label %181

181:                                              ; preds = %84, %82, %56, %29
  %182 = load i32, i32* %7, align 4
  ret i32 %182
}

declare dso_local %struct.nouveau_bar* @nouveau_bar(%struct.nouveau_object*) #1

declare dso_local i32 @nouveau_fifo_channel_create(%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i32, i32, i32, i32, i64, %struct.nv50_fifo_chan**) #1

declare dso_local %struct.nouveau_object* @nv_object(%struct.nv50_fifo_chan*) #1

declare dso_local %struct.TYPE_13__* @nv_parent(%struct.nv50_fifo_chan*) #1

declare dso_local i32 @nouveau_ramht_new(%struct.nouveau_object*, %struct.nouveau_object*, i32, i32, %struct.TYPE_14__**) #1

declare dso_local i32 @nv_wo32(i32, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
