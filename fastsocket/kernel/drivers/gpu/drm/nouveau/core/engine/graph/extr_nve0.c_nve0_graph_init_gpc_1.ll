; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nve0.c_nve0_graph_init_gpc_1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nve0.c_nve0_graph_init_gpc_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvc0_graph_priv = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvc0_graph_priv*)* @nve0_graph_init_gpc_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nve0_graph_init_gpc_1(%struct.nvc0_graph_priv* %0) #0 {
  %2 = alloca %struct.nvc0_graph_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.nvc0_graph_priv* %0, %struct.nvc0_graph_priv** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %90, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %8 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %93

11:                                               ; preds = %5
  %12 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @GPC_UNIT(i32 %13, i32 12344)
  %15 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %12, i32 %14, i32 -1073741824)
  %16 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @GPC_UNIT(i32 %17, i32 1056)
  %19 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %16, i32 %18, i32 -1073741824)
  %20 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @GPC_UNIT(i32 %21, i32 2304)
  %23 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %20, i32 %22, i32 -1073741824)
  %24 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @GPC_UNIT(i32 %25, i32 4136)
  %27 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %24, i32 %26, i32 -1073741824)
  %28 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @GPC_UNIT(i32 %29, i32 2084)
  %31 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %28, i32 %30, i32 -1073741824)
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %78, %11
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %35 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %33, %40
  br i1 %41, label %42, label %81

42:                                               ; preds = %32
  %43 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @TPC_UNIT(i32 %44, i32 %45, i32 1288)
  %47 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %43, i32 %46, i32 -1)
  %48 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @TPC_UNIT(i32 %49, i32 %50, i32 1292)
  %52 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %48, i32 %51, i32 -1)
  %53 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @TPC_UNIT(i32 %54, i32 %55, i32 548)
  %57 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %53, i32 %56, i32 -1073741824)
  %58 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @TPC_UNIT(i32 %59, i32 %60, i32 1164)
  %62 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %58, i32 %61, i32 -1073741824)
  %63 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @TPC_UNIT(i32 %64, i32 %65, i32 132)
  %67 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %63, i32 %66, i32 -1073741824)
  %68 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %69 = load i32, i32* %3, align 4
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @TPC_UNIT(i32 %69, i32 %70, i32 1604)
  %72 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %68, i32 %71, i32 2097150)
  %73 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @TPC_UNIT(i32 %74, i32 %75, i32 1612)
  %77 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %73, i32 %76, i32 15)
  br label %78

78:                                               ; preds = %42
  %79 = load i32, i32* %4, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %4, align 4
  br label %32

81:                                               ; preds = %32
  %82 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %83 = load i32, i32* %3, align 4
  %84 = call i32 @GPC_UNIT(i32 %83, i32 11408)
  %85 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %82, i32 %84, i32 -1)
  %86 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %87 = load i32, i32* %3, align 4
  %88 = call i32 @GPC_UNIT(i32 %87, i32 11412)
  %89 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %86, i32 %88, i32 -1)
  br label %90

90:                                               ; preds = %81
  %91 = load i32, i32* %3, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %3, align 4
  br label %5

93:                                               ; preds = %5
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
