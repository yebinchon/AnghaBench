; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_ctxnv50.c_nv50_graph_construct_gene_dispatch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_ctxnv50.c_nv50_graph_construct_gene_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_grctx = type { %struct.nouveau_device* }
%struct.nouveau_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_grctx*)* @nv50_graph_construct_gene_dispatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv50_graph_construct_gene_dispatch(%struct.nouveau_grctx* %0) #0 {
  %2 = alloca %struct.nouveau_grctx*, align 8
  %3 = alloca %struct.nouveau_device*, align 8
  store %struct.nouveau_grctx* %0, %struct.nouveau_grctx** %2, align 8
  %4 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %5 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %4, i32 0, i32 0
  %6 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  store %struct.nouveau_device* %6, %struct.nouveau_device** %3, align 8
  %7 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %8 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 80
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %13 = call i32 @xf_emit(%struct.nouveau_grctx* %12, i32 5, i32 0)
  br label %27

14:                                               ; preds = %1
  %15 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %16 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @IS_NVA3F(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %22 = call i32 @xf_emit(%struct.nouveau_grctx* %21, i32 6, i32 0)
  br label %26

23:                                               ; preds = %14
  %24 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %25 = call i32 @xf_emit(%struct.nouveau_grctx* %24, i32 4, i32 0)
  br label %26

26:                                               ; preds = %23, %20
  br label %27

27:                                               ; preds = %26, %11
  %28 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %29 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 80
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %34 = call i32 @xf_emit(%struct.nouveau_grctx* %33, i32 24, i32 0)
  br label %38

35:                                               ; preds = %27
  %36 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %37 = call i32 @xf_emit(%struct.nouveau_grctx* %36, i32 768, i32 0)
  br label %38

38:                                               ; preds = %35, %32
  %39 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %40 = call i32 @xf_emit(%struct.nouveau_grctx* %39, i32 3, i32 0)
  %41 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %42 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @IS_NVA3F(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %48 = call i32 @xf_emit(%struct.nouveau_grctx* %47, i32 3, i32 0)
  br label %49

49:                                               ; preds = %46, %38
  %50 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %51 = call i32 @xf_emit(%struct.nouveau_grctx* %50, i32 9, i32 0)
  %52 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %53 = call i32 @xf_emit(%struct.nouveau_grctx* %52, i32 9, i32 0)
  %54 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %55 = call i32 @xf_emit(%struct.nouveau_grctx* %54, i32 9, i32 0)
  %56 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %57 = call i32 @xf_emit(%struct.nouveau_grctx* %56, i32 9, i32 0)
  %58 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %59 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %60, 144
  br i1 %61, label %62, label %65

62:                                               ; preds = %49
  %63 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %64 = call i32 @xf_emit(%struct.nouveau_grctx* %63, i32 4, i32 0)
  br label %65

65:                                               ; preds = %62, %49
  %66 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %67 = call i32 @xf_emit(%struct.nouveau_grctx* %66, i32 2, i32 0)
  %68 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %69 = call i32 @xf_emit(%struct.nouveau_grctx* %68, i32 12, i32 0)
  %70 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %71 = call i32 @xf_emit(%struct.nouveau_grctx* %70, i32 2, i32 0)
  %72 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %73 = call i32 @xf_emit(%struct.nouveau_grctx* %72, i32 2, i32 0)
  %74 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %75 = call i32 @xf_emit(%struct.nouveau_grctx* %74, i32 12, i32 0)
  %76 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %77 = call i32 @xf_emit(%struct.nouveau_grctx* %76, i32 2, i32 0)
  %78 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %79 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 80
  br i1 %81, label %82, label %85

82:                                               ; preds = %65
  %83 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %84 = call i32 @xf_emit(%struct.nouveau_grctx* %83, i32 28, i32 0)
  br label %97

85:                                               ; preds = %65
  %86 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %87 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp slt i32 %88, 160
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %92 = call i32 @xf_emit(%struct.nouveau_grctx* %91, i32 30, i32 0)
  br label %96

93:                                               ; preds = %85
  %94 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %95 = call i32 @xf_emit(%struct.nouveau_grctx* %94, i32 34, i32 0)
  br label %96

96:                                               ; preds = %93, %90
  br label %97

97:                                               ; preds = %96, %82
  %98 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %99 = call i32 @xf_emit(%struct.nouveau_grctx* %98, i32 21, i32 0)
  ret void
}

declare dso_local i32 @xf_emit(%struct.nouveau_grctx*, i32, i32) #1

declare dso_local i64 @IS_NVA3F(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
