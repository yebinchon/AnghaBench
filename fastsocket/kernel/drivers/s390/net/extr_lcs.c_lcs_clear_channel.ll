; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_lcs.c_lcs_clear_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_lcs.c_lcs_clear_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcs_channel = type { i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@trace = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"clearch\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"ecsc%s\00", align 1
@LCS_CH_STATE_CLEARED = common dso_local global i64 0, align 8
@LCS_CH_STATE_STOPPED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lcs_channel*)* @lcs_clear_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lcs_clear_channel(%struct.lcs_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lcs_channel*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.lcs_channel* %0, %struct.lcs_channel** %3, align 8
  %6 = load i32, i32* @trace, align 4
  %7 = call i32 @LCS_DBF_TEXT(i32 4, i32 %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @trace, align 4
  %9 = load %struct.lcs_channel*, %struct.lcs_channel** %3, align 8
  %10 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %9, i32 0, i32 2
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = call i32 @dev_name(i32* %12)
  %14 = call i32 @LCS_DBF_TEXT_(i32 4, i32 %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  %15 = load %struct.lcs_channel*, %struct.lcs_channel** %3, align 8
  %16 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %15, i32 0, i32 2
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = call i32 @get_ccwdev_lock(%struct.TYPE_3__* %17)
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @spin_lock_irqsave(i32 %18, i64 %19)
  %21 = load %struct.lcs_channel*, %struct.lcs_channel** %3, align 8
  %22 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %21, i32 0, i32 2
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = load %struct.lcs_channel*, %struct.lcs_channel** %3, align 8
  %25 = ptrtoint %struct.lcs_channel* %24 to i32
  %26 = call i32 @ccw_device_clear(%struct.TYPE_3__* %23, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load %struct.lcs_channel*, %struct.lcs_channel** %3, align 8
  %28 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %27, i32 0, i32 2
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = call i32 @get_ccwdev_lock(%struct.TYPE_3__* %29)
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32 %30, i64 %31)
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %1
  %36 = load i32, i32* @trace, align 4
  %37 = load %struct.lcs_channel*, %struct.lcs_channel** %3, align 8
  %38 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %37, i32 0, i32 2
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = call i32 @dev_name(i32* %40)
  %42 = call i32 @LCS_DBF_TEXT_(i32 4, i32 %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %2, align 4
  br label %59

44:                                               ; preds = %1
  %45 = load %struct.lcs_channel*, %struct.lcs_channel** %3, align 8
  %46 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.lcs_channel*, %struct.lcs_channel** %3, align 8
  %49 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @LCS_CH_STATE_CLEARED, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @wait_event(i32 %47, i32 %53)
  %55 = load i64, i64* @LCS_CH_STATE_STOPPED, align 8
  %56 = load %struct.lcs_channel*, %struct.lcs_channel** %3, align 8
  %57 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load i32, i32* %5, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %44, %35
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @LCS_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @LCS_DBF_TEXT_(i32, i32, i8*, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @get_ccwdev_lock(%struct.TYPE_3__*) #1

declare dso_local i32 @ccw_device_clear(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @wait_event(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
