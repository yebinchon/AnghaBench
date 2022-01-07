; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_atmel.c_atmel_join_bss.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_atmel.c_atmel_join_bss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_private = type { i32, i64, i32, i32, i64, i64, i64, i32, i64, i64, i32, i32, %struct.bss_info* }
%struct.bss_info = type { i32, i64, i32, i64, i64, i32, i32, i32 }

@IW_MODE_ADHOC = common dso_local global i64 0, align 8
@Mac_Mgmt_Mib_Type = common dso_local global i32 0, align 4
@MAC_MGMT_MIB_PS_MODE_POS = common dso_local global i32 0, align 4
@ACTIVE_MODE = common dso_local global i64 0, align 8
@MAC_MGMT_MIB_LISTEN_INTERVAL_POS = common dso_local global i32 0, align 4
@Local_Mib_Type = common dso_local global i32 0, align 4
@LOCAL_MIB_PREAMBLE_TYPE = common dso_local global i32 0, align 4
@STATION_STATE_MGMT_ERROR = common dso_local global i32 0, align 4
@STATION_STATE_JOINNING = common dso_local global i32 0, align 4
@IW_MODE_INFRA = common dso_local global i64 0, align 8
@BSS_TYPE_INFRASTRUCTURE = common dso_local global i32 0, align 4
@BSS_TYPE_AD_HOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atmel_private*, i32)* @atmel_join_bss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_join_bss(%struct.atmel_private* %0, i32 %1) #0 {
  %3 = alloca %struct.atmel_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bss_info*, align 8
  store %struct.atmel_private* %0, %struct.atmel_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %7 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %6, i32 0, i32 12
  %8 = load %struct.bss_info*, %struct.bss_info** %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.bss_info, %struct.bss_info* %8, i64 %10
  store %struct.bss_info* %11, %struct.bss_info** %5, align 8
  %12 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %13 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %12, i32 0, i32 11
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.bss_info*, %struct.bss_info** %5, align 8
  %16 = getelementptr inbounds %struct.bss_info, %struct.bss_info* %15, i32 0, i32 7
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @memcpy(i32 %14, i32 %17, i32 6)
  %19 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %20 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %19, i32 0, i32 10
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.bss_info*, %struct.bss_info** %5, align 8
  %23 = getelementptr inbounds %struct.bss_info, %struct.bss_info* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.bss_info*, %struct.bss_info** %5, align 8
  %26 = getelementptr inbounds %struct.bss_info, %struct.bss_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %29 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = call i32 @memcpy(i32 %21, i32 %24, i32 %27)
  %31 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %32 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %31, i32 0, i32 9
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %2
  %36 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %37 = call i32 @build_wpa_mib(%struct.atmel_private* %36)
  br label %38

38:                                               ; preds = %35, %2
  %39 = load %struct.bss_info*, %struct.bss_info** %5, align 8
  %40 = getelementptr inbounds %struct.bss_info, %struct.bss_info* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @IW_MODE_ADHOC, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %69

44:                                               ; preds = %38
  %45 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %46 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @IW_MODE_ADHOC, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %69

50:                                               ; preds = %44
  %51 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %52 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %51, i32 0, i32 8
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %50
  %56 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %57 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %56, i32 0, i32 8
  store i64 0, i64* %57, align 8
  %58 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %59 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %58, i32 0, i32 2
  store i32 1, i32* %59, align 8
  %60 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %61 = load i32, i32* @Mac_Mgmt_Mib_Type, align 4
  %62 = load i32, i32* @MAC_MGMT_MIB_PS_MODE_POS, align 4
  %63 = load i64, i64* @ACTIVE_MODE, align 8
  %64 = call i32 @atmel_set_mib8(%struct.atmel_private* %60, i32 %61, i32 %62, i64 %63)
  %65 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %66 = load i32, i32* @Mac_Mgmt_Mib_Type, align 4
  %67 = load i32, i32* @MAC_MGMT_MIB_LISTEN_INTERVAL_POS, align 4
  %68 = call i32 @atmel_set_mib16(%struct.atmel_private* %65, i32 %66, i32 %67, i32 1)
  br label %69

69:                                               ; preds = %55, %50, %44, %38
  %70 = load %struct.bss_info*, %struct.bss_info** %5, align 8
  %71 = getelementptr inbounds %struct.bss_info, %struct.bss_info* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %74 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %73, i32 0, i32 1
  store i64 %72, i64* %74, align 8
  %75 = load %struct.bss_info*, %struct.bss_info** %5, align 8
  %76 = getelementptr inbounds %struct.bss_info, %struct.bss_info* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = and i32 %77, 127
  %79 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %80 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 4
  %81 = load %struct.bss_info*, %struct.bss_info** %5, align 8
  %82 = getelementptr inbounds %struct.bss_info, %struct.bss_info* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %85 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %84, i32 0, i32 7
  store i32 %83, i32* %85, align 8
  %86 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %87 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.bss_info*, %struct.bss_info** %5, align 8
  %90 = getelementptr inbounds %struct.bss_info, %struct.bss_info* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %88, %91
  br i1 %92, label %93, label %106

93:                                               ; preds = %69
  %94 = load %struct.bss_info*, %struct.bss_info** %5, align 8
  %95 = getelementptr inbounds %struct.bss_info, %struct.bss_info* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %98 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %97, i32 0, i32 4
  store i64 %96, i64* %98, align 8
  %99 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %100 = load i32, i32* @Local_Mib_Type, align 4
  %101 = load i32, i32* @LOCAL_MIB_PREAMBLE_TYPE, align 4
  %102 = load %struct.bss_info*, %struct.bss_info** %5, align 8
  %103 = getelementptr inbounds %struct.bss_info, %struct.bss_info* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @atmel_set_mib8(%struct.atmel_private* %99, i32 %100, i32 %101, i64 %104)
  br label %106

106:                                              ; preds = %93, %69
  %107 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %108 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %107, i32 0, i32 6
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %122, label %111

111:                                              ; preds = %106
  %112 = load %struct.bss_info*, %struct.bss_info** %5, align 8
  %113 = getelementptr inbounds %struct.bss_info, %struct.bss_info* %112, i32 0, i32 4
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %111
  %117 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %118 = load i32, i32* @STATION_STATE_MGMT_ERROR, align 4
  %119 = call i32 @atmel_enter_state(%struct.atmel_private* %117, i32 %118)
  %120 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %121 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %120, i32 0, i32 5
  store i64 0, i64* %121, align 8
  br label %155

122:                                              ; preds = %111, %106
  %123 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %124 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %123, i32 0, i32 6
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %138

127:                                              ; preds = %122
  %128 = load %struct.bss_info*, %struct.bss_info** %5, align 8
  %129 = getelementptr inbounds %struct.bss_info, %struct.bss_info* %128, i32 0, i32 4
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %138, label %132

132:                                              ; preds = %127
  %133 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %134 = load i32, i32* @STATION_STATE_MGMT_ERROR, align 4
  %135 = call i32 @atmel_enter_state(%struct.atmel_private* %133, i32 %134)
  %136 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %137 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %136, i32 0, i32 5
  store i64 0, i64* %137, align 8
  br label %155

138:                                              ; preds = %127, %122
  %139 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %140 = load i32, i32* @STATION_STATE_JOINNING, align 4
  %141 = call i32 @atmel_enter_state(%struct.atmel_private* %139, i32 %140)
  %142 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %143 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @IW_MODE_INFRA, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %151

147:                                              ; preds = %138
  %148 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %149 = load i32, i32* @BSS_TYPE_INFRASTRUCTURE, align 4
  %150 = call i32 @join(%struct.atmel_private* %148, i32 %149)
  br label %155

151:                                              ; preds = %138
  %152 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %153 = load i32, i32* @BSS_TYPE_AD_HOC, align 4
  %154 = call i32 @join(%struct.atmel_private* %152, i32 %153)
  br label %155

155:                                              ; preds = %116, %132, %151, %147
  ret void
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @build_wpa_mib(%struct.atmel_private*) #1

declare dso_local i32 @atmel_set_mib8(%struct.atmel_private*, i32, i32, i64) #1

declare dso_local i32 @atmel_set_mib16(%struct.atmel_private*, i32, i32, i32) #1

declare dso_local i32 @atmel_enter_state(%struct.atmel_private*, i32) #1

declare dso_local i32 @join(%struct.atmel_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
