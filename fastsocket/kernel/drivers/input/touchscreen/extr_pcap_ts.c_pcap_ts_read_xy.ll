; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_pcap_ts.c_pcap_ts_read_xy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_pcap_ts.c_pcap_ts_read_xy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcap_ts = type { i32, %struct.TYPE_4__*, i32, i8*, i8*, i8* }
%struct.TYPE_4__ = type { i32 }

@PRESSURE_MIN = common dso_local global i8* null, align 8
@PRESSURE_MAX = common dso_local global i8* null, align 8
@X_AXIS_MIN = common dso_local global i8* null, align 8
@X_AXIS_MAX = common dso_local global i8* null, align 8
@Y_AXIS_MIN = common dso_local global i8* null, align 8
@Y_AXIS_MAX = common dso_local global i8* null, align 8
@ABS_PRESSURE = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@PCAP_ADC_TS_M_STANDBY = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@SAMPLE_DELAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"pcap_ts: Warning, unhandled read_state %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8**)* @pcap_ts_read_xy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcap_ts_read_xy(i8* %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca %struct.pcap_ts*, align 8
  store i8* %0, i8** %3, align 8
  store i8** %1, i8*** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.pcap_ts*
  store %struct.pcap_ts* %7, %struct.pcap_ts** %5, align 8
  %8 = load %struct.pcap_ts*, %struct.pcap_ts** %5, align 8
  %9 = getelementptr inbounds %struct.pcap_ts, %struct.pcap_ts* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %128 [
    i32 129, label %11
    i32 128, label %35
  ]

11:                                               ; preds = %2
  %12 = load i8**, i8*** %4, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 0
  %14 = load i8*, i8** %13, align 8
  %15 = load i8*, i8** @PRESSURE_MIN, align 8
  %16 = icmp ugt i8* %14, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %11
  %18 = load i8**, i8*** %4, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 0
  %20 = load i8*, i8** %19, align 8
  %21 = load i8*, i8** @PRESSURE_MAX, align 8
  %22 = icmp ult i8* %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = load i8**, i8*** %4, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 0
  %26 = load i8*, i8** %25, align 8
  %27 = load %struct.pcap_ts*, %struct.pcap_ts** %5, align 8
  %28 = getelementptr inbounds %struct.pcap_ts, %struct.pcap_ts* %27, i32 0, i32 3
  store i8* %26, i8** %28, align 8
  br label %29

29:                                               ; preds = %23, %17, %11
  %30 = load %struct.pcap_ts*, %struct.pcap_ts** %5, align 8
  %31 = getelementptr inbounds %struct.pcap_ts, %struct.pcap_ts* %30, i32 0, i32 0
  store i32 128, i32* %31, align 8
  %32 = load %struct.pcap_ts*, %struct.pcap_ts** %5, align 8
  %33 = getelementptr inbounds %struct.pcap_ts, %struct.pcap_ts* %32, i32 0, i32 2
  %34 = call i32 @schedule_delayed_work(i32* %33, i32 0)
  br label %137

35:                                               ; preds = %2
  %36 = load i8**, i8*** %4, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 0
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.pcap_ts*, %struct.pcap_ts** %5, align 8
  %40 = getelementptr inbounds %struct.pcap_ts, %struct.pcap_ts* %39, i32 0, i32 4
  store i8* %38, i8** %40, align 8
  %41 = load i8**, i8*** %4, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 1
  %43 = load i8*, i8** %42, align 8
  %44 = load %struct.pcap_ts*, %struct.pcap_ts** %5, align 8
  %45 = getelementptr inbounds %struct.pcap_ts, %struct.pcap_ts* %44, i32 0, i32 5
  store i8* %43, i8** %45, align 8
  %46 = load %struct.pcap_ts*, %struct.pcap_ts** %5, align 8
  %47 = getelementptr inbounds %struct.pcap_ts, %struct.pcap_ts* %46, i32 0, i32 5
  %48 = load i8*, i8** %47, align 8
  %49 = load i8*, i8** @X_AXIS_MIN, align 8
  %50 = icmp ule i8* %48, %49
  br i1 %50, label %69, label %51

51:                                               ; preds = %35
  %52 = load %struct.pcap_ts*, %struct.pcap_ts** %5, align 8
  %53 = getelementptr inbounds %struct.pcap_ts, %struct.pcap_ts* %52, i32 0, i32 5
  %54 = load i8*, i8** %53, align 8
  %55 = load i8*, i8** @X_AXIS_MAX, align 8
  %56 = icmp uge i8* %54, %55
  br i1 %56, label %69, label %57

57:                                               ; preds = %51
  %58 = load %struct.pcap_ts*, %struct.pcap_ts** %5, align 8
  %59 = getelementptr inbounds %struct.pcap_ts, %struct.pcap_ts* %58, i32 0, i32 4
  %60 = load i8*, i8** %59, align 8
  %61 = load i8*, i8** @Y_AXIS_MIN, align 8
  %62 = icmp ule i8* %60, %61
  br i1 %62, label %69, label %63

63:                                               ; preds = %57
  %64 = load %struct.pcap_ts*, %struct.pcap_ts** %5, align 8
  %65 = getelementptr inbounds %struct.pcap_ts, %struct.pcap_ts* %64, i32 0, i32 4
  %66 = load i8*, i8** %65, align 8
  %67 = load i8*, i8** @Y_AXIS_MAX, align 8
  %68 = icmp uge i8* %66, %67
  br i1 %68, label %69, label %86

69:                                               ; preds = %63, %57, %51, %35
  %70 = load %struct.pcap_ts*, %struct.pcap_ts** %5, align 8
  %71 = getelementptr inbounds %struct.pcap_ts, %struct.pcap_ts* %70, i32 0, i32 1
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = load i32, i32* @ABS_PRESSURE, align 4
  %74 = call i32 @input_report_abs(%struct.TYPE_4__* %72, i32 %73, i8* null)
  %75 = load %struct.pcap_ts*, %struct.pcap_ts** %5, align 8
  %76 = getelementptr inbounds %struct.pcap_ts, %struct.pcap_ts* %75, i32 0, i32 1
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = load i32, i32* @BTN_TOUCH, align 4
  %79 = call i32 @input_report_key(%struct.TYPE_4__* %77, i32 %78, i32 0)
  %80 = load i32, i32* @PCAP_ADC_TS_M_STANDBY, align 4
  %81 = load %struct.pcap_ts*, %struct.pcap_ts** %5, align 8
  %82 = getelementptr inbounds %struct.pcap_ts, %struct.pcap_ts* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load %struct.pcap_ts*, %struct.pcap_ts** %5, align 8
  %84 = getelementptr inbounds %struct.pcap_ts, %struct.pcap_ts* %83, i32 0, i32 2
  %85 = call i32 @schedule_delayed_work(i32* %84, i32 0)
  br label %123

86:                                               ; preds = %63
  %87 = load %struct.pcap_ts*, %struct.pcap_ts** %5, align 8
  %88 = getelementptr inbounds %struct.pcap_ts, %struct.pcap_ts* %87, i32 0, i32 1
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = load i32, i32* @ABS_X, align 4
  %91 = load %struct.pcap_ts*, %struct.pcap_ts** %5, align 8
  %92 = getelementptr inbounds %struct.pcap_ts, %struct.pcap_ts* %91, i32 0, i32 5
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @input_report_abs(%struct.TYPE_4__* %89, i32 %90, i8* %93)
  %95 = load %struct.pcap_ts*, %struct.pcap_ts** %5, align 8
  %96 = getelementptr inbounds %struct.pcap_ts, %struct.pcap_ts* %95, i32 0, i32 1
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = load i32, i32* @ABS_Y, align 4
  %99 = load %struct.pcap_ts*, %struct.pcap_ts** %5, align 8
  %100 = getelementptr inbounds %struct.pcap_ts, %struct.pcap_ts* %99, i32 0, i32 4
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @input_report_abs(%struct.TYPE_4__* %97, i32 %98, i8* %101)
  %103 = load %struct.pcap_ts*, %struct.pcap_ts** %5, align 8
  %104 = getelementptr inbounds %struct.pcap_ts, %struct.pcap_ts* %103, i32 0, i32 1
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = load i32, i32* @BTN_TOUCH, align 4
  %107 = call i32 @input_report_key(%struct.TYPE_4__* %105, i32 %106, i32 1)
  %108 = load %struct.pcap_ts*, %struct.pcap_ts** %5, align 8
  %109 = getelementptr inbounds %struct.pcap_ts, %struct.pcap_ts* %108, i32 0, i32 1
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = load i32, i32* @ABS_PRESSURE, align 4
  %112 = load %struct.pcap_ts*, %struct.pcap_ts** %5, align 8
  %113 = getelementptr inbounds %struct.pcap_ts, %struct.pcap_ts* %112, i32 0, i32 3
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 @input_report_abs(%struct.TYPE_4__* %110, i32 %111, i8* %114)
  %116 = load %struct.pcap_ts*, %struct.pcap_ts** %5, align 8
  %117 = getelementptr inbounds %struct.pcap_ts, %struct.pcap_ts* %116, i32 0, i32 0
  store i32 129, i32* %117, align 8
  %118 = load %struct.pcap_ts*, %struct.pcap_ts** %5, align 8
  %119 = getelementptr inbounds %struct.pcap_ts, %struct.pcap_ts* %118, i32 0, i32 2
  %120 = load i32, i32* @SAMPLE_DELAY, align 4
  %121 = call i32 @msecs_to_jiffies(i32 %120)
  %122 = call i32 @schedule_delayed_work(i32* %119, i32 %121)
  br label %123

123:                                              ; preds = %86, %69
  %124 = load %struct.pcap_ts*, %struct.pcap_ts** %5, align 8
  %125 = getelementptr inbounds %struct.pcap_ts, %struct.pcap_ts* %124, i32 0, i32 1
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = call i32 @input_sync(%struct.TYPE_4__* %126)
  br label %137

128:                                              ; preds = %2
  %129 = load %struct.pcap_ts*, %struct.pcap_ts** %5, align 8
  %130 = getelementptr inbounds %struct.pcap_ts, %struct.pcap_ts* %129, i32 0, i32 1
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load %struct.pcap_ts*, %struct.pcap_ts** %5, align 8
  %134 = getelementptr inbounds %struct.pcap_ts, %struct.pcap_ts* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @dev_warn(i32* %132, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %135)
  br label %137

137:                                              ; preds = %128, %123, %29
  ret void
}

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @input_report_abs(%struct.TYPE_4__*, i32, i8*) #1

declare dso_local i32 @input_report_key(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @input_sync(%struct.TYPE_4__*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
