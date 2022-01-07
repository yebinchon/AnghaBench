; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_handle.c_nouveau_handle_get_class.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_handle.c_nouveau_handle_get_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_handle = type { i32 }
%struct.nouveau_object = type { i32 }
%struct.nouveau_namedb = type { i32 }

@NV_NAMEDB_CLASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nouveau_handle* @nouveau_handle_get_class(%struct.nouveau_object* %0, i32 %1) #0 {
  %3 = alloca %struct.nouveau_handle*, align 8
  %4 = alloca %struct.nouveau_object*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nouveau_namedb*, align 8
  store %struct.nouveau_object* %0, %struct.nouveau_object** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.nouveau_object*, %struct.nouveau_object** %4, align 8
  %8 = icmp ne %struct.nouveau_object* %7, null
  br i1 %8, label %9, label %20

9:                                                ; preds = %2
  %10 = load %struct.nouveau_object*, %struct.nouveau_object** %4, align 8
  %11 = load i32, i32* @NV_NAMEDB_CLASS, align 4
  %12 = call i64 @nv_pclass(%struct.nouveau_object* %10, i32 %11)
  %13 = inttoptr i64 %12 to i8*
  %14 = bitcast i8* %13 to %struct.nouveau_namedb*
  store %struct.nouveau_namedb* %14, %struct.nouveau_namedb** %6, align 8
  %15 = icmp ne %struct.nouveau_namedb* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %9
  %17 = load %struct.nouveau_namedb*, %struct.nouveau_namedb** %6, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call %struct.nouveau_handle* @nouveau_namedb_get_class(%struct.nouveau_namedb* %17, i32 %18)
  store %struct.nouveau_handle* %19, %struct.nouveau_handle** %3, align 8
  br label %21

20:                                               ; preds = %9, %2
  store %struct.nouveau_handle* null, %struct.nouveau_handle** %3, align 8
  br label %21

21:                                               ; preds = %20, %16
  %22 = load %struct.nouveau_handle*, %struct.nouveau_handle** %3, align 8
  ret %struct.nouveau_handle* %22
}

declare dso_local i64 @nv_pclass(%struct.nouveau_object*, i32) #1

declare dso_local %struct.nouveau_handle* @nouveau_namedb_get_class(%struct.nouveau_namedb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
