; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nve0.c_nve0_fifo_context_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nve0.c_nve0_fifo_context_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32, i64 }
%struct.nouveau_bar = type { i32 (%struct.nouveau_bar*)* }
%struct.nve0_fifo_base = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.nouveau_engctx = type { %struct.TYPE_7__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NV_MEM_ACCESS_RW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, %struct.nouveau_object*)* @nve0_fifo_context_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nve0_fifo_context_attach(%struct.nouveau_object* %0, %struct.nouveau_object* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nouveau_object*, align 8
  %5 = alloca %struct.nouveau_object*, align 8
  %6 = alloca %struct.nouveau_bar*, align 8
  %7 = alloca %struct.nve0_fifo_base*, align 8
  %8 = alloca %struct.nouveau_engctx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %4, align 8
  store %struct.nouveau_object* %1, %struct.nouveau_object** %5, align 8
  %11 = load %struct.nouveau_object*, %struct.nouveau_object** %4, align 8
  %12 = call %struct.nouveau_bar* @nouveau_bar(%struct.nouveau_object* %11)
  store %struct.nouveau_bar* %12, %struct.nouveau_bar** %6, align 8
  %13 = load %struct.nouveau_object*, %struct.nouveau_object** %4, align 8
  %14 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = bitcast i8* %16 to %struct.nve0_fifo_base*
  store %struct.nve0_fifo_base* %17, %struct.nve0_fifo_base** %7, align 8
  %18 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  %19 = bitcast %struct.nouveau_object* %18 to i8*
  %20 = bitcast i8* %19 to %struct.nouveau_engctx*
  store %struct.nouveau_engctx* %20, %struct.nouveau_engctx** %8, align 8
  %21 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  %22 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @nv_engidx(i32 %23)
  switch i32 %24, label %30 [
    i32 129, label %25
    i32 131, label %26
    i32 133, label %26
    i32 132, label %26
    i32 134, label %27
    i32 128, label %28
    i32 130, label %29
  ]

25:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %89

26:                                               ; preds = %2, %2, %2
  store i32 528, i32* %9, align 4
  br label %33

27:                                               ; preds = %2
  store i32 624, i32* %9, align 4
  br label %33

28:                                               ; preds = %2
  store i32 592, i32* %9, align 4
  br label %33

29:                                               ; preds = %2
  store i32 608, i32* %9, align 4
  br label %33

30:                                               ; preds = %2
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %89

33:                                               ; preds = %29, %28, %27, %26
  %34 = load %struct.nouveau_engctx*, %struct.nouveau_engctx** %8, align 8
  %35 = getelementptr inbounds %struct.nouveau_engctx, %struct.nouveau_engctx* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %64, label %39

39:                                               ; preds = %33
  %40 = load %struct.nouveau_engctx*, %struct.nouveau_engctx** %8, align 8
  %41 = bitcast %struct.nouveau_engctx* %40 to %struct.nve0_fifo_base*
  %42 = call %struct.TYPE_5__* @nv_gpuobj(%struct.nve0_fifo_base* %41)
  %43 = load %struct.nve0_fifo_base*, %struct.nve0_fifo_base** %7, align 8
  %44 = getelementptr inbounds %struct.nve0_fifo_base, %struct.nve0_fifo_base* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @NV_MEM_ACCESS_RW, align 4
  %47 = load %struct.nouveau_engctx*, %struct.nouveau_engctx** %8, align 8
  %48 = getelementptr inbounds %struct.nouveau_engctx, %struct.nouveau_engctx* %47, i32 0, i32 0
  %49 = call i32 @nouveau_gpuobj_map_vm(%struct.TYPE_5__* %42, i32 %45, i32 %46, %struct.TYPE_7__* %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %39
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %3, align 4
  br label %89

54:                                               ; preds = %39
  %55 = load %struct.nve0_fifo_base*, %struct.nve0_fifo_base** %7, align 8
  %56 = call %struct.TYPE_5__* @nv_gpuobj(%struct.nve0_fifo_base* %55)
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = ashr i32 %58, 12
  %60 = load %struct.nouveau_engctx*, %struct.nouveau_engctx** %8, align 8
  %61 = bitcast %struct.nouveau_engctx* %60 to %struct.nve0_fifo_base*
  %62 = call %struct.TYPE_6__* @nv_engctx(%struct.nve0_fifo_base* %61)
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  store i32 %59, i32* %63, align 4
  br label %64

64:                                               ; preds = %54, %33
  %65 = load %struct.nve0_fifo_base*, %struct.nve0_fifo_base** %7, align 8
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 0
  %68 = load %struct.nouveau_engctx*, %struct.nouveau_engctx** %8, align 8
  %69 = getelementptr inbounds %struct.nouveau_engctx, %struct.nouveau_engctx* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @lower_32_bits(i32 %71)
  %73 = or i32 %72, 4
  %74 = call i32 @nv_wo32(%struct.nve0_fifo_base* %65, i32 %67, i32 %73)
  %75 = load %struct.nve0_fifo_base*, %struct.nve0_fifo_base** %7, align 8
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, 4
  %78 = load %struct.nouveau_engctx*, %struct.nouveau_engctx** %8, align 8
  %79 = getelementptr inbounds %struct.nouveau_engctx, %struct.nouveau_engctx* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @upper_32_bits(i32 %81)
  %83 = call i32 @nv_wo32(%struct.nve0_fifo_base* %75, i32 %77, i32 %82)
  %84 = load %struct.nouveau_bar*, %struct.nouveau_bar** %6, align 8
  %85 = getelementptr inbounds %struct.nouveau_bar, %struct.nouveau_bar* %84, i32 0, i32 0
  %86 = load i32 (%struct.nouveau_bar*)*, i32 (%struct.nouveau_bar*)** %85, align 8
  %87 = load %struct.nouveau_bar*, %struct.nouveau_bar** %6, align 8
  %88 = call i32 %86(%struct.nouveau_bar* %87)
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %64, %52, %30, %25
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local %struct.nouveau_bar* @nouveau_bar(%struct.nouveau_object*) #1

declare dso_local i32 @nv_engidx(i32) #1

declare dso_local i32 @nouveau_gpuobj_map_vm(%struct.TYPE_5__*, i32, i32, %struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_5__* @nv_gpuobj(%struct.nve0_fifo_base*) #1

declare dso_local %struct.TYPE_6__* @nv_engctx(%struct.nve0_fifo_base*) #1

declare dso_local i32 @nv_wo32(%struct.nve0_fifo_base*, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
