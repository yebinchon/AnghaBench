; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_mr.c_mlx4_ib_dereg_mr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_mr.c_mlx4_ib_dereg_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32 }
%struct.mlx4_ib_mr = type { i64, i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_ib_dereg_mr(%struct.ib_mr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ib_mr*, align 8
  %4 = alloca %struct.mlx4_ib_mr*, align 8
  %5 = alloca i32, align 4
  store %struct.ib_mr* %0, %struct.ib_mr** %3, align 8
  %6 = load %struct.ib_mr*, %struct.ib_mr** %3, align 8
  %7 = call %struct.mlx4_ib_mr* @to_mmr(%struct.ib_mr* %6)
  store %struct.mlx4_ib_mr* %7, %struct.mlx4_ib_mr** %4, align 8
  %8 = load %struct.ib_mr*, %struct.ib_mr** %3, align 8
  %9 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.TYPE_2__* @to_mdev(i32 %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %4, align 8
  %15 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %14, i32 0, i32 1
  %16 = call i32 @mlx4_mr_free(i32 %13, i32* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %34

21:                                               ; preds = %1
  %22 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %4, align 8
  %23 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %4, align 8
  %28 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @ib_umem_release(i64 %29)
  br label %31

31:                                               ; preds = %26, %21
  %32 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %4, align 8
  %33 = call i32 @kfree(%struct.mlx4_ib_mr* %32)
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %31, %19
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.mlx4_ib_mr* @to_mmr(%struct.ib_mr*) #1

declare dso_local i32 @mlx4_mr_free(i32, i32*) #1

declare dso_local %struct.TYPE_2__* @to_mdev(i32) #1

declare dso_local i32 @ib_umem_release(i64) #1

declare dso_local i32 @kfree(%struct.mlx4_ib_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
