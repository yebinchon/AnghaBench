; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_mad.c_mlx4_ib_process_mad.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_mad.c_mlx4_ib_process_mad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_wc = type { i32 }
%struct.ib_grh = type { i32 }
%struct.ib_mad = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_ib_process_mad(%struct.ib_device* %0, i32 %1, i32 %2, %struct.ib_wc* %3, %struct.ib_grh* %4, %struct.ib_mad* %5, %struct.ib_mad* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ib_wc*, align 8
  %13 = alloca %struct.ib_grh*, align 8
  %14 = alloca %struct.ib_mad*, align 8
  %15 = alloca %struct.ib_mad*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store %struct.ib_wc* %3, %struct.ib_wc** %12, align 8
  store %struct.ib_grh* %4, %struct.ib_grh** %13, align 8
  store %struct.ib_mad* %5, %struct.ib_mad** %14, align 8
  store %struct.ib_mad* %6, %struct.ib_mad** %15, align 8
  %16 = load %struct.ib_device*, %struct.ib_device** %9, align 8
  %17 = load i32, i32* %11, align 4
  %18 = call i32 @rdma_port_get_link_layer(%struct.ib_device* %16, i32 %17)
  switch i32 %18, label %37 [
    i32 128, label %19
    i32 129, label %28
  ]

19:                                               ; preds = %7
  %20 = load %struct.ib_device*, %struct.ib_device** %9, align 8
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load %struct.ib_wc*, %struct.ib_wc** %12, align 8
  %24 = load %struct.ib_grh*, %struct.ib_grh** %13, align 8
  %25 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %26 = load %struct.ib_mad*, %struct.ib_mad** %15, align 8
  %27 = call i32 @ib_process_mad(%struct.ib_device* %20, i32 %21, i32 %22, %struct.ib_wc* %23, %struct.ib_grh* %24, %struct.ib_mad* %25, %struct.ib_mad* %26)
  store i32 %27, i32* %8, align 4
  br label %40

28:                                               ; preds = %7
  %29 = load %struct.ib_device*, %struct.ib_device** %9, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load %struct.ib_wc*, %struct.ib_wc** %12, align 8
  %33 = load %struct.ib_grh*, %struct.ib_grh** %13, align 8
  %34 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %35 = load %struct.ib_mad*, %struct.ib_mad** %15, align 8
  %36 = call i32 @iboe_process_mad(%struct.ib_device* %29, i32 %30, i32 %31, %struct.ib_wc* %32, %struct.ib_grh* %33, %struct.ib_mad* %34, %struct.ib_mad* %35)
  store i32 %36, i32* %8, align 4
  br label %40

37:                                               ; preds = %7
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %37, %28, %19
  %41 = load i32, i32* %8, align 4
  ret i32 %41
}

declare dso_local i32 @rdma_port_get_link_layer(%struct.ib_device*, i32) #1

declare dso_local i32 @ib_process_mad(%struct.ib_device*, i32, i32, %struct.ib_wc*, %struct.ib_grh*, %struct.ib_mad*, %struct.ib_mad*) #1

declare dso_local i32 @iboe_process_mad(%struct.ib_device*, i32, i32, %struct.ib_wc*, %struct.ib_grh*, %struct.ib_mad*, %struct.ib_mad*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
