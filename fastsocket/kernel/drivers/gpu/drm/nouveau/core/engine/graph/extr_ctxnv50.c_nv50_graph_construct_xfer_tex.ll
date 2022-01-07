; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_ctxnv50.c_nv50_graph_construct_xfer_tex.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_ctxnv50.c_nv50_graph_construct_xfer_tex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_grctx = type { %struct.nouveau_device* }
%struct.nouveau_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_grctx*)* @nv50_graph_construct_xfer_tex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv50_graph_construct_xfer_tex(%struct.nouveau_grctx* %0) #0 {
  %2 = alloca %struct.nouveau_grctx*, align 8
  %3 = alloca %struct.nouveau_device*, align 8
  store %struct.nouveau_grctx* %0, %struct.nouveau_grctx** %2, align 8
  %4 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %5 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %4, i32 0, i32 0
  %6 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  store %struct.nouveau_device* %6, %struct.nouveau_device** %3, align 8
  %7 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %8 = call i32 @xf_emit(%struct.nouveau_grctx* %7, i32 2, i32 0)
  %9 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %10 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 80
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %15 = call i32 @xf_emit(%struct.nouveau_grctx* %14, i32 1, i32 0)
  br label %16

16:                                               ; preds = %13, %1
  %17 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %18 = call i32 @xf_emit(%struct.nouveau_grctx* %17, i32 1, i32 1)
  %19 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %20 = call i32 @xf_emit(%struct.nouveau_grctx* %19, i32 1, i32 0)
  %21 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %22 = call i32 @xf_emit(%struct.nouveau_grctx* %21, i32 1, i32 1)
  %23 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %24 = call i32 @xf_emit(%struct.nouveau_grctx* %23, i32 1, i32 0)
  %25 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %26 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 80
  br i1 %28, label %29, label %32

29:                                               ; preds = %16
  %30 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %31 = call i32 @xf_emit(%struct.nouveau_grctx* %30, i32 1, i32 0)
  br label %35

32:                                               ; preds = %16
  %33 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %34 = call i32 @xf_emit(%struct.nouveau_grctx* %33, i32 2, i32 0)
  br label %35

35:                                               ; preds = %32, %29
  %36 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %37 = call i32 @xf_emit(%struct.nouveau_grctx* %36, i32 1, i32 712057992)
  %38 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %39 = call i32 @xf_emit(%struct.nouveau_grctx* %38, i32 1, i32 0)
  %40 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %41 = call i32 @xf_emit(%struct.nouveau_grctx* %40, i32 1, i32 1082507264)
  %42 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %43 = call i32 @xf_emit(%struct.nouveau_grctx* %42, i32 1, i32 64)
  %44 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %45 = call i32 @xf_emit(%struct.nouveau_grctx* %44, i32 1, i32 256)
  %46 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %47 = call i32 @xf_emit(%struct.nouveau_grctx* %46, i32 1, i32 65792)
  %48 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %49 = call i32 @xf_emit(%struct.nouveau_grctx* %48, i32 1, i32 41943040)
  %50 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %51 = call i32 @xf_emit(%struct.nouveau_grctx* %50, i32 1, i32 0)
  %52 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %53 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 80
  br i1 %55, label %56, label %67

56:                                               ; preds = %35
  %57 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %58 = call i32 @xf_emit(%struct.nouveau_grctx* %57, i32 1, i32 0)
  %59 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %60 = call i32 @xf_emit(%struct.nouveau_grctx* %59, i32 1, i32 0)
  %61 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %62 = call i32 @xf_emit(%struct.nouveau_grctx* %61, i32 1, i32 0)
  %63 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %64 = call i32 @xf_emit(%struct.nouveau_grctx* %63, i32 1, i32 0)
  %65 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %66 = call i32 @xf_emit(%struct.nouveau_grctx* %65, i32 1, i32 0)
  br label %94

67:                                               ; preds = %35
  %68 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %69 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @IS_NVAAF(i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %90, label %73

73:                                               ; preds = %67
  %74 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %75 = call i32 @xf_emit(%struct.nouveau_grctx* %74, i32 1, i32 0)
  %76 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %77 = call i32 @xf_emit(%struct.nouveau_grctx* %76, i32 1, i32 0)
  %78 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %79 = call i32 @xf_emit(%struct.nouveau_grctx* %78, i32 1, i32 0)
  %80 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %81 = call i32 @xf_emit(%struct.nouveau_grctx* %80, i32 1, i32 0)
  %82 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %83 = call i32 @xf_emit(%struct.nouveau_grctx* %82, i32 1, i32 0)
  %84 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %85 = call i32 @xf_emit(%struct.nouveau_grctx* %84, i32 1, i32 0)
  %86 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %87 = call i32 @xf_emit(%struct.nouveau_grctx* %86, i32 1, i32 0)
  %88 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %89 = call i32 @xf_emit(%struct.nouveau_grctx* %88, i32 1, i32 0)
  br label %93

90:                                               ; preds = %67
  %91 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %92 = call i32 @xf_emit(%struct.nouveau_grctx* %91, i32 6, i32 0)
  br label %93

93:                                               ; preds = %90, %73
  br label %94

94:                                               ; preds = %93, %56
  %95 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %96 = call i32 @xf_emit(%struct.nouveau_grctx* %95, i32 1, i32 0)
  %97 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %98 = call i32 @xf_emit(%struct.nouveau_grctx* %97, i32 1, i32 0)
  %99 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %100 = call i32 @xf_emit(%struct.nouveau_grctx* %99, i32 1, i32 0)
  ret void
}

declare dso_local i32 @xf_emit(%struct.nouveau_grctx*, i32, i32) #1

declare dso_local i32 @IS_NVAAF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
