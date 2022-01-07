; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_verbs.c_ib_alloc_mw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_verbs.c_ib_alloc_mw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mw = type { i32, i32*, %struct.ib_pd*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ib_mw* (%struct.ib_pd*, i32)* }
%struct.ib_pd = type { i32, %struct.TYPE_2__* }

@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_mw* @ib_alloc_mw(%struct.ib_pd* %0, i32 %1) #0 {
  %3 = alloca %struct.ib_mw*, align 8
  %4 = alloca %struct.ib_pd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_mw*, align 8
  store %struct.ib_pd* %0, %struct.ib_pd** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %8 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.ib_mw* (%struct.ib_pd*, i32)*, %struct.ib_mw* (%struct.ib_pd*, i32)** %10, align 8
  %12 = icmp ne %struct.ib_mw* (%struct.ib_pd*, i32)* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOSYS, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.ib_mw* @ERR_PTR(i32 %15)
  store %struct.ib_mw* %16, %struct.ib_mw** %3, align 8
  br label %48

17:                                               ; preds = %2
  %18 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %19 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.ib_mw* (%struct.ib_pd*, i32)*, %struct.ib_mw* (%struct.ib_pd*, i32)** %21, align 8
  %23 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call %struct.ib_mw* %22(%struct.ib_pd* %23, i32 %24)
  store %struct.ib_mw* %25, %struct.ib_mw** %6, align 8
  %26 = load %struct.ib_mw*, %struct.ib_mw** %6, align 8
  %27 = call i32 @IS_ERR(%struct.ib_mw* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %46, label %29

29:                                               ; preds = %17
  %30 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %31 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load %struct.ib_mw*, %struct.ib_mw** %6, align 8
  %34 = getelementptr inbounds %struct.ib_mw, %struct.ib_mw* %33, i32 0, i32 3
  store %struct.TYPE_2__* %32, %struct.TYPE_2__** %34, align 8
  %35 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %36 = load %struct.ib_mw*, %struct.ib_mw** %6, align 8
  %37 = getelementptr inbounds %struct.ib_mw, %struct.ib_mw* %36, i32 0, i32 2
  store %struct.ib_pd* %35, %struct.ib_pd** %37, align 8
  %38 = load %struct.ib_mw*, %struct.ib_mw** %6, align 8
  %39 = getelementptr inbounds %struct.ib_mw, %struct.ib_mw* %38, i32 0, i32 1
  store i32* null, i32** %39, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.ib_mw*, %struct.ib_mw** %6, align 8
  %42 = getelementptr inbounds %struct.ib_mw, %struct.ib_mw* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %44 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %43, i32 0, i32 0
  %45 = call i32 @atomic_inc(i32* %44)
  br label %46

46:                                               ; preds = %29, %17
  %47 = load %struct.ib_mw*, %struct.ib_mw** %6, align 8
  store %struct.ib_mw* %47, %struct.ib_mw** %3, align 8
  br label %48

48:                                               ; preds = %46, %13
  %49 = load %struct.ib_mw*, %struct.ib_mw** %3, align 8
  ret %struct.ib_mw* %49
}

declare dso_local %struct.ib_mw* @ERR_PTR(i32) #1

declare dso_local i32 @IS_ERR(%struct.ib_mw*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
