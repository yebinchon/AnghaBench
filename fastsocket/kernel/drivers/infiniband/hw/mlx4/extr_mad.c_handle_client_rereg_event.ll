; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_mad.c_handle_client_rereg_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_mad.c_handle_client_rereg_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_dev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32 }

@MLX4_EQ_PORT_INFO_CLIENT_REREG_MASK = common dso_local global i32 0, align 4
@IB_EVENT_CLIENT_REREGISTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_ib_dev*, i32)* @handle_client_rereg_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_client_rereg_event(%struct.mlx4_ib_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx4_ib_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.mlx4_ib_dev* %0, %struct.mlx4_ib_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %6 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = call i64 @mlx4_is_master(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %36

10:                                               ; preds = %2
  %11 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @mlx4_ib_invalidate_all_guid_record(%struct.mlx4_ib_dev* %11, i32 %12)
  %14 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %15 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %35, label %19

19:                                               ; preds = %10
  %20 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %21 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = call i32 @mlx4_ib_mcg_port_cleanup(i32* %27, i32 0)
  %29 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %30 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @MLX4_EQ_PORT_INFO_CLIENT_REREG_MASK, align 4
  %34 = call i32 @mlx4_gen_slaves_port_mgt_ev(i32 %31, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %19, %10
  br label %36

36:                                               ; preds = %35, %2
  %37 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @IB_EVENT_CLIENT_REREGISTER, align 4
  %40 = call i32 @mlx4_ib_dispatch_event(%struct.mlx4_ib_dev* %37, i32 %38, i32 %39)
  ret void
}

declare dso_local i64 @mlx4_is_master(i32) #1

declare dso_local i32 @mlx4_ib_invalidate_all_guid_record(%struct.mlx4_ib_dev*, i32) #1

declare dso_local i32 @mlx4_ib_mcg_port_cleanup(i32*, i32) #1

declare dso_local i32 @mlx4_gen_slaves_port_mgt_ev(i32, i32, i32) #1

declare dso_local i32 @mlx4_ib_dispatch_event(%struct.mlx4_ib_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
