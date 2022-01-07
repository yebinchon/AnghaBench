; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv0900_sw.c_stv0900_dvbs1_acq_workaround.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv0900_sw.c_stv0900_dvbs1_acq_workaround.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.stv0900_state* }
%struct.stv0900_state = type { i32, %struct.stv0900_internal* }
%struct.stv0900_internal = type { i64*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i8* }

@STV0900_NODATA = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@HEADER_MODE = common dso_local global i32 0, align 4
@STV0900_DVBS_FOUND = common dso_local global i64 0, align 8
@STV0900_BLIND_SEARCH = common dso_local global i64 0, align 8
@STV0900_WARM_START = common dso_local global i32 0, align 4
@CFR2 = common dso_local global i32 0, align 4
@CFR1 = common dso_local global i32 0, align 4
@CFR_AUTOSCAN = common dso_local global i32 0, align 4
@SPECINV_CONTROL = common dso_local global i32 0, align 4
@STV0900_IQ_FORCE_SWAPPED = common dso_local global i32 0, align 4
@DMDISTATE = common dso_local global i32 0, align 4
@CFRINIT1 = common dso_local global i32 0, align 4
@CFRINIT0 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@STV0900_IQ_FORCE_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @stv0900_dvbs1_acq_workaround to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv0900_dvbs1_acq_workaround(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.stv0900_state*, align 8
  %4 = alloca %struct.stv0900_internal*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 0
  %14 = load %struct.stv0900_state*, %struct.stv0900_state** %13, align 8
  store %struct.stv0900_state* %14, %struct.stv0900_state** %3, align 8
  %15 = load %struct.stv0900_state*, %struct.stv0900_state** %3, align 8
  %16 = getelementptr inbounds %struct.stv0900_state, %struct.stv0900_state* %15, i32 0, i32 1
  %17 = load %struct.stv0900_internal*, %struct.stv0900_internal** %16, align 8
  store %struct.stv0900_internal* %17, %struct.stv0900_internal** %4, align 8
  %18 = load %struct.stv0900_state*, %struct.stv0900_state** %3, align 8
  %19 = getelementptr inbounds %struct.stv0900_state, %struct.stv0900_state* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* @STV0900_NODATA, align 4
  store i32 %21, i32* %6, align 4
  %22 = load i8*, i8** @FALSE, align 8
  %23 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %24 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i8* %22, i8** %29, align 8
  %30 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %31 = load i32, i32* @HEADER_MODE, align 4
  %32 = call i64 @stv0900_get_bits(%struct.stv0900_internal* %30, i32 %31)
  %33 = load i64, i64* @STV0900_DVBS_FOUND, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %161

35:                                               ; preds = %1
  %36 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %37 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %38 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @stv0900_get_symbol_rate(%struct.stv0900_internal* %36, i32 %39, i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i64 @stv0900_get_timing_offst(%struct.stv0900_internal* %42, i32 %43, i32 %44)
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %47, %45
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %7, align 4
  %50 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %51 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @STV0900_BLIND_SEARCH, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %35
  %60 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %61 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %62 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @stv0900_set_symbol_rate(%struct.stv0900_internal* %60, i32 %63, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %59, %35
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @STV0900_WARM_START, align 4
  %70 = call i32 @stv0900_get_lock_timeout(i32* %8, i32* %9, i32 %68, i32 %69)
  %71 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %72 = load i32, i32* @CFR2, align 4
  %73 = call i32 @stv0900_read_reg(%struct.stv0900_internal* %71, i32 %72)
  store i32 %73, i32* %10, align 4
  %74 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %75 = load i32, i32* @CFR1, align 4
  %76 = call i32 @stv0900_read_reg(%struct.stv0900_internal* %74, i32 %75)
  store i32 %76, i32* %11, align 4
  %77 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %78 = load i32, i32* @CFR_AUTOSCAN, align 4
  %79 = call i32 @stv0900_write_bits(%struct.stv0900_internal* %77, i32 %78, i32 0)
  %80 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %81 = load i32, i32* @SPECINV_CONTROL, align 4
  %82 = load i32, i32* @STV0900_IQ_FORCE_SWAPPED, align 4
  %83 = call i32 @stv0900_write_bits(%struct.stv0900_internal* %80, i32 %81, i32 %82)
  %84 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %85 = load i32, i32* @DMDISTATE, align 4
  %86 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %84, i32 %85, i32 28)
  %87 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %88 = load i32, i32* @CFRINIT1, align 4
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %87, i32 %88, i32 %89)
  %91 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %92 = load i32, i32* @CFRINIT0, align 4
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %91, i32 %92, i32 %93)
  %95 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %96 = load i32, i32* @DMDISTATE, align 4
  %97 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %95, i32 %96, i32 24)
  %98 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %9, align 4
  %102 = call i64 @stv0900_wait_for_lock(%struct.stv0900_internal* %98, i32 %99, i32 %100, i32 %101)
  %103 = load i64, i64* @TRUE, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %119

105:                                              ; preds = %67
  %106 = load i64, i64* @TRUE, align 8
  %107 = inttoptr i64 %106 to i8*
  %108 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %109 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %108, i32 0, i32 1
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = load i32, i32* %5, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  store i8* %107, i8** %114, align 8
  %115 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %116 = call i32 @stv0900_get_signal_params(%struct.dvb_frontend* %115)
  store i32 %116, i32* %6, align 4
  %117 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %118 = call i32 @stv0900_track_optimization(%struct.dvb_frontend* %117)
  br label %160

119:                                              ; preds = %67
  %120 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %121 = load i32, i32* @SPECINV_CONTROL, align 4
  %122 = load i32, i32* @STV0900_IQ_FORCE_NORMAL, align 4
  %123 = call i32 @stv0900_write_bits(%struct.stv0900_internal* %120, i32 %121, i32 %122)
  %124 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %125 = load i32, i32* @DMDISTATE, align 4
  %126 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %124, i32 %125, i32 28)
  %127 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %128 = load i32, i32* @CFRINIT1, align 4
  %129 = load i32, i32* %10, align 4
  %130 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %127, i32 %128, i32 %129)
  %131 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %132 = load i32, i32* @CFRINIT0, align 4
  %133 = load i32, i32* %11, align 4
  %134 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %131, i32 %132, i32 %133)
  %135 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %136 = load i32, i32* @DMDISTATE, align 4
  %137 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %135, i32 %136, i32 24)
  %138 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %139 = load i32, i32* %5, align 4
  %140 = load i32, i32* %8, align 4
  %141 = load i32, i32* %9, align 4
  %142 = call i64 @stv0900_wait_for_lock(%struct.stv0900_internal* %138, i32 %139, i32 %140, i32 %141)
  %143 = load i64, i64* @TRUE, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %159

145:                                              ; preds = %119
  %146 = load i64, i64* @TRUE, align 8
  %147 = inttoptr i64 %146 to i8*
  %148 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %149 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %148, i32 0, i32 1
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** %149, align 8
  %151 = load i32, i32* %5, align 4
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 0
  store i8* %147, i8** %154, align 8
  %155 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %156 = call i32 @stv0900_get_signal_params(%struct.dvb_frontend* %155)
  store i32 %156, i32* %6, align 4
  %157 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %158 = call i32 @stv0900_track_optimization(%struct.dvb_frontend* %157)
  br label %159

159:                                              ; preds = %145, %119
  br label %160

160:                                              ; preds = %159, %105
  br label %170

161:                                              ; preds = %1
  %162 = load i8*, i8** @FALSE, align 8
  %163 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %164 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %163, i32 0, i32 1
  %165 = load %struct.TYPE_2__*, %struct.TYPE_2__** %164, align 8
  %166 = load i32, i32* %5, align 4
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 0
  store i8* %162, i8** %169, align 8
  br label %170

170:                                              ; preds = %161, %160
  %171 = load i32, i32* %6, align 4
  ret i32 %171
}

declare dso_local i64 @stv0900_get_bits(%struct.stv0900_internal*, i32) #1

declare dso_local i32 @stv0900_get_symbol_rate(%struct.stv0900_internal*, i32, i32) #1

declare dso_local i64 @stv0900_get_timing_offst(%struct.stv0900_internal*, i32, i32) #1

declare dso_local i32 @stv0900_set_symbol_rate(%struct.stv0900_internal*, i32, i32, i32) #1

declare dso_local i32 @stv0900_get_lock_timeout(i32*, i32*, i32, i32) #1

declare dso_local i32 @stv0900_read_reg(%struct.stv0900_internal*, i32) #1

declare dso_local i32 @stv0900_write_bits(%struct.stv0900_internal*, i32, i32) #1

declare dso_local i32 @stv0900_write_reg(%struct.stv0900_internal*, i32, i32) #1

declare dso_local i64 @stv0900_wait_for_lock(%struct.stv0900_internal*, i32, i32, i32) #1

declare dso_local i32 @stv0900_get_signal_params(%struct.dvb_frontend*) #1

declare dso_local i32 @stv0900_track_optimization(%struct.dvb_frontend*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
