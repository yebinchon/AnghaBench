; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/android/extr_logger.c_get_log_from_minor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/android/extr_logger.c_get_log_from_minor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.logger_log = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@log_main = common dso_local global %struct.logger_log zeroinitializer, align 4
@log_events = common dso_local global %struct.logger_log zeroinitializer, align 4
@log_radio = common dso_local global %struct.logger_log zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.logger_log* (i32)* @get_log_from_minor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.logger_log* @get_log_from_minor(i32 %0) #0 {
  %2 = alloca %struct.logger_log*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.logger_log, %struct.logger_log* @log_main, i32 0, i32 0, i32 0), align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store %struct.logger_log* @log_main, %struct.logger_log** %2, align 8
  br label %19

8:                                                ; preds = %1
  %9 = load i32, i32* getelementptr inbounds (%struct.logger_log, %struct.logger_log* @log_events, i32 0, i32 0, i32 0), align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store %struct.logger_log* @log_events, %struct.logger_log** %2, align 8
  br label %19

13:                                               ; preds = %8
  %14 = load i32, i32* getelementptr inbounds (%struct.logger_log, %struct.logger_log* @log_radio, i32 0, i32 0, i32 0), align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store %struct.logger_log* @log_radio, %struct.logger_log** %2, align 8
  br label %19

18:                                               ; preds = %13
  store %struct.logger_log* null, %struct.logger_log** %2, align 8
  br label %19

19:                                               ; preds = %18, %17, %12, %7
  %20 = load %struct.logger_log*, %struct.logger_log** %2, align 8
  ret %struct.logger_log* %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
