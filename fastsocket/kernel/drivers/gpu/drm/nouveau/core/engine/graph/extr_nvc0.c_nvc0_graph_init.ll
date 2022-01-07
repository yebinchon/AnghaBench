; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nvc0.c_nvc0_graph_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nvc0.c_nvc0_graph_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nvc0_graph_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*)* @nvc0_graph_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvc0_graph_init(%struct.nouveau_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nouveau_object*, align 8
  %4 = alloca %struct.nvc0_graph_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %3, align 8
  %6 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %7 = bitcast %struct.nouveau_object* %6 to i8*
  %8 = bitcast i8* %7 to %struct.nvc0_graph_priv*
  store %struct.nvc0_graph_priv* %8, %struct.nvc0_graph_priv** %4, align 8
  %9 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %4, align 8
  %10 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %9, i32 0, i32 0
  %11 = call i32 @nouveau_graph_init(i32* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %56

16:                                               ; preds = %1
  %17 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %4, align 8
  %18 = call i32 @nvc0_graph_init_obj418880(%struct.nvc0_graph_priv* %17)
  %19 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %4, align 8
  %20 = call i32 @nvc0_graph_init_regs(%struct.nvc0_graph_priv* %19)
  %21 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %4, align 8
  %22 = call i32 @nvc0_graph_init_gpc_0(%struct.nvc0_graph_priv* %21)
  %23 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %4, align 8
  %24 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %23, i32 4195584, i32 65537)
  %25 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %4, align 8
  %26 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %25, i32 4194560, i32 -1)
  %27 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %4, align 8
  %28 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %27, i32 4194620, i32 -1)
  %29 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %4, align 8
  %30 = call i32 @nvc0_graph_init_units(%struct.nvc0_graph_priv* %29)
  %31 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %4, align 8
  %32 = call i32 @nvc0_graph_init_gpc_1(%struct.nvc0_graph_priv* %31)
  %33 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %4, align 8
  %34 = call i32 @nvc0_graph_init_rop(%struct.nvc0_graph_priv* %33)
  %35 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %4, align 8
  %36 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %35, i32 4194568, i32 -1)
  %37 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %4, align 8
  %38 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %37, i32 4194616, i32 -1)
  %39 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %4, align 8
  %40 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %39, i32 4194584, i32 -1)
  %41 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %4, align 8
  %42 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %41, i32 4194608, i32 -1)
  %43 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %4, align 8
  %44 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %43, i32 4194588, i32 -1)
  %45 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %4, align 8
  %46 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %45, i32 4194612, i32 -1)
  %47 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %4, align 8
  %48 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %47, i32 4194388, i32 885929060)
  %49 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %4, align 8
  %50 = call i32 @nvc0_graph_init_ctxctl(%struct.nvc0_graph_priv* %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %16
  %54 = load i32, i32* %5, align 4
  store i32 %54, i32* %2, align 4
  br label %56

55:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %53, %14
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @nouveau_graph_init(i32*) #1

declare dso_local i32 @nvc0_graph_init_obj418880(%struct.nvc0_graph_priv*) #1

declare dso_local i32 @nvc0_graph_init_regs(%struct.nvc0_graph_priv*) #1

declare dso_local i32 @nvc0_graph_init_gpc_0(%struct.nvc0_graph_priv*) #1

declare dso_local i32 @nv_wr32(%struct.nvc0_graph_priv*, i32, i32) #1

declare dso_local i32 @nvc0_graph_init_units(%struct.nvc0_graph_priv*) #1

declare dso_local i32 @nvc0_graph_init_gpc_1(%struct.nvc0_graph_priv*) #1

declare dso_local i32 @nvc0_graph_init_rop(%struct.nvc0_graph_priv*) #1

declare dso_local i32 @nvc0_graph_init_ctxctl(%struct.nvc0_graph_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
