; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_ctxnv50.c_nv50_graph_construct_gene_csched.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_ctxnv50.c_nv50_graph_construct_gene_csched.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_grctx = type { %struct.nouveau_device* }
%struct.nouveau_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_grctx*)* @nv50_graph_construct_gene_csched to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv50_graph_construct_gene_csched(%struct.nouveau_grctx* %0) #0 {
  %2 = alloca %struct.nouveau_grctx*, align 8
  %3 = alloca %struct.nouveau_device*, align 8
  store %struct.nouveau_grctx* %0, %struct.nouveau_grctx** %2, align 8
  %4 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %5 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %4, i32 0, i32 0
  %6 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  store %struct.nouveau_device* %6, %struct.nouveau_device** %3, align 8
  %7 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %8 = call i32 @xf_emit(%struct.nouveau_grctx* %7, i32 2, i32 0)
  %9 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %10 = call i32 @xf_emit(%struct.nouveau_grctx* %9, i32 1, i32 0)
  %11 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %12 = call i32 @xf_emit(%struct.nouveau_grctx* %11, i32 1, i32 0)
  %13 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %14 = call i32 @xf_emit(%struct.nouveau_grctx* %13, i32 1, i32 135269394)
  %15 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %16 = call i32 @xf_emit(%struct.nouveau_grctx* %15, i32 1, i32 0)
  %17 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %18 = call i32 @xf_emit(%struct.nouveau_grctx* %17, i32 1, i32 0)
  %19 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %20 = call i32 @xf_emit(%struct.nouveau_grctx* %19, i32 1, i32 0)
  %21 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %22 = call i32 @xf_emit(%struct.nouveau_grctx* %21, i32 1, i32 0)
  %23 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %24 = call i32 @xf_emit(%struct.nouveau_grctx* %23, i32 1, i32 256)
  %25 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %26 = call i32 @xf_emit(%struct.nouveau_grctx* %25, i32 1, i32 0)
  %27 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %28 = call i32 @xf_emit(%struct.nouveau_grctx* %27, i32 1, i32 0)
  %29 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %30 = call i32 @xf_emit(%struct.nouveau_grctx* %29, i32 1, i32 65537)
  %31 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %32 = call i32 @xf_emit(%struct.nouveau_grctx* %31, i32 1, i32 0)
  %33 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %34 = call i32 @xf_emit(%struct.nouveau_grctx* %33, i32 1, i32 65537)
  %35 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %36 = call i32 @xf_emit(%struct.nouveau_grctx* %35, i32 1, i32 1)
  %37 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %38 = call i32 @xf_emit(%struct.nouveau_grctx* %37, i32 1, i32 65537)
  %39 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %40 = call i32 @xf_emit(%struct.nouveau_grctx* %39, i32 1, i32 1)
  %41 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %42 = call i32 @xf_emit(%struct.nouveau_grctx* %41, i32 1, i32 4)
  %43 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %44 = call i32 @xf_emit(%struct.nouveau_grctx* %43, i32 1, i32 2)
  %45 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %46 = call i32 @xf_emit(%struct.nouveau_grctx* %45, i32 64, i32 0)
  %47 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %48 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  switch i32 %49, label %125 [
    i32 80, label %50
    i32 146, label %50
    i32 132, label %59
    i32 148, label %68
    i32 150, label %68
    i32 134, label %77
    i32 152, label %77
    i32 160, label %86
    i32 163, label %95
    i32 165, label %104
    i32 175, label %104
    i32 170, label %113
    i32 168, label %116
    i32 172, label %116
  ]

50:                                               ; preds = %1, %1
  %51 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %52 = call i32 @xf_emit(%struct.nouveau_grctx* %51, i32 8, i32 0)
  %53 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %54 = call i32 @xf_emit(%struct.nouveau_grctx* %53, i32 128, i32 0)
  %55 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %56 = call i32 @xf_emit(%struct.nouveau_grctx* %55, i32 2, i32 0)
  %57 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %58 = call i32 @xf_emit(%struct.nouveau_grctx* %57, i32 32, i32 0)
  br label %125

59:                                               ; preds = %1
  %60 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %61 = call i32 @xf_emit(%struct.nouveau_grctx* %60, i32 8, i32 0)
  %62 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %63 = call i32 @xf_emit(%struct.nouveau_grctx* %62, i32 96, i32 0)
  %64 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %65 = call i32 @xf_emit(%struct.nouveau_grctx* %64, i32 2, i32 0)
  %66 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %67 = call i32 @xf_emit(%struct.nouveau_grctx* %66, i32 24, i32 0)
  br label %125

68:                                               ; preds = %1, %1
  %69 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %70 = call i32 @xf_emit(%struct.nouveau_grctx* %69, i32 8, i32 0)
  %71 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %72 = call i32 @xf_emit(%struct.nouveau_grctx* %71, i32 64, i32 0)
  %73 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %74 = call i32 @xf_emit(%struct.nouveau_grctx* %73, i32 2, i32 0)
  %75 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %76 = call i32 @xf_emit(%struct.nouveau_grctx* %75, i32 16, i32 0)
  br label %125

77:                                               ; preds = %1, %1
  %78 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %79 = call i32 @xf_emit(%struct.nouveau_grctx* %78, i32 4, i32 0)
  %80 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %81 = call i32 @xf_emit(%struct.nouveau_grctx* %80, i32 16, i32 0)
  %82 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %83 = call i32 @xf_emit(%struct.nouveau_grctx* %82, i32 2, i32 0)
  %84 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %85 = call i32 @xf_emit(%struct.nouveau_grctx* %84, i32 4, i32 0)
  br label %125

86:                                               ; preds = %1
  %87 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %88 = call i32 @xf_emit(%struct.nouveau_grctx* %87, i32 8, i32 0)
  %89 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %90 = call i32 @xf_emit(%struct.nouveau_grctx* %89, i32 240, i32 0)
  %91 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %92 = call i32 @xf_emit(%struct.nouveau_grctx* %91, i32 2, i32 0)
  %93 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %94 = call i32 @xf_emit(%struct.nouveau_grctx* %93, i32 60, i32 0)
  br label %125

95:                                               ; preds = %1
  %96 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %97 = call i32 @xf_emit(%struct.nouveau_grctx* %96, i32 8, i32 0)
  %98 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %99 = call i32 @xf_emit(%struct.nouveau_grctx* %98, i32 96, i32 0)
  %100 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %101 = call i32 @xf_emit(%struct.nouveau_grctx* %100, i32 2, i32 0)
  %102 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %103 = call i32 @xf_emit(%struct.nouveau_grctx* %102, i32 24, i32 0)
  br label %125

104:                                              ; preds = %1, %1
  %105 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %106 = call i32 @xf_emit(%struct.nouveau_grctx* %105, i32 8, i32 0)
  %107 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %108 = call i32 @xf_emit(%struct.nouveau_grctx* %107, i32 48, i32 0)
  %109 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %110 = call i32 @xf_emit(%struct.nouveau_grctx* %109, i32 2, i32 0)
  %111 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %112 = call i32 @xf_emit(%struct.nouveau_grctx* %111, i32 12, i32 0)
  br label %125

113:                                              ; preds = %1
  %114 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %115 = call i32 @xf_emit(%struct.nouveau_grctx* %114, i32 18, i32 0)
  br label %125

116:                                              ; preds = %1, %1
  %117 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %118 = call i32 @xf_emit(%struct.nouveau_grctx* %117, i32 4, i32 0)
  %119 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %120 = call i32 @xf_emit(%struct.nouveau_grctx* %119, i32 16, i32 0)
  %121 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %122 = call i32 @xf_emit(%struct.nouveau_grctx* %121, i32 2, i32 0)
  %123 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %124 = call i32 @xf_emit(%struct.nouveau_grctx* %123, i32 4, i32 0)
  br label %125

125:                                              ; preds = %1, %116, %113, %104, %95, %86, %77, %68, %59, %50
  %126 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %127 = call i32 @xf_emit(%struct.nouveau_grctx* %126, i32 1, i32 0)
  %128 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %129 = call i32 @xf_emit(%struct.nouveau_grctx* %128, i32 1, i32 0)
  %130 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %131 = call i32 @xf_emit(%struct.nouveau_grctx* %130, i32 1, i32 0)
  %132 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %133 = call i32 @xf_emit(%struct.nouveau_grctx* %132, i32 1, i32 0)
  %134 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %135 = call i32 @xf_emit(%struct.nouveau_grctx* %134, i32 4, i32 0)
  %136 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %137 = call i32 @xf_emit(%struct.nouveau_grctx* %136, i32 1, i32 0)
  %138 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %139 = call i32 @xf_emit(%struct.nouveau_grctx* %138, i32 1, i32 0)
  %140 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %141 = call i32 @xf_emit(%struct.nouveau_grctx* %140, i32 4, i32 0)
  %142 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %143 = call i32 @xf_emit(%struct.nouveau_grctx* %142, i32 1, i32 0)
  %144 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %145 = call i32 @xf_emit(%struct.nouveau_grctx* %144, i32 1, i32 0)
  %146 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %147 = call i32 @xf_emit(%struct.nouveau_grctx* %146, i32 1, i32 0)
  ret void
}

declare dso_local i32 @xf_emit(%struct.nouveau_grctx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
