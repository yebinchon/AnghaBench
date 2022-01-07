; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_namedb.c_nouveau_namedb_insert.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_namedb.c_nouveau_namedb_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_namedb = type { i32, i32 }
%struct.nouveau_object = type { i32 }
%struct.nouveau_handle = type { i32, %struct.nouveau_namedb*, i32 }

@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_namedb_insert(%struct.nouveau_namedb* %0, i32 %1, %struct.nouveau_object* %2, %struct.nouveau_handle* %3) #0 {
  %5 = alloca %struct.nouveau_namedb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nouveau_object*, align 8
  %8 = alloca %struct.nouveau_handle*, align 8
  %9 = alloca i32, align 4
  store %struct.nouveau_namedb* %0, %struct.nouveau_namedb** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nouveau_object* %2, %struct.nouveau_object** %7, align 8
  store %struct.nouveau_handle* %3, %struct.nouveau_handle** %8, align 8
  %10 = load i32, i32* @EEXIST, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %9, align 4
  %12 = load %struct.nouveau_namedb*, %struct.nouveau_namedb** %5, align 8
  %13 = getelementptr inbounds %struct.nouveau_namedb, %struct.nouveau_namedb* %12, i32 0, i32 0
  %14 = call i32 @write_lock_irq(i32* %13)
  %15 = load %struct.nouveau_namedb*, %struct.nouveau_namedb** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @nouveau_namedb_lookup(%struct.nouveau_namedb* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %32, label %19

19:                                               ; preds = %4
  %20 = load %struct.nouveau_object*, %struct.nouveau_object** %7, align 8
  %21 = load %struct.nouveau_handle*, %struct.nouveau_handle** %8, align 8
  %22 = getelementptr inbounds %struct.nouveau_handle, %struct.nouveau_handle* %21, i32 0, i32 2
  %23 = call i32 @nouveau_object_ref(%struct.nouveau_object* %20, i32* %22)
  %24 = load %struct.nouveau_namedb*, %struct.nouveau_namedb** %5, align 8
  %25 = load %struct.nouveau_handle*, %struct.nouveau_handle** %8, align 8
  %26 = getelementptr inbounds %struct.nouveau_handle, %struct.nouveau_handle* %25, i32 0, i32 1
  store %struct.nouveau_namedb* %24, %struct.nouveau_namedb** %26, align 8
  %27 = load %struct.nouveau_handle*, %struct.nouveau_handle** %8, align 8
  %28 = getelementptr inbounds %struct.nouveau_handle, %struct.nouveau_handle* %27, i32 0, i32 0
  %29 = load %struct.nouveau_namedb*, %struct.nouveau_namedb** %5, align 8
  %30 = getelementptr inbounds %struct.nouveau_namedb, %struct.nouveau_namedb* %29, i32 0, i32 1
  %31 = call i32 @list_add(i32* %28, i32* %30)
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %19, %4
  %33 = load %struct.nouveau_namedb*, %struct.nouveau_namedb** %5, align 8
  %34 = getelementptr inbounds %struct.nouveau_namedb, %struct.nouveau_namedb* %33, i32 0, i32 0
  %35 = call i32 @write_unlock_irq(i32* %34)
  %36 = load i32, i32* %9, align 4
  ret i32 %36
}

declare dso_local i32 @write_lock_irq(i32*) #1

declare dso_local i32 @nouveau_namedb_lookup(%struct.nouveau_namedb*, i32) #1

declare dso_local i32 @nouveau_object_ref(%struct.nouveau_object*, i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @write_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
