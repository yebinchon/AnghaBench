; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nv50.c_nv50_fifo_chan_ctor_ind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nv50.c_nv50_fifo_chan_ctor_ind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_oclass = type { i32 }
%struct.nv50_channel_ind_class = type { i32, i32, i32 }
%struct.nouveau_bar = type { i32 (%struct.nouveau_bar*)* }
%struct.nv50_fifo_base = type { i32 }
%struct.nv50_fifo_chan = type { %struct.TYPE_14__*, %struct.TYPE_10__ }
%struct.TYPE_14__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i8*, i32, %struct.nouveau_object**)* @nv50_fifo_chan_ctor_ind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_fifo_chan_ctor_ind(%struct.nouveau_object* %0, %struct.nouveau_object* %1, %struct.nouveau_oclass* %2, i8* %3, i32 %4, %struct.nouveau_object** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_object*, align 8
  %9 = alloca %struct.nouveau_object*, align 8
  %10 = alloca %struct.nouveau_oclass*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nouveau_object**, align 8
  %14 = alloca %struct.nv50_channel_ind_class*, align 8
  %15 = alloca %struct.nouveau_bar*, align 8
  %16 = alloca %struct.nv50_fifo_base*, align 8
  %17 = alloca %struct.nv50_fifo_chan*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %8, align 8
  store %struct.nouveau_object* %1, %struct.nouveau_object** %9, align 8
  store %struct.nouveau_oclass* %2, %struct.nouveau_oclass** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.nouveau_object** %5, %struct.nouveau_object*** %13, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = bitcast i8* %21 to %struct.nv50_channel_ind_class*
  store %struct.nv50_channel_ind_class* %22, %struct.nv50_channel_ind_class** %14, align 8
  %23 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %24 = call %struct.nouveau_bar* @nouveau_bar(%struct.nouveau_object* %23)
  store %struct.nouveau_bar* %24, %struct.nouveau_bar** %15, align 8
  %25 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %26 = bitcast %struct.nouveau_object* %25 to i8*
  %27 = bitcast i8* %26 to %struct.nv50_fifo_base*
  store %struct.nv50_fifo_base* %27, %struct.nv50_fifo_base** %16, align 8
  %28 = load i32, i32* %12, align 4
  %29 = sext i32 %28 to i64
  %30 = icmp ult i64 %29, 12
  br i1 %30, label %31, label %34

31:                                               ; preds = %6
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %7, align 4
  br label %170

34:                                               ; preds = %6
  %35 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %36 = load %struct.nouveau_object*, %struct.nouveau_object** %9, align 8
  %37 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %10, align 8
  %38 = load %struct.nv50_channel_ind_class*, %struct.nv50_channel_ind_class** %14, align 8
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
  %52 = call i32 @nouveau_fifo_channel_create(%struct.nouveau_object* %35, %struct.nouveau_object* %36, %struct.nouveau_oclass* %37, i32 0, i32 12582912, i32 8192, i32 %40, i64 %51, %struct.nv50_fifo_chan** %17)
  store i32 %52, i32* %20, align 4
  %53 = load %struct.nv50_fifo_chan*, %struct.nv50_fifo_chan** %17, align 8
  %54 = call %struct.nouveau_object* @nv_object(%struct.nv50_fifo_chan* %53)
  %55 = load %struct.nouveau_object**, %struct.nouveau_object*** %13, align 8
  store %struct.nouveau_object* %54, %struct.nouveau_object** %55, align 8
  %56 = load i32, i32* %20, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %34
  %59 = load i32, i32* %20, align 4
  store i32 %59, i32* %7, align 4
  br label %170

60:                                               ; preds = %34
  %61 = load i32, i32* @nv50_fifo_context_attach, align 4
  %62 = load %struct.nv50_fifo_chan*, %struct.nv50_fifo_chan** %17, align 8
  %63 = call %struct.TYPE_13__* @nv_parent(%struct.nv50_fifo_chan* %62)
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 3
  store i32 %61, i32* %64, align 4
  %65 = load i32, i32* @nv50_fifo_context_detach, align 4
  %66 = load %struct.nv50_fifo_chan*, %struct.nv50_fifo_chan** %17, align 8
  %67 = call %struct.TYPE_13__* @nv_parent(%struct.nv50_fifo_chan* %66)
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 2
  store i32 %65, i32* %68, align 4
  %69 = load i32, i32* @nv50_fifo_object_attach, align 4
  %70 = load %struct.nv50_fifo_chan*, %struct.nv50_fifo_chan** %17, align 8
  %71 = call %struct.TYPE_13__* @nv_parent(%struct.nv50_fifo_chan* %70)
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 1
  store i32 %69, i32* %72, align 4
  %73 = load i32, i32* @nv50_fifo_object_detach, align 4
  %74 = load %struct.nv50_fifo_chan*, %struct.nv50_fifo_chan** %17, align 8
  %75 = call %struct.TYPE_13__* @nv_parent(%struct.nv50_fifo_chan* %74)
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 4
  %77 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %78 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %79 = load %struct.nv50_fifo_chan*, %struct.nv50_fifo_chan** %17, align 8
  %80 = getelementptr inbounds %struct.nv50_fifo_chan, %struct.nv50_fifo_chan* %79, i32 0, i32 0
  %81 = call i32 @nouveau_ramht_new(%struct.nouveau_object* %77, %struct.nouveau_object* %78, i32 32768, i32 16, %struct.TYPE_14__** %80)
  store i32 %81, i32* %20, align 4
  %82 = load i32, i32* %20, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %60
  %85 = load i32, i32* %20, align 4
  store i32 %85, i32* %7, align 4
  br label %170

86:                                               ; preds = %60
  %87 = load %struct.nv50_channel_ind_class*, %struct.nv50_channel_ind_class** %14, align 8
  %88 = getelementptr inbounds %struct.nv50_channel_ind_class, %struct.nv50_channel_ind_class* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %18, align 4
  %90 = load %struct.nv50_channel_ind_class*, %struct.nv50_channel_ind_class** %14, align 8
  %91 = getelementptr inbounds %struct.nv50_channel_ind_class, %struct.nv50_channel_ind_class* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = sdiv i32 %92, 8
  %94 = call i32 @log2i(i32 %93)
  store i32 %94, i32* %19, align 4
  %95 = load %struct.nv50_fifo_base*, %struct.nv50_fifo_base** %16, align 8
  %96 = getelementptr inbounds %struct.nv50_fifo_base, %struct.nv50_fifo_base* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @nv_wo32(i32 %97, i32 60, i32 1077895288)
  %99 = load %struct.nv50_fifo_base*, %struct.nv50_fifo_base** %16, align 8
  %100 = getelementptr inbounds %struct.nv50_fifo_base, %struct.nv50_fifo_base* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @nv_wo32(i32 %101, i32 68, i32 16793599)
  %103 = load %struct.nv50_fifo_base*, %struct.nv50_fifo_base** %16, align 8
  %104 = getelementptr inbounds %struct.nv50_fifo_base, %struct.nv50_fifo_base* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.nv50_fifo_chan*, %struct.nv50_fifo_chan** %17, align 8
  %107 = getelementptr inbounds %struct.nv50_fifo_chan, %struct.nv50_fifo_chan* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = ashr i32 %113, 4
  %115 = call i32 @nv_wo32(i32 %105, i32 72, i32 %114)
  %116 = load %struct.nv50_fifo_base*, %struct.nv50_fifo_base** %16, align 8
  %117 = getelementptr inbounds %struct.nv50_fifo_base, %struct.nv50_fifo_base* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %18, align 4
  %120 = call i32 @lower_32_bits(i32 %119)
  %121 = call i32 @nv_wo32(i32 %118, i32 80, i32 %120)
  %122 = load %struct.nv50_fifo_base*, %struct.nv50_fifo_base** %16, align 8
  %123 = getelementptr inbounds %struct.nv50_fifo_base, %struct.nv50_fifo_base* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %18, align 4
  %126 = call i32 @upper_32_bits(i32 %125)
  %127 = load i32, i32* %19, align 4
  %128 = shl i32 %127, 16
  %129 = or i32 %126, %128
  %130 = call i32 @nv_wo32(i32 %124, i32 84, i32 %129)
  %131 = load %struct.nv50_fifo_base*, %struct.nv50_fifo_base** %16, align 8
  %132 = getelementptr inbounds %struct.nv50_fifo_base, %struct.nv50_fifo_base* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @nv_wo32(i32 %133, i32 96, i32 2147483647)
  %135 = load %struct.nv50_fifo_base*, %struct.nv50_fifo_base** %16, align 8
  %136 = getelementptr inbounds %struct.nv50_fifo_base, %struct.nv50_fifo_base* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @nv_wo32(i32 %137, i32 120, i32 0)
  %139 = load %struct.nv50_fifo_base*, %struct.nv50_fifo_base** %16, align 8
  %140 = getelementptr inbounds %struct.nv50_fifo_base, %struct.nv50_fifo_base* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @nv_wo32(i32 %141, i32 124, i32 805306369)
  %143 = load %struct.nv50_fifo_base*, %struct.nv50_fifo_base** %16, align 8
  %144 = getelementptr inbounds %struct.nv50_fifo_base, %struct.nv50_fifo_base* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.nv50_fifo_chan*, %struct.nv50_fifo_chan** %17, align 8
  %147 = getelementptr inbounds %struct.nv50_fifo_chan, %struct.nv50_fifo_chan* %146, i32 0, i32 0
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = sub nsw i32 %150, 9
  %152 = shl i32 %151, 27
  %153 = or i32 %152, 67108864
  %154 = load %struct.nv50_fifo_chan*, %struct.nv50_fifo_chan** %17, align 8
  %155 = getelementptr inbounds %struct.nv50_fifo_chan, %struct.nv50_fifo_chan* %154, i32 0, i32 0
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = ashr i32 %161, 4
  %163 = or i32 %153, %162
  %164 = call i32 @nv_wo32(i32 %145, i32 128, i32 %163)
  %165 = load %struct.nouveau_bar*, %struct.nouveau_bar** %15, align 8
  %166 = getelementptr inbounds %struct.nouveau_bar, %struct.nouveau_bar* %165, i32 0, i32 0
  %167 = load i32 (%struct.nouveau_bar*)*, i32 (%struct.nouveau_bar*)** %166, align 8
  %168 = load %struct.nouveau_bar*, %struct.nouveau_bar** %15, align 8
  %169 = call i32 %167(%struct.nouveau_bar* %168)
  store i32 0, i32* %7, align 4
  br label %170

170:                                              ; preds = %86, %84, %58, %31
  %171 = load i32, i32* %7, align 4
  ret i32 %171
}

declare dso_local %struct.nouveau_bar* @nouveau_bar(%struct.nouveau_object*) #1

declare dso_local i32 @nouveau_fifo_channel_create(%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i32, i32, i32, i32, i64, %struct.nv50_fifo_chan**) #1

declare dso_local %struct.nouveau_object* @nv_object(%struct.nv50_fifo_chan*) #1

declare dso_local %struct.TYPE_13__* @nv_parent(%struct.nv50_fifo_chan*) #1

declare dso_local i32 @nouveau_ramht_new(%struct.nouveau_object*, %struct.nouveau_object*, i32, i32, %struct.TYPE_14__**) #1

declare dso_local i32 @log2i(i32) #1

declare dso_local i32 @nv_wo32(i32, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
