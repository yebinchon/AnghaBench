; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_enum.c_nouveau_enum_find.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_enum.c_nouveau_enum_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_enum = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nouveau_enum* @nouveau_enum_find(%struct.nouveau_enum* %0, i64 %1) #0 {
  %3 = alloca %struct.nouveau_enum*, align 8
  %4 = alloca %struct.nouveau_enum*, align 8
  %5 = alloca i64, align 8
  store %struct.nouveau_enum* %0, %struct.nouveau_enum** %4, align 8
  store i64 %1, i64* %5, align 8
  br label %6

6:                                                ; preds = %19, %2
  %7 = load %struct.nouveau_enum*, %struct.nouveau_enum** %4, align 8
  %8 = getelementptr inbounds %struct.nouveau_enum, %struct.nouveau_enum* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %6
  %12 = load %struct.nouveau_enum*, %struct.nouveau_enum** %4, align 8
  %13 = getelementptr inbounds %struct.nouveau_enum, %struct.nouveau_enum* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %5, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load %struct.nouveau_enum*, %struct.nouveau_enum** %4, align 8
  store %struct.nouveau_enum* %18, %struct.nouveau_enum** %3, align 8
  br label %23

19:                                               ; preds = %11
  %20 = load %struct.nouveau_enum*, %struct.nouveau_enum** %4, align 8
  %21 = getelementptr inbounds %struct.nouveau_enum, %struct.nouveau_enum* %20, i32 1
  store %struct.nouveau_enum* %21, %struct.nouveau_enum** %4, align 8
  br label %6

22:                                               ; preds = %6
  store %struct.nouveau_enum* null, %struct.nouveau_enum** %3, align 8
  br label %23

23:                                               ; preds = %22, %17
  %24 = load %struct.nouveau_enum*, %struct.nouveau_enum** %3, align 8
  ret %struct.nouveau_enum* %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
