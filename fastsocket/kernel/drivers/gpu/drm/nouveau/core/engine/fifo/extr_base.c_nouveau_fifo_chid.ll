; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_base.c_nouveau_fifo_chid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_base.c_nouveau_fifo_chid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_fifo = type { %struct.nouveau_fifo* }
%struct.nouveau_object = type { %struct.nouveau_object* }
%struct.TYPE_2__ = type { i32 }

@NV_ENGCTX_CLASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_fifo*, %struct.nouveau_object*)* @nouveau_fifo_chid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_fifo_chid(%struct.nouveau_fifo* %0, %struct.nouveau_object* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nouveau_fifo*, align 8
  %5 = alloca %struct.nouveau_object*, align 8
  %6 = alloca i32, align 4
  store %struct.nouveau_fifo* %0, %struct.nouveau_fifo** %4, align 8
  store %struct.nouveau_object* %1, %struct.nouveau_object** %5, align 8
  %7 = load %struct.nouveau_fifo*, %struct.nouveau_fifo** %4, align 8
  %8 = bitcast %struct.nouveau_fifo* %7 to %struct.nouveau_object*
  %9 = call i32 @nv_hclass(%struct.nouveau_object* %8)
  %10 = and i32 %9, 255
  store i32 %10, i32* %6, align 4
  br label %11

11:                                               ; preds = %41, %2
  %12 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  %13 = icmp ne %struct.nouveau_object* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  %16 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %15, i32 0, i32 0
  %17 = load %struct.nouveau_object*, %struct.nouveau_object** %16, align 8
  %18 = icmp ne %struct.nouveau_object* %17, null
  br label %19

19:                                               ; preds = %14, %11
  %20 = phi i1 [ false, %11 ], [ %18, %14 ]
  br i1 %20, label %21, label %45

21:                                               ; preds = %19
  %22 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  %23 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %22, i32 0, i32 0
  %24 = load %struct.nouveau_object*, %struct.nouveau_object** %23, align 8
  %25 = load i32, i32* @NV_ENGCTX_CLASS, align 4
  %26 = call i64 @nv_iclass(%struct.nouveau_object* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %21
  %29 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  %30 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %29, i32 0, i32 0
  %31 = load %struct.nouveau_object*, %struct.nouveau_object** %30, align 8
  %32 = call i32 @nv_hclass(%struct.nouveau_object* %31)
  %33 = and i32 %32, 255
  %34 = load i32, i32* %6, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %28
  %37 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  %38 = call %struct.TYPE_2__* @nouveau_fifo_chan(%struct.nouveau_object* %37)
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %3, align 4
  br label %46

41:                                               ; preds = %28, %21
  %42 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  %43 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %42, i32 0, i32 0
  %44 = load %struct.nouveau_object*, %struct.nouveau_object** %43, align 8
  store %struct.nouveau_object* %44, %struct.nouveau_object** %5, align 8
  br label %11

45:                                               ; preds = %19
  store i32 -1, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %36
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @nv_hclass(%struct.nouveau_object*) #1

declare dso_local i64 @nv_iclass(%struct.nouveau_object*, i32) #1

declare dso_local %struct.TYPE_2__* @nouveau_fifo_chan(%struct.nouveau_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
