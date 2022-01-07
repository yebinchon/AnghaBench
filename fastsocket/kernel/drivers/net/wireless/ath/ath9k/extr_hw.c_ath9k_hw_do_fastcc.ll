; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_do_fastcc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_do_fastcc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_6__*, %struct.TYPE_5__*, i64 }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.ath9k_channel = type { i64, i32 }
%struct.ath_common = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@ATH_PCI = common dso_local global i64 0, align 8
@CHANNEL_HALF = common dso_local global i32 0, align 4
@CHANNEL_QUARTER = common dso_local global i32 0, align 4
@CHANNEL_ALL = common dso_local global i32 0, align 4
@RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"FastChannelChange for %d -> %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, %struct.ath9k_channel*)* @ath9k_hw_do_fastcc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_hw_do_fastcc(%struct.ath_hw* %0, %struct.ath9k_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca %struct.ath9k_channel*, align 8
  %6 = alloca %struct.ath_common*, align 8
  %7 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %5, align 8
  %8 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %9 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %8)
  store %struct.ath_common* %9, %struct.ath_common** %6, align 8
  %10 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %11 = call i64 @AR_SREV_9280(%struct.ath_hw* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %15 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ATH_PCI, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %153

22:                                               ; preds = %13, %2
  %23 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %24 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %153

28:                                               ; preds = %22
  %29 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %30 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = icmp ne %struct.TYPE_6__* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  br label %153

34:                                               ; preds = %28
  %35 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %36 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %39 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %37, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  br label %153

45:                                               ; preds = %34
  %46 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %47 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %52 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %50, %53
  %55 = load i32, i32* @CHANNEL_HALF, align 4
  %56 = load i32, i32* @CHANNEL_QUARTER, align 4
  %57 = or i32 %55, %56
  %58 = and i32 %54, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %45
  br label %153

61:                                               ; preds = %45
  %62 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %63 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @CHANNEL_ALL, align 4
  %66 = and i32 %64, %65
  %67 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %68 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %67, i32 0, i32 0
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @CHANNEL_ALL, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %66, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %61
  br label %153

76:                                               ; preds = %61
  %77 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %78 = call i32 @ath9k_hw_check_alive(%struct.ath_hw* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %76
  br label %153

81:                                               ; preds = %76
  %82 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %83 = call i64 @AR_SREV_9462(%struct.ath_hw* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %112

85:                                               ; preds = %81
  %86 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %87 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %86, i32 0, i32 1
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = icmp ne %struct.TYPE_5__* %88, null
  br i1 %89, label %90, label %112

90:                                               ; preds = %85
  %91 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %92 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %91, i32 0, i32 1
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %111

97:                                               ; preds = %90
  %98 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %99 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %98, i32 0, i32 1
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %97
  %105 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %106 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %105, i32 0, i32 1
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %104, %97, %90
  br label %153

112:                                              ; preds = %104, %85, %81
  %113 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %114 = load i32, i32* @RESET, align 4
  %115 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %116 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %115, i32 0, i32 0
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %121 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @ath_dbg(%struct.ath_common* %113, i32 %114, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %119, i64 %122)
  %124 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %125 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %126 = call i32 @ath9k_hw_channel_change(%struct.ath_hw* %124, %struct.ath9k_channel* %125)
  store i32 %126, i32* %7, align 4
  %127 = load i32, i32* %7, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %112
  br label %153

130:                                              ; preds = %112
  %131 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %132 = call i64 @ath9k_hw_mci_is_enabled(%struct.ath_hw* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %130
  %135 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %136 = call i32 @ar9003_mci_2g5g_switch(%struct.ath_hw* %135, i32 0)
  br label %137

137:                                              ; preds = %134, %130
  %138 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %139 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %140 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %139, i32 0, i32 0
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %140, align 8
  %142 = call i32 @ath9k_hw_loadnf(%struct.ath_hw* %138, %struct.TYPE_6__* %141)
  %143 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %144 = call i32 @ath9k_hw_start_nfcal(%struct.ath_hw* %143, i32 1)
  %145 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %146 = call i64 @AR_SREV_9271(%struct.ath_hw* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %137
  %149 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %150 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %151 = call i32 @ar9002_hw_load_ani_reg(%struct.ath_hw* %149, %struct.ath9k_channel* %150)
  br label %152

152:                                              ; preds = %148, %137
  store i32 0, i32* %3, align 4
  br label %156

153:                                              ; preds = %129, %111, %80, %75, %60, %44, %33, %27, %21
  %154 = load i32, i32* @EINVAL, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %3, align 4
  br label %156

156:                                              ; preds = %153, %152
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9280(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_check_alive(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9462(%struct.ath_hw*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i64, i64) #1

declare dso_local i32 @ath9k_hw_channel_change(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i64 @ath9k_hw_mci_is_enabled(%struct.ath_hw*) #1

declare dso_local i32 @ar9003_mci_2g5g_switch(%struct.ath_hw*, i32) #1

declare dso_local i32 @ath9k_hw_loadnf(%struct.ath_hw*, %struct.TYPE_6__*) #1

declare dso_local i32 @ath9k_hw_start_nfcal(%struct.ath_hw*, i32) #1

declare dso_local i64 @AR_SREV_9271(%struct.ath_hw*) #1

declare dso_local i32 @ar9002_hw_load_ani_reg(%struct.ath_hw*, %struct.ath9k_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
