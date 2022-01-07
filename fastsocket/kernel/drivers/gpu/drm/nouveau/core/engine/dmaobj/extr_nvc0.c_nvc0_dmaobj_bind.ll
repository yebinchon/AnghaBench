; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/dmaobj/extr_nvc0.c_nvc0_dmaobj_bind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/dmaobj/extr_nvc0.c_nvc0_dmaobj_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_dmaeng = type { i32 }
%struct.nouveau_object = type { %struct.nouveau_dmaobj* }
%struct.nouveau_dmaobj = type { i32, i32, i32, i32, i32 }
%struct.nouveau_gpuobj = type { i32 }

@NV_ENGCTX_CLASS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NVC0_DMA_CONF0_ENABLE = common dso_local global i32 0, align 4
@NVC0_DMA_CONF0_PRIV_VM = common dso_local global i32 0, align 4
@NVC0_DMA_CONF0_TYPE_VM = common dso_local global i32 0, align 4
@NVC0_DMA_CONF0_PRIV_US = common dso_local global i32 0, align 4
@NVC0_DMA_CONF0_TYPE_LINEAR = common dso_local global i32 0, align 4
@NVC0_DMA_CONF0_TYPE = common dso_local global i32 0, align 4
@NVC0_DMA_CONF0_PRIV = common dso_local global i32 0, align 4
@NVC0_DMA_CONF0_UNKN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_dmaeng*, %struct.nouveau_object*, %struct.nouveau_dmaobj*, %struct.nouveau_gpuobj**)* @nvc0_dmaobj_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvc0_dmaobj_bind(%struct.nouveau_dmaeng* %0, %struct.nouveau_object* %1, %struct.nouveau_dmaobj* %2, %struct.nouveau_gpuobj** %3) #0 {
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
    i32 138, label %24
    i32 136, label %24
    i32 137, label %24
  ]

24:                                               ; preds = %19, %19, %19
  br label %28

25:                                               ; preds = %19
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %164

28:                                               ; preds = %24
  br label %30

29:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %164

30:                                               ; preds = %28
  %31 = load %struct.nouveau_dmaobj*, %struct.nouveau_dmaobj** %8, align 8
  %32 = getelementptr inbounds %struct.nouveau_dmaobj, %struct.nouveau_dmaobj* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @NVC0_DMA_CONF0_ENABLE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %65, label %37

37:                                               ; preds = %30
  %38 = load %struct.nouveau_dmaobj*, %struct.nouveau_dmaobj** %8, align 8
  %39 = getelementptr inbounds %struct.nouveau_dmaobj, %struct.nouveau_dmaobj* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 129
  br i1 %41, label %42, label %51

42:                                               ; preds = %37
  %43 = load i32, i32* @NVC0_DMA_CONF0_PRIV_VM, align 4
  %44 = load %struct.nouveau_dmaobj*, %struct.nouveau_dmaobj** %8, align 8
  %45 = getelementptr inbounds %struct.nouveau_dmaobj, %struct.nouveau_dmaobj* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @NVC0_DMA_CONF0_TYPE_VM, align 4
  %47 = load %struct.nouveau_dmaobj*, %struct.nouveau_dmaobj** %8, align 8
  %48 = getelementptr inbounds %struct.nouveau_dmaobj, %struct.nouveau_dmaobj* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  br label %64

51:                                               ; preds = %37
  %52 = load i32, i32* @NVC0_DMA_CONF0_PRIV_US, align 4
  %53 = load %struct.nouveau_dmaobj*, %struct.nouveau_dmaobj** %8, align 8
  %54 = getelementptr inbounds %struct.nouveau_dmaobj, %struct.nouveau_dmaobj* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @NVC0_DMA_CONF0_TYPE_LINEAR, align 4
  %56 = load %struct.nouveau_dmaobj*, %struct.nouveau_dmaobj** %8, align 8
  %57 = getelementptr inbounds %struct.nouveau_dmaobj, %struct.nouveau_dmaobj* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  %60 = load %struct.nouveau_dmaobj*, %struct.nouveau_dmaobj** %8, align 8
  %61 = getelementptr inbounds %struct.nouveau_dmaobj, %struct.nouveau_dmaobj* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, 131072
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %51, %42
  br label %65

65:                                               ; preds = %64, %30
  %66 = load %struct.nouveau_dmaobj*, %struct.nouveau_dmaobj** %8, align 8
  %67 = getelementptr inbounds %struct.nouveau_dmaobj, %struct.nouveau_dmaobj* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @NVC0_DMA_CONF0_TYPE, align 4
  %70 = and i32 %68, %69
  %71 = shl i32 %70, 22
  %72 = load i32, i32* %10, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %10, align 4
  %74 = load %struct.nouveau_dmaobj*, %struct.nouveau_dmaobj** %8, align 8
  %75 = getelementptr inbounds %struct.nouveau_dmaobj, %struct.nouveau_dmaobj* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @NVC0_DMA_CONF0_PRIV, align 4
  %78 = and i32 %76, %77
  %79 = load i32, i32* %10, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %10, align 4
  %81 = load %struct.nouveau_dmaobj*, %struct.nouveau_dmaobj** %8, align 8
  %82 = getelementptr inbounds %struct.nouveau_dmaobj, %struct.nouveau_dmaobj* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @NVC0_DMA_CONF0_UNKN, align 4
  %85 = and i32 %83, %84
  %86 = load i32, i32* %11, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %11, align 4
  %88 = load %struct.nouveau_dmaobj*, %struct.nouveau_dmaobj** %8, align 8
  %89 = getelementptr inbounds %struct.nouveau_dmaobj, %struct.nouveau_dmaobj* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  switch i32 %90, label %102 [
    i32 129, label %91
    i32 128, label %93
    i32 131, label %96
    i32 130, label %99
  ]

91:                                               ; preds = %65
  %92 = load i32, i32* %10, align 4
  store i32 %92, i32* %10, align 4
  br label %105

93:                                               ; preds = %65
  %94 = load i32, i32* %10, align 4
  %95 = or i32 %94, 65536
  store i32 %95, i32* %10, align 4
  br label %105

96:                                               ; preds = %65
  %97 = load i32, i32* %10, align 4
  %98 = or i32 %97, 131072
  store i32 %98, i32* %10, align 4
  br label %105

99:                                               ; preds = %65
  %100 = load i32, i32* %10, align 4
  %101 = or i32 %100, 196608
  store i32 %101, i32* %10, align 4
  br label %105

102:                                              ; preds = %65
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %5, align 4
  br label %164

105:                                              ; preds = %99, %96, %93, %91
  %106 = load %struct.nouveau_dmaobj*, %struct.nouveau_dmaobj** %8, align 8
  %107 = getelementptr inbounds %struct.nouveau_dmaobj, %struct.nouveau_dmaobj* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  switch i32 %108, label %116 [
    i32 133, label %109
    i32 135, label %110
    i32 132, label %113
    i32 134, label %113
  ]

109:                                              ; preds = %105
  br label %116

110:                                              ; preds = %105
  %111 = load i32, i32* %10, align 4
  %112 = or i32 %111, 262144
  store i32 %112, i32* %10, align 4
  br label %116

113:                                              ; preds = %105, %105
  %114 = load i32, i32* %10, align 4
  %115 = or i32 %114, 524288
  store i32 %115, i32* %10, align 4
  br label %116

116:                                              ; preds = %105, %113, %110, %109
  %117 = load %struct.nouveau_object*, %struct.nouveau_object** %7, align 8
  %118 = load %struct.nouveau_object*, %struct.nouveau_object** %7, align 8
  %119 = load %struct.nouveau_gpuobj**, %struct.nouveau_gpuobj*** %9, align 8
  %120 = call i32 @nouveau_gpuobj_new(%struct.nouveau_object* %117, %struct.nouveau_object* %118, i32 24, i32 32, i32 0, %struct.nouveau_gpuobj** %119)
  store i32 %120, i32* %12, align 4
  %121 = load i32, i32* %12, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %162

123:                                              ; preds = %116
  %124 = load %struct.nouveau_gpuobj**, %struct.nouveau_gpuobj*** %9, align 8
  %125 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %124, align 8
  %126 = load i32, i32* %10, align 4
  %127 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %125, i32 0, i32 %126)
  %128 = load %struct.nouveau_gpuobj**, %struct.nouveau_gpuobj*** %9, align 8
  %129 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %128, align 8
  %130 = load %struct.nouveau_dmaobj*, %struct.nouveau_dmaobj** %8, align 8
  %131 = getelementptr inbounds %struct.nouveau_dmaobj, %struct.nouveau_dmaobj* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @lower_32_bits(i32 %132)
  %134 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %129, i32 4, i32 %133)
  %135 = load %struct.nouveau_gpuobj**, %struct.nouveau_gpuobj*** %9, align 8
  %136 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %135, align 8
  %137 = load %struct.nouveau_dmaobj*, %struct.nouveau_dmaobj** %8, align 8
  %138 = getelementptr inbounds %struct.nouveau_dmaobj, %struct.nouveau_dmaobj* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @lower_32_bits(i32 %139)
  %141 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %136, i32 8, i32 %140)
  %142 = load %struct.nouveau_gpuobj**, %struct.nouveau_gpuobj*** %9, align 8
  %143 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %142, align 8
  %144 = load %struct.nouveau_dmaobj*, %struct.nouveau_dmaobj** %8, align 8
  %145 = getelementptr inbounds %struct.nouveau_dmaobj, %struct.nouveau_dmaobj* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @upper_32_bits(i32 %146)
  %148 = shl i32 %147, 24
  %149 = load %struct.nouveau_dmaobj*, %struct.nouveau_dmaobj** %8, align 8
  %150 = getelementptr inbounds %struct.nouveau_dmaobj, %struct.nouveau_dmaobj* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @upper_32_bits(i32 %151)
  %153 = or i32 %148, %152
  %154 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %143, i32 12, i32 %153)
  %155 = load %struct.nouveau_gpuobj**, %struct.nouveau_gpuobj*** %9, align 8
  %156 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %155, align 8
  %157 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %156, i32 16, i32 0)
  %158 = load %struct.nouveau_gpuobj**, %struct.nouveau_gpuobj*** %9, align 8
  %159 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %158, align 8
  %160 = load i32, i32* %11, align 4
  %161 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %159, i32 20, i32 %160)
  br label %162

162:                                              ; preds = %123, %116
  %163 = load i32, i32* %12, align 4
  store i32 %163, i32* %5, align 4
  br label %164

164:                                              ; preds = %162, %102, %29, %25
  %165 = load i32, i32* %5, align 4
  ret i32 %165
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
