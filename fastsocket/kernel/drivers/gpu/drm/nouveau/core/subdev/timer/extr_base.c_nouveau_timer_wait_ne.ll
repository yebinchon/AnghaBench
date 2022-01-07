; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/timer/extr_base.c_nouveau_timer_wait_ne.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/timer/extr_base.c_nouveau_timer_wait_ne.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_timer = type { i64 (%struct.nouveau_timer*)* }

@NV_SUBDEV_CLASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_timer_wait_ne(i8* %0, i64 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.nouveau_timer*, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = call %struct.nouveau_timer* @nouveau_timer(i8* %14)
  store %struct.nouveau_timer* %15, %struct.nouveau_timer** %12, align 8
  %16 = load %struct.nouveau_timer*, %struct.nouveau_timer** %12, align 8
  %17 = getelementptr inbounds %struct.nouveau_timer, %struct.nouveau_timer* %16, i32 0, i32 0
  %18 = load i64 (%struct.nouveau_timer*)*, i64 (%struct.nouveau_timer*)** %17, align 8
  %19 = load %struct.nouveau_timer*, %struct.nouveau_timer** %12, align 8
  %20 = call i64 %18(%struct.nouveau_timer* %19)
  store i64 %20, i64* %13, align 8
  br label %21

21:                                               ; preds = %47, %5
  %22 = load i8*, i8** %7, align 8
  %23 = load i32, i32* @NV_SUBDEV_CLASS, align 4
  %24 = call i64 @nv_iclass(i8* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @nv_rd32(i8* %27, i32 %28)
  %30 = load i32, i32* %10, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  store i32 1, i32* %6, align 4
  br label %58

35:                                               ; preds = %26
  br label %46

36:                                               ; preds = %21
  %37 = load i8*, i8** %7, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @nv_ro32(i8* %37, i32 %38)
  %40 = load i32, i32* %10, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  store i32 1, i32* %6, align 4
  br label %58

45:                                               ; preds = %36
  br label %46

46:                                               ; preds = %45, %35
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.nouveau_timer*, %struct.nouveau_timer** %12, align 8
  %49 = getelementptr inbounds %struct.nouveau_timer, %struct.nouveau_timer* %48, i32 0, i32 0
  %50 = load i64 (%struct.nouveau_timer*)*, i64 (%struct.nouveau_timer*)** %49, align 8
  %51 = load %struct.nouveau_timer*, %struct.nouveau_timer** %12, align 8
  %52 = call i64 %50(%struct.nouveau_timer* %51)
  %53 = load i64, i64* %13, align 8
  %54 = sub nsw i64 %52, %53
  %55 = load i64, i64* %8, align 8
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %21, label %57

57:                                               ; preds = %47
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %57, %44, %34
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local %struct.nouveau_timer* @nouveau_timer(i8*) #1

declare dso_local i64 @nv_iclass(i8*, i32) #1

declare dso_local i32 @nv_rd32(i8*, i32) #1

declare dso_local i32 @nv_ro32(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
