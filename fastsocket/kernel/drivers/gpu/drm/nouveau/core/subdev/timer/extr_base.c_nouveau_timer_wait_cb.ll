; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/timer/extr_base.c_nouveau_timer_wait_cb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/timer/extr_base.c_nouveau_timer_wait_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_timer = type { i64 (%struct.nouveau_timer*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_timer_wait_cb(i8* %0, i64 %1, i32 (i8*)* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32 (i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.nouveau_timer*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 (i8*)* %2, i32 (i8*)** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call %struct.nouveau_timer* @nouveau_timer(i8* %12)
  store %struct.nouveau_timer* %13, %struct.nouveau_timer** %10, align 8
  %14 = load %struct.nouveau_timer*, %struct.nouveau_timer** %10, align 8
  %15 = getelementptr inbounds %struct.nouveau_timer, %struct.nouveau_timer* %14, i32 0, i32 0
  %16 = load i64 (%struct.nouveau_timer*)*, i64 (%struct.nouveau_timer*)** %15, align 8
  %17 = load %struct.nouveau_timer*, %struct.nouveau_timer** %10, align 8
  %18 = call i64 %16(%struct.nouveau_timer* %17)
  store i64 %18, i64* %11, align 8
  br label %19

19:                                               ; preds = %26, %4
  %20 = load i32 (i8*)*, i32 (i8*)** %8, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = call i32 %20(i8* %21)
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 1, i32* %5, align 4
  br label %37

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %25
  %27 = load %struct.nouveau_timer*, %struct.nouveau_timer** %10, align 8
  %28 = getelementptr inbounds %struct.nouveau_timer, %struct.nouveau_timer* %27, i32 0, i32 0
  %29 = load i64 (%struct.nouveau_timer*)*, i64 (%struct.nouveau_timer*)** %28, align 8
  %30 = load %struct.nouveau_timer*, %struct.nouveau_timer** %10, align 8
  %31 = call i64 %29(%struct.nouveau_timer* %30)
  %32 = load i64, i64* %11, align 8
  %33 = sub nsw i64 %31, %32
  %34 = load i64, i64* %7, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %19, label %36

36:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %36, %24
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local %struct.nouveau_timer* @nouveau_timer(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
