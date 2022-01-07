; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/dmaobj/extr_nv04.c_nv04_dmaobj_bind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/dmaobj/extr_nv04.c_nv04_dmaobj_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_dmaeng = type { i32 }
%struct.nouveau_object = type { %struct.nouveau_dmaobj* }
%struct.nouveau_dmaobj = type { i32, i32, i32, i32 }
%struct.nouveau_gpuobj = type { i32 }
%struct.nv04_vmmgr_priv = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.nouveau_gpuobj** }
%struct.TYPE_6__ = type { i32* }

@NV_ENGCTX_CLASS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NV_MEM_TARGET_VM = common dso_local global i32 0, align 4
@nv04_vmmgr_oclass = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_dmaeng*, %struct.nouveau_object*, %struct.nouveau_dmaobj*, %struct.nouveau_gpuobj**)* @nv04_dmaobj_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv04_dmaobj_bind(%struct.nouveau_dmaeng* %0, %struct.nouveau_object* %1, %struct.nouveau_dmaobj* %2, %struct.nouveau_gpuobj** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nouveau_dmaeng*, align 8
  %7 = alloca %struct.nouveau_object*, align 8
  %8 = alloca %struct.nouveau_dmaobj*, align 8
  %9 = alloca %struct.nouveau_gpuobj**, align 8
  %10 = alloca %struct.nv04_vmmgr_priv*, align 8
  %11 = alloca %struct.nouveau_gpuobj*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.nouveau_gpuobj*, align 8
  store %struct.nouveau_dmaeng* %0, %struct.nouveau_dmaeng** %6, align 8
  store %struct.nouveau_object* %1, %struct.nouveau_object** %7, align 8
  store %struct.nouveau_dmaobj* %2, %struct.nouveau_dmaobj** %8, align 8
  store %struct.nouveau_gpuobj** %3, %struct.nouveau_gpuobj*** %9, align 8
  %19 = load %struct.nouveau_dmaeng*, %struct.nouveau_dmaeng** %6, align 8
  %20 = call %struct.nv04_vmmgr_priv* @nv04_vmmgr(%struct.nouveau_dmaeng* %19)
  store %struct.nv04_vmmgr_priv* %20, %struct.nv04_vmmgr_priv** %10, align 8
  %21 = load %struct.nouveau_dmaobj*, %struct.nouveau_dmaobj** %8, align 8
  %22 = call i32 @nv_mclass(%struct.nouveau_dmaobj* %21)
  store i32 %22, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %23 = load %struct.nouveau_dmaobj*, %struct.nouveau_dmaobj** %8, align 8
  %24 = getelementptr inbounds %struct.nouveau_dmaobj, %struct.nouveau_dmaobj* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, -4096
  store i32 %26, i32* %14, align 4
  %27 = load %struct.nouveau_dmaobj*, %struct.nouveau_dmaobj** %8, align 8
  %28 = getelementptr inbounds %struct.nouveau_dmaobj, %struct.nouveau_dmaobj* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 4095
  store i32 %30, i32* %15, align 4
  %31 = load %struct.nouveau_dmaobj*, %struct.nouveau_dmaobj** %8, align 8
  %32 = getelementptr inbounds %struct.nouveau_dmaobj, %struct.nouveau_dmaobj* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.nouveau_dmaobj*, %struct.nouveau_dmaobj** %8, align 8
  %35 = getelementptr inbounds %struct.nouveau_dmaobj, %struct.nouveau_dmaobj* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 %33, %36
  store i32 %37, i32* %16, align 4
  %38 = load %struct.nouveau_object*, %struct.nouveau_object** %7, align 8
  %39 = load i32, i32* @NV_ENGCTX_CLASS, align 4
  %40 = call i32 @nv_iclass(%struct.nouveau_object* %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %4
  %43 = load %struct.nouveau_object*, %struct.nouveau_object** %7, align 8
  %44 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %43, i32 0, i32 0
  %45 = load %struct.nouveau_dmaobj*, %struct.nouveau_dmaobj** %44, align 8
  %46 = call i32 @nv_mclass(%struct.nouveau_dmaobj* %45)
  switch i32 %46, label %48 [
    i32 137, label %47
    i32 136, label %47
    i32 135, label %47
    i32 134, label %47
  ]

47:                                               ; preds = %42, %42, %42, %42
  br label %51

48:                                               ; preds = %42
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %163

51:                                               ; preds = %47
  br label %52

52:                                               ; preds = %51, %4
  %53 = load %struct.nouveau_dmaobj*, %struct.nouveau_dmaobj** %8, align 8
  %54 = getelementptr inbounds %struct.nouveau_dmaobj, %struct.nouveau_dmaobj* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @NV_MEM_TARGET_VM, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %97

58:                                               ; preds = %52
  %59 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %10, align 8
  %60 = call %struct.TYPE_6__* @nv_object(%struct.nv04_vmmgr_priv* %59)
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = icmp eq i32* %62, @nv04_vmmgr_oclass
  br i1 %63, label %64, label %92

64:                                               ; preds = %58
  %65 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %10, align 8
  %66 = getelementptr inbounds %struct.nv04_vmmgr_priv, %struct.nv04_vmmgr_priv* %65, i32 0, i32 0
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load %struct.nouveau_gpuobj**, %struct.nouveau_gpuobj*** %71, align 8
  %73 = getelementptr inbounds %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %72, i64 0
  %74 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %73, align 8
  store %struct.nouveau_gpuobj* %74, %struct.nouveau_gpuobj** %18, align 8
  %75 = load %struct.nouveau_dmaobj*, %struct.nouveau_dmaobj** %8, align 8
  %76 = getelementptr inbounds %struct.nouveau_dmaobj, %struct.nouveau_dmaobj* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %64
  %80 = load %struct.nouveau_object*, %struct.nouveau_object** %7, align 8
  %81 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %18, align 8
  %82 = load %struct.nouveau_gpuobj**, %struct.nouveau_gpuobj*** %9, align 8
  %83 = call i32 @nouveau_gpuobj_dup(%struct.nouveau_object* %80, %struct.nouveau_gpuobj* %81, %struct.nouveau_gpuobj** %82)
  store i32 %83, i32* %5, align 4
  br label %163

84:                                               ; preds = %64
  %85 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %18, align 8
  %86 = load i32, i32* %14, align 4
  %87 = ashr i32 %86, 10
  %88 = add nsw i32 8, %87
  %89 = call i32 @nv_ro32(%struct.nouveau_gpuobj* %85, i32 %88)
  store i32 %89, i32* %14, align 4
  %90 = load i32, i32* %14, align 4
  %91 = and i32 %90, -4096
  store i32 %91, i32* %14, align 4
  br label %92

92:                                               ; preds = %84, %58
  %93 = load %struct.nouveau_dmaobj*, %struct.nouveau_dmaobj** %8, align 8
  %94 = getelementptr inbounds %struct.nouveau_dmaobj, %struct.nouveau_dmaobj* %93, i32 0, i32 2
  store i32 130, i32* %94, align 4
  %95 = load %struct.nouveau_dmaobj*, %struct.nouveau_dmaobj** %8, align 8
  %96 = getelementptr inbounds %struct.nouveau_dmaobj, %struct.nouveau_dmaobj* %95, i32 0, i32 3
  store i32 132, i32* %96, align 4
  br label %97

97:                                               ; preds = %92, %52
  %98 = load %struct.nouveau_dmaobj*, %struct.nouveau_dmaobj** %8, align 8
  %99 = getelementptr inbounds %struct.nouveau_dmaobj, %struct.nouveau_dmaobj* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  switch i32 %100, label %110 [
    i32 128, label %101
    i32 130, label %104
    i32 129, label %107
  ]

101:                                              ; preds = %97
  %102 = load i32, i32* %12, align 4
  %103 = or i32 %102, 12288
  store i32 %103, i32* %12, align 4
  br label %113

104:                                              ; preds = %97
  %105 = load i32, i32* %12, align 4
  %106 = or i32 %105, 143360
  store i32 %106, i32* %12, align 4
  br label %113

107:                                              ; preds = %97
  %108 = load i32, i32* %12, align 4
  %109 = or i32 %108, 208896
  store i32 %109, i32* %12, align 4
  br label %113

110:                                              ; preds = %97
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %5, align 4
  br label %163

113:                                              ; preds = %107, %104, %101
  %114 = load %struct.nouveau_dmaobj*, %struct.nouveau_dmaobj** %8, align 8
  %115 = getelementptr inbounds %struct.nouveau_dmaobj, %struct.nouveau_dmaobj* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  switch i32 %116, label %126 [
    i32 133, label %117
    i32 131, label %120
    i32 132, label %123
  ]

117:                                              ; preds = %113
  %118 = load i32, i32* %12, align 4
  %119 = or i32 %118, 16384
  store i32 %119, i32* %12, align 4
  br label %129

120:                                              ; preds = %113
  %121 = load i32, i32* %12, align 4
  %122 = or i32 %121, 32768
  store i32 %122, i32* %12, align 4
  br label %123

123:                                              ; preds = %113, %120
  %124 = load i32, i32* %13, align 4
  %125 = or i32 %124, 2
  store i32 %125, i32* %13, align 4
  br label %129

126:                                              ; preds = %113
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %5, align 4
  br label %163

129:                                              ; preds = %123, %117
  %130 = load %struct.nouveau_object*, %struct.nouveau_object** %7, align 8
  %131 = load %struct.nouveau_object*, %struct.nouveau_object** %7, align 8
  %132 = call i32 @nouveau_gpuobj_new(%struct.nouveau_object* %130, %struct.nouveau_object* %131, i32 16, i32 16, i32 0, %struct.nouveau_gpuobj** %11)
  store i32 %132, i32* %17, align 4
  %133 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %11, align 8
  %134 = load %struct.nouveau_gpuobj**, %struct.nouveau_gpuobj*** %9, align 8
  store %struct.nouveau_gpuobj* %133, %struct.nouveau_gpuobj** %134, align 8
  %135 = load i32, i32* %17, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %161

137:                                              ; preds = %129
  %138 = load %struct.nouveau_gpuobj**, %struct.nouveau_gpuobj*** %9, align 8
  %139 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %138, align 8
  %140 = load i32, i32* %12, align 4
  %141 = load i32, i32* %15, align 4
  %142 = shl i32 %141, 20
  %143 = or i32 %140, %142
  %144 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %139, i32 0, i32 %143)
  %145 = load %struct.nouveau_gpuobj**, %struct.nouveau_gpuobj*** %9, align 8
  %146 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %145, align 8
  %147 = load i32, i32* %16, align 4
  %148 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %146, i32 4, i32 %147)
  %149 = load %struct.nouveau_gpuobj**, %struct.nouveau_gpuobj*** %9, align 8
  %150 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %149, align 8
  %151 = load i32, i32* %13, align 4
  %152 = load i32, i32* %14, align 4
  %153 = or i32 %151, %152
  %154 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %150, i32 8, i32 %153)
  %155 = load %struct.nouveau_gpuobj**, %struct.nouveau_gpuobj*** %9, align 8
  %156 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %155, align 8
  %157 = load i32, i32* %13, align 4
  %158 = load i32, i32* %14, align 4
  %159 = or i32 %157, %158
  %160 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %156, i32 12, i32 %159)
  br label %161

161:                                              ; preds = %137, %129
  %162 = load i32, i32* %17, align 4
  store i32 %162, i32* %5, align 4
  br label %163

163:                                              ; preds = %161, %126, %110, %79, %48
  %164 = load i32, i32* %5, align 4
  ret i32 %164
}

declare dso_local %struct.nv04_vmmgr_priv* @nv04_vmmgr(%struct.nouveau_dmaeng*) #1

declare dso_local i32 @nv_mclass(%struct.nouveau_dmaobj*) #1

declare dso_local i32 @nv_iclass(%struct.nouveau_object*, i32) #1

declare dso_local %struct.TYPE_6__* @nv_object(%struct.nv04_vmmgr_priv*) #1

declare dso_local i32 @nouveau_gpuobj_dup(%struct.nouveau_object*, %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj**) #1

declare dso_local i32 @nv_ro32(%struct.nouveau_gpuobj*, i32) #1

declare dso_local i32 @nouveau_gpuobj_new(%struct.nouveau_object*, %struct.nouveau_object*, i32, i32, i32, %struct.nouveau_gpuobj**) #1

declare dso_local i32 @nv_wo32(%struct.nouveau_gpuobj*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
