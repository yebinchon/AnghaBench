; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_cmn.c___bnx2x_link_report.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_cmn.c___bnx2x_link_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.bnx2x_link_report_data = type { i32, i64 }

@BNX2X_LINK_REPORT_LINK_DOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"NIC Link is Down\0A\00", align 1
@BNX2X_LINK_REPORT_FD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"half\00", align 1
@BNX2X_LINK_REPORT_RX_FC_ON = common dso_local global i32 0, align 4
@BNX2X_LINK_REPORT_TX_FC_ON = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"ON - receive & transmit\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"ON - receive\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"ON - transmit\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"NIC Link is Up, %d Mbps %s duplex, Flow control: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__bnx2x_link_report(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca %struct.bnx2x_link_report_data, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %6 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %7 = call i64 @IS_PF(%struct.bnx2x* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %11 = call i32 @CHIP_IS_E1(%struct.bnx2x* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %15 = call i32 @bnx2x_read_mf_cfg(%struct.bnx2x* %14)
  br label %16

16:                                               ; preds = %13, %9, %1
  %17 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %18 = call i32 @bnx2x_fill_report_data(%struct.bnx2x* %17, %struct.bnx2x_link_report_data* %3)
  %19 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %20 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %19, i32 0, i32 1
  %21 = call i32 @memcmp(%struct.bnx2x_link_report_data* %3, %struct.TYPE_3__* %20, i32 16)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %16
  %24 = load i32, i32* @BNX2X_LINK_REPORT_LINK_DOWN, align 4
  %25 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %26 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = call i64 @test_bit(i32 %24, i64* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %23
  %31 = load i32, i32* @BNX2X_LINK_REPORT_LINK_DOWN, align 4
  %32 = getelementptr inbounds %struct.bnx2x_link_report_data, %struct.bnx2x_link_report_data* %3, i32 0, i32 1
  %33 = call i64 @test_bit(i32 %31, i64* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30, %16
  br label %97

36:                                               ; preds = %30, %23
  %37 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %38 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 8
  %41 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %42 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %41, i32 0, i32 1
  %43 = call i32 @memcpy(%struct.TYPE_3__* %42, %struct.bnx2x_link_report_data* %3, i32 16)
  %44 = load i32, i32* @BNX2X_LINK_REPORT_LINK_DOWN, align 4
  %45 = getelementptr inbounds %struct.bnx2x_link_report_data, %struct.bnx2x_link_report_data* %3, i32 0, i32 1
  %46 = call i64 @test_bit(i32 %44, i64* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %36
  %49 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %50 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @netif_carrier_off(i32 %51)
  %53 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %54 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @netdev_err(i32 %55, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %97

57:                                               ; preds = %36
  %58 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %59 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @netif_carrier_on(i32 %60)
  %62 = load i32, i32* @BNX2X_LINK_REPORT_FD, align 4
  %63 = getelementptr inbounds %struct.bnx2x_link_report_data, %struct.bnx2x_link_report_data* %3, i32 0, i32 1
  %64 = call i64 @test_and_clear_bit(i32 %62, i64* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %68

67:                                               ; preds = %57
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  br label %68

68:                                               ; preds = %67, %66
  %69 = getelementptr inbounds %struct.bnx2x_link_report_data, %struct.bnx2x_link_report_data* %3, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %87

72:                                               ; preds = %68
  %73 = load i32, i32* @BNX2X_LINK_REPORT_RX_FC_ON, align 4
  %74 = getelementptr inbounds %struct.bnx2x_link_report_data, %struct.bnx2x_link_report_data* %3, i32 0, i32 1
  %75 = call i64 @test_bit(i32 %73, i64* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %72
  %78 = load i32, i32* @BNX2X_LINK_REPORT_TX_FC_ON, align 4
  %79 = getelementptr inbounds %struct.bnx2x_link_report_data, %struct.bnx2x_link_report_data* %3, i32 0, i32 1
  %80 = call i64 @test_bit(i32 %78, i64* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  br label %84

83:                                               ; preds = %77
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8** %5, align 8
  br label %84

84:                                               ; preds = %83, %82
  br label %86

85:                                               ; preds = %72
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8** %5, align 8
  br label %86

86:                                               ; preds = %85, %84
  br label %88

87:                                               ; preds = %68
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %5, align 8
  br label %88

88:                                               ; preds = %87, %86
  %89 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %90 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = getelementptr inbounds %struct.bnx2x_link_report_data, %struct.bnx2x_link_report_data* %3, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i8*, i8** %4, align 8
  %95 = load i8*, i8** %5, align 8
  %96 = call i32 @netdev_info(i32 %91, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i32 %93, i8* %94, i8* %95)
  br label %97

97:                                               ; preds = %35, %48, %88
  ret void
}

declare dso_local i64 @IS_PF(%struct.bnx2x*) #1

declare dso_local i32 @CHIP_IS_E1(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_read_mf_cfg(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_fill_report_data(%struct.bnx2x*, %struct.bnx2x_link_report_data*) #1

declare dso_local i32 @memcmp(%struct.bnx2x_link_report_data*, %struct.TYPE_3__*, i32) #1

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i32 @memcpy(%struct.TYPE_3__*, %struct.bnx2x_link_report_data*, i32) #1

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @netif_carrier_on(i32) #1

declare dso_local i64 @test_and_clear_bit(i32, i64*) #1

declare dso_local i32 @netdev_info(i32, i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
