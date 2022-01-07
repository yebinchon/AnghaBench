; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nvc0.c_nvc0_fifo_chan_ctor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nvc0.c_nvc0_fifo_chan_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_oclass = type { i32 }
%struct.nouveau_bar = type { i32 (%struct.nouveau_bar*)* }
%struct.nvc0_fifo_priv = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.nvc0_fifo_base*, %struct.TYPE_5__ }
%struct.nvc0_fifo_base = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.nvc0_fifo_chan = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.nv50_channel_ind_class = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@NVDEV_ENGINE_SW = common dso_local global i64 0, align 8
@NVDEV_ENGINE_GR = common dso_local global i64 0, align 8
@NVDEV_ENGINE_COPY0 = common dso_local global i64 0, align 8
@NVDEV_ENGINE_COPY1 = common dso_local global i64 0, align 8
@NVDEV_ENGINE_BSP = common dso_local global i64 0, align 8
@NVDEV_ENGINE_VP = common dso_local global i64 0, align 8
@NVDEV_ENGINE_PPP = common dso_local global i64 0, align 8
@nvc0_fifo_context_attach = common dso_local global i32 0, align 4
@nvc0_fifo_context_detach = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i8*, i32, %struct.nouveau_object**)* @nvc0_fifo_chan_ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvc0_fifo_chan_ctor(%struct.nouveau_object* %0, %struct.nouveau_object* %1, %struct.nouveau_oclass* %2, i8* %3, i32 %4, %struct.nouveau_object** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_object*, align 8
  %9 = alloca %struct.nouveau_object*, align 8
  %10 = alloca %struct.nouveau_oclass*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nouveau_object**, align 8
  %14 = alloca %struct.nouveau_bar*, align 8
  %15 = alloca %struct.nvc0_fifo_priv*, align 8
  %16 = alloca %struct.nvc0_fifo_base*, align 8
  %17 = alloca %struct.nvc0_fifo_chan*, align 8
  %18 = alloca %struct.nv50_channel_ind_class*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %8, align 8
  store %struct.nouveau_object* %1, %struct.nouveau_object** %9, align 8
  store %struct.nouveau_oclass* %2, %struct.nouveau_oclass** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.nouveau_object** %5, %struct.nouveau_object*** %13, align 8
  %24 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %25 = call %struct.nouveau_bar* @nouveau_bar(%struct.nouveau_object* %24)
  store %struct.nouveau_bar* %25, %struct.nouveau_bar** %14, align 8
  %26 = load %struct.nouveau_object*, %struct.nouveau_object** %9, align 8
  %27 = bitcast %struct.nouveau_object* %26 to i8*
  %28 = bitcast i8* %27 to %struct.nvc0_fifo_priv*
  store %struct.nvc0_fifo_priv* %28, %struct.nvc0_fifo_priv** %15, align 8
  %29 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %30 = bitcast %struct.nouveau_object* %29 to i8*
  %31 = bitcast i8* %30 to %struct.nvc0_fifo_base*
  store %struct.nvc0_fifo_base* %31, %struct.nvc0_fifo_base** %16, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = bitcast i8* %32 to %struct.nv50_channel_ind_class*
  store %struct.nv50_channel_ind_class* %33, %struct.nv50_channel_ind_class** %18, align 8
  %34 = load i32, i32* %12, align 4
  %35 = sext i32 %34 to i64
  %36 = icmp ult i64 %35, 12
  br i1 %36, label %37, label %40

37:                                               ; preds = %6
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %7, align 4
  br label %180

40:                                               ; preds = %6
  %41 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %42 = load %struct.nouveau_object*, %struct.nouveau_object** %9, align 8
  %43 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %10, align 8
  %44 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %15, align 8
  %45 = getelementptr inbounds %struct.nvc0_fifo_priv, %struct.nvc0_fifo_priv* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.nv50_channel_ind_class*, %struct.nv50_channel_ind_class** %18, align 8
  %50 = getelementptr inbounds %struct.nv50_channel_ind_class, %struct.nv50_channel_ind_class* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i64, i64* @NVDEV_ENGINE_SW, align 8
  %53 = shl i64 1, %52
  %54 = load i64, i64* @NVDEV_ENGINE_GR, align 8
  %55 = shl i64 1, %54
  %56 = or i64 %53, %55
  %57 = load i64, i64* @NVDEV_ENGINE_COPY0, align 8
  %58 = shl i64 1, %57
  %59 = or i64 %56, %58
  %60 = load i64, i64* @NVDEV_ENGINE_COPY1, align 8
  %61 = shl i64 1, %60
  %62 = or i64 %59, %61
  %63 = load i64, i64* @NVDEV_ENGINE_BSP, align 8
  %64 = shl i64 1, %63
  %65 = or i64 %62, %64
  %66 = load i64, i64* @NVDEV_ENGINE_VP, align 8
  %67 = shl i64 1, %66
  %68 = or i64 %65, %67
  %69 = load i64, i64* @NVDEV_ENGINE_PPP, align 8
  %70 = shl i64 1, %69
  %71 = or i64 %68, %70
  %72 = call i32 @nouveau_fifo_channel_create(%struct.nouveau_object* %41, %struct.nouveau_object* %42, %struct.nouveau_oclass* %43, i32 1, i32 %48, i32 4096, i32 %51, i64 %71, %struct.nvc0_fifo_chan** %17)
  store i32 %72, i32* %22, align 4
  %73 = load %struct.nvc0_fifo_chan*, %struct.nvc0_fifo_chan** %17, align 8
  %74 = call %struct.nouveau_object* @nv_object(%struct.nvc0_fifo_chan* %73)
  %75 = load %struct.nouveau_object**, %struct.nouveau_object*** %13, align 8
  store %struct.nouveau_object* %74, %struct.nouveau_object** %75, align 8
  %76 = load i32, i32* %22, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %40
  %79 = load i32, i32* %22, align 4
  store i32 %79, i32* %7, align 4
  br label %180

80:                                               ; preds = %40
  %81 = load i32, i32* @nvc0_fifo_context_attach, align 4
  %82 = load %struct.nvc0_fifo_chan*, %struct.nvc0_fifo_chan** %17, align 8
  %83 = call %struct.TYPE_8__* @nv_parent(%struct.nvc0_fifo_chan* %82)
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  store i32 %81, i32* %84, align 4
  %85 = load i32, i32* @nvc0_fifo_context_detach, align 4
  %86 = load %struct.nvc0_fifo_chan*, %struct.nvc0_fifo_chan** %17, align 8
  %87 = call %struct.TYPE_8__* @nv_parent(%struct.nvc0_fifo_chan* %86)
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  store i32 %85, i32* %88, align 4
  %89 = load %struct.nvc0_fifo_chan*, %struct.nvc0_fifo_chan** %17, align 8
  %90 = getelementptr inbounds %struct.nvc0_fifo_chan, %struct.nvc0_fifo_chan* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = mul nsw i32 %92, 4096
  store i32 %93, i32* %19, align 4
  %94 = load %struct.nv50_channel_ind_class*, %struct.nv50_channel_ind_class** %18, align 8
  %95 = getelementptr inbounds %struct.nv50_channel_ind_class, %struct.nv50_channel_ind_class* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %20, align 4
  %97 = load %struct.nv50_channel_ind_class*, %struct.nv50_channel_ind_class** %18, align 8
  %98 = getelementptr inbounds %struct.nv50_channel_ind_class, %struct.nv50_channel_ind_class* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = sdiv i32 %99, 8
  %101 = call i32 @log2i(i32 %100)
  store i32 %101, i32* %21, align 4
  store i32 0, i32* %23, align 4
  br label %102

102:                                              ; preds = %114, %80
  %103 = load i32, i32* %23, align 4
  %104 = icmp slt i32 %103, 4096
  br i1 %104, label %105, label %117

105:                                              ; preds = %102
  %106 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %15, align 8
  %107 = getelementptr inbounds %struct.nvc0_fifo_priv, %struct.nvc0_fifo_priv* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load %struct.nvc0_fifo_base*, %struct.nvc0_fifo_base** %108, align 8
  %110 = load i32, i32* %19, align 4
  %111 = load i32, i32* %23, align 4
  %112 = add nsw i32 %110, %111
  %113 = call i32 @nv_wo32(%struct.nvc0_fifo_base* %109, i32 %112, i32 0)
  br label %114

114:                                              ; preds = %105
  %115 = load i32, i32* %23, align 4
  %116 = add nsw i32 %115, 4
  store i32 %116, i32* %23, align 4
  br label %102

117:                                              ; preds = %102
  %118 = load %struct.nvc0_fifo_base*, %struct.nvc0_fifo_base** %16, align 8
  %119 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %15, align 8
  %120 = getelementptr inbounds %struct.nvc0_fifo_priv, %struct.nvc0_fifo_priv* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load %struct.nvc0_fifo_base*, %struct.nvc0_fifo_base** %121, align 8
  %123 = getelementptr inbounds %struct.nvc0_fifo_base, %struct.nvc0_fifo_base* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %19, align 4
  %126 = add nsw i32 %124, %125
  %127 = call i32 @lower_32_bits(i32 %126)
  %128 = call i32 @nv_wo32(%struct.nvc0_fifo_base* %118, i32 8, i32 %127)
  %129 = load %struct.nvc0_fifo_base*, %struct.nvc0_fifo_base** %16, align 8
  %130 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %15, align 8
  %131 = getelementptr inbounds %struct.nvc0_fifo_priv, %struct.nvc0_fifo_priv* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  %133 = load %struct.nvc0_fifo_base*, %struct.nvc0_fifo_base** %132, align 8
  %134 = getelementptr inbounds %struct.nvc0_fifo_base, %struct.nvc0_fifo_base* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %19, align 4
  %137 = add nsw i32 %135, %136
  %138 = call i32 @upper_32_bits(i32 %137)
  %139 = call i32 @nv_wo32(%struct.nvc0_fifo_base* %129, i32 12, i32 %138)
  %140 = load %struct.nvc0_fifo_base*, %struct.nvc0_fifo_base** %16, align 8
  %141 = call i32 @nv_wo32(%struct.nvc0_fifo_base* %140, i32 16, i32 64206)
  %142 = load %struct.nvc0_fifo_base*, %struct.nvc0_fifo_base** %16, align 8
  %143 = call i32 @nv_wo32(%struct.nvc0_fifo_base* %142, i32 48, i32 -1790)
  %144 = load %struct.nvc0_fifo_base*, %struct.nvc0_fifo_base** %16, align 8
  %145 = load i32, i32* %20, align 4
  %146 = call i32 @lower_32_bits(i32 %145)
  %147 = call i32 @nv_wo32(%struct.nvc0_fifo_base* %144, i32 72, i32 %146)
  %148 = load %struct.nvc0_fifo_base*, %struct.nvc0_fifo_base** %16, align 8
  %149 = load i32, i32* %20, align 4
  %150 = call i32 @upper_32_bits(i32 %149)
  %151 = load i32, i32* %21, align 4
  %152 = shl i32 %151, 16
  %153 = or i32 %150, %152
  %154 = call i32 @nv_wo32(%struct.nvc0_fifo_base* %148, i32 76, i32 %153)
  %155 = load %struct.nvc0_fifo_base*, %struct.nvc0_fifo_base** %16, align 8
  %156 = call i32 @nv_wo32(%struct.nvc0_fifo_base* %155, i32 84, i32 2)
  %157 = load %struct.nvc0_fifo_base*, %struct.nvc0_fifo_base** %16, align 8
  %158 = call i32 @nv_wo32(%struct.nvc0_fifo_base* %157, i32 132, i32 541065216)
  %159 = load %struct.nvc0_fifo_base*, %struct.nvc0_fifo_base** %16, align 8
  %160 = call i32 @nv_wo32(%struct.nvc0_fifo_base* %159, i32 148, i32 805306369)
  %161 = load %struct.nvc0_fifo_base*, %struct.nvc0_fifo_base** %16, align 8
  %162 = call i32 @nv_wo32(%struct.nvc0_fifo_base* %161, i32 156, i32 256)
  %163 = load %struct.nvc0_fifo_base*, %struct.nvc0_fifo_base** %16, align 8
  %164 = call i32 @nv_wo32(%struct.nvc0_fifo_base* %163, i32 164, i32 522133279)
  %165 = load %struct.nvc0_fifo_base*, %struct.nvc0_fifo_base** %16, align 8
  %166 = call i32 @nv_wo32(%struct.nvc0_fifo_base* %165, i32 168, i32 522133279)
  %167 = load %struct.nvc0_fifo_base*, %struct.nvc0_fifo_base** %16, align 8
  %168 = call i32 @nv_wo32(%struct.nvc0_fifo_base* %167, i32 172, i32 31)
  %169 = load %struct.nvc0_fifo_base*, %struct.nvc0_fifo_base** %16, align 8
  %170 = call i32 @nv_wo32(%struct.nvc0_fifo_base* %169, i32 184, i32 -134217728)
  %171 = load %struct.nvc0_fifo_base*, %struct.nvc0_fifo_base** %16, align 8
  %172 = call i32 @nv_wo32(%struct.nvc0_fifo_base* %171, i32 248, i32 268447872)
  %173 = load %struct.nvc0_fifo_base*, %struct.nvc0_fifo_base** %16, align 8
  %174 = call i32 @nv_wo32(%struct.nvc0_fifo_base* %173, i32 252, i32 268435472)
  %175 = load %struct.nouveau_bar*, %struct.nouveau_bar** %14, align 8
  %176 = getelementptr inbounds %struct.nouveau_bar, %struct.nouveau_bar* %175, i32 0, i32 0
  %177 = load i32 (%struct.nouveau_bar*)*, i32 (%struct.nouveau_bar*)** %176, align 8
  %178 = load %struct.nouveau_bar*, %struct.nouveau_bar** %14, align 8
  %179 = call i32 %177(%struct.nouveau_bar* %178)
  store i32 0, i32* %7, align 4
  br label %180

180:                                              ; preds = %117, %78, %37
  %181 = load i32, i32* %7, align 4
  ret i32 %181
}

declare dso_local %struct.nouveau_bar* @nouveau_bar(%struct.nouveau_object*) #1

declare dso_local i32 @nouveau_fifo_channel_create(%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i32, i32, i32, i32, i64, %struct.nvc0_fifo_chan**) #1

declare dso_local %struct.nouveau_object* @nv_object(%struct.nvc0_fifo_chan*) #1

declare dso_local %struct.TYPE_8__* @nv_parent(%struct.nvc0_fifo_chan*) #1

declare dso_local i32 @log2i(i32) #1

declare dso_local i32 @nv_wo32(%struct.nvc0_fifo_base*, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
