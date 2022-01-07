; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nvc0.c_nvc0_graph_init_fw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nvc0.c_nvc0_graph_init_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvc0_graph_priv = type { i32 }
%struct.nvc0_graph_fuc = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvc0_graph_init_fw(%struct.nvc0_graph_priv* %0, i64 %1, %struct.nvc0_graph_fuc* %2, %struct.nvc0_graph_fuc* %3) #0 {
  %5 = alloca %struct.nvc0_graph_priv*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.nvc0_graph_fuc*, align 8
  %8 = alloca %struct.nvc0_graph_fuc*, align 8
  %9 = alloca i32, align 4
  store %struct.nvc0_graph_priv* %0, %struct.nvc0_graph_priv** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.nvc0_graph_fuc* %2, %struct.nvc0_graph_fuc** %7, align 8
  store %struct.nvc0_graph_fuc* %3, %struct.nvc0_graph_fuc** %8, align 8
  %10 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %5, align 8
  %11 = load i64, i64* %6, align 8
  %12 = add nsw i64 %11, 448
  %13 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %10, i64 %12, i32 16777216)
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %33, %4
  %15 = load i32, i32* %9, align 4
  %16 = load %struct.nvc0_graph_fuc*, %struct.nvc0_graph_fuc** %8, align 8
  %17 = getelementptr inbounds %struct.nvc0_graph_fuc, %struct.nvc0_graph_fuc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sdiv i32 %18, 4
  %20 = icmp slt i32 %15, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %14
  %22 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = add nsw i64 %23, 452
  %25 = load %struct.nvc0_graph_fuc*, %struct.nvc0_graph_fuc** %8, align 8
  %26 = getelementptr inbounds %struct.nvc0_graph_fuc, %struct.nvc0_graph_fuc* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %22, i64 %24, i32 %31)
  br label %33

33:                                               ; preds = %21
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %9, align 4
  br label %14

36:                                               ; preds = %14
  %37 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %5, align 8
  %38 = load i64, i64* %6, align 8
  %39 = add nsw i64 %38, 384
  %40 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %37, i64 %39, i32 16777216)
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %71, %36
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.nvc0_graph_fuc*, %struct.nvc0_graph_fuc** %7, align 8
  %44 = getelementptr inbounds %struct.nvc0_graph_fuc, %struct.nvc0_graph_fuc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sdiv i32 %45, 4
  %47 = icmp slt i32 %42, %46
  br i1 %47, label %48, label %74

48:                                               ; preds = %41
  %49 = load i32, i32* %9, align 4
  %50 = and i32 %49, 63
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %5, align 8
  %54 = load i64, i64* %6, align 8
  %55 = add nsw i64 %54, 392
  %56 = load i32, i32* %9, align 4
  %57 = ashr i32 %56, 6
  %58 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %53, i64 %55, i32 %57)
  br label %59

59:                                               ; preds = %52, %48
  %60 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %5, align 8
  %61 = load i64, i64* %6, align 8
  %62 = add nsw i64 %61, 388
  %63 = load %struct.nvc0_graph_fuc*, %struct.nvc0_graph_fuc** %7, align 8
  %64 = getelementptr inbounds %struct.nvc0_graph_fuc, %struct.nvc0_graph_fuc* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %60, i64 %62, i32 %69)
  br label %71

71:                                               ; preds = %59
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %9, align 4
  br label %41

74:                                               ; preds = %41
  ret void
}

declare dso_local i32 @nv_wr32(%struct.nvc0_graph_priv*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
