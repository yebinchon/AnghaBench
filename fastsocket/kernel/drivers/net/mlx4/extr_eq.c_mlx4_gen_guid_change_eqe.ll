; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_eq.c_mlx4_gen_guid_change_eqe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_eq.c_mlx4_gen_guid_change_eqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_eqe = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@MLX4_EVENT_TYPE_PORT_MNG_CHG_EVENT = common dso_local global i32 0, align 4
@MLX4_DEV_PMC_SUBTYPE_GUID_INFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_gen_guid_change_eqe(%struct.mlx4_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_eqe, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %10 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %28

15:                                               ; preds = %3
  %16 = call i32 @memset(%struct.mlx4_eqe* %8, i32 0, i32 12)
  %17 = load i32, i32* @MLX4_EVENT_TYPE_PORT_MNG_CHG_EVENT, align 4
  %18 = getelementptr inbounds %struct.mlx4_eqe, %struct.mlx4_eqe* %8, i32 0, i32 2
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @MLX4_DEV_PMC_SUBTYPE_GUID_INFO, align 4
  %20 = getelementptr inbounds %struct.mlx4_eqe, %struct.mlx4_eqe* %8, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* %7, align 4
  %22 = getelementptr inbounds %struct.mlx4_eqe, %struct.mlx4_eqe* %8, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 4
  %25 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @mlx4_GEN_EQE(%struct.mlx4_dev* %25, i32 %26, %struct.mlx4_eqe* %8)
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %15, %14
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i32 @memset(%struct.mlx4_eqe*, i32, i32) #1

declare dso_local i32 @mlx4_GEN_EQE(%struct.mlx4_dev*, i32, %struct.mlx4_eqe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
