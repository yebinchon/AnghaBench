; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_cq.c_mlx4_ib_modify_cq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_cq.c_mlx4_ib_modify_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32 }
%struct.mlx4_ib_cq = type { i32 }
%struct.mlx4_ib_dev = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_ib_modify_cq(%struct.ib_cq* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ib_cq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx4_ib_cq*, align 8
  %8 = alloca %struct.mlx4_ib_dev*, align 8
  store %struct.ib_cq* %0, %struct.ib_cq** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ib_cq*, %struct.ib_cq** %4, align 8
  %10 = call %struct.mlx4_ib_cq* @to_mcq(%struct.ib_cq* %9)
  store %struct.mlx4_ib_cq* %10, %struct.mlx4_ib_cq** %7, align 8
  %11 = load %struct.ib_cq*, %struct.ib_cq** %4, align 8
  %12 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.mlx4_ib_dev* @to_mdev(i32 %13)
  store %struct.mlx4_ib_dev* %14, %struct.mlx4_ib_dev** %8, align 8
  %15 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %8, align 8
  %16 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %7, align 8
  %19 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %18, i32 0, i32 0
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @mlx4_cq_modify(i32 %17, i32* %19, i32 %20, i32 %21)
  ret i32 %22
}

declare dso_local %struct.mlx4_ib_cq* @to_mcq(%struct.ib_cq*) #1

declare dso_local %struct.mlx4_ib_dev* @to_mdev(i32) #1

declare dso_local i32 @mlx4_cq_modify(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
