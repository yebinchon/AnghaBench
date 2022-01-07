; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_ads7846.c_ads7846_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_ads7846.c_ads7846_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ads7846 = type { i32, i32, i32, i32, i32, %struct.TYPE_4__*, i64, %struct.input_dev*, i64, %struct.ads7846_packet* }
%struct.TYPE_4__ = type { i32 }
%struct.input_dev = type { i32 }
%struct.ads7846_packet = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i64 }

@MAX_12BIT = common dso_local global i32 0, align 4
@TS_POLL_PERIOD = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ads7846_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ads7846_rx(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ads7846*, align 8
  %4 = alloca %struct.ads7846_packet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.input_dev*, align 8
  store i8* %0, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = bitcast i8* %11 to %struct.ads7846*
  store %struct.ads7846* %12, %struct.ads7846** %3, align 8
  %13 = load %struct.ads7846*, %struct.ads7846** %3, align 8
  %14 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %13, i32 0, i32 9
  %15 = load %struct.ads7846_packet*, %struct.ads7846_packet** %14, align 8
  store %struct.ads7846_packet* %15, %struct.ads7846_packet** %4, align 8
  %16 = load %struct.ads7846_packet*, %struct.ads7846_packet** %4, align 8
  %17 = getelementptr inbounds %struct.ads7846_packet, %struct.ads7846_packet* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %6, align 4
  %20 = load %struct.ads7846_packet*, %struct.ads7846_packet** %4, align 8
  %21 = getelementptr inbounds %struct.ads7846_packet, %struct.ads7846_packet* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %7, align 4
  %24 = load %struct.ads7846_packet*, %struct.ads7846_packet** %4, align 8
  %25 = getelementptr inbounds %struct.ads7846_packet, %struct.ads7846_packet* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %8, align 4
  %28 = load %struct.ads7846_packet*, %struct.ads7846_packet** %4, align 8
  %29 = getelementptr inbounds %struct.ads7846_packet, %struct.ads7846_packet* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @MAX_12BIT, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %35, %1
  %37 = load %struct.ads7846*, %struct.ads7846** %3, align 8
  %38 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 7843
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load %struct.ads7846*, %struct.ads7846** %3, align 8
  %43 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sdiv i32 %44, 2
  store i32 %45, i32* %5, align 4
  br label %78

46:                                               ; preds = %36
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br label %52

52:                                               ; preds = %49, %46
  %53 = phi i1 [ false, %46 ], [ %51, %49 ]
  %54 = zext i1 %53 to i32
  %55 = call i64 @likely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %76

57:                                               ; preds = %52
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %5, align 4
  %61 = sub i32 %60, %59
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %5, align 4
  %64 = mul i32 %63, %62
  store i32 %64, i32* %5, align 4
  %65 = load %struct.ads7846*, %struct.ads7846** %3, align 8
  %66 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = mul i32 %68, %67
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %5, align 4
  %72 = udiv i32 %71, %70
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = add i32 %73, 2047
  %75 = lshr i32 %74, 12
  store i32 %75, i32* %5, align 4
  br label %77

76:                                               ; preds = %52
  store i32 0, i32* %5, align 4
  br label %77

77:                                               ; preds = %76, %57
  br label %78

78:                                               ; preds = %77, %41
  %79 = load %struct.ads7846_packet*, %struct.ads7846_packet** %4, align 8
  %80 = getelementptr inbounds %struct.ads7846_packet, %struct.ads7846_packet* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 4
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %78
  %85 = load i32, i32* %5, align 4
  %86 = load %struct.ads7846*, %struct.ads7846** %3, align 8
  %87 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp ugt i32 %85, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %84, %78
  %91 = load %struct.ads7846*, %struct.ads7846** %3, align 8
  %92 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %91, i32 0, i32 4
  %93 = load i32, i32* @TS_POLL_PERIOD, align 4
  %94 = call i32 @ktime_set(i32 0, i32 %93)
  %95 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %96 = call i32 @hrtimer_start(i32* %92, i32 %94, i32 %95)
  br label %160

97:                                               ; preds = %84
  %98 = load %struct.ads7846*, %struct.ads7846** %3, align 8
  %99 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %98, i32 0, i32 8
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %97
  %103 = load %struct.ads7846*, %struct.ads7846** %3, align 8
  %104 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %103, i32 0, i32 8
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @udelay(i64 %105)
  %107 = load %struct.ads7846*, %struct.ads7846** %3, align 8
  %108 = call i32 @get_pendown_state(%struct.ads7846* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %102
  store i32 0, i32* %5, align 4
  br label %111

111:                                              ; preds = %110, %102
  br label %112

112:                                              ; preds = %111, %97
  %113 = load i32, i32* %5, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %153

115:                                              ; preds = %112
  %116 = load %struct.ads7846*, %struct.ads7846** %3, align 8
  %117 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %116, i32 0, i32 7
  %118 = load %struct.input_dev*, %struct.input_dev** %117, align 8
  store %struct.input_dev* %118, %struct.input_dev** %10, align 8
  %119 = load %struct.ads7846*, %struct.ads7846** %3, align 8
  %120 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %129, label %123

123:                                              ; preds = %115
  %124 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %125 = load i32, i32* @BTN_TOUCH, align 4
  %126 = call i32 @input_report_key(%struct.input_dev* %124, i32 %125, i32 1)
  %127 = load %struct.ads7846*, %struct.ads7846** %3, align 8
  %128 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %127, i32 0, i32 3
  store i32 1, i32* %128, align 4
  br label %129

129:                                              ; preds = %123, %115
  %130 = load %struct.ads7846*, %struct.ads7846** %3, align 8
  %131 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %130, i32 0, i32 6
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %129
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* %7, align 4
  %137 = call i32 @swap(i32 %135, i32 %136)
  br label %138

138:                                              ; preds = %134, %129
  %139 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %140 = load i32, i32* @ABS_X, align 4
  %141 = load i32, i32* %6, align 4
  %142 = call i32 @input_report_abs(%struct.input_dev* %139, i32 %140, i32 %141)
  %143 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %144 = load i32, i32* @ABS_Y, align 4
  %145 = load i32, i32* %7, align 4
  %146 = call i32 @input_report_abs(%struct.input_dev* %143, i32 %144, i32 %145)
  %147 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %148 = load i32, i32* @ABS_PRESSURE, align 4
  %149 = load i32, i32* %5, align 4
  %150 = call i32 @input_report_abs(%struct.input_dev* %147, i32 %148, i32 %149)
  %151 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %152 = call i32 @input_sync(%struct.input_dev* %151)
  br label %153

153:                                              ; preds = %138, %112
  %154 = load %struct.ads7846*, %struct.ads7846** %3, align 8
  %155 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %154, i32 0, i32 4
  %156 = load i32, i32* @TS_POLL_PERIOD, align 4
  %157 = call i32 @ktime_set(i32 0, i32 %156)
  %158 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %159 = call i32 @hrtimer_start(i32* %155, i32 %157, i32 %158)
  br label %160

160:                                              ; preds = %153, %90
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @hrtimer_start(i32*, i32, i32) #1

declare dso_local i32 @ktime_set(i32, i32) #1

declare dso_local i32 @udelay(i64) #1

declare dso_local i32 @get_pendown_state(%struct.ads7846*) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @swap(i32, i32) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
