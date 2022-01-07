; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_config_rx_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_config_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_rx_mode_ramrod_params = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { {}*, {}* }

@RAMROD_COMP_WAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_config_rx_mode(%struct.bnx2x* %0, %struct.bnx2x_rx_mode_ramrod_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca %struct.bnx2x_rx_mode_ramrod_params*, align 8
  %6 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store %struct.bnx2x_rx_mode_ramrod_params* %1, %struct.bnx2x_rx_mode_ramrod_params** %5, align 8
  %7 = load %struct.bnx2x_rx_mode_ramrod_params*, %struct.bnx2x_rx_mode_ramrod_params** %5, align 8
  %8 = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, %struct.bnx2x_rx_mode_ramrod_params* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = bitcast {}** %10 to i32 (%struct.bnx2x*, %struct.bnx2x_rx_mode_ramrod_params*)**
  %12 = load i32 (%struct.bnx2x*, %struct.bnx2x_rx_mode_ramrod_params*)*, i32 (%struct.bnx2x*, %struct.bnx2x_rx_mode_ramrod_params*)** %11, align 8
  %13 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %14 = load %struct.bnx2x_rx_mode_ramrod_params*, %struct.bnx2x_rx_mode_ramrod_params** %5, align 8
  %15 = call i32 %12(%struct.bnx2x* %13, %struct.bnx2x_rx_mode_ramrod_params* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %3, align 4
  br label %43

20:                                               ; preds = %2
  %21 = load i32, i32* @RAMROD_COMP_WAIT, align 4
  %22 = load %struct.bnx2x_rx_mode_ramrod_params*, %struct.bnx2x_rx_mode_ramrod_params** %5, align 8
  %23 = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, %struct.bnx2x_rx_mode_ramrod_params* %22, i32 0, i32 1
  %24 = call i64 @test_bit(i32 %21, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %20
  %27 = load %struct.bnx2x_rx_mode_ramrod_params*, %struct.bnx2x_rx_mode_ramrod_params** %5, align 8
  %28 = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, %struct.bnx2x_rx_mode_ramrod_params* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = bitcast {}** %30 to i32 (%struct.bnx2x*, %struct.bnx2x_rx_mode_ramrod_params*)**
  %32 = load i32 (%struct.bnx2x*, %struct.bnx2x_rx_mode_ramrod_params*)*, i32 (%struct.bnx2x*, %struct.bnx2x_rx_mode_ramrod_params*)** %31, align 8
  %33 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %34 = load %struct.bnx2x_rx_mode_ramrod_params*, %struct.bnx2x_rx_mode_ramrod_params** %5, align 8
  %35 = call i32 %32(%struct.bnx2x* %33, %struct.bnx2x_rx_mode_ramrod_params* %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %26
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %3, align 4
  br label %43

40:                                               ; preds = %26
  br label %41

41:                                               ; preds = %40, %20
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %41, %38, %18
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
