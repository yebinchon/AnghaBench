; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nv84.c_nv84_fifo_chan_ctor_ind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nv84.c_nv84_fifo_chan_ctor_ind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_oclass = type { i32 }
%struct.nouveau_bar = type { i32 (%struct.nouveau_bar*)* }
%struct.nv50_fifo_base = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.nv50_fifo_chan = type { %struct.TYPE_18__*, %struct.TYPE_12__ }
%struct.TYPE_18__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.nv50_channel_ind_class = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NVDEV_ENGINE_DMAOBJ = common dso_local global i64 0, align 8
@NVDEV_ENGINE_SW = common dso_local global i64 0, align 8
@NVDEV_ENGINE_GR = common dso_local global i64 0, align 8
@NVDEV_ENGINE_MPEG = common dso_local global i64 0, align 8
@NVDEV_ENGINE_ME = common dso_local global i64 0, align 8
@NVDEV_ENGINE_VP = common dso_local global i64 0, align 8
@NVDEV_ENGINE_CRYPT = common dso_local global i64 0, align 8
@NVDEV_ENGINE_BSP = common dso_local global i64 0, align 8
@NVDEV_ENGINE_PPP = common dso_local global i64 0, align 8
@NVDEV_ENGINE_COPY0 = common dso_local global i64 0, align 8
@NVDEV_ENGINE_UNK1C1 = common dso_local global i64 0, align 8
@nv84_fifo_context_attach = common dso_local global i32 0, align 4
@nv84_fifo_context_detach = common dso_local global i32 0, align 4
@nv84_fifo_object_attach = common dso_local global i32 0, align 4
@nv50_fifo_object_detach = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i8*, i32, %struct.nouveau_object**)* @nv84_fifo_chan_ctor_ind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv84_fifo_chan_ctor_ind(%struct.nouveau_object* %0, %struct.nouveau_object* %1, %struct.nouveau_oclass* %2, i8* %3, i32 %4, %struct.nouveau_object** %5) #0 {
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
  %17 = alloca %struct.nv50_channel_ind_class*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %8, align 8
  store %struct.nouveau_object* %1, %struct.nouveau_object** %9, align 8
  store %struct.nouveau_oclass* %2, %struct.nouveau_oclass** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.nouveau_object** %5, %struct.nouveau_object*** %13, align 8
  %21 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %22 = call %struct.nouveau_bar* @nouveau_bar(%struct.nouveau_object* %21)
  store %struct.nouveau_bar* %22, %struct.nouveau_bar** %14, align 8
  %23 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %24 = bitcast %struct.nouveau_object* %23 to i8*
  %25 = bitcast i8* %24 to %struct.nv50_fifo_base*
  store %struct.nv50_fifo_base* %25, %struct.nv50_fifo_base** %15, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = bitcast i8* %26 to %struct.nv50_channel_ind_class*
  store %struct.nv50_channel_ind_class* %27, %struct.nv50_channel_ind_class** %17, align 8
  %28 = load i32, i32* %12, align 4
  %29 = sext i32 %28 to i64
  %30 = icmp ult i64 %29, 12
  br i1 %30, label %31, label %34

31:                                               ; preds = %6
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %7, align 4
  br label %210

34:                                               ; preds = %6
  %35 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %36 = load %struct.nouveau_object*, %struct.nouveau_object** %9, align 8
  %37 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %10, align 8
  %38 = load %struct.nv50_channel_ind_class*, %struct.nv50_channel_ind_class** %17, align 8
  %39 = getelementptr inbounds %struct.nv50_channel_ind_class, %struct.nv50_channel_ind_class* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i64, i64* @NVDEV_ENGINE_DMAOBJ, align 8
  %42 = shl i64 1, %41
  %43 = load i64, i64* @NVDEV_ENGINE_SW, align 8
  %44 = shl i64 1, %43
  %45 = or i64 %42, %44
  %46 = load i64, i64* @NVDEV_ENGINE_GR, align 8
  %47 = shl i64 1, %46
  %48 = or i64 %45, %47
  %49 = load i64, i64* @NVDEV_ENGINE_MPEG, align 8
  %50 = shl i64 1, %49
  %51 = or i64 %48, %50
  %52 = load i64, i64* @NVDEV_ENGINE_ME, align 8
  %53 = shl i64 1, %52
  %54 = or i64 %51, %53
  %55 = load i64, i64* @NVDEV_ENGINE_VP, align 8
  %56 = shl i64 1, %55
  %57 = or i64 %54, %56
  %58 = load i64, i64* @NVDEV_ENGINE_CRYPT, align 8
  %59 = shl i64 1, %58
  %60 = or i64 %57, %59
  %61 = load i64, i64* @NVDEV_ENGINE_BSP, align 8
  %62 = shl i64 1, %61
  %63 = or i64 %60, %62
  %64 = load i64, i64* @NVDEV_ENGINE_PPP, align 8
  %65 = shl i64 1, %64
  %66 = or i64 %63, %65
  %67 = load i64, i64* @NVDEV_ENGINE_COPY0, align 8
  %68 = shl i64 1, %67
  %69 = or i64 %66, %68
  %70 = load i64, i64* @NVDEV_ENGINE_UNK1C1, align 8
  %71 = shl i64 1, %70
  %72 = or i64 %69, %71
  %73 = call i32 @nouveau_fifo_channel_create(%struct.nouveau_object* %35, %struct.nouveau_object* %36, %struct.nouveau_oclass* %37, i32 0, i32 12582912, i32 8192, i32 %40, i64 %72, %struct.nv50_fifo_chan** %16)
  store i32 %73, i32* %20, align 4
  %74 = load %struct.nv50_fifo_chan*, %struct.nv50_fifo_chan** %16, align 8
  %75 = call %struct.nouveau_object* @nv_object(%struct.nv50_fifo_chan* %74)
  %76 = load %struct.nouveau_object**, %struct.nouveau_object*** %13, align 8
  store %struct.nouveau_object* %75, %struct.nouveau_object** %76, align 8
  %77 = load i32, i32* %20, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %34
  %80 = load i32, i32* %20, align 4
  store i32 %80, i32* %7, align 4
  br label %210

81:                                               ; preds = %34
  %82 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %83 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %84 = load %struct.nv50_fifo_chan*, %struct.nv50_fifo_chan** %16, align 8
  %85 = getelementptr inbounds %struct.nv50_fifo_chan, %struct.nv50_fifo_chan* %84, i32 0, i32 0
  %86 = call i32 @nouveau_ramht_new(%struct.nouveau_object* %82, %struct.nouveau_object* %83, i32 32768, i32 16, %struct.TYPE_18__** %85)
  store i32 %86, i32* %20, align 4
  %87 = load i32, i32* %20, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %81
  %90 = load i32, i32* %20, align 4
  store i32 %90, i32* %7, align 4
  br label %210

91:                                               ; preds = %81
  %92 = load i32, i32* @nv84_fifo_context_attach, align 4
  %93 = load %struct.nv50_fifo_chan*, %struct.nv50_fifo_chan** %16, align 8
  %94 = call %struct.TYPE_16__* @nv_parent(%struct.nv50_fifo_chan* %93)
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 3
  store i32 %92, i32* %95, align 4
  %96 = load i32, i32* @nv84_fifo_context_detach, align 4
  %97 = load %struct.nv50_fifo_chan*, %struct.nv50_fifo_chan** %16, align 8
  %98 = call %struct.TYPE_16__* @nv_parent(%struct.nv50_fifo_chan* %97)
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 2
  store i32 %96, i32* %99, align 4
  %100 = load i32, i32* @nv84_fifo_object_attach, align 4
  %101 = load %struct.nv50_fifo_chan*, %struct.nv50_fifo_chan** %16, align 8
  %102 = call %struct.TYPE_16__* @nv_parent(%struct.nv50_fifo_chan* %101)
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 1
  store i32 %100, i32* %103, align 4
  %104 = load i32, i32* @nv50_fifo_object_detach, align 4
  %105 = load %struct.nv50_fifo_chan*, %struct.nv50_fifo_chan** %16, align 8
  %106 = call %struct.TYPE_16__* @nv_parent(%struct.nv50_fifo_chan* %105)
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 0
  store i32 %104, i32* %107, align 4
  %108 = load %struct.nv50_channel_ind_class*, %struct.nv50_channel_ind_class** %17, align 8
  %109 = getelementptr inbounds %struct.nv50_channel_ind_class, %struct.nv50_channel_ind_class* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %18, align 4
  %111 = load %struct.nv50_channel_ind_class*, %struct.nv50_channel_ind_class** %17, align 8
  %112 = getelementptr inbounds %struct.nv50_channel_ind_class, %struct.nv50_channel_ind_class* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = sdiv i32 %113, 8
  %115 = call i32 @log2i(i32 %114)
  store i32 %115, i32* %19, align 4
  %116 = load %struct.nv50_fifo_base*, %struct.nv50_fifo_base** %15, align 8
  %117 = getelementptr inbounds %struct.nv50_fifo_base, %struct.nv50_fifo_base* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @nv_wo32(i32 %118, i32 60, i32 1077895288)
  %120 = load %struct.nv50_fifo_base*, %struct.nv50_fifo_base** %15, align 8
  %121 = getelementptr inbounds %struct.nv50_fifo_base, %struct.nv50_fifo_base* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @nv_wo32(i32 %122, i32 68, i32 16793599)
  %124 = load %struct.nv50_fifo_base*, %struct.nv50_fifo_base** %15, align 8
  %125 = getelementptr inbounds %struct.nv50_fifo_base, %struct.nv50_fifo_base* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.nv50_fifo_chan*, %struct.nv50_fifo_chan** %16, align 8
  %128 = getelementptr inbounds %struct.nv50_fifo_chan, %struct.nv50_fifo_chan* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = ashr i32 %134, 4
  %136 = call i32 @nv_wo32(i32 %126, i32 72, i32 %135)
  %137 = load %struct.nv50_fifo_base*, %struct.nv50_fifo_base** %15, align 8
  %138 = getelementptr inbounds %struct.nv50_fifo_base, %struct.nv50_fifo_base* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* %18, align 4
  %141 = call i32 @lower_32_bits(i32 %140)
  %142 = call i32 @nv_wo32(i32 %139, i32 80, i32 %141)
  %143 = load %struct.nv50_fifo_base*, %struct.nv50_fifo_base** %15, align 8
  %144 = getelementptr inbounds %struct.nv50_fifo_base, %struct.nv50_fifo_base* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* %18, align 4
  %147 = call i32 @upper_32_bits(i32 %146)
  %148 = load i32, i32* %19, align 4
  %149 = shl i32 %148, 16
  %150 = or i32 %147, %149
  %151 = call i32 @nv_wo32(i32 %145, i32 84, i32 %150)
  %152 = load %struct.nv50_fifo_base*, %struct.nv50_fifo_base** %15, align 8
  %153 = getelementptr inbounds %struct.nv50_fifo_base, %struct.nv50_fifo_base* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @nv_wo32(i32 %154, i32 96, i32 2147483647)
  %156 = load %struct.nv50_fifo_base*, %struct.nv50_fifo_base** %15, align 8
  %157 = getelementptr inbounds %struct.nv50_fifo_base, %struct.nv50_fifo_base* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @nv_wo32(i32 %158, i32 120, i32 0)
  %160 = load %struct.nv50_fifo_base*, %struct.nv50_fifo_base** %15, align 8
  %161 = getelementptr inbounds %struct.nv50_fifo_base, %struct.nv50_fifo_base* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @nv_wo32(i32 %162, i32 124, i32 805306369)
  %164 = load %struct.nv50_fifo_base*, %struct.nv50_fifo_base** %15, align 8
  %165 = getelementptr inbounds %struct.nv50_fifo_base, %struct.nv50_fifo_base* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.nv50_fifo_chan*, %struct.nv50_fifo_chan** %16, align 8
  %168 = getelementptr inbounds %struct.nv50_fifo_chan, %struct.nv50_fifo_chan* %167, i32 0, i32 0
  %169 = load %struct.TYPE_18__*, %struct.TYPE_18__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = sub nsw i32 %171, 9
  %173 = shl i32 %172, 27
  %174 = or i32 %173, 67108864
  %175 = load %struct.nv50_fifo_chan*, %struct.nv50_fifo_chan** %16, align 8
  %176 = getelementptr inbounds %struct.nv50_fifo_chan, %struct.nv50_fifo_chan* %175, i32 0, i32 0
  %177 = load %struct.TYPE_18__*, %struct.TYPE_18__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 0
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = ashr i32 %182, 4
  %184 = or i32 %174, %183
  %185 = call i32 @nv_wo32(i32 %166, i32 128, i32 %184)
  %186 = load %struct.nv50_fifo_base*, %struct.nv50_fifo_base** %15, align 8
  %187 = getelementptr inbounds %struct.nv50_fifo_base, %struct.nv50_fifo_base* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.nv50_fifo_base*, %struct.nv50_fifo_base** %15, align 8
  %190 = getelementptr inbounds %struct.nv50_fifo_base, %struct.nv50_fifo_base* %189, i32 0, i32 1
  %191 = load %struct.TYPE_15__*, %struct.TYPE_15__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = ashr i32 %193, 10
  %195 = call i32 @nv_wo32(i32 %188, i32 136, i32 %194)
  %196 = load %struct.nv50_fifo_base*, %struct.nv50_fifo_base** %15, align 8
  %197 = getelementptr inbounds %struct.nv50_fifo_base, %struct.nv50_fifo_base* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.nv50_fifo_base*, %struct.nv50_fifo_base** %15, align 8
  %200 = call %struct.TYPE_17__* @nv_gpuobj(%struct.nv50_fifo_base* %199)
  %201 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = ashr i32 %202, 12
  %204 = call i32 @nv_wo32(i32 %198, i32 152, i32 %203)
  %205 = load %struct.nouveau_bar*, %struct.nouveau_bar** %14, align 8
  %206 = getelementptr inbounds %struct.nouveau_bar, %struct.nouveau_bar* %205, i32 0, i32 0
  %207 = load i32 (%struct.nouveau_bar*)*, i32 (%struct.nouveau_bar*)** %206, align 8
  %208 = load %struct.nouveau_bar*, %struct.nouveau_bar** %14, align 8
  %209 = call i32 %207(%struct.nouveau_bar* %208)
  store i32 0, i32* %7, align 4
  br label %210

210:                                              ; preds = %91, %89, %79, %31
  %211 = load i32, i32* %7, align 4
  ret i32 %211
}

declare dso_local %struct.nouveau_bar* @nouveau_bar(%struct.nouveau_object*) #1

declare dso_local i32 @nouveau_fifo_channel_create(%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i32, i32, i32, i32, i64, %struct.nv50_fifo_chan**) #1

declare dso_local %struct.nouveau_object* @nv_object(%struct.nv50_fifo_chan*) #1

declare dso_local i32 @nouveau_ramht_new(%struct.nouveau_object*, %struct.nouveau_object*, i32, i32, %struct.TYPE_18__**) #1

declare dso_local %struct.TYPE_16__* @nv_parent(%struct.nv50_fifo_chan*) #1

declare dso_local i32 @log2i(i32) #1

declare dso_local i32 @nv_wo32(i32, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local %struct.TYPE_17__* @nv_gpuobj(%struct.nv50_fifo_base*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
