; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_ctxnvc0.c_nvc0_grctx_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_ctxnvc0.c_nvc0_grctx_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvc0_grctx = type { i32*, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvc0_grctx_data(%struct.nvc0_grctx* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nvc0_grctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nvc0_grctx* %0, %struct.nvc0_grctx** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.nvc0_grctx*, %struct.nvc0_grctx** %5, align 8
  %10 = getelementptr inbounds %struct.nvc0_grctx, %struct.nvc0_grctx* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.nvc0_grctx*, %struct.nvc0_grctx** %5, align 8
  %13 = getelementptr inbounds %struct.nvc0_grctx, %struct.nvc0_grctx* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.nvc0_grctx*, %struct.nvc0_grctx** %5, align 8
  %16 = getelementptr inbounds %struct.nvc0_grctx, %struct.nvc0_grctx* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  store i32 %11, i32* %18, align 4
  %19 = load i32, i32* %7, align 4
  %20 = sub nsw i32 %19, 1
  %21 = load %struct.nvc0_grctx*, %struct.nvc0_grctx** %5, align 8
  %22 = getelementptr inbounds %struct.nvc0_grctx, %struct.nvc0_grctx* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.nvc0_grctx*, %struct.nvc0_grctx** %5, align 8
  %25 = getelementptr inbounds %struct.nvc0_grctx, %struct.nvc0_grctx* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, %20
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* %7, align 4
  %31 = sub nsw i32 %30, 1
  %32 = xor i32 %31, -1
  %33 = load %struct.nvc0_grctx*, %struct.nvc0_grctx** %5, align 8
  %34 = getelementptr inbounds %struct.nvc0_grctx, %struct.nvc0_grctx* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.nvc0_grctx*, %struct.nvc0_grctx** %5, align 8
  %37 = getelementptr inbounds %struct.nvc0_grctx, %struct.nvc0_grctx* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, %32
  store i32 %41, i32* %39, align 4
  %42 = load %struct.nvc0_grctx*, %struct.nvc0_grctx** %5, align 8
  %43 = getelementptr inbounds %struct.nvc0_grctx, %struct.nvc0_grctx* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.nvc0_grctx*, %struct.nvc0_grctx** %5, align 8
  %46 = getelementptr inbounds %struct.nvc0_grctx, %struct.nvc0_grctx* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %46, align 8
  %49 = getelementptr inbounds i32, i32* %44, i64 %47
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %50, %51
  %53 = load %struct.nvc0_grctx*, %struct.nvc0_grctx** %5, align 8
  %54 = getelementptr inbounds %struct.nvc0_grctx, %struct.nvc0_grctx* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.nvc0_grctx*, %struct.nvc0_grctx** %5, align 8
  %57 = getelementptr inbounds %struct.nvc0_grctx, %struct.nvc0_grctx* %56, i32 0, i32 3
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32 %55, i32* %59, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.nvc0_grctx*, %struct.nvc0_grctx** %5, align 8
  %62 = getelementptr inbounds %struct.nvc0_grctx, %struct.nvc0_grctx* %61, i32 0, i32 3
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  store i32 %60, i32* %64, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.nvc0_grctx*, %struct.nvc0_grctx** %5, align 8
  %67 = getelementptr inbounds %struct.nvc0_grctx, %struct.nvc0_grctx* %66, i32 0, i32 3
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  store i32 %65, i32* %69, align 4
  %70 = load %struct.nvc0_grctx*, %struct.nvc0_grctx** %5, align 8
  %71 = getelementptr inbounds %struct.nvc0_grctx, %struct.nvc0_grctx* %70, i32 0, i32 3
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 1
  store %struct.TYPE_2__* %73, %struct.TYPE_2__** %71, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
