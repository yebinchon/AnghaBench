; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_handle.c_nouveau_handle_ref.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_handle.c_nouveau_handle_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { %struct.nouveau_object* }
%struct.nouveau_handle = type { i32 }

@NV_NAMEDB_CLASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nouveau_object* @nouveau_handle_ref(%struct.nouveau_object* %0, i32 %1) #0 {
  %3 = alloca %struct.nouveau_object*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nouveau_object*, align 8
  %6 = alloca %struct.nouveau_handle*, align 8
  store %struct.nouveau_object* %0, %struct.nouveau_object** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.nouveau_object* null, %struct.nouveau_object** %5, align 8
  br label %7

7:                                                ; preds = %13, %2
  %8 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %9 = load i32, i32* @NV_NAMEDB_CLASS, align 4
  %10 = call i32 @nv_iclass(%struct.nouveau_object* %8, i32 %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  br i1 %12, label %13, label %17

13:                                               ; preds = %7
  %14 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %15 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %14, i32 0, i32 0
  %16 = load %struct.nouveau_object*, %struct.nouveau_object** %15, align 8
  store %struct.nouveau_object* %16, %struct.nouveau_object** %3, align 8
  br label %7

17:                                               ; preds = %7
  %18 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %19 = call i32 @nv_namedb(%struct.nouveau_object* %18)
  %20 = load i32, i32* %4, align 4
  %21 = call %struct.nouveau_handle* @nouveau_namedb_get(i32 %19, i32 %20)
  store %struct.nouveau_handle* %21, %struct.nouveau_handle** %6, align 8
  %22 = load %struct.nouveau_handle*, %struct.nouveau_handle** %6, align 8
  %23 = icmp ne %struct.nouveau_handle* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %17
  %25 = load %struct.nouveau_handle*, %struct.nouveau_handle** %6, align 8
  %26 = getelementptr inbounds %struct.nouveau_handle, %struct.nouveau_handle* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @nouveau_object_ref(i32 %27, %struct.nouveau_object** %5)
  %29 = load %struct.nouveau_handle*, %struct.nouveau_handle** %6, align 8
  %30 = call i32 @nouveau_namedb_put(%struct.nouveau_handle* %29)
  br label %31

31:                                               ; preds = %24, %17
  %32 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  ret %struct.nouveau_object* %32
}

declare dso_local i32 @nv_iclass(%struct.nouveau_object*, i32) #1

declare dso_local %struct.nouveau_handle* @nouveau_namedb_get(i32, i32) #1

declare dso_local i32 @nv_namedb(%struct.nouveau_object*) #1

declare dso_local i32 @nouveau_object_ref(i32, %struct.nouveau_object**) #1

declare dso_local i32 @nouveau_namedb_put(%struct.nouveau_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
