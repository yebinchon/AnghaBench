; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_ctxnv50.c_nv50_graph_construct_gene_unk24xx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_ctxnv50.c_nv50_graph_construct_gene_unk24xx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_grctx = type { %struct.nouveau_device* }
%struct.nouveau_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_grctx*)* @nv50_graph_construct_gene_unk24xx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv50_graph_construct_gene_unk24xx(%struct.nouveau_grctx* %0) #0 {
  %2 = alloca %struct.nouveau_grctx*, align 8
  %3 = alloca %struct.nouveau_device*, align 8
  %4 = alloca i32, align 4
  store %struct.nouveau_grctx* %0, %struct.nouveau_grctx** %2, align 8
  %5 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %6 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %5, i32 0, i32 0
  %7 = load %struct.nouveau_device*, %struct.nouveau_device** %6, align 8
  store %struct.nouveau_device* %7, %struct.nouveau_device** %3, align 8
  %8 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %9 = call i32 @xf_emit(%struct.nouveau_grctx* %8, i32 51, i32 0)
  %10 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %11 = call i32 @xf_emit(%struct.nouveau_grctx* %10, i32 2, i32 0)
  %12 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %13 = call i32 @xf_emit(%struct.nouveau_grctx* %12, i32 1, i32 0)
  %14 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %15 = call i32 @xf_emit(%struct.nouveau_grctx* %14, i32 1, i32 4)
  %16 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %17 = call i32 @xf_emit(%struct.nouveau_grctx* %16, i32 1, i32 4)
  %18 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %19 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @IS_NVA3F(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %44

23:                                               ; preds = %1
  %24 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %25 = call i32 @xf_emit(%struct.nouveau_grctx* %24, i32 4, i32 0)
  %26 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %27 = call i32 @xf_emit(%struct.nouveau_grctx* %26, i32 3600, i32 0)
  %28 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %29 = call i32 @xf_emit(%struct.nouveau_grctx* %28, i32 1, i32 0)
  %30 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %31 = call i32 @xf_emit(%struct.nouveau_grctx* %30, i32 8, i32 0)
  %32 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %33 = call i32 @xf_emit(%struct.nouveau_grctx* %32, i32 9, i32 0)
  %34 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %35 = call i32 @xf_emit(%struct.nouveau_grctx* %34, i32 4, i32 0)
  %36 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %37 = call i32 @xf_emit(%struct.nouveau_grctx* %36, i32 3600, i32 0)
  %38 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %39 = call i32 @xf_emit(%struct.nouveau_grctx* %38, i32 1, i32 0)
  %40 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %41 = call i32 @xf_emit(%struct.nouveau_grctx* %40, i32 8, i32 0)
  %42 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %43 = call i32 @xf_emit(%struct.nouveau_grctx* %42, i32 9, i32 0)
  br label %61

44:                                               ; preds = %1
  %45 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %46 = call i32 @xf_emit(%struct.nouveau_grctx* %45, i32 12, i32 0)
  %47 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %48 = call i32 @xf_emit(%struct.nouveau_grctx* %47, i32 3600, i32 0)
  %49 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %50 = call i32 @xf_emit(%struct.nouveau_grctx* %49, i32 1, i32 0)
  %51 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %52 = call i32 @xf_emit(%struct.nouveau_grctx* %51, i32 8, i32 0)
  %53 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %54 = call i32 @xf_emit(%struct.nouveau_grctx* %53, i32 12, i32 0)
  %55 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %56 = call i32 @xf_emit(%struct.nouveau_grctx* %55, i32 3600, i32 0)
  %57 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %58 = call i32 @xf_emit(%struct.nouveau_grctx* %57, i32 1, i32 0)
  %59 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %60 = call i32 @xf_emit(%struct.nouveau_grctx* %59, i32 8, i32 0)
  br label %61

61:                                               ; preds = %44, %23
  %62 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %63 = call i32 @xf_emit(%struct.nouveau_grctx* %62, i32 1, i32 0)
  %64 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %65 = call i32 @xf_emit(%struct.nouveau_grctx* %64, i32 1, i32 4)
  %66 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %67 = call i32 @xf_emit(%struct.nouveau_grctx* %66, i32 1, i32 4)
  %68 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %69 = call i32 @xf_emit(%struct.nouveau_grctx* %68, i32 1, i32 135269394)
  %70 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %71 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 80
  br i1 %73, label %74, label %77

74:                                               ; preds = %61
  %75 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %76 = call i32 @xf_emit(%struct.nouveau_grctx* %75, i32 1, i32 3)
  br label %77

77:                                               ; preds = %74, %61
  %78 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %79 = call i32 @xf_emit(%struct.nouveau_grctx* %78, i32 1, i32 0)
  %80 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %81 = call i32 @xf_emit(%struct.nouveau_grctx* %80, i32 1, i32 135269394)
  %82 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %83 = call i32 @xf_emit(%struct.nouveau_grctx* %82, i32 1, i32 0)
  %84 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %85 = call i32 @xf_emit(%struct.nouveau_grctx* %84, i32 1, i32 527380)
  %86 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %87 = call i32 @xf_emit(%struct.nouveau_grctx* %86, i32 1, i32 1)
  %88 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %89 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp sge i32 %90, 160
  br i1 %91, label %92, label %95

92:                                               ; preds = %77
  %93 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %94 = call i32 @xf_emit(%struct.nouveau_grctx* %93, i32 2, i32 4)
  br label %95

95:                                               ; preds = %92, %77
  %96 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %97 = call i32 @xf_emit(%struct.nouveau_grctx* %96, i32 1, i32 527380)
  %98 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %99 = call i32 @xf_emit(%struct.nouveau_grctx* %98, i32 1, i32 0)
  %100 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %101 = call i32 @xf_emit(%struct.nouveau_grctx* %100, i32 1, i32 0)
  %102 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %103 = call i32 @xf_emit(%struct.nouveau_grctx* %102, i32 1, i32 135269394)
  %104 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %105 = call i32 @xf_emit(%struct.nouveau_grctx* %104, i32 1, i32 39)
  %106 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %107 = call i32 @xf_emit(%struct.nouveau_grctx* %106, i32 1, i32 0)
  %108 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %109 = call i32 @xf_emit(%struct.nouveau_grctx* %108, i32 1, i32 0)
  %110 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %111 = call i32 @xf_emit(%struct.nouveau_grctx* %110, i32 1, i32 1)
  store i32 0, i32* %4, align 4
  br label %112

112:                                              ; preds = %122, %95
  %113 = load i32, i32* %4, align 4
  %114 = icmp slt i32 %113, 10
  br i1 %114, label %115, label %125

115:                                              ; preds = %112
  %116 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %117 = call i32 @xf_emit(%struct.nouveau_grctx* %116, i32 64, i32 0)
  %118 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %119 = call i32 @xf_emit(%struct.nouveau_grctx* %118, i32 16, i32 0)
  %120 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %121 = call i32 @xf_emit(%struct.nouveau_grctx* %120, i32 16, i32 0)
  br label %122

122:                                              ; preds = %115
  %123 = load i32, i32* %4, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %4, align 4
  br label %112

125:                                              ; preds = %112
  %126 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %127 = call i32 @xf_emit(%struct.nouveau_grctx* %126, i32 1, i32 0)
  %128 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %129 = call i32 @xf_emit(%struct.nouveau_grctx* %128, i32 1, i32 1)
  %130 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %131 = call i32 @xf_emit(%struct.nouveau_grctx* %130, i32 1, i32 0)
  %132 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %133 = call i32 @xf_emit(%struct.nouveau_grctx* %132, i32 4, i32 0)
  %134 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %135 = call i32 @xf_emit(%struct.nouveau_grctx* %134, i32 16, i32 0)
  %136 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %137 = call i32 @xf_emit(%struct.nouveau_grctx* %136, i32 1, i32 0)
  %138 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %139 = call i32 @xf_emit(%struct.nouveau_grctx* %138, i32 1, i32 135269394)
  %140 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %141 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %142, 80
  br i1 %143, label %144, label %147

144:                                              ; preds = %125
  %145 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %146 = call i32 @xf_emit(%struct.nouveau_grctx* %145, i32 1, i32 0)
  br label %147

147:                                              ; preds = %144, %125
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
