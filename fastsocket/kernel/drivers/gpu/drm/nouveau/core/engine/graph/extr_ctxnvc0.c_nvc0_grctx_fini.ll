; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_ctxnvc0.c_nvc0_grctx_fini.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_ctxnvc0.c_nvc0_grctx_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvc0_grctx = type { i32, %struct.nvc0_graph_priv* }
%struct.nvc0_graph_priv = type { i32, i32* }

@.str = private unnamed_addr constant [39 x i8] c"grctx template channel unload timeout\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvc0_grctx_fini(%struct.nvc0_grctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvc0_grctx*, align 8
  %4 = alloca %struct.nvc0_graph_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.nvc0_grctx* %0, %struct.nvc0_grctx** %3, align 8
  %6 = load %struct.nvc0_grctx*, %struct.nvc0_grctx** %3, align 8
  %7 = getelementptr inbounds %struct.nvc0_grctx, %struct.nvc0_grctx* %6, i32 0, i32 1
  %8 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %7, align 8
  store %struct.nvc0_graph_priv* %8, %struct.nvc0_graph_priv** %4, align 8
  %9 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %4, align 8
  %10 = call i32 @nv_mask(%struct.nvc0_graph_priv* %9, i32 4233988, i32 -2147483648, i32 0)
  %11 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %4, align 8
  %12 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %11, i32 4231168, i32 256)
  %13 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %4, align 8
  %14 = call i32 @nv_wait(%struct.nvc0_graph_priv* %13, i32 4233984, i32 -2147483648, i32 0)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %1
  %17 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %4, align 8
  %18 = call i32 @nv_error(%struct.nvc0_graph_priv* %17, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EBUSY, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %72

21:                                               ; preds = %1
  %22 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %4, align 8
  %23 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i32* @kmalloc(i32 %24, i32 %25)
  %27 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %4, align 8
  %28 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %27, i32 0, i32 1
  store i32* %26, i32** %28, align 8
  %29 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %4, align 8
  %30 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %58

33:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %54, %33
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %4, align 8
  %37 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %57

40:                                               ; preds = %34
  %41 = load %struct.nvc0_grctx*, %struct.nvc0_grctx** %3, align 8
  %42 = getelementptr inbounds %struct.nvc0_grctx, %struct.nvc0_grctx* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 524288, %44
  %46 = call i32 @nv_ro32(i32 %43, i32 %45)
  %47 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %4, align 8
  %48 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sdiv i32 %50, 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  store i32 %46, i32* %53, align 4
  br label %54

54:                                               ; preds = %40
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 4
  store i32 %56, i32* %5, align 4
  br label %34

57:                                               ; preds = %34
  br label %58

58:                                               ; preds = %57, %21
  %59 = load %struct.nvc0_grctx*, %struct.nvc0_grctx** %3, align 8
  %60 = getelementptr inbounds %struct.nvc0_grctx, %struct.nvc0_grctx* %59, i32 0, i32 0
  %61 = call i32 @nouveau_gpuobj_ref(i32* null, i32* %60)
  %62 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %4, align 8
  %63 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  br label %70

67:                                               ; preds = %58
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  br label %70

70:                                               ; preds = %67, %66
  %71 = phi i32 [ 0, %66 ], [ %69, %67 ]
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %70, %16
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @nv_mask(%struct.nvc0_graph_priv*, i32, i32, i32) #1

declare dso_local i32 @nv_wr32(%struct.nvc0_graph_priv*, i32, i32) #1

declare dso_local i32 @nv_wait(%struct.nvc0_graph_priv*, i32, i32, i32) #1

declare dso_local i32 @nv_error(%struct.nvc0_graph_priv*, i8*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @nv_ro32(i32, i32) #1

declare dso_local i32 @nouveau_gpuobj_ref(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
