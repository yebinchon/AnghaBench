; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_srq.c_mlx4_ib_query_srq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_srq.c_mlx4_ib_query_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_srq = type { i32 }
%struct.ib_srq_attr = type { i32, i32, i64 }
%struct.mlx4_ib_dev = type { i32 }
%struct.mlx4_ib_srq = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_ib_query_srq(%struct.ib_srq* %0, %struct.ib_srq_attr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_srq*, align 8
  %5 = alloca %struct.ib_srq_attr*, align 8
  %6 = alloca %struct.mlx4_ib_dev*, align 8
  %7 = alloca %struct.mlx4_ib_srq*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ib_srq* %0, %struct.ib_srq** %4, align 8
  store %struct.ib_srq_attr* %1, %struct.ib_srq_attr** %5, align 8
  %10 = load %struct.ib_srq*, %struct.ib_srq** %4, align 8
  %11 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.mlx4_ib_dev* @to_mdev(i32 %12)
  store %struct.mlx4_ib_dev* %13, %struct.mlx4_ib_dev** %6, align 8
  %14 = load %struct.ib_srq*, %struct.ib_srq** %4, align 8
  %15 = call %struct.mlx4_ib_srq* @to_msrq(%struct.ib_srq* %14)
  store %struct.mlx4_ib_srq* %15, %struct.mlx4_ib_srq** %7, align 8
  %16 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %17 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %7, align 8
  %20 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %19, i32 0, i32 0
  %21 = call i32 @mlx4_srq_query(i32 %18, %struct.TYPE_2__* %20, i32* %9)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %3, align 4
  br label %43

26:                                               ; preds = %2
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %5, align 8
  %29 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %7, align 8
  %31 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %33, 1
  %35 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %5, align 8
  %36 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %35, i32 0, i32 2
  store i64 %34, i64* %36, align 8
  %37 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %7, align 8
  %38 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %5, align 8
  %42 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %26, %24
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.mlx4_ib_dev* @to_mdev(i32) #1

declare dso_local %struct.mlx4_ib_srq* @to_msrq(%struct.ib_srq*) #1

declare dso_local i32 @mlx4_srq_query(i32, %struct.TYPE_2__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
