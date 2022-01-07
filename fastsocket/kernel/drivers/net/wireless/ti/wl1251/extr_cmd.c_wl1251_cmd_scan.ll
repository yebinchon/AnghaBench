; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_cmd.c_wl1251_cmd_scan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_cmd.c_wl1251_cmd_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i32 }
%struct.ieee80211_channel = type { i32 }
%struct.wl1251_cmd_scan = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i64, i32, i64, i32, i64, i8*, i8* }
%struct.TYPE_4__ = type { i32, i64, i64, i32, i32, i8*, i8* }

@DEBUG_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"cmd scan\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CFG_RX_ALL_GOOD = common dso_local global i32 0, align 4
@CFG_RX_PRSP_EN = common dso_local global i32 0, align 4
@CFG_RX_MGMT_EN = common dso_local global i32 0, align 4
@CFG_RX_BCN_EN = common dso_local global i32 0, align 4
@WL1251_SCAN_MIN_DURATION = common dso_local global i32 0, align 4
@WL1251_SCAN_MAX_DURATION = common dso_local global i32 0, align 4
@CMD_SCAN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"cmd scan failed: %d\00", align 1
@CMD_STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"cmd scan status wasn't success: %d\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1251_cmd_scan(%struct.wl1251* %0, i32* %1, i64 %2, %struct.ieee80211_channel** %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.wl1251*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.ieee80211_channel**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.wl1251_cmd_scan*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.wl1251* %0, %struct.wl1251** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store %struct.ieee80211_channel** %3, %struct.ieee80211_channel*** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* @DEBUG_CMD, align 4
  %18 = call i32 @wl1251_debug(i32 %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.wl1251_cmd_scan* @kzalloc(i32 80, i32 %19)
  store %struct.wl1251_cmd_scan* %20, %struct.wl1251_cmd_scan** %14, align 8
  %21 = load %struct.wl1251_cmd_scan*, %struct.wl1251_cmd_scan** %14, align 8
  %22 = icmp ne %struct.wl1251_cmd_scan* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %6
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %7, align 4
  br label %180

26:                                               ; preds = %6
  %27 = load i32, i32* @CFG_RX_ALL_GOOD, align 4
  %28 = call i8* @cpu_to_le32(i32 %27)
  %29 = load %struct.wl1251_cmd_scan*, %struct.wl1251_cmd_scan** %14, align 8
  %30 = getelementptr inbounds %struct.wl1251_cmd_scan, %struct.wl1251_cmd_scan* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 8
  store i8* %28, i8** %31, align 8
  %32 = load i32, i32* @CFG_RX_PRSP_EN, align 4
  %33 = load i32, i32* @CFG_RX_MGMT_EN, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @CFG_RX_BCN_EN, align 4
  %36 = or i32 %34, %35
  %37 = call i8* @cpu_to_le32(i32 %36)
  %38 = load %struct.wl1251_cmd_scan*, %struct.wl1251_cmd_scan** %14, align 8
  %39 = getelementptr inbounds %struct.wl1251_cmd_scan, %struct.wl1251_cmd_scan* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 7
  store i8* %37, i8** %40, align 8
  %41 = load %struct.wl1251_cmd_scan*, %struct.wl1251_cmd_scan** %14, align 8
  %42 = getelementptr inbounds %struct.wl1251_cmd_scan, %struct.wl1251_cmd_scan* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 6
  store i64 0, i64* %43, align 8
  %44 = load i32, i32* %12, align 4
  %45 = load %struct.wl1251_cmd_scan*, %struct.wl1251_cmd_scan** %14, align 8
  %46 = getelementptr inbounds %struct.wl1251_cmd_scan, %struct.wl1251_cmd_scan* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 8
  %48 = load i32, i32* %13, align 4
  %49 = load %struct.wl1251_cmd_scan*, %struct.wl1251_cmd_scan** %14, align 8
  %50 = getelementptr inbounds %struct.wl1251_cmd_scan, %struct.wl1251_cmd_scan* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 4
  %52 = call i32 @cpu_to_le16(i32 2)
  %53 = load %struct.wl1251_cmd_scan*, %struct.wl1251_cmd_scan** %14, align 8
  %54 = getelementptr inbounds %struct.wl1251_cmd_scan, %struct.wl1251_cmd_scan* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 5
  store i32 %52, i32* %55, align 8
  %56 = load %struct.wl1251_cmd_scan*, %struct.wl1251_cmd_scan** %14, align 8
  %57 = getelementptr inbounds %struct.wl1251_cmd_scan, %struct.wl1251_cmd_scan* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 4
  store i64 0, i64* %58, align 8
  store i32 0, i32* %15, align 4
  br label %59

59:                                               ; preds = %126, %26
  %60 = load i32, i32* %15, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp ult i32 %60, %61
  br i1 %62, label %63, label %129

63:                                               ; preds = %59
  %64 = load i32, i32* @WL1251_SCAN_MIN_DURATION, align 4
  %65 = call i8* @cpu_to_le32(i32 %64)
  %66 = load %struct.wl1251_cmd_scan*, %struct.wl1251_cmd_scan** %14, align 8
  %67 = getelementptr inbounds %struct.wl1251_cmd_scan, %struct.wl1251_cmd_scan* %66, i32 0, i32 2
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = load i32, i32* %15, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 6
  store i8* %65, i8** %72, align 8
  %73 = load i32, i32* @WL1251_SCAN_MAX_DURATION, align 4
  %74 = call i8* @cpu_to_le32(i32 %73)
  %75 = load %struct.wl1251_cmd_scan*, %struct.wl1251_cmd_scan** %14, align 8
  %76 = getelementptr inbounds %struct.wl1251_cmd_scan, %struct.wl1251_cmd_scan* %75, i32 0, i32 2
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = load i32, i32* %15, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 5
  store i8* %74, i8** %81, align 8
  %82 = load %struct.wl1251_cmd_scan*, %struct.wl1251_cmd_scan** %14, align 8
  %83 = getelementptr inbounds %struct.wl1251_cmd_scan, %struct.wl1251_cmd_scan* %82, i32 0, i32 2
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = load i32, i32* %15, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 4
  %89 = call i32 @memset(i32* %88, i32 255, i32 4)
  %90 = load %struct.wl1251_cmd_scan*, %struct.wl1251_cmd_scan** %14, align 8
  %91 = getelementptr inbounds %struct.wl1251_cmd_scan, %struct.wl1251_cmd_scan* %90, i32 0, i32 2
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = load i32, i32* %15, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 3
  %97 = call i32 @memset(i32* %96, i32 255, i32 2)
  %98 = load %struct.wl1251_cmd_scan*, %struct.wl1251_cmd_scan** %14, align 8
  %99 = getelementptr inbounds %struct.wl1251_cmd_scan, %struct.wl1251_cmd_scan* %98, i32 0, i32 2
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = load i32, i32* %15, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 2
  store i64 0, i64* %104, align 8
  %105 = load %struct.wl1251_cmd_scan*, %struct.wl1251_cmd_scan** %14, align 8
  %106 = getelementptr inbounds %struct.wl1251_cmd_scan, %struct.wl1251_cmd_scan* %105, i32 0, i32 2
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = load i32, i32* %15, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  store i64 0, i64* %111, align 8
  %112 = load %struct.ieee80211_channel**, %struct.ieee80211_channel*** %11, align 8
  %113 = load i32, i32* %15, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.ieee80211_channel*, %struct.ieee80211_channel** %112, i64 %114
  %116 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %115, align 8
  %117 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.wl1251_cmd_scan*, %struct.wl1251_cmd_scan** %14, align 8
  %120 = getelementptr inbounds %struct.wl1251_cmd_scan, %struct.wl1251_cmd_scan* %119, i32 0, i32 2
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = load i32, i32* %15, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  store i32 %118, i32* %125, align 8
  br label %126

126:                                              ; preds = %63
  %127 = load i32, i32* %15, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %15, align 4
  br label %59

129:                                              ; preds = %59
  %130 = load i64, i64* %10, align 8
  %131 = load %struct.wl1251_cmd_scan*, %struct.wl1251_cmd_scan** %14, align 8
  %132 = getelementptr inbounds %struct.wl1251_cmd_scan, %struct.wl1251_cmd_scan* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 2
  store i64 %130, i64* %133, align 8
  %134 = load i32*, i32** %9, align 8
  %135 = icmp ne i32* %134, null
  br i1 %135, label %136, label %144

136:                                              ; preds = %129
  %137 = load %struct.wl1251_cmd_scan*, %struct.wl1251_cmd_scan** %14, align 8
  %138 = getelementptr inbounds %struct.wl1251_cmd_scan, %struct.wl1251_cmd_scan* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = load i32*, i32** %9, align 8
  %142 = load i64, i64* %10, align 8
  %143 = call i32 @memcpy(i32 %140, i32* %141, i64 %142)
  br label %144

144:                                              ; preds = %136, %129
  %145 = load %struct.wl1251*, %struct.wl1251** %8, align 8
  %146 = load i32, i32* @CMD_SCAN, align 4
  %147 = load %struct.wl1251_cmd_scan*, %struct.wl1251_cmd_scan** %14, align 8
  %148 = call i32 @wl1251_cmd_send(%struct.wl1251* %145, i32 %146, %struct.wl1251_cmd_scan* %147, i32 80)
  store i32 %148, i32* %16, align 4
  %149 = load i32, i32* %16, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %144
  %152 = load i32, i32* %16, align 4
  %153 = call i32 @wl1251_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %152)
  br label %176

154:                                              ; preds = %144
  %155 = load %struct.wl1251*, %struct.wl1251** %8, align 8
  %156 = load %struct.wl1251*, %struct.wl1251** %8, align 8
  %157 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.wl1251_cmd_scan*, %struct.wl1251_cmd_scan** %14, align 8
  %160 = call i32 @wl1251_mem_read(%struct.wl1251* %155, i32 %158, %struct.wl1251_cmd_scan* %159, i32 80)
  %161 = load %struct.wl1251_cmd_scan*, %struct.wl1251_cmd_scan** %14, align 8
  %162 = getelementptr inbounds %struct.wl1251_cmd_scan, %struct.wl1251_cmd_scan* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @CMD_STATUS_SUCCESS, align 4
  %166 = icmp ne i32 %164, %165
  br i1 %166, label %167, label %175

167:                                              ; preds = %154
  %168 = load %struct.wl1251_cmd_scan*, %struct.wl1251_cmd_scan** %14, align 8
  %169 = getelementptr inbounds %struct.wl1251_cmd_scan, %struct.wl1251_cmd_scan* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @wl1251_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %171)
  %173 = load i32, i32* @EIO, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %16, align 4
  br label %176

175:                                              ; preds = %154
  br label %176

176:                                              ; preds = %175, %167, %151
  %177 = load %struct.wl1251_cmd_scan*, %struct.wl1251_cmd_scan** %14, align 8
  %178 = call i32 @kfree(%struct.wl1251_cmd_scan* %177)
  %179 = load i32, i32* %16, align 4
  store i32 %179, i32* %7, align 4
  br label %180

180:                                              ; preds = %176, %23
  %181 = load i32, i32* %7, align 4
  ret i32 %181
}

declare dso_local i32 @wl1251_debug(i32, i8*) #1

declare dso_local %struct.wl1251_cmd_scan* @kzalloc(i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i64) #1

declare dso_local i32 @wl1251_cmd_send(%struct.wl1251*, i32, %struct.wl1251_cmd_scan*, i32) #1

declare dso_local i32 @wl1251_error(i8*, i32) #1

declare dso_local i32 @wl1251_mem_read(%struct.wl1251*, i32, %struct.wl1251_cmd_scan*, i32) #1

declare dso_local i32 @kfree(%struct.wl1251_cmd_scan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
