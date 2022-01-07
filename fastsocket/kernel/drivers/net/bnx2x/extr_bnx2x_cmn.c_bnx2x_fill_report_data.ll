; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_cmn.c_bnx2x_fill_report_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_cmn.c_bnx2x_fill_report_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.bnx2x_link_report_data = type { i32, i32 }

@MF_FUNC_DIS = common dso_local global i32 0, align 4
@BNX2X_LINK_REPORT_LINK_DOWN = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i64 0, align 8
@BNX2X_LINK_REPORT_FD = common dso_local global i32 0, align 4
@BNX2X_FLOW_CTRL_RX = common dso_local global i32 0, align 4
@BNX2X_LINK_REPORT_RX_FC_ON = common dso_local global i32 0, align 4
@BNX2X_FLOW_CTRL_TX = common dso_local global i32 0, align 4
@BNX2X_LINK_REPORT_TX_FC_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_link_report_data*)* @bnx2x_fill_report_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_fill_report_data(%struct.bnx2x* %0, %struct.bnx2x_link_report_data* %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca %struct.bnx2x_link_report_data*, align 8
  %5 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store %struct.bnx2x_link_report_data* %1, %struct.bnx2x_link_report_data** %4, align 8
  %6 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %7 = call i32 @bnx2x_get_mf_speed(%struct.bnx2x* %6)
  store i32 %7, i32* %5, align 4
  %8 = load %struct.bnx2x_link_report_data*, %struct.bnx2x_link_report_data** %4, align 8
  %9 = call i32 @memset(%struct.bnx2x_link_report_data* %8, i32 0, i32 8)
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.bnx2x_link_report_data*, %struct.bnx2x_link_report_data** %4, align 8
  %12 = getelementptr inbounds %struct.bnx2x_link_report_data, %struct.bnx2x_link_report_data* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %14 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %20 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @MF_FUNC_DIS, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %18, %2
  %26 = load i32, i32* @BNX2X_LINK_REPORT_LINK_DOWN, align 4
  %27 = load %struct.bnx2x_link_report_data*, %struct.bnx2x_link_report_data** %4, align 8
  %28 = getelementptr inbounds %struct.bnx2x_link_report_data, %struct.bnx2x_link_report_data* %27, i32 0, i32 0
  %29 = call i32 @__set_bit(i32 %26, i32* %28)
  br label %30

30:                                               ; preds = %25, %18
  %31 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %32 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @DUPLEX_FULL, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load i32, i32* @BNX2X_LINK_REPORT_FD, align 4
  %39 = load %struct.bnx2x_link_report_data*, %struct.bnx2x_link_report_data** %4, align 8
  %40 = getelementptr inbounds %struct.bnx2x_link_report_data, %struct.bnx2x_link_report_data* %39, i32 0, i32 0
  %41 = call i32 @__set_bit(i32 %38, i32* %40)
  br label %42

42:                                               ; preds = %37, %30
  %43 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %44 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @BNX2X_FLOW_CTRL_RX, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %42
  %51 = load i32, i32* @BNX2X_LINK_REPORT_RX_FC_ON, align 4
  %52 = load %struct.bnx2x_link_report_data*, %struct.bnx2x_link_report_data** %4, align 8
  %53 = getelementptr inbounds %struct.bnx2x_link_report_data, %struct.bnx2x_link_report_data* %52, i32 0, i32 0
  %54 = call i32 @__set_bit(i32 %51, i32* %53)
  br label %55

55:                                               ; preds = %50, %42
  %56 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %57 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @BNX2X_FLOW_CTRL_TX, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %55
  %64 = load i32, i32* @BNX2X_LINK_REPORT_TX_FC_ON, align 4
  %65 = load %struct.bnx2x_link_report_data*, %struct.bnx2x_link_report_data** %4, align 8
  %66 = getelementptr inbounds %struct.bnx2x_link_report_data, %struct.bnx2x_link_report_data* %65, i32 0, i32 0
  %67 = call i32 @__set_bit(i32 %64, i32* %66)
  br label %68

68:                                               ; preds = %63, %55
  ret void
}

declare dso_local i32 @bnx2x_get_mf_speed(%struct.bnx2x*) #1

declare dso_local i32 @memset(%struct.bnx2x_link_report_data*, i32, i32) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
