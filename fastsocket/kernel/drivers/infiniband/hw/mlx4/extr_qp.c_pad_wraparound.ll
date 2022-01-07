; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_qp.c_pad_wraparound.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_qp.c_pad_wraparound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_qp = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_ib_qp*, i32)* @pad_wraparound to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pad_wraparound(%struct.mlx4_ib_qp* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx4_ib_qp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mlx4_ib_qp* %0, %struct.mlx4_ib_qp** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %3, align 8
  %7 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %3, align 8
  %12 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sub nsw i32 %14, 1
  %16 = and i32 %10, %15
  %17 = sub nsw i32 %9, %16
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %3, align 8
  %20 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ult i32 %18, %21
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %2
  %27 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %3, align 8
  %31 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %29, %33
  %35 = call i32 @post_nop_wqe(%struct.mlx4_ib_qp* %27, i32 %28, i32 %34)
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %4, align 4
  %38 = add i32 %37, %36
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %26, %2
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @post_nop_wqe(%struct.mlx4_ib_qp*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
