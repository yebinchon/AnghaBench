; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-dm355evm.c_dm355evm_rtc_read_time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-dm355evm.c_dm355evm_rtc_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32 }
%union.evm_time = type { i32* }

@DM355EVM_MSP_RTC_0 = common dso_local global i32 0, align 4
@DM355EVM_MSP_RTC_1 = common dso_local global i32 0, align 4
@DM355EVM_MSP_RTC_2 = common dso_local global i32 0, align 4
@DM355EVM_MSP_RTC_3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"read timestamp %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @dm355evm_rtc_read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm355evm_rtc_read_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %union.evm_time, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %98, %2
  %10 = load i32, i32* @DM355EVM_MSP_RTC_0, align 4
  %11 = call i32 @dm355evm_msp_read(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %3, align 4
  br label %112

16:                                               ; preds = %9
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %16
  %20 = bitcast %union.evm_time* %6 to i32**
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %102

27:                                               ; preds = %19, %16
  %28 = load i32, i32* %7, align 4
  %29 = bitcast %union.evm_time* %6 to i32**
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* @DM355EVM_MSP_RTC_1, align 4
  %33 = call i32 @dm355evm_msp_read(i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %3, align 4
  br label %112

38:                                               ; preds = %27
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %38
  %42 = bitcast %union.evm_time* %6 to i32**
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %102

49:                                               ; preds = %41, %38
  %50 = load i32, i32* %7, align 4
  %51 = bitcast %union.evm_time* %6 to i32**
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  store i32 %50, i32* %53, align 4
  %54 = load i32, i32* @DM355EVM_MSP_RTC_2, align 4
  %55 = call i32 @dm355evm_msp_read(i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %3, align 4
  br label %112

60:                                               ; preds = %49
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %60
  %64 = bitcast %union.evm_time* %6 to i32**
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 2
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  br label %102

71:                                               ; preds = %63, %60
  %72 = load i32, i32* %7, align 4
  %73 = bitcast %union.evm_time* %6 to i32**
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 2
  store i32 %72, i32* %75, align 4
  %76 = load i32, i32* @DM355EVM_MSP_RTC_3, align 4
  %77 = call i32 @dm355evm_msp_read(i32 %76)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %71
  %81 = load i32, i32* %7, align 4
  store i32 %81, i32* %3, align 4
  br label %112

82:                                               ; preds = %71
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %82
  %86 = bitcast %union.evm_time* %6 to i32**
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 3
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  br label %102

93:                                               ; preds = %85, %82
  %94 = load i32, i32* %7, align 4
  %95 = bitcast %union.evm_time* %6 to i32**
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 3
  store i32 %94, i32* %97, align 4
  br label %98

98:                                               ; preds = %93
  %99 = load i32, i32* %8, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %8, align 4
  %101 = icmp slt i32 %100, 5
  br i1 %101, label %9, label %102

102:                                              ; preds = %98, %92, %70, %48, %26
  %103 = load %struct.device*, %struct.device** %4, align 8
  %104 = bitcast %union.evm_time* %6 to i32*
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @dev_dbg(%struct.device* %103, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %105)
  %107 = bitcast %union.evm_time* %6 to i32*
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @le32_to_cpu(i32 %108)
  %110 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %111 = call i32 @rtc_time_to_tm(i32 %109, %struct.rtc_time* %110)
  store i32 0, i32* %3, align 4
  br label %112

112:                                              ; preds = %102, %80, %58, %36, %14
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @dm355evm_msp_read(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @rtc_time_to_tm(i32, %struct.rtc_time*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
