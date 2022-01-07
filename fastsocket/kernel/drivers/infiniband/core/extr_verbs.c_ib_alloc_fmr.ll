; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_verbs.c_ib_alloc_fmr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_verbs.c_ib_alloc_fmr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_fmr = type { %struct.ib_pd*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.ib_pd = type { i32, %struct.TYPE_2__* }
%struct.ib_fmr_attr = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_fmr* @ib_alloc_fmr(%struct.ib_pd* %0, i32 %1, %struct.ib_fmr_attr* %2) #0 {
  %4 = alloca %struct.ib_fmr*, align 8
  %5 = alloca %struct.ib_pd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_fmr_attr*, align 8
  %8 = alloca %struct.ib_fmr*, align 8
  store %struct.ib_pd* %0, %struct.ib_pd** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ib_fmr_attr* %2, %struct.ib_fmr_attr** %7, align 8
  %9 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %10 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = bitcast {}** %12 to %struct.ib_fmr* (%struct.ib_pd*, i32, %struct.ib_fmr_attr*)**
  %14 = load %struct.ib_fmr* (%struct.ib_pd*, i32, %struct.ib_fmr_attr*)*, %struct.ib_fmr* (%struct.ib_pd*, i32, %struct.ib_fmr_attr*)** %13, align 8
  %15 = icmp ne %struct.ib_fmr* (%struct.ib_pd*, i32, %struct.ib_fmr_attr*)* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOSYS, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.ib_fmr* @ERR_PTR(i32 %18)
  store %struct.ib_fmr* %19, %struct.ib_fmr** %4, align 8
  br label %48

20:                                               ; preds = %3
  %21 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %22 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = bitcast {}** %24 to %struct.ib_fmr* (%struct.ib_pd*, i32, %struct.ib_fmr_attr*)**
  %26 = load %struct.ib_fmr* (%struct.ib_pd*, i32, %struct.ib_fmr_attr*)*, %struct.ib_fmr* (%struct.ib_pd*, i32, %struct.ib_fmr_attr*)** %25, align 8
  %27 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.ib_fmr_attr*, %struct.ib_fmr_attr** %7, align 8
  %30 = call %struct.ib_fmr* %26(%struct.ib_pd* %27, i32 %28, %struct.ib_fmr_attr* %29)
  store %struct.ib_fmr* %30, %struct.ib_fmr** %8, align 8
  %31 = load %struct.ib_fmr*, %struct.ib_fmr** %8, align 8
  %32 = call i32 @IS_ERR(%struct.ib_fmr* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %20
  %35 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %36 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load %struct.ib_fmr*, %struct.ib_fmr** %8, align 8
  %39 = getelementptr inbounds %struct.ib_fmr, %struct.ib_fmr* %38, i32 0, i32 1
  store %struct.TYPE_2__* %37, %struct.TYPE_2__** %39, align 8
  %40 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %41 = load %struct.ib_fmr*, %struct.ib_fmr** %8, align 8
  %42 = getelementptr inbounds %struct.ib_fmr, %struct.ib_fmr* %41, i32 0, i32 0
  store %struct.ib_pd* %40, %struct.ib_pd** %42, align 8
  %43 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %44 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %43, i32 0, i32 0
  %45 = call i32 @atomic_inc(i32* %44)
  br label %46

46:                                               ; preds = %34, %20
  %47 = load %struct.ib_fmr*, %struct.ib_fmr** %8, align 8
  store %struct.ib_fmr* %47, %struct.ib_fmr** %4, align 8
  br label %48

48:                                               ; preds = %46, %16
  %49 = load %struct.ib_fmr*, %struct.ib_fmr** %4, align 8
  ret %struct.ib_fmr* %49
}

declare dso_local %struct.ib_fmr* @ERR_PTR(i32) #1

declare dso_local i32 @IS_ERR(%struct.ib_fmr*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
