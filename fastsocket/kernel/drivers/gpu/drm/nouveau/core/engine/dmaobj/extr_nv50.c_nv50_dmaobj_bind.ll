; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/dmaobj/extr_nv50.c_nv50_dmaobj_bind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/dmaobj/extr_nv50.c_nv50_dmaobj_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_dmaeng = type { i32 }
%struct.nouveau_object = type { %struct.nouveau_dmaobj* }
%struct.nouveau_dmaobj = type { i32, i32, i32, i32, i32 }
%struct.nouveau_gpuobj = type { i32 }

@NV_ENGCTX_CLASS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NV50_DMA_CONF0_ENABLE = common dso_local global i32 0, align 4
@NV50_DMA_CONF0_PRIV_VM = common dso_local global i32 0, align 4
@NV50_DMA_CONF0_PART_VM = common dso_local global i32 0, align 4
@NV50_DMA_CONF0_COMP_VM = common dso_local global i32 0, align 4
@NV50_DMA_CONF0_TYPE_VM = common dso_local global i32 0, align 4
@NV50_DMA_CONF0_PRIV_US = common dso_local global i32 0, align 4
@NV50_DMA_CONF0_PART_256 = common dso_local global i32 0, align 4
@NV50_DMA_CONF0_COMP_NONE = common dso_local global i32 0, align 4
@NV50_DMA_CONF0_TYPE_LINEAR = common dso_local global i32 0, align 4
@NV50_DMA_CONF0_COMP = common dso_local global i32 0, align 4
@NV50_DMA_CONF0_TYPE = common dso_local global i32 0, align 4
@NV50_DMA_CONF0_PRIV = common dso_local global i32 0, align 4
@NV50_DMA_CONF0_PART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_dmaeng*, %struct.nouveau_object*, %struct.nouveau_dmaobj*, %struct.nouveau_gpuobj**)* @nv50_dmaobj_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_dmaobj_bind(%struct.nouveau_dmaeng* %0, %struct.nouveau_object* %1, %struct.nouveau_dmaobj* %2, %struct.nouveau_gpuobj** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nouveau_dmaeng*, align 8
  %7 = alloca %struct.nouveau_object*, align 8
  %8 = alloca %struct.nouveau_dmaobj*, align 8
  %9 = alloca %struct.nouveau_gpuobj**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nouveau_dmaeng* %0, %struct.nouveau_dmaeng** %6, align 8
  store %struct.nouveau_object* %1, %struct.nouveau_object** %7, align 8
  store %struct.nouveau_dmaobj* %2, %struct.nouveau_dmaobj** %8, align 8
  store %struct.nouveau_gpuobj** %3, %struct.nouveau_gpuobj*** %9, align 8
  %13 = load %struct.nouveau_dmaobj*, %struct.nouveau_dmaobj** %8, align 8
  %14 = call i32 @nv_mclass(%struct.nouveau_dmaobj* %13)
  store i32 %14, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %15 = load %struct.nouveau_object*, %struct.nouveau_object** %7, align 8
  %16 = load i32, i32* @NV_ENGCTX_CLASS, align 4
  %17 = call i32 @nv_iclass(%struct.nouveau_object* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %4
  %20 = load %struct.nouveau_object*, %struct.nouveau_object** %7, align 8
  %21 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %20, i32 0, i32 0
  %22 = load %struct.nouveau_dmaobj*, %struct.nouveau_dmaobj** %21, align 8
  %23 = call i32 @nv_mclass(%struct.nouveau_dmaobj* %22)
  switch i32 %23, label %25 [
    i32 154, label %24
    i32 149, label %24
    i32 153, label %24
    i32 148, label %24
    i32 152, label %24
    i32 147, label %24
    i32 144, label %24
    i32 141, label %24
    i32 138, label %24
    i32 150, label %24
    i32 145, label %24
    i32 142, label %24
    i32 139, label %24
    i32 136, label %24
    i32 151, label %24
    i32 146, label %24
    i32 143, label %24
    i32 140, label %24
    i32 137, label %24
  ]

24:                                               ; preds = %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19
  br label %28

25:                                               ; preds = %19
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %187

28:                                               ; preds = %24
  br label %29

29:                                               ; preds = %28, %4
  %30 = load %struct.nouveau_dmaobj*, %struct.nouveau_dmaobj** %8, align 8
  %31 = getelementptr inbounds %struct.nouveau_dmaobj, %struct.nouveau_dmaobj* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @NV50_DMA_CONF0_ENABLE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %80, label %36

36:                                               ; preds = %29
  %37 = load %struct.nouveau_dmaobj*, %struct.nouveau_dmaobj** %8, align 8
  %38 = getelementptr inbounds %struct.nouveau_dmaobj, %struct.nouveau_dmaobj* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 129
  br i1 %40, label %41, label %60

41:                                               ; preds = %36
  %42 = load i32, i32* @NV50_DMA_CONF0_PRIV_VM, align 4
  %43 = load %struct.nouveau_dmaobj*, %struct.nouveau_dmaobj** %8, align 8
  %44 = getelementptr inbounds %struct.nouveau_dmaobj, %struct.nouveau_dmaobj* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @NV50_DMA_CONF0_PART_VM, align 4
  %46 = load %struct.nouveau_dmaobj*, %struct.nouveau_dmaobj** %8, align 8
  %47 = getelementptr inbounds %struct.nouveau_dmaobj, %struct.nouveau_dmaobj* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  %50 = load i32, i32* @NV50_DMA_CONF0_COMP_VM, align 4
  %51 = load %struct.nouveau_dmaobj*, %struct.nouveau_dmaobj** %8, align 8
  %52 = getelementptr inbounds %struct.nouveau_dmaobj, %struct.nouveau_dmaobj* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load i32, i32* @NV50_DMA_CONF0_TYPE_VM, align 4
  %56 = load %struct.nouveau_dmaobj*, %struct.nouveau_dmaobj** %8, align 8
  %57 = getelementptr inbounds %struct.nouveau_dmaobj, %struct.nouveau_dmaobj* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  br label %79

60:                                               ; preds = %36
  %61 = load i32, i32* @NV50_DMA_CONF0_PRIV_US, align 4
  %62 = load %struct.nouveau_dmaobj*, %struct.nouveau_dmaobj** %8, align 8
  %63 = getelementptr inbounds %struct.nouveau_dmaobj, %struct.nouveau_dmaobj* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @NV50_DMA_CONF0_PART_256, align 4
  %65 = load %struct.nouveau_dmaobj*, %struct.nouveau_dmaobj** %8, align 8
  %66 = getelementptr inbounds %struct.nouveau_dmaobj, %struct.nouveau_dmaobj* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  %69 = load i32, i32* @NV50_DMA_CONF0_COMP_NONE, align 4
  %70 = load %struct.nouveau_dmaobj*, %struct.nouveau_dmaobj** %8, align 8
  %71 = getelementptr inbounds %struct.nouveau_dmaobj, %struct.nouveau_dmaobj* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 4
  %74 = load i32, i32* @NV50_DMA_CONF0_TYPE_LINEAR, align 4
  %75 = load %struct.nouveau_dmaobj*, %struct.nouveau_dmaobj** %8, align 8
  %76 = getelementptr inbounds %struct.nouveau_dmaobj, %struct.nouveau_dmaobj* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %60, %41
  br label %80

80:                                               ; preds = %79, %29
  %81 = load %struct.nouveau_dmaobj*, %struct.nouveau_dmaobj** %8, align 8
  %82 = getelementptr inbounds %struct.nouveau_dmaobj, %struct.nouveau_dmaobj* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @NV50_DMA_CONF0_COMP, align 4
  %85 = and i32 %83, %84
  %86 = shl i32 %85, 22
  %87 = load i32, i32* %10, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %10, align 4
  %89 = load %struct.nouveau_dmaobj*, %struct.nouveau_dmaobj** %8, align 8
  %90 = getelementptr inbounds %struct.nouveau_dmaobj, %struct.nouveau_dmaobj* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @NV50_DMA_CONF0_TYPE, align 4
  %93 = and i32 %91, %92
  %94 = shl i32 %93, 22
  %95 = load i32, i32* %10, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %10, align 4
  %97 = load %struct.nouveau_dmaobj*, %struct.nouveau_dmaobj** %8, align 8
  %98 = getelementptr inbounds %struct.nouveau_dmaobj, %struct.nouveau_dmaobj* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @NV50_DMA_CONF0_PRIV, align 4
  %101 = and i32 %99, %100
  %102 = load i32, i32* %10, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %10, align 4
  %104 = load %struct.nouveau_dmaobj*, %struct.nouveau_dmaobj** %8, align 8
  %105 = getelementptr inbounds %struct.nouveau_dmaobj, %struct.nouveau_dmaobj* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @NV50_DMA_CONF0_PART, align 4
  %108 = and i32 %106, %107
  %109 = load i32, i32* %11, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %11, align 4
  %111 = load %struct.nouveau_dmaobj*, %struct.nouveau_dmaobj** %8, align 8
  %112 = getelementptr inbounds %struct.nouveau_dmaobj, %struct.nouveau_dmaobj* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  switch i32 %113, label %125 [
    i32 129, label %114
    i32 128, label %116
    i32 131, label %119
    i32 130, label %122
  ]

114:                                              ; preds = %80
  %115 = load i32, i32* %10, align 4
  store i32 %115, i32* %10, align 4
  br label %128

116:                                              ; preds = %80
  %117 = load i32, i32* %10, align 4
  %118 = or i32 %117, 65536
  store i32 %118, i32* %10, align 4
  br label %128

119:                                              ; preds = %80
  %120 = load i32, i32* %10, align 4
  %121 = or i32 %120, 131072
  store i32 %121, i32* %10, align 4
  br label %128

122:                                              ; preds = %80
  %123 = load i32, i32* %10, align 4
  %124 = or i32 %123, 196608
  store i32 %124, i32* %10, align 4
  br label %128

125:                                              ; preds = %80
  %126 = load i32, i32* @EINVAL, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %5, align 4
  br label %187

128:                                              ; preds = %122, %119, %116, %114
  %129 = load %struct.nouveau_dmaobj*, %struct.nouveau_dmaobj** %8, align 8
  %130 = getelementptr inbounds %struct.nouveau_dmaobj, %struct.nouveau_dmaobj* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  switch i32 %131, label %139 [
    i32 133, label %132
    i32 135, label %133
    i32 132, label %136
    i32 134, label %136
  ]

132:                                              ; preds = %128
  br label %139

133:                                              ; preds = %128
  %134 = load i32, i32* %10, align 4
  %135 = or i32 %134, 262144
  store i32 %135, i32* %10, align 4
  br label %139

136:                                              ; preds = %128, %128
  %137 = load i32, i32* %10, align 4
  %138 = or i32 %137, 524288
  store i32 %138, i32* %10, align 4
  br label %139

139:                                              ; preds = %128, %136, %133, %132
  %140 = load %struct.nouveau_object*, %struct.nouveau_object** %7, align 8
  %141 = load %struct.nouveau_object*, %struct.nouveau_object** %7, align 8
  %142 = load %struct.nouveau_gpuobj**, %struct.nouveau_gpuobj*** %9, align 8
  %143 = call i32 @nouveau_gpuobj_new(%struct.nouveau_object* %140, %struct.nouveau_object* %141, i32 24, i32 32, i32 0, %struct.nouveau_gpuobj** %142)
  store i32 %143, i32* %12, align 4
  %144 = load i32, i32* %12, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %185

146:                                              ; preds = %139
  %147 = load %struct.nouveau_gpuobj**, %struct.nouveau_gpuobj*** %9, align 8
  %148 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %147, align 8
  %149 = load i32, i32* %10, align 4
  %150 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %148, i32 0, i32 %149)
  %151 = load %struct.nouveau_gpuobj**, %struct.nouveau_gpuobj*** %9, align 8
  %152 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %151, align 8
  %153 = load %struct.nouveau_dmaobj*, %struct.nouveau_dmaobj** %8, align 8
  %154 = getelementptr inbounds %struct.nouveau_dmaobj, %struct.nouveau_dmaobj* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @lower_32_bits(i32 %155)
  %157 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %152, i32 4, i32 %156)
  %158 = load %struct.nouveau_gpuobj**, %struct.nouveau_gpuobj*** %9, align 8
  %159 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %158, align 8
  %160 = load %struct.nouveau_dmaobj*, %struct.nouveau_dmaobj** %8, align 8
  %161 = getelementptr inbounds %struct.nouveau_dmaobj, %struct.nouveau_dmaobj* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @lower_32_bits(i32 %162)
  %164 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %159, i32 8, i32 %163)
  %165 = load %struct.nouveau_gpuobj**, %struct.nouveau_gpuobj*** %9, align 8
  %166 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %165, align 8
  %167 = load %struct.nouveau_dmaobj*, %struct.nouveau_dmaobj** %8, align 8
  %168 = getelementptr inbounds %struct.nouveau_dmaobj, %struct.nouveau_dmaobj* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @upper_32_bits(i32 %169)
  %171 = shl i32 %170, 24
  %172 = load %struct.nouveau_dmaobj*, %struct.nouveau_dmaobj** %8, align 8
  %173 = getelementptr inbounds %struct.nouveau_dmaobj, %struct.nouveau_dmaobj* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @upper_32_bits(i32 %174)
  %176 = or i32 %171, %175
  %177 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %166, i32 12, i32 %176)
  %178 = load %struct.nouveau_gpuobj**, %struct.nouveau_gpuobj*** %9, align 8
  %179 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %178, align 8
  %180 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %179, i32 16, i32 0)
  %181 = load %struct.nouveau_gpuobj**, %struct.nouveau_gpuobj*** %9, align 8
  %182 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %181, align 8
  %183 = load i32, i32* %11, align 4
  %184 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %182, i32 20, i32 %183)
  br label %185

185:                                              ; preds = %146, %139
  %186 = load i32, i32* %12, align 4
  store i32 %186, i32* %5, align 4
  br label %187

187:                                              ; preds = %185, %125, %25
  %188 = load i32, i32* %5, align 4
  ret i32 %188
}

declare dso_local i32 @nv_mclass(%struct.nouveau_dmaobj*) #1

declare dso_local i32 @nv_iclass(%struct.nouveau_object*, i32) #1

declare dso_local i32 @nouveau_gpuobj_new(%struct.nouveau_object*, %struct.nouveau_object*, i32, i32, i32, %struct.nouveau_gpuobj**) #1

declare dso_local i32 @nv_wo32(%struct.nouveau_gpuobj*, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
