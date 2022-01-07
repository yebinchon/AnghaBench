; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_ap.c_ap_update_sta_tx_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_ap.c_ap_update_sta_tx_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { i32, i64, i64, i32, i32, i64, i32* }
%struct.net_device = type { i32 }
%struct.hostap_interface = type { i32* }

@WLAN_RATE_UPDATE_COUNT = common dso_local global i64 0, align 8
@DEBUG_AP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"%s: STA %pM TX rate raised to %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sta_info*, %struct.net_device*)* @ap_update_sta_tx_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ap_update_sta_tx_rate(%struct.sta_info* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sta_info*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hostap_interface*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sta_info* %0, %struct.sta_info** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %10 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %11 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %5, align 4
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.hostap_interface* @netdev_priv(%struct.net_device* %13)
  store %struct.hostap_interface* %14, %struct.hostap_interface** %6, align 8
  %15 = load %struct.hostap_interface*, %struct.hostap_interface** %6, align 8
  %16 = getelementptr inbounds %struct.hostap_interface, %struct.hostap_interface* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %7, align 8
  %18 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %19 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %18, i32 0, i32 6
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %22 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  %27 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %28 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* %28, align 8
  %31 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %32 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %31, i32 0, i32 5
  store i64 0, i64* %32, align 8
  %33 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %34 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @WLAN_RATE_UPDATE_COUNT, align 8
  %37 = icmp sge i64 %35, %36
  br i1 %37, label %38, label %113

38:                                               ; preds = %2
  %39 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %40 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %43 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = icmp ult i64 %41, %45
  br i1 %46, label %47, label %113

47:                                               ; preds = %38
  %48 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %49 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %9, align 4
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %71, %47
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %55 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %72

58:                                               ; preds = %52
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = call i64 @ap_tx_rate_ok(i32 %61, %struct.sta_info* %62, i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %58
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %70 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %69, i32 0, i32 1
  store i64 %68, i64* %70, align 8
  br label %72

71:                                               ; preds = %58
  br label %52

72:                                               ; preds = %66, %52
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %76 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %74, %77
  br i1 %78, label %79, label %110

79:                                               ; preds = %72
  %80 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %81 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  switch i64 %82, label %95 [
    i64 0, label %83
    i64 1, label %86
    i64 2, label %89
    i64 3, label %92
  ]

83:                                               ; preds = %79
  %84 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %85 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %84, i32 0, i32 0
  store i32 10, i32* %85, align 8
  br label %98

86:                                               ; preds = %79
  %87 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %88 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %87, i32 0, i32 0
  store i32 20, i32* %88, align 8
  br label %98

89:                                               ; preds = %79
  %90 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %91 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %90, i32 0, i32 0
  store i32 55, i32* %91, align 8
  br label %98

92:                                               ; preds = %79
  %93 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %94 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %93, i32 0, i32 0
  store i32 110, i32* %94, align 8
  br label %98

95:                                               ; preds = %79
  %96 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %97 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %96, i32 0, i32 0
  store i32 0, i32* %97, align 8
  br label %98

98:                                               ; preds = %95, %92, %89, %86, %83
  %99 = load i32, i32* @DEBUG_AP, align 4
  %100 = load %struct.net_device*, %struct.net_device** %4, align 8
  %101 = getelementptr inbounds %struct.net_device, %struct.net_device* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %104 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %107 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @PDEBUG(i32 %99, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %102, i32 %105, i32 %108)
  br label %110

110:                                              ; preds = %98, %72
  %111 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %112 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %111, i32 0, i32 2
  store i64 0, i64* %112, align 8
  br label %113

113:                                              ; preds = %110, %38, %2
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local %struct.hostap_interface* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @ap_tx_rate_ok(i32, %struct.sta_info*, i32*) #1

declare dso_local i32 @PDEBUG(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
