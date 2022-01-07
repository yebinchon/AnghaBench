; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_namedb.c_nouveau_namedb_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_namedb.c_nouveau_namedb_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_handle = type { i32 }
%struct.nouveau_namedb = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nouveau_handle* @nouveau_namedb_get(%struct.nouveau_namedb* %0, i32 %1) #0 {
  %3 = alloca %struct.nouveau_namedb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nouveau_handle*, align 8
  store %struct.nouveau_namedb* %0, %struct.nouveau_namedb** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.nouveau_namedb*, %struct.nouveau_namedb** %3, align 8
  %7 = getelementptr inbounds %struct.nouveau_namedb, %struct.nouveau_namedb* %6, i32 0, i32 0
  %8 = call i32 @read_lock(i32* %7)
  %9 = load %struct.nouveau_namedb*, %struct.nouveau_namedb** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.nouveau_handle* @nouveau_namedb_lookup(%struct.nouveau_namedb* %9, i32 %10)
  store %struct.nouveau_handle* %11, %struct.nouveau_handle** %5, align 8
  %12 = load %struct.nouveau_handle*, %struct.nouveau_handle** %5, align 8
  %13 = icmp eq %struct.nouveau_handle* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.nouveau_namedb*, %struct.nouveau_namedb** %3, align 8
  %16 = getelementptr inbounds %struct.nouveau_namedb, %struct.nouveau_namedb* %15, i32 0, i32 0
  %17 = call i32 @read_unlock(i32* %16)
  br label %18

18:                                               ; preds = %14, %2
  %19 = load %struct.nouveau_handle*, %struct.nouveau_handle** %5, align 8
  ret %struct.nouveau_handle* %19
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local %struct.nouveau_handle* @nouveau_namedb_lookup(%struct.nouveau_namedb*, i32) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
