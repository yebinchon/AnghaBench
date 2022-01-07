; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bar/extr_base.c_nouveau_bar_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bar/extr_base.c_nouveau_bar_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_bar = type { i32 }
%struct.nouveau_object = type { i32 }
%struct.nouveau_mem = type { i32 }

@nouveau_barobj_oclass = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_bar_alloc(%struct.nouveau_bar* %0, %struct.nouveau_object* %1, %struct.nouveau_mem* %2, %struct.nouveau_object** %3) #0 {
  %5 = alloca %struct.nouveau_bar*, align 8
  %6 = alloca %struct.nouveau_object*, align 8
  %7 = alloca %struct.nouveau_mem*, align 8
  %8 = alloca %struct.nouveau_object**, align 8
  %9 = alloca %struct.nouveau_object*, align 8
  store %struct.nouveau_bar* %0, %struct.nouveau_bar** %5, align 8
  store %struct.nouveau_object* %1, %struct.nouveau_object** %6, align 8
  store %struct.nouveau_mem* %2, %struct.nouveau_mem** %7, align 8
  store %struct.nouveau_object** %3, %struct.nouveau_object*** %8, align 8
  %10 = load %struct.nouveau_bar*, %struct.nouveau_bar** %5, align 8
  %11 = call %struct.nouveau_object* @nv_object(%struct.nouveau_bar* %10)
  store %struct.nouveau_object* %11, %struct.nouveau_object** %9, align 8
  %12 = load %struct.nouveau_object*, %struct.nouveau_object** %6, align 8
  %13 = load %struct.nouveau_object*, %struct.nouveau_object** %9, align 8
  %14 = load %struct.nouveau_mem*, %struct.nouveau_mem** %7, align 8
  %15 = load %struct.nouveau_object**, %struct.nouveau_object*** %8, align 8
  %16 = call i32 @nouveau_object_ctor(%struct.nouveau_object* %12, %struct.nouveau_object* %13, i32* @nouveau_barobj_oclass, %struct.nouveau_mem* %14, i32 0, %struct.nouveau_object** %15)
  ret i32 %16
}

declare dso_local %struct.nouveau_object* @nv_object(%struct.nouveau_bar*) #1

declare dso_local i32 @nouveau_object_ctor(%struct.nouveau_object*, %struct.nouveau_object*, i32*, %struct.nouveau_mem*, i32, %struct.nouveau_object**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
