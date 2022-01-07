; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_cq.c_mlx4_ib_poll_cq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_cq.c_mlx4_ib_poll_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32 }
%struct.ib_wc = type { i32 }
%struct.mlx4_ib_cq = type { i32, i32 }
%struct.mlx4_ib_qp = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_ib_poll_cq(%struct.ib_cq* %0, i32 %1, %struct.ib_wc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_cq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_wc*, align 8
  %8 = alloca %struct.mlx4_ib_cq*, align 8
  %9 = alloca %struct.mlx4_ib_qp*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ib_cq* %0, %struct.ib_cq** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ib_wc* %2, %struct.ib_wc** %7, align 8
  %13 = load %struct.ib_cq*, %struct.ib_cq** %5, align 8
  %14 = call %struct.mlx4_ib_cq* @to_mcq(%struct.ib_cq* %13)
  store %struct.mlx4_ib_cq* %14, %struct.mlx4_ib_cq** %8, align 8
  store %struct.mlx4_ib_qp* null, %struct.mlx4_ib_qp** %9, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %16 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %15, i32 0, i32 0
  %17 = load i64, i64* %10, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  store i32 0, i32* %11, align 4
  br label %19

19:                                               ; preds = %34, %3
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %19
  %24 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %25 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %26 = load i32, i32* %11, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %25, i64 %27
  %29 = call i32 @mlx4_ib_poll_one(%struct.mlx4_ib_cq* %24, %struct.mlx4_ib_qp** %9, %struct.ib_wc* %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %37

33:                                               ; preds = %23
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %11, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %11, align 4
  br label %19

37:                                               ; preds = %32, %19
  %38 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %39 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %38, i32 0, i32 1
  %40 = call i32 @mlx4_cq_set_ci(i32* %39)
  %41 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %42 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %41, i32 0, i32 0
  %43 = load i64, i64* %10, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  %45 = load i32, i32* %12, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %37
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* @EAGAIN, align 4
  %50 = sub nsw i32 0, %49
  %51 = icmp eq i32 %48, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %47, %37
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* %4, align 4
  br label %56

54:                                               ; preds = %47
  %55 = load i32, i32* %12, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local %struct.mlx4_ib_cq* @to_mcq(%struct.ib_cq*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mlx4_ib_poll_one(%struct.mlx4_ib_cq*, %struct.mlx4_ib_qp**, %struct.ib_wc*) #1

declare dso_local i32 @mlx4_cq_set_ci(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
