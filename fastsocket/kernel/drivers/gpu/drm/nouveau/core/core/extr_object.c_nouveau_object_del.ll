; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_object.c_nouveau_object_del.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_object.c_nouveau_object_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_handle = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@NV_NAMEDB_CLASS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_object_del(%struct.nouveau_object* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nouveau_object*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_object*, align 8
  %9 = alloca %struct.nouveau_object*, align 8
  %10 = alloca %struct.nouveau_handle*, align 8
  store %struct.nouveau_object* %0, %struct.nouveau_object** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.nouveau_object* null, %struct.nouveau_object** %8, align 8
  store %struct.nouveau_object* null, %struct.nouveau_object** %9, align 8
  store %struct.nouveau_handle* null, %struct.nouveau_handle** %10, align 8
  %11 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.nouveau_object* @nouveau_handle_ref(%struct.nouveau_object* %11, i32 %12)
  store %struct.nouveau_object* %13, %struct.nouveau_object** %8, align 8
  %14 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %15 = icmp ne %struct.nouveau_object* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOENT, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %50

19:                                               ; preds = %3
  %20 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %21 = load i32, i32* @NV_NAMEDB_CLASS, align 4
  %22 = call %struct.nouveau_object* @nv_pclass(%struct.nouveau_object* %20, i32 %21)
  store %struct.nouveau_object* %22, %struct.nouveau_object** %9, align 8
  %23 = load %struct.nouveau_object*, %struct.nouveau_object** %9, align 8
  %24 = icmp ne %struct.nouveau_object* %23, null
  br i1 %24, label %25, label %40

25:                                               ; preds = %19
  %26 = load %struct.nouveau_object*, %struct.nouveau_object** %9, align 8
  %27 = call i32 @nv_namedb(%struct.nouveau_object* %26)
  %28 = load i32, i32* %7, align 4
  %29 = call %struct.nouveau_handle* @nouveau_namedb_get(i32 %27, i32 %28)
  store %struct.nouveau_handle* %29, %struct.nouveau_handle** %10, align 8
  %30 = load %struct.nouveau_handle*, %struct.nouveau_handle** %10, align 8
  %31 = icmp ne %struct.nouveau_handle* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %25
  %33 = load %struct.nouveau_handle*, %struct.nouveau_handle** %10, align 8
  %34 = call i32 @nouveau_namedb_put(%struct.nouveau_handle* %33)
  %35 = load %struct.nouveau_handle*, %struct.nouveau_handle** %10, align 8
  %36 = call i32 @nouveau_handle_fini(%struct.nouveau_handle* %35, i32 0)
  %37 = load %struct.nouveau_handle*, %struct.nouveau_handle** %10, align 8
  %38 = call i32 @nouveau_handle_destroy(%struct.nouveau_handle* %37)
  br label %39

39:                                               ; preds = %32, %25
  br label %40

40:                                               ; preds = %39, %19
  %41 = call i32 @nouveau_object_ref(i32* null, %struct.nouveau_object** %8)
  %42 = load %struct.nouveau_handle*, %struct.nouveau_handle** %10, align 8
  %43 = icmp ne %struct.nouveau_handle* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %48

45:                                               ; preds = %40
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  br label %48

48:                                               ; preds = %45, %44
  %49 = phi i32 [ 0, %44 ], [ %47, %45 ]
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %48, %16
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local %struct.nouveau_object* @nouveau_handle_ref(%struct.nouveau_object*, i32) #1

declare dso_local %struct.nouveau_object* @nv_pclass(%struct.nouveau_object*, i32) #1

declare dso_local %struct.nouveau_handle* @nouveau_namedb_get(i32, i32) #1

declare dso_local i32 @nv_namedb(%struct.nouveau_object*) #1

declare dso_local i32 @nouveau_namedb_put(%struct.nouveau_handle*) #1

declare dso_local i32 @nouveau_handle_fini(%struct.nouveau_handle*, i32) #1

declare dso_local i32 @nouveau_handle_destroy(%struct.nouveau_handle*) #1

declare dso_local i32 @nouveau_object_ref(i32*, %struct.nouveau_object**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
