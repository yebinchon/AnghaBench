; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_cq.c_mlx4_ib_cq_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_cq.c_mlx4_ib_cq_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_cq = type { i32 }
%struct.ib_event = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { %struct.ib_cq* }
%struct.ib_cq = type { i32, i32 (%struct.ib_event*, i32)*, i32 }
%struct.TYPE_4__ = type { %struct.ib_cq }

@MLX4_EVENT_TYPE_CQ_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Unexpected event type %d on CQ %06x\0A\00", align 1
@IB_EVENT_CQ_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_cq*, i32)* @mlx4_ib_cq_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_ib_cq_event(%struct.mlx4_cq* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx4_cq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_event, align 8
  %6 = alloca %struct.ib_cq*, align 8
  store %struct.mlx4_cq* %0, %struct.mlx4_cq** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @MLX4_EVENT_TYPE_CQ_ERROR, align 4
  %9 = icmp ne i32 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.mlx4_cq*, %struct.mlx4_cq** %3, align 8
  %13 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @pr_warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %14)
  br label %41

16:                                               ; preds = %2
  %17 = load %struct.mlx4_cq*, %struct.mlx4_cq** %3, align 8
  %18 = call %struct.TYPE_4__* @to_mibcq(%struct.mlx4_cq* %17)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store %struct.ib_cq* %19, %struct.ib_cq** %6, align 8
  %20 = load %struct.ib_cq*, %struct.ib_cq** %6, align 8
  %21 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %20, i32 0, i32 1
  %22 = load i32 (%struct.ib_event*, i32)*, i32 (%struct.ib_event*, i32)** %21, align 8
  %23 = icmp ne i32 (%struct.ib_event*, i32)* %22, null
  br i1 %23, label %24, label %41

24:                                               ; preds = %16
  %25 = load %struct.ib_cq*, %struct.ib_cq** %6, align 8
  %26 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %5, i32 0, i32 2
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* @IB_EVENT_CQ_ERR, align 4
  %30 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %5, i32 0, i32 1
  store i32 %29, i32* %30, align 8
  %31 = load %struct.ib_cq*, %struct.ib_cq** %6, align 8
  %32 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %5, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store %struct.ib_cq* %31, %struct.ib_cq** %33, align 8
  %34 = load %struct.ib_cq*, %struct.ib_cq** %6, align 8
  %35 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %34, i32 0, i32 1
  %36 = load i32 (%struct.ib_event*, i32)*, i32 (%struct.ib_event*, i32)** %35, align 8
  %37 = load %struct.ib_cq*, %struct.ib_cq** %6, align 8
  %38 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 %36(%struct.ib_event* %5, i32 %39)
  br label %41

41:                                               ; preds = %10, %24, %16
  ret void
}

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

declare dso_local %struct.TYPE_4__* @to_mibcq(%struct.mlx4_cq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
