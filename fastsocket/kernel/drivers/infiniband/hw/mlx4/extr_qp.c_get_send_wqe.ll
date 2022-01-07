; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_qp.c_get_send_wqe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_qp.c_get_send_wqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_qp = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.mlx4_ib_qp*, i32)* @get_send_wqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_send_wqe(%struct.mlx4_ib_qp* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx4_ib_qp*, align 8
  %4 = alloca i32, align 4
  store %struct.mlx4_ib_qp* %0, %struct.mlx4_ib_qp** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %3, align 8
  %6 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %3, align 8
  %7 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %3, align 8
  %12 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = shl i32 %10, %14
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %9, %16
  %18 = call i8* @get_wqe(%struct.mlx4_ib_qp* %5, i64 %17)
  ret i8* %18
}

declare dso_local i8* @get_wqe(%struct.mlx4_ib_qp*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
