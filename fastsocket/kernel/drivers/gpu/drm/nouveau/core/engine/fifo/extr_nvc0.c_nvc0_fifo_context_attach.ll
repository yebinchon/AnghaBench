; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nvc0.c_nvc0_fifo_context_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nvc0.c_nvc0_fifo_context_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32, i64 }
%struct.nouveau_bar = type { i32 (%struct.nouveau_bar*)* }
%struct.nvc0_fifo_base = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.nouveau_engctx = type { %struct.TYPE_7__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NV_MEM_ACCESS_RW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, %struct.nouveau_object*)* @nvc0_fifo_context_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvc0_fifo_context_attach(%struct.nouveau_object* %0, %struct.nouveau_object* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nouveau_object*, align 8
  %5 = alloca %struct.nouveau_object*, align 8
  %6 = alloca %struct.nouveau_bar*, align 8
  %7 = alloca %struct.nvc0_fifo_base*, align 8
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
  %17 = bitcast i8* %16 to %struct.nvc0_fifo_base*
  store %struct.nvc0_fifo_base* %17, %struct.nvc0_fifo_base** %7, align 8
  %18 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  %19 = bitcast %struct.nouveau_object* %18 to i8*
  %20 = bitcast i8* %19 to %struct.nouveau_engctx*
  store %struct.nouveau_engctx* %20, %struct.nouveau_engctx** %8, align 8
  %21 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  %22 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @nv_engidx(i32 %23)
  switch i32 %24, label %32 [
    i32 129, label %25
    i32 131, label %26
    i32 133, label %27
    i32 132, label %28
    i32 134, label %29
    i32 128, label %30
    i32 130, label %31
  ]

25:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %91

26:                                               ; preds = %2
  store i32 528, i32* %9, align 4
  br label %35

27:                                               ; preds = %2
  store i32 560, i32* %9, align 4
  br label %35

28:                                               ; preds = %2
  store i32 576, i32* %9, align 4
  br label %35

29:                                               ; preds = %2
  store i32 624, i32* %9, align 4
  br label %35

30:                                               ; preds = %2
  store i32 592, i32* %9, align 4
  br label %35

31:                                               ; preds = %2
  store i32 608, i32* %9, align 4
  br label %35

32:                                               ; preds = %2
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %91

35:                                               ; preds = %31, %30, %29, %28, %27, %26
  %36 = load %struct.nouveau_engctx*, %struct.nouveau_engctx** %8, align 8
  %37 = getelementptr inbounds %struct.nouveau_engctx, %struct.nouveau_engctx* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %66, label %41

41:                                               ; preds = %35
  %42 = load %struct.nouveau_engctx*, %struct.nouveau_engctx** %8, align 8
  %43 = bitcast %struct.nouveau_engctx* %42 to %struct.nvc0_fifo_base*
  %44 = call %struct.TYPE_5__* @nv_gpuobj(%struct.nvc0_fifo_base* %43)
  %45 = load %struct.nvc0_fifo_base*, %struct.nvc0_fifo_base** %7, align 8
  %46 = getelementptr inbounds %struct.nvc0_fifo_base, %struct.nvc0_fifo_base* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @NV_MEM_ACCESS_RW, align 4
  %49 = load %struct.nouveau_engctx*, %struct.nouveau_engctx** %8, align 8
  %50 = getelementptr inbounds %struct.nouveau_engctx, %struct.nouveau_engctx* %49, i32 0, i32 0
  %51 = call i32 @nouveau_gpuobj_map_vm(%struct.TYPE_5__* %44, i32 %47, i32 %48, %struct.TYPE_7__* %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %41
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %3, align 4
  br label %91

56:                                               ; preds = %41
  %57 = load %struct.nvc0_fifo_base*, %struct.nvc0_fifo_base** %7, align 8
  %58 = call %struct.TYPE_5__* @nv_gpuobj(%struct.nvc0_fifo_base* %57)
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = ashr i32 %60, 12
  %62 = load %struct.nouveau_engctx*, %struct.nouveau_engctx** %8, align 8
  %63 = bitcast %struct.nouveau_engctx* %62 to %struct.nvc0_fifo_base*
  %64 = call %struct.TYPE_6__* @nv_engctx(%struct.nvc0_fifo_base* %63)
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  store i32 %61, i32* %65, align 4
  br label %66

66:                                               ; preds = %56, %35
  %67 = load %struct.nvc0_fifo_base*, %struct.nvc0_fifo_base** %7, align 8
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 0
  %70 = load %struct.nouveau_engctx*, %struct.nouveau_engctx** %8, align 8
  %71 = getelementptr inbounds %struct.nouveau_engctx, %struct.nouveau_engctx* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @lower_32_bits(i32 %73)
  %75 = or i32 %74, 4
  %76 = call i32 @nv_wo32(%struct.nvc0_fifo_base* %67, i32 %69, i32 %75)
  %77 = load %struct.nvc0_fifo_base*, %struct.nvc0_fifo_base** %7, align 8
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 4
  %80 = load %struct.nouveau_engctx*, %struct.nouveau_engctx** %8, align 8
  %81 = getelementptr inbounds %struct.nouveau_engctx, %struct.nouveau_engctx* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @upper_32_bits(i32 %83)
  %85 = call i32 @nv_wo32(%struct.nvc0_fifo_base* %77, i32 %79, i32 %84)
  %86 = load %struct.nouveau_bar*, %struct.nouveau_bar** %6, align 8
  %87 = getelementptr inbounds %struct.nouveau_bar, %struct.nouveau_bar* %86, i32 0, i32 0
  %88 = load i32 (%struct.nouveau_bar*)*, i32 (%struct.nouveau_bar*)** %87, align 8
  %89 = load %struct.nouveau_bar*, %struct.nouveau_bar** %6, align 8
  %90 = call i32 %88(%struct.nouveau_bar* %89)
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %66, %54, %32, %25
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local %struct.nouveau_bar* @nouveau_bar(%struct.nouveau_object*) #1

declare dso_local i32 @nv_engidx(i32) #1

declare dso_local i32 @nouveau_gpuobj_map_vm(%struct.TYPE_5__*, i32, i32, %struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_5__* @nv_gpuobj(%struct.nvc0_fifo_base*) #1

declare dso_local %struct.TYPE_6__* @nv_engctx(%struct.nvc0_fifo_base*) #1

declare dso_local i32 @nv_wo32(%struct.nvc0_fifo_base*, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
