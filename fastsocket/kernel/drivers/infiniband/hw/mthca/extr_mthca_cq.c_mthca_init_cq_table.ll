; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_cq.c_mthca_init_cq_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_cq.c_mthca_init_cq_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mthca_init_cq_table(%struct.mthca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mthca_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %3, align 8
  %5 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %6 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %8 = call i32 @spin_lock_init(i32* %7)
  %9 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %10 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %13 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %17 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @mthca_alloc_init(i32* %11, i32 %15, i32 16777215, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %43

25:                                               ; preds = %1
  %26 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %27 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %30 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @mthca_array_init(i32* %28, i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %25
  %37 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %38 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = call i32 @mthca_alloc_cleanup(i32* %39)
  br label %41

41:                                               ; preds = %36, %25
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %41, %23
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mthca_alloc_init(i32*, i32, i32, i32) #1

declare dso_local i32 @mthca_array_init(i32*, i32) #1

declare dso_local i32 @mthca_alloc_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
