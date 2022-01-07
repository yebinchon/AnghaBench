; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nv50.c_nv50_fifo_context_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nv50.c_nv50_fifo_context_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32, i64 }
%struct.nouveau_bar = type { i32 (%struct.nouveau_bar*)* }
%struct.nv50_fifo_base = type { i32 }
%struct.nouveau_gpuobj = type { i64, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, %struct.nouveau_object*)* @nv50_fifo_context_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_fifo_context_attach(%struct.nouveau_object* %0, %struct.nouveau_object* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nouveau_object*, align 8
  %5 = alloca %struct.nouveau_object*, align 8
  %6 = alloca %struct.nouveau_bar*, align 8
  %7 = alloca %struct.nv50_fifo_base*, align 8
  %8 = alloca %struct.nouveau_gpuobj*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %4, align 8
  store %struct.nouveau_object* %1, %struct.nouveau_object** %5, align 8
  %12 = load %struct.nouveau_object*, %struct.nouveau_object** %4, align 8
  %13 = call %struct.nouveau_bar* @nouveau_bar(%struct.nouveau_object* %12)
  store %struct.nouveau_bar* %13, %struct.nouveau_bar** %6, align 8
  %14 = load %struct.nouveau_object*, %struct.nouveau_object** %4, align 8
  %15 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = bitcast i8* %17 to %struct.nv50_fifo_base*
  store %struct.nv50_fifo_base* %18, %struct.nv50_fifo_base** %7, align 8
  %19 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  %20 = bitcast %struct.nouveau_object* %19 to i8*
  %21 = bitcast i8* %20 to %struct.nouveau_gpuobj*
  store %struct.nouveau_gpuobj* %21, %struct.nouveau_gpuobj** %8, align 8
  %22 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %8, align 8
  %23 = getelementptr inbounds %struct.nouveau_gpuobj, %struct.nouveau_gpuobj* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %8, align 8
  %26 = getelementptr inbounds %struct.nouveau_gpuobj, %struct.nouveau_gpuobj* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %24, %27
  %29 = sub nsw i64 %28, 1
  store i64 %29, i64* %9, align 8
  %30 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %8, align 8
  %31 = getelementptr inbounds %struct.nouveau_gpuobj, %struct.nouveau_gpuobj* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %10, align 8
  %33 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  %34 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @nv_engidx(i32 %35)
  switch i32 %36, label %40 [
    i32 128, label %37
    i32 130, label %38
    i32 129, label %39
  ]

37:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %103

38:                                               ; preds = %2
  store i32 0, i32* %11, align 4
  br label %43

39:                                               ; preds = %2
  store i32 96, i32* %11, align 4
  br label %43

40:                                               ; preds = %2
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %103

43:                                               ; preds = %39, %38
  %44 = load %struct.nv50_fifo_base*, %struct.nv50_fifo_base** %7, align 8
  %45 = call %struct.TYPE_3__* @nv_gpuobj(%struct.nv50_fifo_base* %44)
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = ashr i32 %47, 12
  %49 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %8, align 8
  %50 = call %struct.TYPE_4__* @nv_engctx(%struct.nouveau_gpuobj* %49)
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 4
  %52 = load %struct.nv50_fifo_base*, %struct.nv50_fifo_base** %7, align 8
  %53 = getelementptr inbounds %struct.nv50_fifo_base, %struct.nv50_fifo_base* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %55, 0
  %57 = call i32 @nv_wo32(i32 %54, i32 %56, i32 1638400)
  %58 = load %struct.nv50_fifo_base*, %struct.nv50_fifo_base** %7, align 8
  %59 = getelementptr inbounds %struct.nv50_fifo_base, %struct.nv50_fifo_base* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, 4
  %63 = load i64, i64* %9, align 8
  %64 = call i32 @lower_32_bits(i64 %63)
  %65 = call i32 @nv_wo32(i32 %60, i32 %62, i32 %64)
  %66 = load %struct.nv50_fifo_base*, %struct.nv50_fifo_base** %7, align 8
  %67 = getelementptr inbounds %struct.nv50_fifo_base, %struct.nv50_fifo_base* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %69, 8
  %71 = load i64, i64* %10, align 8
  %72 = call i32 @lower_32_bits(i64 %71)
  %73 = call i32 @nv_wo32(i32 %68, i32 %70, i32 %72)
  %74 = load %struct.nv50_fifo_base*, %struct.nv50_fifo_base** %7, align 8
  %75 = getelementptr inbounds %struct.nv50_fifo_base, %struct.nv50_fifo_base* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, 12
  %79 = load i64, i64* %9, align 8
  %80 = call i32 @upper_32_bits(i64 %79)
  %81 = shl i32 %80, 24
  %82 = load i64, i64* %10, align 8
  %83 = call i32 @upper_32_bits(i64 %82)
  %84 = or i32 %81, %83
  %85 = call i32 @nv_wo32(i32 %76, i32 %78, i32 %84)
  %86 = load %struct.nv50_fifo_base*, %struct.nv50_fifo_base** %7, align 8
  %87 = getelementptr inbounds %struct.nv50_fifo_base, %struct.nv50_fifo_base* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %11, align 4
  %90 = add nsw i32 %89, 16
  %91 = call i32 @nv_wo32(i32 %88, i32 %90, i32 0)
  %92 = load %struct.nv50_fifo_base*, %struct.nv50_fifo_base** %7, align 8
  %93 = getelementptr inbounds %struct.nv50_fifo_base, %struct.nv50_fifo_base* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %11, align 4
  %96 = add nsw i32 %95, 20
  %97 = call i32 @nv_wo32(i32 %94, i32 %96, i32 0)
  %98 = load %struct.nouveau_bar*, %struct.nouveau_bar** %6, align 8
  %99 = getelementptr inbounds %struct.nouveau_bar, %struct.nouveau_bar* %98, i32 0, i32 0
  %100 = load i32 (%struct.nouveau_bar*)*, i32 (%struct.nouveau_bar*)** %99, align 8
  %101 = load %struct.nouveau_bar*, %struct.nouveau_bar** %6, align 8
  %102 = call i32 %100(%struct.nouveau_bar* %101)
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %43, %40, %37
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local %struct.nouveau_bar* @nouveau_bar(%struct.nouveau_object*) #1

declare dso_local i32 @nv_engidx(i32) #1

declare dso_local %struct.TYPE_3__* @nv_gpuobj(%struct.nv50_fifo_base*) #1

declare dso_local %struct.TYPE_4__* @nv_engctx(%struct.nouveau_gpuobj*) #1

declare dso_local i32 @nv_wo32(i32, i32, i32) #1

declare dso_local i32 @lower_32_bits(i64) #1

declare dso_local i32 @upper_32_bits(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
