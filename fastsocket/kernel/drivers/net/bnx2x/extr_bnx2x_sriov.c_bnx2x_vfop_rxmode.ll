; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_vfop_rxmode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_vfop_rxmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_virtf = type { i32 }
%struct.bnx2x_vfop = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.bnx2x_rx_mode_ramrod_params }
%struct.bnx2x_rx_mode_ramrod_params = type { i32 }

@BNX2X_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"vf[%d] STATE: %d\0A\00", align 1
@VFOP_DONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"RXMODE error: rc %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_virtf*)* @bnx2x_vfop_rxmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_vfop_rxmode(%struct.bnx2x* %0, %struct.bnx2x_virtf* %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca %struct.bnx2x_virtf*, align 8
  %5 = alloca %struct.bnx2x_vfop*, align 8
  %6 = alloca %struct.bnx2x_rx_mode_ramrod_params*, align 8
  %7 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store %struct.bnx2x_virtf* %1, %struct.bnx2x_virtf** %4, align 8
  %8 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %9 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %10 = call %struct.bnx2x_vfop* @bnx2x_vfop_cur(%struct.bnx2x* %8, %struct.bnx2x_virtf* %9)
  store %struct.bnx2x_vfop* %10, %struct.bnx2x_vfop** %5, align 8
  %11 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %12 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.bnx2x_rx_mode_ramrod_params* %14, %struct.bnx2x_rx_mode_ramrod_params** %6, align 8
  %15 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %16 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %7, align 4
  %18 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %19 = call i32 @bnx2x_vfop_reset_wq(%struct.bnx2x_virtf* %18)
  %20 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %21 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %47

25:                                               ; preds = %2
  %26 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %27 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %28 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @DP(i32 %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30)
  %32 = load i32, i32* %7, align 4
  switch i32 %32, label %58 [
    i32 129, label %33
    i32 128, label %53
  ]

33:                                               ; preds = %25
  %34 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %35 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %34, i32 0, i32 0
  store i32 128, i32* %35, align 8
  %36 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %37 = load %struct.bnx2x_rx_mode_ramrod_params*, %struct.bnx2x_rx_mode_ramrod_params** %6, align 8
  %38 = call i64 @bnx2x_config_rx_mode(%struct.bnx2x* %36, %struct.bnx2x_rx_mode_ramrod_params* %37)
  %39 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %40 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  %41 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %42 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %43 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* @VFOP_DONE, align 4
  %46 = call i32 @bnx2x_vfop_finalize(%struct.bnx2x_virtf* %41, i64 %44, i32 %45)
  br label %47

47:                                               ; preds = %33, %24
  %48 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %49 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %50)
  br label %52

52:                                               ; preds = %47
  br label %53

53:                                               ; preds = %25, %52
  %54 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %55 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %56 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %57 = call i32 @bnx2x_vfop_end(%struct.bnx2x* %54, %struct.bnx2x_virtf* %55, %struct.bnx2x_vfop* %56)
  br label %63

58:                                               ; preds = %25
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @bnx2x_vfop_default(i32 %59)
  br label %61

61:                                               ; preds = %58
  br label %62

62:                                               ; preds = %61
  br label %63

63:                                               ; preds = %62, %53
  ret void
}

declare dso_local %struct.bnx2x_vfop* @bnx2x_vfop_cur(%struct.bnx2x*, %struct.bnx2x_virtf*) #1

declare dso_local i32 @bnx2x_vfop_reset_wq(%struct.bnx2x_virtf*) #1

declare dso_local i32 @DP(i32, i8*, i32, i32) #1

declare dso_local i64 @bnx2x_config_rx_mode(%struct.bnx2x*, %struct.bnx2x_rx_mode_ramrod_params*) #1

declare dso_local i32 @bnx2x_vfop_finalize(%struct.bnx2x_virtf*, i64, i32) #1

declare dso_local i32 @BNX2X_ERR(i8*, i64) #1

declare dso_local i32 @bnx2x_vfop_end(%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.bnx2x_vfop*) #1

declare dso_local i32 @bnx2x_vfop_default(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
