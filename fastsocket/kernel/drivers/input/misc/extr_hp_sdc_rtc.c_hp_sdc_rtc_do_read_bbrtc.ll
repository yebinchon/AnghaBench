; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_hp_sdc_rtc.c_hp_sdc_rtc_do_read_bbrtc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_hp_sdc_rtc.c_hp_sdc_rtc_do_read_bbrtc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.semaphore = type { i32 }
%struct.TYPE_5__ = type { i32, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.semaphore* }

@HP_SDC_ACT_DATAREG = common dso_local global i32 0, align 4
@HP_SDC_ACT_POSTCMD = common dso_local global i32 0, align 4
@HP_SDC_ACT_DATAIN = common dso_local global i32 0, align 4
@HP_SDC_CMD_DO_RTCR = common dso_local global i32 0, align 4
@HP_SDC_ACT_SEMAPHORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtc_time*)* @hp_sdc_rtc_do_read_bbrtc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hp_sdc_rtc_do_read_bbrtc(%struct.rtc_time* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtc_time*, align 8
  %4 = alloca %struct.semaphore, align 4
  %5 = alloca %struct.TYPE_5__, align 8
  %6 = alloca [91 x i32], align 16
  %7 = alloca i32, align 4
  store %struct.rtc_time* %0, %struct.rtc_time** %3, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %11, %1
  %9 = load i32, i32* %7, align 4
  %10 = icmp slt i32 %9, 91
  br i1 %10, label %11, label %45

11:                                               ; preds = %8
  %12 = load i32, i32* @HP_SDC_ACT_DATAREG, align 4
  %13 = load i32, i32* @HP_SDC_ACT_POSTCMD, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @HP_SDC_ACT_DATAIN, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* %7, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %7, align 4
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds [91 x i32], [91 x i32]* %6, i64 0, i64 %19
  store i32 %16, i32* %20, align 4
  %21 = load i32, i32* %7, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %7, align 4
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds [91 x i32], [91 x i32]* %6, i64 0, i64 %23
  store i32 1, i32* %24, align 4
  %25 = load i32, i32* %7, align 4
  %26 = sdiv i32 %25, 7
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [91 x i32], [91 x i32]* %6, i64 0, i64 %28
  store i32 %26, i32* %29, align 4
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* @HP_SDC_CMD_DO_RTCR, align 4
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %7, align 4
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds [91 x i32], [91 x i32]* %6, i64 0, i64 %35
  store i32 %32, i32* %36, align 4
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds [91 x i32], [91 x i32]* %6, i64 0, i64 %39
  store i32 2, i32* %40, align 4
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %8

45:                                               ; preds = %8
  %46 = load i32, i32* @HP_SDC_ACT_SEMAPHORE, align 4
  %47 = getelementptr inbounds [91 x i32], [91 x i32]* %6, i64 0, i64 84
  %48 = load i32, i32* %47, align 16
  %49 = or i32 %48, %46
  store i32 %49, i32* %47, align 16
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i32 91, i32* %50, align 8
  %51 = getelementptr inbounds [91 x i32], [91 x i32]* %6, i64 0, i64 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  store i32* %51, i32** %52, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store %struct.semaphore* %4, %struct.semaphore** %54, align 8
  %55 = call i32 @init_MUTEX_LOCKED(%struct.semaphore* %4)
  %56 = call i64 @hp_sdc_enqueue_transaction(%struct.TYPE_5__* %5)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %45
  store i32 -1, i32* %2, align 4
  br label %167

59:                                               ; preds = %45
  %60 = call i32 @down_interruptible(%struct.semaphore* %4)
  %61 = getelementptr inbounds [91 x i32], [91 x i32]* %6, i64 0, i64 83
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds [91 x i32], [91 x i32]* %6, i64 0, i64 90
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %62, %64
  %66 = getelementptr inbounds [91 x i32], [91 x i32]* %6, i64 0, i64 69
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %65, %67
  %69 = getelementptr inbounds [91 x i32], [91 x i32]* %6, i64 0, i64 76
  %70 = load i32, i32* %69, align 16
  %71 = or i32 %68, %70
  %72 = getelementptr inbounds [91 x i32], [91 x i32]* %6, i64 0, i64 55
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %71, %73
  %75 = getelementptr inbounds [91 x i32], [91 x i32]* %6, i64 0, i64 62
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %74, %76
  %78 = getelementptr inbounds [91 x i32], [91 x i32]* %6, i64 0, i64 34
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %77, %79
  %81 = getelementptr inbounds [91 x i32], [91 x i32]* %6, i64 0, i64 41
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %80, %82
  %84 = getelementptr inbounds [91 x i32], [91 x i32]* %6, i64 0, i64 20
  %85 = load i32, i32* %84, align 16
  %86 = or i32 %83, %85
  %87 = getelementptr inbounds [91 x i32], [91 x i32]* %6, i64 0, i64 27
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %86, %88
  %90 = getelementptr inbounds [91 x i32], [91 x i32]* %6, i64 0, i64 6
  %91 = load i32, i32* %90, align 8
  %92 = or i32 %89, %91
  %93 = getelementptr inbounds [91 x i32], [91 x i32]* %6, i64 0, i64 13
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %92, %94
  %96 = and i32 %95, 15
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %59
  store i32 -1, i32* %2, align 4
  br label %167

99:                                               ; preds = %59
  %100 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %101 = call i32 @memset(%struct.rtc_time* %100, i32 0, i32 28)
  %102 = getelementptr inbounds [91 x i32], [91 x i32]* %6, i64 0, i64 83
  %103 = load i32, i32* %102, align 4
  %104 = and i32 %103, 15
  %105 = getelementptr inbounds [91 x i32], [91 x i32]* %6, i64 0, i64 90
  %106 = load i32, i32* %105, align 8
  %107 = and i32 %106, 15
  %108 = mul nsw i32 %107, 10
  %109 = add nsw i32 %104, %108
  %110 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %111 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 4
  %112 = getelementptr inbounds [91 x i32], [91 x i32]* %6, i64 0, i64 69
  %113 = load i32, i32* %112, align 4
  %114 = and i32 %113, 15
  %115 = getelementptr inbounds [91 x i32], [91 x i32]* %6, i64 0, i64 76
  %116 = load i32, i32* %115, align 16
  %117 = and i32 %116, 15
  %118 = mul nsw i32 %117, 10
  %119 = add nsw i32 %114, %118
  %120 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %121 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  %122 = getelementptr inbounds [91 x i32], [91 x i32]* %6, i64 0, i64 55
  %123 = load i32, i32* %122, align 4
  %124 = and i32 %123, 15
  %125 = getelementptr inbounds [91 x i32], [91 x i32]* %6, i64 0, i64 62
  %126 = load i32, i32* %125, align 8
  %127 = and i32 %126, 15
  %128 = mul nsw i32 %127, 10
  %129 = add nsw i32 %124, %128
  %130 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %131 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %130, i32 0, i32 2
  store i32 %129, i32* %131, align 4
  %132 = getelementptr inbounds [91 x i32], [91 x i32]* %6, i64 0, i64 48
  %133 = load i32, i32* %132, align 16
  %134 = and i32 %133, 15
  %135 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %136 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %135, i32 0, i32 3
  store i32 %134, i32* %136, align 4
  %137 = getelementptr inbounds [91 x i32], [91 x i32]* %6, i64 0, i64 34
  %138 = load i32, i32* %137, align 8
  %139 = and i32 %138, 15
  %140 = getelementptr inbounds [91 x i32], [91 x i32]* %6, i64 0, i64 41
  %141 = load i32, i32* %140, align 4
  %142 = and i32 %141, 15
  %143 = mul nsw i32 %142, 10
  %144 = add nsw i32 %139, %143
  %145 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %146 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %145, i32 0, i32 4
  store i32 %144, i32* %146, align 4
  %147 = getelementptr inbounds [91 x i32], [91 x i32]* %6, i64 0, i64 20
  %148 = load i32, i32* %147, align 16
  %149 = and i32 %148, 15
  %150 = getelementptr inbounds [91 x i32], [91 x i32]* %6, i64 0, i64 27
  %151 = load i32, i32* %150, align 4
  %152 = and i32 %151, 15
  %153 = mul nsw i32 %152, 10
  %154 = add nsw i32 %149, %153
  %155 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %156 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %155, i32 0, i32 5
  store i32 %154, i32* %156, align 4
  %157 = getelementptr inbounds [91 x i32], [91 x i32]* %6, i64 0, i64 6
  %158 = load i32, i32* %157, align 8
  %159 = and i32 %158, 15
  %160 = getelementptr inbounds [91 x i32], [91 x i32]* %6, i64 0, i64 13
  %161 = load i32, i32* %160, align 4
  %162 = and i32 %161, 15
  %163 = mul nsw i32 %162, 10
  %164 = add nsw i32 %159, %163
  %165 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %166 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %165, i32 0, i32 6
  store i32 %164, i32* %166, align 4
  store i32 0, i32* %2, align 4
  br label %167

167:                                              ; preds = %99, %98, %58
  %168 = load i32, i32* %2, align 4
  ret i32 %168
}

declare dso_local i32 @init_MUTEX_LOCKED(%struct.semaphore*) #1

declare dso_local i64 @hp_sdc_enqueue_transaction(%struct.TYPE_5__*) #1

declare dso_local i32 @down_interruptible(%struct.semaphore*) #1

declare dso_local i32 @memset(%struct.rtc_time*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
