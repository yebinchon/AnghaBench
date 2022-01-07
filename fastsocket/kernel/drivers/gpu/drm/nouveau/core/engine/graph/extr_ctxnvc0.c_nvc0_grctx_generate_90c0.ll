; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_ctxnvc0.c_nvc0_grctx_generate_90c0.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_ctxnvc0.c_nvc0_grctx_generate_90c0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvc0_graph_priv = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvc0_graph_priv*)* @nvc0_grctx_generate_90c0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvc0_grctx_generate_90c0(%struct.nvc0_graph_priv* %0) #0 {
  %2 = alloca %struct.nvc0_graph_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.nvc0_graph_priv* %0, %struct.nvc0_graph_priv** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %46, %1
  %5 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %6 = call %struct.TYPE_2__* @nv_device(%struct.nvc0_graph_priv* %5)
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 217
  br i1 %9, label %10, label %13

10:                                               ; preds = %4
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 4
  br label %13

13:                                               ; preds = %10, %4
  %14 = phi i1 [ false, %4 ], [ %12, %10 ]
  br i1 %14, label %15, label %49

15:                                               ; preds = %13
  %16 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %17 = load i32, i32* %3, align 4
  %18 = mul nsw i32 %17, 64
  %19 = add nsw i32 9984, %18
  %20 = call i32 @nv_mthd(%struct.nvc0_graph_priv* %16, i32 37056, i32 %19, i32 0)
  %21 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %22 = load i32, i32* %3, align 4
  %23 = mul nsw i32 %22, 64
  %24 = add nsw i32 10016, %23
  %25 = call i32 @nv_mthd(%struct.nvc0_graph_priv* %21, i32 37056, i32 %24, i32 0)
  %26 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %27 = load i32, i32* %3, align 4
  %28 = mul nsw i32 %27, 64
  %29 = add nsw i32 9988, %28
  %30 = call i32 @nv_mthd(%struct.nvc0_graph_priv* %26, i32 37056, i32 %29, i32 0)
  %31 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %32 = load i32, i32* %3, align 4
  %33 = mul nsw i32 %32, 64
  %34 = add nsw i32 10020, %33
  %35 = call i32 @nv_mthd(%struct.nvc0_graph_priv* %31, i32 37056, i32 %34, i32 0)
  %36 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %37 = load i32, i32* %3, align 4
  %38 = mul nsw i32 %37, 64
  %39 = add nsw i32 9992, %38
  %40 = call i32 @nv_mthd(%struct.nvc0_graph_priv* %36, i32 37056, i32 %39, i32 0)
  %41 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %42 = load i32, i32* %3, align 4
  %43 = mul nsw i32 %42, 64
  %44 = add nsw i32 10024, %43
  %45 = call i32 @nv_mthd(%struct.nvc0_graph_priv* %41, i32 37056, i32 %44, i32 0)
  br label %46

46:                                               ; preds = %15
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %3, align 4
  br label %4

49:                                               ; preds = %13
  %50 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %51 = call i32 @nv_mthd(%struct.nvc0_graph_priv* %50, i32 37056, i32 9996, i32 0)
  %52 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %53 = call i32 @nv_mthd(%struct.nvc0_graph_priv* %52, i32 37056, i32 10028, i32 0)
  %54 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %55 = call i32 @nv_mthd(%struct.nvc0_graph_priv* %54, i32 37056, i32 10060, i32 0)
  %56 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %57 = call i32 @nv_mthd(%struct.nvc0_graph_priv* %56, i32 37056, i32 10092, i32 0)
  %58 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %59 = call i32 @nv_mthd(%struct.nvc0_graph_priv* %58, i32 37056, i32 10124, i32 0)
  %60 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %61 = call i32 @nv_mthd(%struct.nvc0_graph_priv* %60, i32 37056, i32 10156, i32 0)
  %62 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %63 = call i32 @nv_mthd(%struct.nvc0_graph_priv* %62, i32 37056, i32 10188, i32 0)
  %64 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %65 = call i32 @nv_mthd(%struct.nvc0_graph_priv* %64, i32 37056, i32 10220, i32 0)
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %98, %49
  %67 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %68 = call %struct.TYPE_2__* @nv_device(%struct.nvc0_graph_priv* %67)
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 217
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load i32, i32* %3, align 4
  %74 = icmp slt i32 %73, 4
  br label %75

75:                                               ; preds = %72, %66
  %76 = phi i1 [ false, %66 ], [ %74, %72 ]
  br i1 %76, label %77, label %101

77:                                               ; preds = %75
  %78 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %79 = load i32, i32* %3, align 4
  %80 = mul nsw i32 %79, 64
  %81 = add nsw i32 10000, %80
  %82 = call i32 @nv_mthd(%struct.nvc0_graph_priv* %78, i32 37056, i32 %81, i32 81920)
  %83 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %84 = load i32, i32* %3, align 4
  %85 = mul nsw i32 %84, 64
  %86 = add nsw i32 10032, %85
  %87 = call i32 @nv_mthd(%struct.nvc0_graph_priv* %83, i32 37056, i32 %86, i32 81920)
  %88 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %89 = load i32, i32* %3, align 4
  %90 = mul nsw i32 %89, 64
  %91 = add nsw i32 10004, %90
  %92 = call i32 @nv_mthd(%struct.nvc0_graph_priv* %88, i32 37056, i32 %91, i32 64)
  %93 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %94 = load i32, i32* %3, align 4
  %95 = mul nsw i32 %94, 64
  %96 = add nsw i32 10036, %95
  %97 = call i32 @nv_mthd(%struct.nvc0_graph_priv* %93, i32 37056, i32 %96, i32 64)
  br label %98

98:                                               ; preds = %77
  %99 = load i32, i32* %3, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %3, align 4
  br label %66

101:                                              ; preds = %75
  %102 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %103 = call i32 @nv_mthd(%struct.nvc0_graph_priv* %102, i32 37056, i32 780, i32 1)
  %104 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %105 = call i32 @nv_mthd(%struct.nvc0_graph_priv* %104, i32 37056, i32 6468, i32 0)
  %106 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %107 = call i32 @nv_mthd(%struct.nvc0_graph_priv* %106, i32 37056, i32 1880, i32 256)
  %108 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %109 = call i32 @nv_mthd(%struct.nvc0_graph_priv* %108, i32 37056, i32 708, i32 0)
  %110 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %111 = call i32 @nv_mthd(%struct.nvc0_graph_priv* %110, i32 37056, i32 1936, i32 0)
  %112 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %113 = call i32 @nv_mthd(%struct.nvc0_graph_priv* %112, i32 37056, i32 1940, i32 0)
  %114 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %115 = call i32 @nv_mthd(%struct.nvc0_graph_priv* %114, i32 37056, i32 1944, i32 0)
  %116 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %117 = call i32 @nv_mthd(%struct.nvc0_graph_priv* %116, i32 37056, i32 1948, i32 0)
  %118 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %119 = call i32 @nv_mthd(%struct.nvc0_graph_priv* %118, i32 37056, i32 1952, i32 0)
  %120 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %121 = call i32 @nv_mthd(%struct.nvc0_graph_priv* %120, i32 37056, i32 1916, i32 0)
  %122 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %123 = call i32 @nv_mthd(%struct.nvc0_graph_priv* %122, i32 37056, i32 516, i32 0)
  %124 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %125 = call i32 @nv_mthd(%struct.nvc0_graph_priv* %124, i32 37056, i32 520, i32 0)
  %126 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %127 = call i32 @nv_mthd(%struct.nvc0_graph_priv* %126, i32 37056, i32 524, i32 0)
  %128 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %129 = call i32 @nv_mthd(%struct.nvc0_graph_priv* %128, i32 37056, i32 532, i32 0)
  %130 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %131 = call i32 @nv_mthd(%struct.nvc0_graph_priv* %130, i32 37056, i32 588, i32 0)
  %132 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %133 = call i32 @nv_mthd(%struct.nvc0_graph_priv* %132, i32 37056, i32 3476, i32 1)
  %134 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %135 = call i32 @nv_mthd(%struct.nvc0_graph_priv* %134, i32 37056, i32 5640, i32 0)
  %136 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %137 = call i32 @nv_mthd(%struct.nvc0_graph_priv* %136, i32 37056, i32 5644, i32 0)
  %138 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %139 = call i32 @nv_mthd(%struct.nvc0_graph_priv* %138, i32 37056, i32 5732, i32 0)
  ret void
}

declare dso_local %struct.TYPE_2__* @nv_device(%struct.nvc0_graph_priv*) #1

declare dso_local i32 @nv_mthd(%struct.nvc0_graph_priv*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
