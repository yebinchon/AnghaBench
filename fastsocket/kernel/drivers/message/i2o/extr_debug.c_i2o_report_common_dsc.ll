; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_debug.c_i2o_report_common_dsc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_debug.c_i2o_report_common_dsc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@i2o_report_common_dsc.COMMON_DSC = internal global [29 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.28, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [8 x i8] c"SUCCESS\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"0x01\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"BAD_KEY\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"TCL_ERROR\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"REPLY_BUFFER_FULL\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"NO_SUCH_PAGE\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"INSUFFICIENT_RESOURCE_SOFT\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"INSUFFICIENT_RESOURCE_HARD\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"0x08\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"CHAIN_BUFFER_TOO_LARGE\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"UNSUPPORTED_FUNCTION\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"DEVICE_LOCKED\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"DEVICE_RESET\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"INAPPROPRIATE_FUNCTION\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"INVALID_INITIATOR_ADDRESS\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"INVALID_MESSAGE_FLAGS\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"INVALID_OFFSET\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"INVALID_PARAMETER\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"INVALID_REQUEST\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"INVALID_TARGET_ADDRESS\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"MESSAGE_TOO_LARGE\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"MESSAGE_TOO_SMALL\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"MISSING_PARAMETER\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"TIMEOUT\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"UNKNOWN_ERROR\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"UNKNOWN_FUNCTION\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"UNSUPPORTED_VERSION\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"DEVICE_BUSY\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"DEVICE_NOT_AVAILABLE\00", align 1
@I2O_DSC_DEVICE_NOT_AVAILABLE = common dso_local global i64 0, align 8
@.str.29 = private unnamed_addr constant [28 x i8] c" / DetailedStatus = %0#4x.\0A\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c" / %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @i2o_report_common_dsc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2o_report_common_dsc(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = load i64, i64* @I2O_DSC_DEVICE_NOT_AVAILABLE, align 8
  %5 = icmp ugt i64 %3, %4
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i64, i64* %2, align 8
  %8 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.29, i64 0, i64 0), i64 %7)
  br label %14

9:                                                ; preds = %1
  %10 = load i64, i64* %2, align 8
  %11 = getelementptr inbounds [29 x i8*], [29 x i8*]* @i2o_report_common_dsc.COMMON_DSC, i64 0, i64 %10
  %12 = load i8*, i8** %11, align 8
  %13 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i64 0, i64 0), i8* %12)
  br label %14

14:                                               ; preds = %9, %6
  ret void
}

declare dso_local i32 @printk(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
