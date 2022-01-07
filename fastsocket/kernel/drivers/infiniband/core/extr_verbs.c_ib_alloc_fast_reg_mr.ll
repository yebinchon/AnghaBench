; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_verbs.c_ib_alloc_fast_reg_mr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_verbs.c_ib_alloc_fast_reg_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32, i32*, %struct.ib_pd*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.ib_pd = type { i32, %struct.TYPE_2__* }

@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_mr* @ib_alloc_fast_reg_mr(%struct.ib_pd* %0, i32 %1) #0 {
  %3 = alloca %struct.ib_mr*, align 8
  %4 = alloca %struct.ib_pd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_mr*, align 8
  store %struct.ib_pd* %0, %struct.ib_pd** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %8 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = bitcast {}** %10 to %struct.ib_mr* (%struct.ib_pd*, i32)**
  %12 = load %struct.ib_mr* (%struct.ib_pd*, i32)*, %struct.ib_mr* (%struct.ib_pd*, i32)** %11, align 8
  %13 = icmp ne %struct.ib_mr* (%struct.ib_pd*, i32)* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOSYS, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.ib_mr* @ERR_PTR(i32 %16)
  store %struct.ib_mr* %17, %struct.ib_mr** %3, align 8
  br label %50

18:                                               ; preds = %2
  %19 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %20 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = bitcast {}** %22 to %struct.ib_mr* (%struct.ib_pd*, i32)**
  %24 = load %struct.ib_mr* (%struct.ib_pd*, i32)*, %struct.ib_mr* (%struct.ib_pd*, i32)** %23, align 8
  %25 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call %struct.ib_mr* %24(%struct.ib_pd* %25, i32 %26)
  store %struct.ib_mr* %27, %struct.ib_mr** %6, align 8
  %28 = load %struct.ib_mr*, %struct.ib_mr** %6, align 8
  %29 = call i32 @IS_ERR(%struct.ib_mr* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %48, label %31

31:                                               ; preds = %18
  %32 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %33 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load %struct.ib_mr*, %struct.ib_mr** %6, align 8
  %36 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %35, i32 0, i32 3
  store %struct.TYPE_2__* %34, %struct.TYPE_2__** %36, align 8
  %37 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %38 = load %struct.ib_mr*, %struct.ib_mr** %6, align 8
  %39 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %38, i32 0, i32 2
  store %struct.ib_pd* %37, %struct.ib_pd** %39, align 8
  %40 = load %struct.ib_mr*, %struct.ib_mr** %6, align 8
  %41 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %40, i32 0, i32 1
  store i32* null, i32** %41, align 8
  %42 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %43 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %42, i32 0, i32 0
  %44 = call i32 @atomic_inc(i32* %43)
  %45 = load %struct.ib_mr*, %struct.ib_mr** %6, align 8
  %46 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %45, i32 0, i32 0
  %47 = call i32 @atomic_set(i32* %46, i32 0)
  br label %48

48:                                               ; preds = %31, %18
  %49 = load %struct.ib_mr*, %struct.ib_mr** %6, align 8
  store %struct.ib_mr* %49, %struct.ib_mr** %3, align 8
  br label %50

50:                                               ; preds = %48, %14
  %51 = load %struct.ib_mr*, %struct.ib_mr** %3, align 8
  ret %struct.ib_mr* %51
}

declare dso_local %struct.ib_mr* @ERR_PTR(i32) #1

declare dso_local i32 @IS_ERR(%struct.ib_mr*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
