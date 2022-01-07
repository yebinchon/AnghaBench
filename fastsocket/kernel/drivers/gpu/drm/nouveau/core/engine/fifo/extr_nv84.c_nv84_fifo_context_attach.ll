; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nv84.c_nv84_fifo_context_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nv84.c_nv84_fifo_context_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32, i64 }
%struct.nouveau_bar = type { i32 (%struct.nouveau_bar*)* }
%struct.nv50_fifo_base = type { i32 }
%struct.nouveau_gpuobj = type { i64, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, %struct.nouveau_object*)* @nv84_fifo_context_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv84_fifo_context_attach(%struct.nouveau_object* %0, %struct.nouveau_object* %1) #0 {
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
  switch i32 %36, label %42 [
    i32 128, label %37
    i32 130, label %38
    i32 129, label %39
    i32 131, label %40
    i32 132, label %41
  ]

37:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %105

38:                                               ; preds = %2
  store i32 32, i32* %11, align 4
  br label %45

39:                                               ; preds = %2
  store i32 96, i32* %11, align 4
  br label %45

40:                                               ; preds = %2
  store i32 160, i32* %11, align 4
  br label %45

41:                                               ; preds = %2
  store i32 192, i32* %11, align 4
  br label %45

42:                                               ; preds = %2
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %105

45:                                               ; preds = %41, %40, %39, %38
  %46 = load %struct.nv50_fifo_base*, %struct.nv50_fifo_base** %7, align 8
  %47 = call %struct.TYPE_3__* @nv_gpuobj(%struct.nv50_fifo_base* %46)
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = ashr i32 %49, 12
  %51 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %8, align 8
  %52 = call %struct.TYPE_4__* @nv_engctx(%struct.nouveau_gpuobj* %51)
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 4
  %54 = load %struct.nv50_fifo_base*, %struct.nv50_fifo_base** %7, align 8
  %55 = getelementptr inbounds %struct.nv50_fifo_base, %struct.nv50_fifo_base* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, 0
  %59 = call i32 @nv_wo32(i32 %56, i32 %58, i32 1638400)
  %60 = load %struct.nv50_fifo_base*, %struct.nv50_fifo_base** %7, align 8
  %61 = getelementptr inbounds %struct.nv50_fifo_base, %struct.nv50_fifo_base* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %63, 4
  %65 = load i64, i64* %9, align 8
  %66 = call i32 @lower_32_bits(i64 %65)
  %67 = call i32 @nv_wo32(i32 %62, i32 %64, i32 %66)
  %68 = load %struct.nv50_fifo_base*, %struct.nv50_fifo_base** %7, align 8
  %69 = getelementptr inbounds %struct.nv50_fifo_base, %struct.nv50_fifo_base* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %71, 8
  %73 = load i64, i64* %10, align 8
  %74 = call i32 @lower_32_bits(i64 %73)
  %75 = call i32 @nv_wo32(i32 %70, i32 %72, i32 %74)
  %76 = load %struct.nv50_fifo_base*, %struct.nv50_fifo_base** %7, align 8
  %77 = getelementptr inbounds %struct.nv50_fifo_base, %struct.nv50_fifo_base* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %11, align 4
  %80 = add nsw i32 %79, 12
  %81 = load i64, i64* %9, align 8
  %82 = call i32 @upper_32_bits(i64 %81)
  %83 = shl i32 %82, 24
  %84 = load i64, i64* %10, align 8
  %85 = call i32 @upper_32_bits(i64 %84)
  %86 = or i32 %83, %85
  %87 = call i32 @nv_wo32(i32 %78, i32 %80, i32 %86)
  %88 = load %struct.nv50_fifo_base*, %struct.nv50_fifo_base** %7, align 8
  %89 = getelementptr inbounds %struct.nv50_fifo_base, %struct.nv50_fifo_base* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, 16
  %93 = call i32 @nv_wo32(i32 %90, i32 %92, i32 0)
  %94 = load %struct.nv50_fifo_base*, %struct.nv50_fifo_base** %7, align 8
  %95 = getelementptr inbounds %struct.nv50_fifo_base, %struct.nv50_fifo_base* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 %97, 20
  %99 = call i32 @nv_wo32(i32 %96, i32 %98, i32 0)
  %100 = load %struct.nouveau_bar*, %struct.nouveau_bar** %6, align 8
  %101 = getelementptr inbounds %struct.nouveau_bar, %struct.nouveau_bar* %100, i32 0, i32 0
  %102 = load i32 (%struct.nouveau_bar*)*, i32 (%struct.nouveau_bar*)** %101, align 8
  %103 = load %struct.nouveau_bar*, %struct.nouveau_bar** %6, align 8
  %104 = call i32 %102(%struct.nouveau_bar* %103)
  store i32 0, i32* %3, align 4
  br label %105

105:                                              ; preds = %45, %42, %37
  %106 = load i32, i32* %3, align 4
  ret i32 %106
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
