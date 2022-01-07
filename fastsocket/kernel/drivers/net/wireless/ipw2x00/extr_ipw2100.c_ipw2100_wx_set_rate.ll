; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_ipw2100_wx_set_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_ipw2100_wx_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ipw2100_priv = type { i32, i32 }

@STATUS_INITIALIZED = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@TX_RATE_1_MBIT = common dso_local global i32 0, align 4
@TX_RATE_2_MBIT = common dso_local global i32 0, align 4
@TX_RATE_5_5_MBIT = common dso_local global i32 0, align 4
@TX_RATE_11_MBIT = common dso_local global i32 0, align 4
@DEFAULT_TX_RATES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"SET Rate -> %04X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @ipw2100_wx_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw2100_wx_set_rate(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %union.iwreq_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ipw2100_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.ipw2100_priv* @libipw_priv(%struct.net_device* %13)
  store %struct.ipw2100_priv* %14, %struct.ipw2100_priv** %9, align 8
  %15 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %16 = bitcast %union.iwreq_data* %15 to %struct.TYPE_2__*
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %19 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %9, align 8
  %20 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %19, i32 0, i32 1
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %9, align 8
  %23 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @STATUS_INITIALIZED, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %4
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %12, align 4
  br label %106

31:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp eq i32 %32, 1000000
  br i1 %33, label %43, label %34

34:                                               ; preds = %31
  %35 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %36 = bitcast %union.iwreq_data* %35 to %struct.TYPE_2__*
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* %10, align 4
  %42 = icmp sgt i32 %41, 1000000
  br i1 %42, label %43, label %47

43:                                               ; preds = %40, %31
  %44 = load i32, i32* @TX_RATE_1_MBIT, align 4
  %45 = load i32, i32* %11, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %11, align 4
  br label %47

47:                                               ; preds = %43, %40, %34
  %48 = load i32, i32* %10, align 4
  %49 = icmp eq i32 %48, 2000000
  br i1 %49, label %59, label %50

50:                                               ; preds = %47
  %51 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %52 = bitcast %union.iwreq_data* %51 to %struct.TYPE_2__*
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* %10, align 4
  %58 = icmp sgt i32 %57, 2000000
  br i1 %58, label %59, label %63

59:                                               ; preds = %56, %47
  %60 = load i32, i32* @TX_RATE_2_MBIT, align 4
  %61 = load i32, i32* %11, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %11, align 4
  br label %63

63:                                               ; preds = %59, %56, %50
  %64 = load i32, i32* %10, align 4
  %65 = icmp eq i32 %64, 5500000
  br i1 %65, label %75, label %66

66:                                               ; preds = %63
  %67 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %68 = bitcast %union.iwreq_data* %67 to %struct.TYPE_2__*
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %66
  %73 = load i32, i32* %10, align 4
  %74 = icmp sgt i32 %73, 5500000
  br i1 %74, label %75, label %79

75:                                               ; preds = %72, %63
  %76 = load i32, i32* @TX_RATE_5_5_MBIT, align 4
  %77 = load i32, i32* %11, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %11, align 4
  br label %79

79:                                               ; preds = %75, %72, %66
  %80 = load i32, i32* %10, align 4
  %81 = icmp eq i32 %80, 11000000
  br i1 %81, label %91, label %82

82:                                               ; preds = %79
  %83 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %84 = bitcast %union.iwreq_data* %83 to %struct.TYPE_2__*
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %95, label %88

88:                                               ; preds = %82
  %89 = load i32, i32* %10, align 4
  %90 = icmp sgt i32 %89, 11000000
  br i1 %90, label %91, label %95

91:                                               ; preds = %88, %79
  %92 = load i32, i32* @TX_RATE_11_MBIT, align 4
  %93 = load i32, i32* %11, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %11, align 4
  br label %95

95:                                               ; preds = %91, %88, %82
  %96 = load i32, i32* %11, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  %99 = load i32, i32* @DEFAULT_TX_RATES, align 4
  store i32 %99, i32* %11, align 4
  br label %100

100:                                              ; preds = %98, %95
  %101 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %9, align 8
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @ipw2100_set_tx_rates(%struct.ipw2100_priv* %101, i32 %102, i32 0)
  store i32 %103, i32* %12, align 4
  %104 = load i32, i32* %11, align 4
  %105 = call i32 @IPW_DEBUG_WX(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %104)
  br label %106

106:                                              ; preds = %100, %28
  %107 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %9, align 8
  %108 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %107, i32 0, i32 1
  %109 = call i32 @mutex_unlock(i32* %108)
  %110 = load i32, i32* %12, align 4
  ret i32 %110
}

declare dso_local %struct.ipw2100_priv* @libipw_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ipw2100_set_tx_rates(%struct.ipw2100_priv*, i32, i32) #1

declare dso_local i32 @IPW_DEBUG_WX(i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
