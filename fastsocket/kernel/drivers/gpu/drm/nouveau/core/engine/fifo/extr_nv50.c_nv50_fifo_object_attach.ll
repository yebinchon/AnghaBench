; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nv50.c_nv50_fifo_object_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nv50.c_nv50_fifo_object_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nv50_fifo_chan = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@NV_GPUOBJ_CLASS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, %struct.nouveau_object*, i32)* @nv50_fifo_object_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_fifo_object_attach(%struct.nouveau_object* %0, %struct.nouveau_object* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nouveau_object*, align 8
  %6 = alloca %struct.nouveau_object*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nv50_fifo_chan*, align 8
  %9 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %5, align 8
  store %struct.nouveau_object* %1, %struct.nouveau_object** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  %11 = bitcast %struct.nouveau_object* %10 to i8*
  %12 = bitcast i8* %11 to %struct.nv50_fifo_chan*
  store %struct.nv50_fifo_chan* %12, %struct.nv50_fifo_chan** %8, align 8
  %13 = load %struct.nouveau_object*, %struct.nouveau_object** %6, align 8
  %14 = load i32, i32* @NV_GPUOBJ_CLASS, align 4
  %15 = call i64 @nv_iclass(%struct.nouveau_object* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %3
  %18 = load %struct.nouveau_object*, %struct.nouveau_object** %6, align 8
  %19 = call %struct.TYPE_4__* @nv_gpuobj(%struct.nouveau_object* %18)
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = ashr i32 %23, 4
  store i32 %24, i32* %9, align 4
  br label %26

25:                                               ; preds = %3
  store i32 4, i32* %9, align 4
  br label %26

26:                                               ; preds = %25, %17
  %27 = load %struct.nouveau_object*, %struct.nouveau_object** %6, align 8
  %28 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @nv_engidx(i32 %29)
  switch i32 %30, label %39 [
    i32 131, label %31
    i32 128, label %31
    i32 130, label %33
    i32 129, label %36
  ]

31:                                               ; preds = %26, %26
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %9, align 4
  br label %42

33:                                               ; preds = %26
  %34 = load i32, i32* %9, align 4
  %35 = or i32 %34, 1048576
  store i32 %35, i32* %9, align 4
  br label %42

36:                                               ; preds = %26
  %37 = load i32, i32* %9, align 4
  %38 = or i32 %37, 2097152
  store i32 %38, i32* %9, align 4
  br label %42

39:                                               ; preds = %26
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %49

42:                                               ; preds = %36, %33, %31
  %43 = load %struct.nv50_fifo_chan*, %struct.nv50_fifo_chan** %8, align 8
  %44 = getelementptr inbounds %struct.nv50_fifo_chan, %struct.nv50_fifo_chan* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @nouveau_ramht_insert(i32 %45, i32 0, i32 %46, i32 %47)
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %42, %39
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i64 @nv_iclass(%struct.nouveau_object*, i32) #1

declare dso_local %struct.TYPE_4__* @nv_gpuobj(%struct.nouveau_object*) #1

declare dso_local i32 @nv_engidx(i32) #1

declare dso_local i32 @nouveau_ramht_insert(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
