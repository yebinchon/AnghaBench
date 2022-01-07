; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_ctxnv50.c_nv50_graph_construct_gene_strmout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_ctxnv50.c_nv50_graph_construct_gene_strmout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_grctx = type { %struct.nouveau_device* }
%struct.nouveau_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_grctx*)* @nv50_graph_construct_gene_strmout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv50_graph_construct_gene_strmout(%struct.nouveau_grctx* %0) #0 {
  %2 = alloca %struct.nouveau_grctx*, align 8
  %3 = alloca %struct.nouveau_device*, align 8
  store %struct.nouveau_grctx* %0, %struct.nouveau_grctx** %2, align 8
  %4 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %5 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %4, i32 0, i32 0
  %6 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  store %struct.nouveau_device* %6, %struct.nouveau_device** %3, align 8
  %7 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %8 = call i32 @xf_emit(%struct.nouveau_grctx* %7, i32 1, i32 258)
  %9 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %10 = call i32 @xf_emit(%struct.nouveau_grctx* %9, i32 1, i32 0)
  %11 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %12 = call i32 @xf_emit(%struct.nouveau_grctx* %11, i32 4, i32 4)
  %13 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %14 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp sge i32 %15, 160
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %19 = call i32 @xf_emit(%struct.nouveau_grctx* %18, i32 4, i32 0)
  %20 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %21 = call i32 @xf_emit(%struct.nouveau_grctx* %20, i32 4, i32 0)
  br label %22

22:                                               ; preds = %17, %1
  %23 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %24 = call i32 @xf_emit(%struct.nouveau_grctx* %23, i32 1, i32 4)
  %25 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %26 = call i32 @xf_emit(%struct.nouveau_grctx* %25, i32 1, i32 4)
  %27 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %28 = call i32 @xf_emit(%struct.nouveau_grctx* %27, i32 1, i32 0)
  %29 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %30 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 80
  br i1 %32, label %33, label %36

33:                                               ; preds = %22
  %34 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %35 = call i32 @xf_emit(%struct.nouveau_grctx* %34, i32 1, i32 1023)
  br label %39

36:                                               ; preds = %22
  %37 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %38 = call i32 @xf_emit(%struct.nouveau_grctx* %37, i32 1, i32 2047)
  br label %39

39:                                               ; preds = %36, %33
  %40 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %41 = call i32 @xf_emit(%struct.nouveau_grctx* %40, i32 1, i32 0)
  %42 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %43 = call i32 @xf_emit(%struct.nouveau_grctx* %42, i32 1, i32 258)
  %44 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %45 = call i32 @xf_emit(%struct.nouveau_grctx* %44, i32 1, i32 0)
  %46 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %47 = call i32 @xf_emit(%struct.nouveau_grctx* %46, i32 4, i32 0)
  %48 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %49 = call i32 @xf_emit(%struct.nouveau_grctx* %48, i32 4, i32 0)
  %50 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %51 = call i32 @xf_emit(%struct.nouveau_grctx* %50, i32 4, i32 4)
  %52 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %53 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp sge i32 %54, 160
  br i1 %55, label %56, label %61

56:                                               ; preds = %39
  %57 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %58 = call i32 @xf_emit(%struct.nouveau_grctx* %57, i32 4, i32 0)
  %59 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %60 = call i32 @xf_emit(%struct.nouveau_grctx* %59, i32 4, i32 0)
  br label %61

61:                                               ; preds = %56, %39
  %62 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %63 = call i32 @xf_emit(%struct.nouveau_grctx* %62, i32 1, i32 0)
  %64 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %65 = call i32 @xf_emit(%struct.nouveau_grctx* %64, i32 1, i32 0)
  %66 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %67 = call i32 @xf_emit(%struct.nouveau_grctx* %66, i32 1, i32 0)
  %68 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %69 = call i32 @xf_emit(%struct.nouveau_grctx* %68, i32 2, i32 0)
  %70 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %71 = call i32 @xf_emit(%struct.nouveau_grctx* %70, i32 2, i32 0)
  %72 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %73 = call i32 @xf_emit(%struct.nouveau_grctx* %72, i32 1, i32 0)
  %74 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %75 = call i32 @xf_emit(%struct.nouveau_grctx* %74, i32 32, i32 0)
  %76 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %77 = call i32 @xf_emit(%struct.nouveau_grctx* %76, i32 1, i32 0)
  %78 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %79 = call i32 @xf_emit(%struct.nouveau_grctx* %78, i32 1, i32 0)
  %80 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %81 = call i32 @xf_emit(%struct.nouveau_grctx* %80, i32 2, i32 0)
  ret void
}

declare dso_local i32 @xf_emit(%struct.nouveau_grctx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
