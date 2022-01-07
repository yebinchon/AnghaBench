; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_nvd0.c_nvd0_disp_base_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_nvd0.c_nvd0_disp_base_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32, i64 }
%struct.nv50_disp_priv = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.nv50_disp_base = type { i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"timeout acquiring display\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*)* @nvd0_disp_base_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvd0_disp_base_init(%struct.nouveau_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nouveau_object*, align 8
  %4 = alloca %struct.nv50_disp_priv*, align 8
  %5 = alloca %struct.nv50_disp_base*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %3, align 8
  %9 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %10 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = bitcast i8* %12 to %struct.nv50_disp_priv*
  store %struct.nv50_disp_priv* %13, %struct.nv50_disp_priv** %4, align 8
  %14 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %15 = bitcast %struct.nouveau_object* %14 to i8*
  %16 = bitcast i8* %15 to %struct.nv50_disp_base*
  store %struct.nv50_disp_base* %16, %struct.nv50_disp_base** %5, align 8
  %17 = load %struct.nv50_disp_base*, %struct.nv50_disp_base** %5, align 8
  %18 = getelementptr inbounds %struct.nv50_disp_base, %struct.nv50_disp_base* %17, i32 0, i32 0
  %19 = call i32 @nouveau_parent_init(i32* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %151

24:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %66, %24
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %28 = getelementptr inbounds %struct.nv50_disp_priv, %struct.nv50_disp_priv* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %26, %30
  br i1 %31, label %32, label %69

32:                                               ; preds = %25
  %33 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %34 = load i32, i32* %7, align 4
  %35 = mul nsw i32 %34, 2048
  %36 = add nsw i32 6381828, %35
  %37 = call i32 @nv_rd32(%struct.nv50_disp_priv* %33, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %39 = load i32, i32* %7, align 4
  %40 = mul nsw i32 %39, 2048
  %41 = add nsw i32 6357428, %40
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @nv_wr32(%struct.nv50_disp_priv* %38, i32 %41, i32 %42)
  %44 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %45 = load i32, i32* %7, align 4
  %46 = mul nsw i32 %45, 2048
  %47 = add nsw i32 6381832, %46
  %48 = call i32 @nv_rd32(%struct.nv50_disp_priv* %44, i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %50 = load i32, i32* %7, align 4
  %51 = mul nsw i32 %50, 2048
  %52 = add nsw i32 6357432, %51
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @nv_wr32(%struct.nv50_disp_priv* %49, i32 %52, i32 %53)
  %55 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %56 = load i32, i32* %7, align 4
  %57 = mul nsw i32 %56, 2048
  %58 = add nsw i32 6381836, %57
  %59 = call i32 @nv_rd32(%struct.nv50_disp_priv* %55, i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %61 = load i32, i32* %7, align 4
  %62 = mul nsw i32 %61, 2048
  %63 = add nsw i32 6357436, %62
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @nv_wr32(%struct.nv50_disp_priv* %60, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %32
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %25

69:                                               ; preds = %25
  store i32 0, i32* %7, align 4
  br label %70

70:                                               ; preds = %89, %69
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %73 = getelementptr inbounds %struct.nv50_disp_priv, %struct.nv50_disp_priv* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp slt i32 %71, %75
  br i1 %76, label %77, label %92

77:                                               ; preds = %70
  %78 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %79 = load i32, i32* %7, align 4
  %80 = mul nsw i32 %79, 2048
  %81 = add nsw i32 6397952, %80
  %82 = call i32 @nv_rd32(%struct.nv50_disp_priv* %78, i32 %81)
  store i32 %82, i32* %8, align 4
  %83 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %84 = load i32, i32* %7, align 4
  %85 = mul nsw i32 %84, 2048
  %86 = add nsw i32 6357440, %85
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @nv_wr32(%struct.nv50_disp_priv* %83, i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %77
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %7, align 4
  br label %70

92:                                               ; preds = %70
  store i32 0, i32* %7, align 4
  br label %93

93:                                               ; preds = %112, %92
  %94 = load i32, i32* %7, align 4
  %95 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %96 = getelementptr inbounds %struct.nv50_disp_priv, %struct.nv50_disp_priv* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp slt i32 %94, %98
  br i1 %99, label %100, label %115

100:                                              ; preds = %93
  %101 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %102 = load i32, i32* %7, align 4
  %103 = mul nsw i32 %102, 2048
  %104 = add nsw i32 6406144, %103
  %105 = call i32 @nv_rd32(%struct.nv50_disp_priv* %101, i32 %104)
  store i32 %105, i32* %8, align 4
  %106 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %107 = load i32, i32* %7, align 4
  %108 = mul nsw i32 %107, 2048
  %109 = add nsw i32 6488516, %108
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @nv_wr32(%struct.nv50_disp_priv* %106, i32 %109, i32 %110)
  br label %112

112:                                              ; preds = %100
  %113 = load i32, i32* %7, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %7, align 4
  br label %93

115:                                              ; preds = %93
  %116 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %117 = call i32 @nv_rd32(%struct.nv50_disp_priv* %116, i32 6357164)
  %118 = and i32 %117, 256
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %134

120:                                              ; preds = %115
  %121 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %122 = call i32 @nv_wr32(%struct.nv50_disp_priv* %121, i32 6357164, i32 256)
  %123 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %124 = call i32 @nv_mask(%struct.nv50_disp_priv* %123, i32 6395112, i32 1, i32 0)
  %125 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %126 = call i32 @nv_wait(%struct.nv50_disp_priv* %125, i32 6395112, i32 2, i32 0)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %133, label %128

128:                                              ; preds = %120
  %129 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %130 = call i32 @nv_error(%struct.nv50_disp_priv* %129, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %131 = load i32, i32* @EBUSY, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %2, align 4
  br label %151

133:                                              ; preds = %120
  br label %134

134:                                              ; preds = %133, %115
  %135 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %136 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %137 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call %struct.TYPE_8__* @nv_gpuobj(i32 %138)
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = ashr i32 %141, 8
  %143 = or i32 %142, 9
  %144 = call i32 @nv_wr32(%struct.nv50_disp_priv* %135, i32 6357008, i32 %143)
  %145 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %146 = call i32 @nv_wr32(%struct.nv50_disp_priv* %145, i32 6357136, i32 0)
  %147 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %148 = call i32 @nv_wr32(%struct.nv50_disp_priv* %147, i32 6357152, i32 0)
  %149 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %150 = call i32 @nv_wr32(%struct.nv50_disp_priv* %149, i32 6357168, i32 775)
  store i32 0, i32* %2, align 4
  br label %151

151:                                              ; preds = %134, %128, %22
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

declare dso_local i32 @nouveau_parent_init(i32*) #1

declare dso_local i32 @nv_rd32(%struct.nv50_disp_priv*, i32) #1

declare dso_local i32 @nv_wr32(%struct.nv50_disp_priv*, i32, i32) #1

declare dso_local i32 @nv_mask(%struct.nv50_disp_priv*, i32, i32, i32) #1

declare dso_local i32 @nv_wait(%struct.nv50_disp_priv*, i32, i32, i32) #1

declare dso_local i32 @nv_error(%struct.nv50_disp_priv*, i8*) #1

declare dso_local %struct.TYPE_8__* @nv_gpuobj(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
