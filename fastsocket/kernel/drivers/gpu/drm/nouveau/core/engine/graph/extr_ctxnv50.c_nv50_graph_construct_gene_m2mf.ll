; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_ctxnv50.c_nv50_graph_construct_gene_m2mf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_ctxnv50.c_nv50_graph_construct_gene_m2mf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_grctx = type { %struct.nouveau_device* }
%struct.nouveau_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_grctx*)* @nv50_graph_construct_gene_m2mf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv50_graph_construct_gene_m2mf(%struct.nouveau_grctx* %0) #0 {
  %2 = alloca %struct.nouveau_grctx*, align 8
  %3 = alloca %struct.nouveau_device*, align 8
  %4 = alloca i32, align 4
  store %struct.nouveau_grctx* %0, %struct.nouveau_grctx** %2, align 8
  %5 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %6 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %5, i32 0, i32 0
  %7 = load %struct.nouveau_device*, %struct.nouveau_device** %6, align 8
  store %struct.nouveau_device* %7, %struct.nouveau_device** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %9 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp slt i32 %10, 146
  br i1 %11, label %17, label %12

12:                                               ; preds = %1
  %13 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %14 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 152
  br i1 %16, label %17, label %18

17:                                               ; preds = %12, %1
  store i32 1, i32* %4, align 4
  br label %18

18:                                               ; preds = %17, %12
  %19 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %20 = call i32 @xf_emit(%struct.nouveau_grctx* %19, i32 1, i32 0)
  %21 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %22 = call i32 @xf_emit(%struct.nouveau_grctx* %21, i32 1, i32 0)
  %23 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %24 = call i32 @xf_emit(%struct.nouveau_grctx* %23, i32 1, i32 0)
  %25 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %26 = call i32 @xf_emit(%struct.nouveau_grctx* %25, i32 1, i32 0)
  %27 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %28 = call i32 @xf_emit(%struct.nouveau_grctx* %27, i32 1, i32 0)
  %29 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %30 = call i32 @xf_emit(%struct.nouveau_grctx* %29, i32 1, i32 0)
  %31 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %32 = call i32 @xf_emit(%struct.nouveau_grctx* %31, i32 1, i32 0)
  %33 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %34 = call i32 @xf_emit(%struct.nouveau_grctx* %33, i32 1, i32 0)
  %35 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %36 = call i32 @xf_emit(%struct.nouveau_grctx* %35, i32 1, i32 0)
  %37 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %38 = call i32 @xf_emit(%struct.nouveau_grctx* %37, i32 1, i32 33)
  %39 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %40 = call i32 @xf_emit(%struct.nouveau_grctx* %39, i32 1, i32 1)
  %41 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %42 = call i32 @xf_emit(%struct.nouveau_grctx* %41, i32 1, i32 2)
  %43 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %44 = call i32 @xf_emit(%struct.nouveau_grctx* %43, i32 1, i32 256)
  %45 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %46 = call i32 @xf_emit(%struct.nouveau_grctx* %45, i32 1, i32 256)
  %47 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %48 = call i32 @xf_emit(%struct.nouveau_grctx* %47, i32 1, i32 1)
  %49 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %50 = call i32 @xf_emit(%struct.nouveau_grctx* %49, i32 1, i32 0)
  %51 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %52 = call i32 @xf_emit(%struct.nouveau_grctx* %51, i32 1, i32 0)
  %53 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %54 = call i32 @xf_emit(%struct.nouveau_grctx* %53, i32 1, i32 1)
  %55 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %56 = call i32 @xf_emit(%struct.nouveau_grctx* %55, i32 1, i32 2)
  %57 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %58 = call i32 @xf_emit(%struct.nouveau_grctx* %57, i32 1, i32 256)
  %59 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %60 = call i32 @xf_emit(%struct.nouveau_grctx* %59, i32 1, i32 256)
  %61 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %62 = call i32 @xf_emit(%struct.nouveau_grctx* %61, i32 1, i32 1)
  %63 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %64 = call i32 @xf_emit(%struct.nouveau_grctx* %63, i32 1, i32 0)
  %65 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %66 = call i32 @xf_emit(%struct.nouveau_grctx* %65, i32 1, i32 0)
  %67 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %68 = call i32 @xf_emit(%struct.nouveau_grctx* %67, i32 1, i32 0)
  %69 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %70 = call i32 @xf_emit(%struct.nouveau_grctx* %69, i32 1, i32 0)
  %71 = load i32, i32* %4, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %18
  %74 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %75 = call i32 @xf_emit(%struct.nouveau_grctx* %74, i32 64, i32 0)
  br label %79

76:                                               ; preds = %18
  %77 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %78 = call i32 @xf_emit(%struct.nouveau_grctx* %77, i32 256, i32 0)
  br label %79

79:                                               ; preds = %76, %73
  %80 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %81 = call i32 @xf_emit(%struct.nouveau_grctx* %80, i32 4, i32 0)
  %82 = load i32, i32* %4, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %86 = call i32 @xf_emit(%struct.nouveau_grctx* %85, i32 1024, i32 0)
  br label %90

87:                                               ; preds = %79
  %88 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %89 = call i32 @xf_emit(%struct.nouveau_grctx* %88, i32 2048, i32 0)
  br label %90

90:                                               ; preds = %87, %84
  %91 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %92 = call i32 @xf_emit(%struct.nouveau_grctx* %91, i32 4, i32 0)
  %93 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %94 = call i32 @xf_emit(%struct.nouveau_grctx* %93, i32 64, i32 0)
  %95 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %96 = call i32 @xf_emit(%struct.nouveau_grctx* %95, i32 6, i32 0)
  ret void
}

declare dso_local i32 @xf_emit(%struct.nouveau_grctx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
