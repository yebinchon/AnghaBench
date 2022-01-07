; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv84_fence.c_nv84_fence_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv84_fence.c_nv84_fence_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_drm = type { i32, %struct.nv84_fence_priv*, i32 }
%struct.nv84_fence_priv = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 (%struct.nouveau_drm.0*)* }
%struct.nouveau_drm.0 = type opaque
%struct.nouveau_fifo = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nv84_fence_suspend = common dso_local global i32 0, align 4
@nv84_fence_resume = common dso_local global i32 0, align 4
@nv84_fence_context_new = common dso_local global i32 0, align 4
@nv84_fence_context_del = common dso_local global i32 0, align 4
@TTM_PL_FLAG_VRAM = common dso_local global i32 0, align 4
@TTM_PL_FLAG_TT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv84_fence_create(%struct.nouveau_drm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nouveau_drm*, align 8
  %4 = alloca %struct.nouveau_fifo*, align 8
  %5 = alloca %struct.nv84_fence_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.nouveau_drm* %0, %struct.nouveau_drm** %3, align 8
  %7 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %8 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.nouveau_fifo* @nouveau_fifo(i32 %9)
  store %struct.nouveau_fifo* %10, %struct.nouveau_fifo** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.nv84_fence_priv* @kzalloc(i32 40, i32 %11)
  %13 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %14 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %13, i32 0, i32 1
  store %struct.nv84_fence_priv* %12, %struct.nv84_fence_priv** %14, align 8
  store %struct.nv84_fence_priv* %12, %struct.nv84_fence_priv** %5, align 8
  %15 = load %struct.nv84_fence_priv*, %struct.nv84_fence_priv** %5, align 8
  %16 = icmp ne %struct.nv84_fence_priv* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %146

20:                                               ; preds = %1
  %21 = load %struct.nv84_fence_priv*, %struct.nv84_fence_priv** %5, align 8
  %22 = getelementptr inbounds %struct.nv84_fence_priv, %struct.nv84_fence_priv* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 6
  store i32 (%struct.nouveau_drm.0*)* bitcast (i32 (%struct.nouveau_drm*)* @nv84_fence_destroy to i32 (%struct.nouveau_drm.0*)*), i32 (%struct.nouveau_drm.0*)** %23, align 8
  %24 = load i32, i32* @nv84_fence_suspend, align 4
  %25 = load %struct.nv84_fence_priv*, %struct.nv84_fence_priv** %5, align 8
  %26 = getelementptr inbounds %struct.nv84_fence_priv, %struct.nv84_fence_priv* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 5
  store i32 %24, i32* %27, align 4
  %28 = load i32, i32* @nv84_fence_resume, align 4
  %29 = load %struct.nv84_fence_priv*, %struct.nv84_fence_priv** %5, align 8
  %30 = getelementptr inbounds %struct.nv84_fence_priv, %struct.nv84_fence_priv* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 4
  store i32 %28, i32* %31, align 8
  %32 = load i32, i32* @nv84_fence_context_new, align 4
  %33 = load %struct.nv84_fence_priv*, %struct.nv84_fence_priv** %5, align 8
  %34 = getelementptr inbounds %struct.nv84_fence_priv, %struct.nv84_fence_priv* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 3
  store i32 %32, i32* %35, align 4
  %36 = load i32, i32* @nv84_fence_context_del, align 4
  %37 = load %struct.nv84_fence_priv*, %struct.nv84_fence_priv** %5, align 8
  %38 = getelementptr inbounds %struct.nv84_fence_priv, %struct.nv84_fence_priv* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  store i32 %36, i32* %39, align 8
  %40 = load %struct.nv84_fence_priv*, %struct.nv84_fence_priv** %5, align 8
  %41 = getelementptr inbounds %struct.nv84_fence_priv, %struct.nv84_fence_priv* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = call i32 @init_waitqueue_head(i32* %42)
  %44 = load %struct.nv84_fence_priv*, %struct.nv84_fence_priv** %5, align 8
  %45 = getelementptr inbounds %struct.nv84_fence_priv, %struct.nv84_fence_priv* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  %47 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %48 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.nouveau_fifo*, %struct.nouveau_fifo** %4, align 8
  %51 = getelementptr inbounds %struct.nouveau_fifo, %struct.nouveau_fifo* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  %54 = mul nsw i32 16, %53
  %55 = load i32, i32* @TTM_PL_FLAG_VRAM, align 4
  %56 = load %struct.nv84_fence_priv*, %struct.nv84_fence_priv** %5, align 8
  %57 = getelementptr inbounds %struct.nv84_fence_priv, %struct.nv84_fence_priv* %56, i32 0, i32 1
  %58 = call i32 @nouveau_bo_new(i32 %49, i32 %54, i32 0, i32 %55, i32 0, i32 0, i32* null, i32* %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %90

61:                                               ; preds = %20
  %62 = load %struct.nv84_fence_priv*, %struct.nv84_fence_priv** %5, align 8
  %63 = getelementptr inbounds %struct.nv84_fence_priv, %struct.nv84_fence_priv* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @TTM_PL_FLAG_VRAM, align 4
  %66 = call i32 @nouveau_bo_pin(i32 %64, i32 %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %61
  %70 = load %struct.nv84_fence_priv*, %struct.nv84_fence_priv** %5, align 8
  %71 = getelementptr inbounds %struct.nv84_fence_priv, %struct.nv84_fence_priv* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @nouveau_bo_map(i32 %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %69
  %77 = load %struct.nv84_fence_priv*, %struct.nv84_fence_priv** %5, align 8
  %78 = getelementptr inbounds %struct.nv84_fence_priv, %struct.nv84_fence_priv* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @nouveau_bo_unpin(i32 %79)
  br label %81

81:                                               ; preds = %76, %69
  br label %82

82:                                               ; preds = %81, %61
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load %struct.nv84_fence_priv*, %struct.nv84_fence_priv** %5, align 8
  %87 = getelementptr inbounds %struct.nv84_fence_priv, %struct.nv84_fence_priv* %86, i32 0, i32 1
  %88 = call i32 @nouveau_bo_ref(i32* null, i32* %87)
  br label %89

89:                                               ; preds = %85, %82
  br label %90

90:                                               ; preds = %89, %20
  %91 = load i32, i32* %6, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %106

93:                                               ; preds = %90
  %94 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %95 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.nouveau_fifo*, %struct.nouveau_fifo** %4, align 8
  %98 = getelementptr inbounds %struct.nouveau_fifo, %struct.nouveau_fifo* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, 1
  %101 = mul nsw i32 16, %100
  %102 = load i32, i32* @TTM_PL_FLAG_TT, align 4
  %103 = load %struct.nv84_fence_priv*, %struct.nv84_fence_priv** %5, align 8
  %104 = getelementptr inbounds %struct.nv84_fence_priv, %struct.nv84_fence_priv* %103, i32 0, i32 0
  %105 = call i32 @nouveau_bo_new(i32 %96, i32 %101, i32 0, i32 %102, i32 0, i32 0, i32* null, i32* %104)
  store i32 %105, i32* %6, align 4
  br label %106

106:                                              ; preds = %93, %90
  %107 = load i32, i32* %6, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %138

109:                                              ; preds = %106
  %110 = load %struct.nv84_fence_priv*, %struct.nv84_fence_priv** %5, align 8
  %111 = getelementptr inbounds %struct.nv84_fence_priv, %struct.nv84_fence_priv* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @TTM_PL_FLAG_TT, align 4
  %114 = call i32 @nouveau_bo_pin(i32 %112, i32 %113)
  store i32 %114, i32* %6, align 4
  %115 = load i32, i32* %6, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %130

117:                                              ; preds = %109
  %118 = load %struct.nv84_fence_priv*, %struct.nv84_fence_priv** %5, align 8
  %119 = getelementptr inbounds %struct.nv84_fence_priv, %struct.nv84_fence_priv* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @nouveau_bo_map(i32 %120)
  store i32 %121, i32* %6, align 4
  %122 = load i32, i32* %6, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %117
  %125 = load %struct.nv84_fence_priv*, %struct.nv84_fence_priv** %5, align 8
  %126 = getelementptr inbounds %struct.nv84_fence_priv, %struct.nv84_fence_priv* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @nouveau_bo_unpin(i32 %127)
  br label %129

129:                                              ; preds = %124, %117
  br label %130

130:                                              ; preds = %129, %109
  %131 = load i32, i32* %6, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %130
  %134 = load %struct.nv84_fence_priv*, %struct.nv84_fence_priv** %5, align 8
  %135 = getelementptr inbounds %struct.nv84_fence_priv, %struct.nv84_fence_priv* %134, i32 0, i32 0
  %136 = call i32 @nouveau_bo_ref(i32* null, i32* %135)
  br label %137

137:                                              ; preds = %133, %130
  br label %138

138:                                              ; preds = %137, %106
  %139 = load i32, i32* %6, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %138
  %142 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %143 = call i32 @nv84_fence_destroy(%struct.nouveau_drm* %142)
  br label %144

144:                                              ; preds = %141, %138
  %145 = load i32, i32* %6, align 4
  store i32 %145, i32* %2, align 4
  br label %146

146:                                              ; preds = %144, %17
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local %struct.nouveau_fifo* @nouveau_fifo(i32) #1

declare dso_local %struct.nv84_fence_priv* @kzalloc(i32, i32) #1

declare dso_local i32 @nv84_fence_destroy(%struct.nouveau_drm*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @nouveau_bo_new(i32, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @nouveau_bo_pin(i32, i32) #1

declare dso_local i32 @nouveau_bo_map(i32) #1

declare dso_local i32 @nouveau_bo_unpin(i32) #1

declare dso_local i32 @nouveau_bo_ref(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
