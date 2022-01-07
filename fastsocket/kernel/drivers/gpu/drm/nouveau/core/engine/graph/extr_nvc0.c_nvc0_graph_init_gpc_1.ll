; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nvc0.c_nvc0_graph_init_gpc_1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nvc0.c_nvc0_graph_init_gpc_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvc0_graph_priv = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvc0_graph_priv*)* @nvc0_graph_init_gpc_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvc0_graph_init_gpc_1(%struct.nvc0_graph_priv* %0) #0 {
  %2 = alloca %struct.nvc0_graph_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.nvc0_graph_priv* %0, %struct.nvc0_graph_priv** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %86, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %8 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %89

11:                                               ; preds = %5
  %12 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @GPC_UNIT(i32 %13, i32 1056)
  %15 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %12, i32 %14, i32 -1073741824)
  %16 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @GPC_UNIT(i32 %17, i32 2304)
  %19 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %16, i32 %18, i32 -1073741824)
  %20 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @GPC_UNIT(i32 %21, i32 4136)
  %23 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %20, i32 %22, i32 -1073741824)
  %24 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @GPC_UNIT(i32 %25, i32 2084)
  %27 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %24, i32 %26, i32 -1073741824)
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %74, %11
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %31 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %29, %36
  br i1 %37, label %38, label %77

38:                                               ; preds = %28
  %39 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @TPC_UNIT(i32 %40, i32 %41, i32 1288)
  %43 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %39, i32 %42, i32 -1)
  %44 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @TPC_UNIT(i32 %45, i32 %46, i32 1292)
  %48 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %44, i32 %47, i32 -1)
  %49 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @TPC_UNIT(i32 %50, i32 %51, i32 548)
  %53 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %49, i32 %52, i32 -1073741824)
  %54 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @TPC_UNIT(i32 %55, i32 %56, i32 1164)
  %58 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %54, i32 %57, i32 -1073741824)
  %59 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @TPC_UNIT(i32 %60, i32 %61, i32 132)
  %63 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %59, i32 %62, i32 -1073741824)
  %64 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @TPC_UNIT(i32 %65, i32 %66, i32 1604)
  %68 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %64, i32 %67, i32 2097150)
  %69 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @TPC_UNIT(i32 %70, i32 %71, i32 1612)
  %73 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %69, i32 %72, i32 15)
  br label %74

74:                                               ; preds = %38
  %75 = load i32, i32* %4, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %4, align 4
  br label %28

77:                                               ; preds = %28
  %78 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %79 = load i32, i32* %3, align 4
  %80 = call i32 @GPC_UNIT(i32 %79, i32 11408)
  %81 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %78, i32 %80, i32 -1)
  %82 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %83 = load i32, i32* %3, align 4
  %84 = call i32 @GPC_UNIT(i32 %83, i32 11412)
  %85 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %82, i32 %84, i32 -1)
  br label %86

86:                                               ; preds = %77
  %87 = load i32, i32* %3, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %3, align 4
  br label %5

89:                                               ; preds = %5
  ret void
}

declare dso_local i32 @nv_wr32(%struct.nvc0_graph_priv*, i32, i32) #1

declare dso_local i32 @GPC_UNIT(i32, i32) #1

declare dso_local i32 @TPC_UNIT(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
