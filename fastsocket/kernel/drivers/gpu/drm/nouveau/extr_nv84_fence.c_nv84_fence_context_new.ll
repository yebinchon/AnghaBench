; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv84_fence.c_nv84_fence_context_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv84_fence.c_nv84_fence_context_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_channel = type { %struct.TYPE_6__*, %struct.nv84_fence_chan*, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_7__*, %struct.nv84_fence_priv* }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.nv84_fence_priv = type { %struct.nouveau_bo*, %struct.nouveau_bo* }
%struct.nouveau_bo = type { i32 }
%struct.nv84_fence_chan = type { i32*, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.nouveau_fifo_chan = type { i32 }
%struct.nouveau_client = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nv84_fence_emit = common dso_local global i32 0, align 4
@nv84_fence_sync = common dso_local global i32 0, align 4
@nv84_fence_read = common dso_local global i32 0, align 4
@nv84_fence_emit32 = common dso_local global i32 0, align 4
@nv84_fence_sync32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv84_fence_context_new(%struct.nouveau_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nouveau_channel*, align 8
  %4 = alloca %struct.nouveau_fifo_chan*, align 8
  %5 = alloca %struct.nouveau_client*, align 8
  %6 = alloca %struct.nv84_fence_priv*, align 8
  %7 = alloca %struct.nv84_fence_chan*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nouveau_bo*, align 8
  store %struct.nouveau_channel* %0, %struct.nouveau_channel** %3, align 8
  %11 = load %struct.nouveau_channel*, %struct.nouveau_channel** %3, align 8
  %12 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = bitcast i8* %14 to %struct.nouveau_fifo_chan*
  store %struct.nouveau_fifo_chan* %15, %struct.nouveau_fifo_chan** %4, align 8
  %16 = load %struct.nouveau_fifo_chan*, %struct.nouveau_fifo_chan** %4, align 8
  %17 = call %struct.nouveau_client* @nouveau_client(%struct.nouveau_fifo_chan* %16)
  store %struct.nouveau_client* %17, %struct.nouveau_client** %5, align 8
  %18 = load %struct.nouveau_channel*, %struct.nouveau_channel** %3, align 8
  %19 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load %struct.nv84_fence_priv*, %struct.nv84_fence_priv** %21, align 8
  store %struct.nv84_fence_priv* %22, %struct.nv84_fence_priv** %6, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.nv84_fence_chan* @kzalloc(i32 40, i32 %23)
  %25 = load %struct.nouveau_channel*, %struct.nouveau_channel** %3, align 8
  %26 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %25, i32 0, i32 1
  store %struct.nv84_fence_chan* %24, %struct.nv84_fence_chan** %26, align 8
  store %struct.nv84_fence_chan* %24, %struct.nv84_fence_chan** %7, align 8
  %27 = load %struct.nv84_fence_chan*, %struct.nv84_fence_chan** %7, align 8
  %28 = icmp ne %struct.nv84_fence_chan* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %1
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %133

32:                                               ; preds = %1
  %33 = load %struct.nv84_fence_chan*, %struct.nv84_fence_chan** %7, align 8
  %34 = getelementptr inbounds %struct.nv84_fence_chan, %struct.nv84_fence_chan* %33, i32 0, i32 3
  %35 = call i32 @nouveau_fence_context_new(%struct.TYPE_8__* %34)
  %36 = load i32, i32* @nv84_fence_emit, align 4
  %37 = load %struct.nv84_fence_chan*, %struct.nv84_fence_chan** %7, align 8
  %38 = getelementptr inbounds %struct.nv84_fence_chan, %struct.nv84_fence_chan* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 4
  store i32 %36, i32* %39, align 8
  %40 = load i32, i32* @nv84_fence_sync, align 4
  %41 = load %struct.nv84_fence_chan*, %struct.nv84_fence_chan** %7, align 8
  %42 = getelementptr inbounds %struct.nv84_fence_chan, %struct.nv84_fence_chan* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 3
  store i32 %40, i32* %43, align 4
  %44 = load i32, i32* @nv84_fence_read, align 4
  %45 = load %struct.nv84_fence_chan*, %struct.nv84_fence_chan** %7, align 8
  %46 = getelementptr inbounds %struct.nv84_fence_chan, %struct.nv84_fence_chan* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 2
  store i32 %44, i32* %47, align 8
  %48 = load i32, i32* @nv84_fence_emit32, align 4
  %49 = load %struct.nv84_fence_chan*, %struct.nv84_fence_chan** %7, align 8
  %50 = getelementptr inbounds %struct.nv84_fence_chan, %struct.nv84_fence_chan* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 4
  %52 = load i32, i32* @nv84_fence_sync32, align 4
  %53 = load %struct.nv84_fence_chan*, %struct.nv84_fence_chan** %7, align 8
  %54 = getelementptr inbounds %struct.nv84_fence_chan, %struct.nv84_fence_chan* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 8
  %56 = load %struct.nv84_fence_priv*, %struct.nv84_fence_priv** %6, align 8
  %57 = getelementptr inbounds %struct.nv84_fence_priv, %struct.nv84_fence_priv* %56, i32 0, i32 0
  %58 = load %struct.nouveau_bo*, %struct.nouveau_bo** %57, align 8
  %59 = load %struct.nouveau_client*, %struct.nouveau_client** %5, align 8
  %60 = getelementptr inbounds %struct.nouveau_client, %struct.nouveau_client* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.nv84_fence_chan*, %struct.nv84_fence_chan** %7, align 8
  %63 = getelementptr inbounds %struct.nv84_fence_chan, %struct.nv84_fence_chan* %62, i32 0, i32 2
  %64 = call i32 @nouveau_bo_vma_add(%struct.nouveau_bo* %58, i32 %61, i32* %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %32
  %68 = load %struct.nv84_fence_priv*, %struct.nv84_fence_priv** %6, align 8
  %69 = getelementptr inbounds %struct.nv84_fence_priv, %struct.nv84_fence_priv* %68, i32 0, i32 1
  %70 = load %struct.nouveau_bo*, %struct.nouveau_bo** %69, align 8
  %71 = load %struct.nouveau_client*, %struct.nouveau_client** %5, align 8
  %72 = getelementptr inbounds %struct.nouveau_client, %struct.nouveau_client* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.nv84_fence_chan*, %struct.nv84_fence_chan** %7, align 8
  %75 = getelementptr inbounds %struct.nv84_fence_chan, %struct.nv84_fence_chan* %74, i32 0, i32 1
  %76 = call i32 @nouveau_bo_vma_add(%struct.nouveau_bo* %70, i32 %73, i32* %75)
  store i32 %76, i32* %8, align 4
  br label %77

77:                                               ; preds = %67, %32
  store i32 0, i32* %9, align 4
  br label %78

78:                                               ; preds = %113, %77
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %92, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* %9, align 4
  %83 = load %struct.nouveau_channel*, %struct.nouveau_channel** %3, align 8
  %84 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %83, i32 0, i32 0
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp slt i32 %82, %90
  br label %92

92:                                               ; preds = %81, %78
  %93 = phi i1 [ false, %78 ], [ %91, %81 ]
  br i1 %93, label %94, label %116

94:                                               ; preds = %92
  %95 = load %struct.nouveau_channel*, %struct.nouveau_channel** %3, align 8
  %96 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %95, i32 0, i32 0
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = load i32, i32* %9, align 4
  %101 = call %struct.nouveau_bo* @nv50_display_crtc_sema(%struct.TYPE_7__* %99, i32 %100)
  store %struct.nouveau_bo* %101, %struct.nouveau_bo** %10, align 8
  %102 = load %struct.nouveau_bo*, %struct.nouveau_bo** %10, align 8
  %103 = load %struct.nouveau_client*, %struct.nouveau_client** %5, align 8
  %104 = getelementptr inbounds %struct.nouveau_client, %struct.nouveau_client* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.nv84_fence_chan*, %struct.nv84_fence_chan** %7, align 8
  %107 = getelementptr inbounds %struct.nv84_fence_chan, %struct.nv84_fence_chan* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = call i32 @nouveau_bo_vma_add(%struct.nouveau_bo* %102, i32 %105, i32* %111)
  store i32 %112, i32* %8, align 4
  br label %113

113:                                              ; preds = %94
  %114 = load i32, i32* %9, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %9, align 4
  br label %78

116:                                              ; preds = %92
  %117 = load %struct.nv84_fence_priv*, %struct.nv84_fence_priv** %6, align 8
  %118 = getelementptr inbounds %struct.nv84_fence_priv, %struct.nv84_fence_priv* %117, i32 0, i32 0
  %119 = load %struct.nouveau_bo*, %struct.nouveau_bo** %118, align 8
  %120 = load %struct.nouveau_fifo_chan*, %struct.nouveau_fifo_chan** %4, align 8
  %121 = getelementptr inbounds %struct.nouveau_fifo_chan, %struct.nouveau_fifo_chan* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = mul nsw i32 %122, 16
  %124 = sdiv i32 %123, 4
  %125 = call i32 @nouveau_bo_wr32(%struct.nouveau_bo* %119, i32 %124, i32 0)
  %126 = load i32, i32* %8, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %116
  %129 = load %struct.nouveau_channel*, %struct.nouveau_channel** %3, align 8
  %130 = call i32 @nv84_fence_context_del(%struct.nouveau_channel* %129)
  br label %131

131:                                              ; preds = %128, %116
  %132 = load i32, i32* %8, align 4
  store i32 %132, i32* %2, align 4
  br label %133

133:                                              ; preds = %131, %29
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local %struct.nouveau_client* @nouveau_client(%struct.nouveau_fifo_chan*) #1

declare dso_local %struct.nv84_fence_chan* @kzalloc(i32, i32) #1

declare dso_local i32 @nouveau_fence_context_new(%struct.TYPE_8__*) #1

declare dso_local i32 @nouveau_bo_vma_add(%struct.nouveau_bo*, i32, i32*) #1

declare dso_local %struct.nouveau_bo* @nv50_display_crtc_sema(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @nouveau_bo_wr32(%struct.nouveau_bo*, i32, i32) #1

declare dso_local i32 @nv84_fence_context_del(%struct.nouveau_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
