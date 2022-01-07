; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_verbs.c_ib_get_dma_mr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_verbs.c_ib_get_dma_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32, i32*, %struct.ib_pd*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.ib_pd = type { i32, %struct.TYPE_2__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_mr* @ib_get_dma_mr(%struct.ib_pd* %0, i32 %1) #0 {
  %3 = alloca %struct.ib_pd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_mr*, align 8
  store %struct.ib_pd* %0, %struct.ib_pd** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ib_pd*, %struct.ib_pd** %3, align 8
  %7 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = bitcast {}** %9 to %struct.ib_mr* (%struct.ib_pd*, i32)**
  %11 = load %struct.ib_mr* (%struct.ib_pd*, i32)*, %struct.ib_mr* (%struct.ib_pd*, i32)** %10, align 8
  %12 = load %struct.ib_pd*, %struct.ib_pd** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call %struct.ib_mr* %11(%struct.ib_pd* %12, i32 %13)
  store %struct.ib_mr* %14, %struct.ib_mr** %5, align 8
  %15 = load %struct.ib_mr*, %struct.ib_mr** %5, align 8
  %16 = call i32 @IS_ERR(%struct.ib_mr* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %35, label %18

18:                                               ; preds = %2
  %19 = load %struct.ib_pd*, %struct.ib_pd** %3, align 8
  %20 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load %struct.ib_mr*, %struct.ib_mr** %5, align 8
  %23 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %22, i32 0, i32 3
  store %struct.TYPE_2__* %21, %struct.TYPE_2__** %23, align 8
  %24 = load %struct.ib_pd*, %struct.ib_pd** %3, align 8
  %25 = load %struct.ib_mr*, %struct.ib_mr** %5, align 8
  %26 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %25, i32 0, i32 2
  store %struct.ib_pd* %24, %struct.ib_pd** %26, align 8
  %27 = load %struct.ib_mr*, %struct.ib_mr** %5, align 8
  %28 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %27, i32 0, i32 1
  store i32* null, i32** %28, align 8
  %29 = load %struct.ib_pd*, %struct.ib_pd** %3, align 8
  %30 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %29, i32 0, i32 0
  %31 = call i32 @atomic_inc(i32* %30)
  %32 = load %struct.ib_mr*, %struct.ib_mr** %5, align 8
  %33 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %32, i32 0, i32 0
  %34 = call i32 @atomic_set(i32* %33, i32 0)
  br label %35

35:                                               ; preds = %18, %2
  %36 = load %struct.ib_mr*, %struct.ib_mr** %5, align 8
  ret %struct.ib_mr* %36
}

declare dso_local i32 @IS_ERR(%struct.ib_mr*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
