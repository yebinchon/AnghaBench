; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_init.c_ath9k_init_htc_services.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_init.c_ath9k_init_htc_services.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath9k_htc_priv = type { i32, %struct.TYPE_3__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@WMI_BEACON_SVC = common dso_local global i32 0, align 4
@ath9k_htc_beaconep = common dso_local global i32 0, align 4
@WMI_CAB_SVC = common dso_local global i32 0, align 4
@ath9k_htc_txep = common dso_local global i32 0, align 4
@WMI_UAPSD_SVC = common dso_local global i32 0, align 4
@WMI_MGMT_SVC = common dso_local global i32 0, align 4
@WMI_DATA_BE_SVC = common dso_local global i32 0, align 4
@WMI_DATA_BK_SVC = common dso_local global i32 0, align 4
@WMI_DATA_VI_SVC = common dso_local global i32 0, align 4
@WMI_DATA_VO_SVC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"ath9k_htc: HTC initialized with %d credits\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"ath9k_htc: Unable to initialize HTC services\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath9k_htc_priv*, i32, i32)* @ath9k_init_htc_services to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_init_htc_services(%struct.ath9k_htc_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath9k_htc_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ath9k_htc_priv* %0, %struct.ath9k_htc_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %10 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %13 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %12, i32 0, i32 11
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %16 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %15, i32 0, i32 10
  %17 = call i32 @ath9k_wmi_connect(%struct.TYPE_3__* %11, i32 %14, i32* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %133

21:                                               ; preds = %3
  %22 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %23 = load i32, i32* @WMI_BEACON_SVC, align 4
  %24 = load i32, i32* @ath9k_htc_beaconep, align 4
  %25 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %26 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %25, i32 0, i32 9
  %27 = call i32 @ath9k_htc_connect_svc(%struct.ath9k_htc_priv* %22, i32 %23, i32 %24, i32* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %133

31:                                               ; preds = %21
  %32 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %33 = load i32, i32* @WMI_CAB_SVC, align 4
  %34 = load i32, i32* @ath9k_htc_txep, align 4
  %35 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %36 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %35, i32 0, i32 8
  %37 = call i32 @ath9k_htc_connect_svc(%struct.ath9k_htc_priv* %32, i32 %33, i32 %34, i32* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  br label %133

41:                                               ; preds = %31
  %42 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %43 = load i32, i32* @WMI_UAPSD_SVC, align 4
  %44 = load i32, i32* @ath9k_htc_txep, align 4
  %45 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %46 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %45, i32 0, i32 7
  %47 = call i32 @ath9k_htc_connect_svc(%struct.ath9k_htc_priv* %42, i32 %43, i32 %44, i32* %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  br label %133

51:                                               ; preds = %41
  %52 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %53 = load i32, i32* @WMI_MGMT_SVC, align 4
  %54 = load i32, i32* @ath9k_htc_txep, align 4
  %55 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %56 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %55, i32 0, i32 6
  %57 = call i32 @ath9k_htc_connect_svc(%struct.ath9k_htc_priv* %52, i32 %53, i32 %54, i32* %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %51
  br label %133

61:                                               ; preds = %51
  %62 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %63 = load i32, i32* @WMI_DATA_BE_SVC, align 4
  %64 = load i32, i32* @ath9k_htc_txep, align 4
  %65 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %66 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %65, i32 0, i32 5
  %67 = call i32 @ath9k_htc_connect_svc(%struct.ath9k_htc_priv* %62, i32 %63, i32 %64, i32* %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %61
  br label %133

71:                                               ; preds = %61
  %72 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %73 = load i32, i32* @WMI_DATA_BK_SVC, align 4
  %74 = load i32, i32* @ath9k_htc_txep, align 4
  %75 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %76 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %75, i32 0, i32 4
  %77 = call i32 @ath9k_htc_connect_svc(%struct.ath9k_htc_priv* %72, i32 %73, i32 %74, i32* %76)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %71
  br label %133

81:                                               ; preds = %71
  %82 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %83 = load i32, i32* @WMI_DATA_VI_SVC, align 4
  %84 = load i32, i32* @ath9k_htc_txep, align 4
  %85 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %86 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %85, i32 0, i32 3
  %87 = call i32 @ath9k_htc_connect_svc(%struct.ath9k_htc_priv* %82, i32 %83, i32 %84, i32* %86)
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %81
  br label %133

91:                                               ; preds = %81
  %92 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %93 = load i32, i32* @WMI_DATA_VO_SVC, align 4
  %94 = load i32, i32* @ath9k_htc_txep, align 4
  %95 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %96 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %95, i32 0, i32 2
  %97 = call i32 @ath9k_htc_connect_svc(%struct.ath9k_htc_priv* %92, i32 %93, i32 %94, i32* %96)
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %91
  br label %133

101:                                              ; preds = %91
  %102 = load i32, i32* %7, align 4
  %103 = call i64 @IS_AR7010_DEVICE(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %101
  %106 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %107 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %106, i32 0, i32 1
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  store i32 45, i32* %109, align 4
  br label %115

110:                                              ; preds = %101
  %111 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %112 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %111, i32 0, i32 1
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  store i32 33, i32* %114, align 4
  br label %115

115:                                              ; preds = %110, %105
  %116 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %117 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %116, i32 0, i32 1
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %117, align 8
  %119 = call i32 @htc_init(%struct.TYPE_3__* %118)
  store i32 %119, i32* %8, align 4
  %120 = load i32, i32* %8, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %115
  br label %133

123:                                              ; preds = %115
  %124 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %125 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %128 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %127, i32 0, i32 1
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @dev_info(i32 %126, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %131)
  store i32 0, i32* %4, align 4
  br label %139

133:                                              ; preds = %122, %100, %90, %80, %70, %60, %50, %40, %30, %20
  %134 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %135 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @dev_err(i32 %136, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %138 = load i32, i32* %8, align 4
  store i32 %138, i32* %4, align 4
  br label %139

139:                                              ; preds = %133, %123
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local i32 @ath9k_wmi_connect(%struct.TYPE_3__*, i32, i32*) #1

declare dso_local i32 @ath9k_htc_connect_svc(%struct.ath9k_htc_priv*, i32, i32, i32*) #1

declare dso_local i64 @IS_AR7010_DEVICE(i32) #1

declare dso_local i32 @htc_init(%struct.TYPE_3__*) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
