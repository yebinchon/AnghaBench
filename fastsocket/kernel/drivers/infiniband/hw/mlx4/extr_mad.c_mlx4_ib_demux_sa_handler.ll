; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_mad.c_mlx4_ib_demux_sa_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_mad.c_mlx4_ib_demux_sa_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_sa_mad = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, i32, %struct.ib_sa_mad*)* @mlx4_ib_demux_sa_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_ib_demux_sa_handler(%struct.ib_device* %0, i32 %1, i32 %2, %struct.ib_sa_mad* %3) #0 {
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_sa_mad*, align 8
  %9 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.ib_sa_mad* %3, %struct.ib_sa_mad** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.ib_sa_mad*, %struct.ib_sa_mad** %8, align 8
  %11 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @be16_to_cpu(i32 %13)
  switch i32 %14, label %21 [
    i32 128, label %15
  ]

15:                                               ; preds = %4
  %16 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.ib_sa_mad*, %struct.ib_sa_mad** %8, align 8
  %20 = call i32 @mlx4_ib_mcg_demux_handler(%struct.ib_device* %16, i32 %17, i32 %18, %struct.ib_sa_mad* %19)
  store i32 %20, i32* %9, align 4
  br label %22

21:                                               ; preds = %4
  br label %22

22:                                               ; preds = %21, %15
  %23 = load i32, i32* %9, align 4
  ret i32 %23
}

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @mlx4_ib_mcg_demux_handler(%struct.ib_device*, i32, i32, %struct.ib_sa_mad*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
