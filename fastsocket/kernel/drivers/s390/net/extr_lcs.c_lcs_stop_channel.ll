; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_lcs.c_lcs_stop_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_lcs.c_lcs_stop_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcs_channel = type { i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@LCS_CH_STATE_STOPPED = common dso_local global i64 0, align 8
@trace = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"haltsch\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@LCS_CH_STATE_INIT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"ehsc%s\00", align 1
@LCS_CH_STATE_HALTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lcs_channel*)* @lcs_stop_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lcs_stop_channel(%struct.lcs_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lcs_channel*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.lcs_channel* %0, %struct.lcs_channel** %3, align 8
  %6 = load %struct.lcs_channel*, %struct.lcs_channel** %3, align 8
  %7 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @LCS_CH_STATE_STOPPED, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %67

12:                                               ; preds = %1
  %13 = load i32, i32* @trace, align 4
  %14 = call i32 @LCS_DBF_TEXT(i32 4, i32 %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @trace, align 4
  %16 = load %struct.lcs_channel*, %struct.lcs_channel** %3, align 8
  %17 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %16, i32 0, i32 2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = call i32 @dev_name(i32* %19)
  %21 = call i32 @LCS_DBF_TEXT_(i32 4, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = load i64, i64* @LCS_CH_STATE_INIT, align 8
  %23 = load %struct.lcs_channel*, %struct.lcs_channel** %3, align 8
  %24 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load %struct.lcs_channel*, %struct.lcs_channel** %3, align 8
  %26 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %25, i32 0, i32 2
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = call i32 @get_ccwdev_lock(%struct.TYPE_3__* %27)
  %29 = load i64, i64* %4, align 8
  %30 = call i32 @spin_lock_irqsave(i32 %28, i64 %29)
  %31 = load %struct.lcs_channel*, %struct.lcs_channel** %3, align 8
  %32 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %31, i32 0, i32 2
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = load %struct.lcs_channel*, %struct.lcs_channel** %3, align 8
  %35 = ptrtoint %struct.lcs_channel* %34 to i32
  %36 = call i32 @ccw_device_halt(%struct.TYPE_3__* %33, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load %struct.lcs_channel*, %struct.lcs_channel** %3, align 8
  %38 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %37, i32 0, i32 2
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = call i32 @get_ccwdev_lock(%struct.TYPE_3__* %39)
  %41 = load i64, i64* %4, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32 %40, i64 %41)
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %12
  %46 = load i32, i32* @trace, align 4
  %47 = load %struct.lcs_channel*, %struct.lcs_channel** %3, align 8
  %48 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %47, i32 0, i32 2
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = call i32 @dev_name(i32* %50)
  %52 = call i32 @LCS_DBF_TEXT_(i32 4, i32 %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* %2, align 4
  br label %67

54:                                               ; preds = %12
  %55 = load %struct.lcs_channel*, %struct.lcs_channel** %3, align 8
  %56 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.lcs_channel*, %struct.lcs_channel** %3, align 8
  %59 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @LCS_CH_STATE_HALTED, align 8
  %62 = icmp eq i64 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @wait_event(i32 %57, i32 %63)
  %65 = load %struct.lcs_channel*, %struct.lcs_channel** %3, align 8
  %66 = call i32 @lcs_clear_channel(%struct.lcs_channel* %65)
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %54, %45, %11
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @LCS_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @LCS_DBF_TEXT_(i32, i32, i8*, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @get_ccwdev_lock(%struct.TYPE_3__*) #1

declare dso_local i32 @ccw_device_halt(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @lcs_clear_channel(%struct.lcs_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
