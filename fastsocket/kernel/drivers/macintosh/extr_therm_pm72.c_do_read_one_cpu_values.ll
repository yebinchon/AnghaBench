; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_therm_pm72.c_do_read_one_cpu_values.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_therm_pm72.c_do_read_one_cpu_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_pid_state = type { i32, i32, i64, i32, i32, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@cpu_pid_type = common dso_local global i64 0, align 8
@CPU_PID_TYPE_RACKMAC = common dso_local global i64 0, align 8
@CPU_A1_FAN_RPM_INDEX = common dso_local global i32 0, align 4
@CPU_B1_FAN_RPM_INDEX = common dso_local global i32 0, align 4
@CPUA_EXHAUST_FAN_RPM_INDEX = common dso_local global i32 0, align 4
@CPUB_EXHAUST_FAN_RPM_INDEX = common dso_local global i32 0, align 4
@RPM_PID_USE_ACTUAL_SPEED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"  cpu %d, fan reading error !\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"  cpu %d, exhaust RPM: %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"  cpu %d, temp reading error !\0A\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"  cpu %d, temp raw: %04x, m_diode: %04x, b_diode: %04x\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"  temp: %d.%03d\0A\00", align 1
@ADC_CPU_VOLTAGE_SCALE = common dso_local global i32 0, align 4
@ADC_CPU_CURRENT_SCALE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [64 x i8] c"  cpu %d, current: %d.%03d, voltage: %d.%03d, power: %d.%03d W\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpu_pid_state*, i32*, i32*)* @do_read_one_cpu_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_read_one_cpu_values(%struct.cpu_pid_state* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.cpu_pid_state*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cpu_pid_state* %0, %struct.cpu_pid_state** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.cpu_pid_state*, %struct.cpu_pid_state** %4, align 8
  %13 = getelementptr inbounds %struct.cpu_pid_state, %struct.cpu_pid_state* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32*, i32** %5, align 8
  store i32 %14, i32* %15, align 4
  %16 = load %struct.cpu_pid_state*, %struct.cpu_pid_state** %4, align 8
  %17 = getelementptr inbounds %struct.cpu_pid_state, %struct.cpu_pid_state* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %6, align 8
  store i32 %18, i32* %19, align 4
  %20 = load i64, i64* @cpu_pid_type, align 8
  %21 = load i64, i64* @CPU_PID_TYPE_RACKMAC, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %3
  %24 = load %struct.cpu_pid_state*, %struct.cpu_pid_state** %4, align 8
  %25 = getelementptr inbounds %struct.cpu_pid_state, %struct.cpu_pid_state* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @CPU_A1_FAN_RPM_INDEX, align 4
  br label %32

30:                                               ; preds = %23
  %31 = load i32, i32* @CPU_B1_FAN_RPM_INDEX, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  store i32 %33, i32* %10, align 4
  br label %45

34:                                               ; preds = %3
  %35 = load %struct.cpu_pid_state*, %struct.cpu_pid_state** %4, align 8
  %36 = getelementptr inbounds %struct.cpu_pid_state, %struct.cpu_pid_state* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @CPUA_EXHAUST_FAN_RPM_INDEX, align 4
  br label %43

41:                                               ; preds = %34
  %42 = load i32, i32* @CPUB_EXHAUST_FAN_RPM_INDEX, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  store i32 %44, i32* %10, align 4
  br label %45

45:                                               ; preds = %43, %32
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @RPM_PID_USE_ACTUAL_SPEED, align 4
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i32 @get_rpm_fan(i32 %46, i32 %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %45
  %55 = load %struct.cpu_pid_state*, %struct.cpu_pid_state** %4, align 8
  %56 = getelementptr inbounds %struct.cpu_pid_state, %struct.cpu_pid_state* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = call i32 (i8*, i64, ...) @DBG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %57)
  br label %70

59:                                               ; preds = %45
  %60 = load i32, i32* %11, align 4
  %61 = load %struct.cpu_pid_state*, %struct.cpu_pid_state** %4, align 8
  %62 = getelementptr inbounds %struct.cpu_pid_state, %struct.cpu_pid_state* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 8
  %63 = load %struct.cpu_pid_state*, %struct.cpu_pid_state** %4, align 8
  %64 = getelementptr inbounds %struct.cpu_pid_state, %struct.cpu_pid_state* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.cpu_pid_state*, %struct.cpu_pid_state** %4, align 8
  %67 = getelementptr inbounds %struct.cpu_pid_state, %struct.cpu_pid_state* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = call i32 (i8*, i64, ...) @DBG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %65, i32 %68)
  br label %70

70:                                               ; preds = %59, %54
  %71 = load %struct.cpu_pid_state*, %struct.cpu_pid_state** %4, align 8
  %72 = call i32 @read_smon_adc(%struct.cpu_pid_state* %71, i32 1)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %75, label %90

75:                                               ; preds = %70
  %76 = load %struct.cpu_pid_state*, %struct.cpu_pid_state** %4, align 8
  %77 = getelementptr inbounds %struct.cpu_pid_state, %struct.cpu_pid_state* %76, i32 0, i32 9
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %75
  %83 = load i32, i32* @EIO, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %11, align 4
  br label %85

85:                                               ; preds = %82, %75
  %86 = load %struct.cpu_pid_state*, %struct.cpu_pid_state** %4, align 8
  %87 = getelementptr inbounds %struct.cpu_pid_state, %struct.cpu_pid_state* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = call i32 (i8*, i64, ...) @DBG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %88)
  br label %127

90:                                               ; preds = %70
  %91 = load %struct.cpu_pid_state*, %struct.cpu_pid_state** %4, align 8
  %92 = getelementptr inbounds %struct.cpu_pid_state, %struct.cpu_pid_state* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = load %struct.cpu_pid_state*, %struct.cpu_pid_state** %4, align 8
  %96 = getelementptr inbounds %struct.cpu_pid_state, %struct.cpu_pid_state* %95, i32 0, i32 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.cpu_pid_state*, %struct.cpu_pid_state** %4, align 8
  %100 = getelementptr inbounds %struct.cpu_pid_state, %struct.cpu_pid_state* %99, i32 0, i32 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (i8*, i64, ...) @DBG(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i64 %93, i32 %94, i32 %98, i32 %102)
  %104 = load i32, i32* %7, align 4
  %105 = load %struct.cpu_pid_state*, %struct.cpu_pid_state** %4, align 8
  %106 = getelementptr inbounds %struct.cpu_pid_state, %struct.cpu_pid_state* %105, i32 0, i32 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = mul nsw i32 %104, %108
  %110 = load %struct.cpu_pid_state*, %struct.cpu_pid_state** %4, align 8
  %111 = getelementptr inbounds %struct.cpu_pid_state, %struct.cpu_pid_state* %110, i32 0, i32 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = shl i32 %113, 12
  %115 = add nsw i32 %109, %114
  %116 = ashr i32 %115, 2
  %117 = load i32*, i32** %5, align 8
  store i32 %116, i32* %117, align 4
  %118 = load i32*, i32** %5, align 8
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.cpu_pid_state*, %struct.cpu_pid_state** %4, align 8
  %121 = getelementptr inbounds %struct.cpu_pid_state, %struct.cpu_pid_state* %120, i32 0, i32 4
  store i32 %119, i32* %121, align 4
  %122 = load i32*, i32** %5, align 8
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @FIX32TOPRINT(i32 %123)
  %125 = sext i32 %124 to i64
  %126 = call i32 (i8*, i64, ...) @DBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i64 %125)
  br label %127

127:                                              ; preds = %90, %85
  %128 = load %struct.cpu_pid_state*, %struct.cpu_pid_state** %4, align 8
  %129 = call i32 @read_smon_adc(%struct.cpu_pid_state* %128, i32 3)
  store i32 %129, i32* %8, align 4
  %130 = load %struct.cpu_pid_state*, %struct.cpu_pid_state** %4, align 8
  %131 = call i32 @read_smon_adc(%struct.cpu_pid_state* %130, i32 4)
  store i32 %131, i32* %9, align 4
  %132 = load i32, i32* @ADC_CPU_VOLTAGE_SCALE, align 4
  %133 = load i32, i32* %8, align 4
  %134 = mul nsw i32 %133, %132
  store i32 %134, i32* %8, align 4
  %135 = load i32, i32* @ADC_CPU_CURRENT_SCALE, align 4
  %136 = load i32, i32* %9, align 4
  %137 = mul nsw i32 %136, %135
  store i32 %137, i32* %9, align 4
  %138 = load i32, i32* %8, align 4
  %139 = load i32, i32* %9, align 4
  %140 = mul nsw i32 %138, %139
  %141 = ashr i32 %140, 16
  %142 = load i32*, i32** %6, align 8
  store i32 %141, i32* %142, align 4
  %143 = load i32, i32* %8, align 4
  %144 = load %struct.cpu_pid_state*, %struct.cpu_pid_state** %4, align 8
  %145 = getelementptr inbounds %struct.cpu_pid_state, %struct.cpu_pid_state* %144, i32 0, i32 5
  store i32 %143, i32* %145, align 8
  %146 = load i32, i32* %9, align 4
  %147 = load %struct.cpu_pid_state*, %struct.cpu_pid_state** %4, align 8
  %148 = getelementptr inbounds %struct.cpu_pid_state, %struct.cpu_pid_state* %147, i32 0, i32 6
  store i32 %146, i32* %148, align 4
  %149 = load i32*, i32** %6, align 8
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.cpu_pid_state*, %struct.cpu_pid_state** %4, align 8
  %152 = getelementptr inbounds %struct.cpu_pid_state, %struct.cpu_pid_state* %151, i32 0, i32 7
  store i32 %150, i32* %152, align 8
  %153 = load %struct.cpu_pid_state*, %struct.cpu_pid_state** %4, align 8
  %154 = getelementptr inbounds %struct.cpu_pid_state, %struct.cpu_pid_state* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.cpu_pid_state*, %struct.cpu_pid_state** %4, align 8
  %157 = getelementptr inbounds %struct.cpu_pid_state, %struct.cpu_pid_state* %156, i32 0, i32 6
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @FIX32TOPRINT(i32 %158)
  %160 = load %struct.cpu_pid_state*, %struct.cpu_pid_state** %4, align 8
  %161 = getelementptr inbounds %struct.cpu_pid_state, %struct.cpu_pid_state* %160, i32 0, i32 5
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @FIX32TOPRINT(i32 %162)
  %164 = load i32*, i32** %6, align 8
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @FIX32TOPRINT(i32 %165)
  %167 = call i32 (i8*, i64, ...) @DBG(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i64 0, i64 0), i64 %155, i32 %159, i32 %163, i32 %166)
  ret i32 0
}

declare dso_local i32 @get_rpm_fan(i32, i32) #1

declare dso_local i32 @DBG(i8*, i64, ...) #1

declare dso_local i32 @read_smon_adc(%struct.cpu_pid_state*, i32) #1

declare dso_local i32 @FIX32TOPRINT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
