; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv04.c_nv04_graph_mthd_surf3d_clip_h.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv04.c_nv04_graph_mthd_surf3d_clip_h.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i64 }
%struct.nv04_graph_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, i32, i8*, i32)* @nv04_graph_mthd_surf3d_clip_h to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv04_graph_mthd_surf3d_clip_h(%struct.nouveau_object* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nouveau_object*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nv04_graph_priv*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.nouveau_object*, %struct.nouveau_object** %6, align 8
  %16 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = bitcast i8* %18 to %struct.nv04_graph_priv*
  store %struct.nv04_graph_priv* %19, %struct.nv04_graph_priv** %10, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = bitcast i8* %20 to i32*
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = and i32 %23, 65535
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %11, align 4
  %26 = ashr i32 %25, 16
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %12, align 4
  %28 = and i32 %27, 32768
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %50

31:                                               ; preds = %4
  %32 = load i32, i32* %14, align 4
  %33 = and i32 %32, 32768
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32, i32* %14, align 4
  %37 = or i32 %36, -65536
  store i32 %37, i32* %14, align 4
  br label %38

38:                                               ; preds = %35, %31
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %14, align 4
  %41 = add nsw i32 %39, %40
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = and i32 %42, 262143
  store i32 %43, i32* %13, align 4
  %44 = load %struct.nv04_graph_priv*, %struct.nv04_graph_priv** %10, align 8
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @nv_wr32(%struct.nv04_graph_priv* %44, i32 4195644, i32 %45)
  %47 = load %struct.nv04_graph_priv*, %struct.nv04_graph_priv** %10, align 8
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @nv_wr32(%struct.nv04_graph_priv* %47, i32 4195652, i32 %48)
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %38, %30
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @nv_wr32(%struct.nv04_graph_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
