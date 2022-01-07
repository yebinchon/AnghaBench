; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_subdev.c_nouveau_subdev_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_subdev.c_nouveau_subdev_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.TYPE_2__ = type { i32 (%struct.nouveau_object*, i32)* }

@.str = private unnamed_addr constant [14 x i8] c"resetting...\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"reset\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nouveau_subdev_reset(%struct.nouveau_object* %0) #0 {
  %2 = alloca %struct.nouveau_object*, align 8
  store %struct.nouveau_object* %0, %struct.nouveau_object** %2, align 8
  %3 = load %struct.nouveau_object*, %struct.nouveau_object** %2, align 8
  %4 = call i32 @nv_trace(%struct.nouveau_object* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.nouveau_object*, %struct.nouveau_object** %2, align 8
  %6 = call %struct.TYPE_2__* @nv_ofuncs(%struct.nouveau_object* %5)
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32 (%struct.nouveau_object*, i32)*, i32 (%struct.nouveau_object*, i32)** %7, align 8
  %9 = load %struct.nouveau_object*, %struct.nouveau_object** %2, align 8
  %10 = call i32 %8(%struct.nouveau_object* %9, i32 0)
  %11 = load %struct.nouveau_object*, %struct.nouveau_object** %2, align 8
  %12 = call i32 @nv_debug(%struct.nouveau_object* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @nv_trace(%struct.nouveau_object*, i8*) #1

declare dso_local %struct.TYPE_2__* @nv_ofuncs(%struct.nouveau_object*) #1

declare dso_local i32 @nv_debug(%struct.nouveau_object*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
