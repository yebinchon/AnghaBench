; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_eq.c_mlx4_gen_slaves_port_mgt_ev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_eq.c_mlx4_gen_slaves_port_mgt_ev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_eqe = type { %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@MLX4_EVENT_TYPE_PORT_MNG_CHG_EVENT = common dso_local global i32 0, align 4
@MLX4_DEV_PMC_SUBTYPE_PORT_INFO = common dso_local global i32 0, align 4
@ALL_SLAVES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_gen_slaves_port_mgt_ev(%struct.mlx4_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mlx4_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx4_eqe, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = call i32 @memset(%struct.mlx4_eqe* %7, i32 0, i32 16)
  %9 = load i32, i32* @MLX4_EVENT_TYPE_PORT_MNG_CHG_EVENT, align 4
  %10 = getelementptr inbounds %struct.mlx4_eqe, %struct.mlx4_eqe* %7, i32 0, i32 2
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* @MLX4_DEV_PMC_SUBTYPE_PORT_INFO, align 4
  %12 = getelementptr inbounds %struct.mlx4_eqe, %struct.mlx4_eqe* %7, i32 0, i32 1
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* %5, align 4
  %14 = getelementptr inbounds %struct.mlx4_eqe, %struct.mlx4_eqe* %7, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  store i32 %13, i32* %16, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @cpu_to_be32(i32 %17)
  %19 = getelementptr inbounds %struct.mlx4_eqe, %struct.mlx4_eqe* %7, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store i32 %18, i32* %23, align 4
  %24 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %25 = load i32, i32* @ALL_SLAVES, align 4
  %26 = call i32 @slave_event(%struct.mlx4_dev* %24, i32 %25, %struct.mlx4_eqe* %7)
  ret i32 0
}

declare dso_local i32 @memset(%struct.mlx4_eqe*, i32, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @slave_event(%struct.mlx4_dev*, i32, %struct.mlx4_eqe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
