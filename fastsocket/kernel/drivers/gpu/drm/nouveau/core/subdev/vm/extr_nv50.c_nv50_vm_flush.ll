; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/vm/extr_nv50.c_nv50_vm_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/vm/extr_nv50.c_nv50_vm_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_vm = type { i32, i32* }
%struct.nouveau_engine = type { i32 (%struct.nouveau_engine*)* }

@NVDEV_SUBDEV_NR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_vm*)* @nv50_vm_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv50_vm_flush(%struct.nouveau_vm* %0) #0 {
  %2 = alloca %struct.nouveau_vm*, align 8
  %3 = alloca %struct.nouveau_engine*, align 8
  %4 = alloca i32, align 4
  store %struct.nouveau_vm* %0, %struct.nouveau_vm** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %39, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @NVDEV_SUBDEV_NR, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %42

9:                                                ; preds = %5
  %10 = load %struct.nouveau_vm*, %struct.nouveau_vm** %2, align 8
  %11 = getelementptr inbounds %struct.nouveau_vm, %struct.nouveau_vm* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = call i64 @atomic_read(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %38

18:                                               ; preds = %9
  %19 = load %struct.nouveau_vm*, %struct.nouveau_vm** %2, align 8
  %20 = getelementptr inbounds %struct.nouveau_vm, %struct.nouveau_vm* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call %struct.nouveau_engine* @nouveau_engine(i32 %21, i32 %22)
  store %struct.nouveau_engine* %23, %struct.nouveau_engine** %3, align 8
  %24 = load %struct.nouveau_engine*, %struct.nouveau_engine** %3, align 8
  %25 = icmp ne %struct.nouveau_engine* %24, null
  br i1 %25, label %26, label %37

26:                                               ; preds = %18
  %27 = load %struct.nouveau_engine*, %struct.nouveau_engine** %3, align 8
  %28 = getelementptr inbounds %struct.nouveau_engine, %struct.nouveau_engine* %27, i32 0, i32 0
  %29 = load i32 (%struct.nouveau_engine*)*, i32 (%struct.nouveau_engine*)** %28, align 8
  %30 = icmp ne i32 (%struct.nouveau_engine*)* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.nouveau_engine*, %struct.nouveau_engine** %3, align 8
  %33 = getelementptr inbounds %struct.nouveau_engine, %struct.nouveau_engine* %32, i32 0, i32 0
  %34 = load i32 (%struct.nouveau_engine*)*, i32 (%struct.nouveau_engine*)** %33, align 8
  %35 = load %struct.nouveau_engine*, %struct.nouveau_engine** %3, align 8
  %36 = call i32 %34(%struct.nouveau_engine* %35)
  br label %37

37:                                               ; preds = %31, %26, %18
  br label %38

38:                                               ; preds = %37, %9
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %5

42:                                               ; preds = %5
  ret void
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local %struct.nouveau_engine* @nouveau_engine(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
