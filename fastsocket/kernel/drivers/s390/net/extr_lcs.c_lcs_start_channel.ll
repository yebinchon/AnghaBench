; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_lcs.c_lcs_start_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_lcs.c_lcs_start_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcs_channel = type { %struct.TYPE_3__*, i32, i64, i64 }
%struct.TYPE_3__ = type { i32 }

@trace = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ssch%s\00", align 1
@DOIO_DENY_PREFETCH = common dso_local global i32 0, align 4
@DOIO_ALLOW_SUSPEND = common dso_local global i32 0, align 4
@LCS_CH_STATE_RUNNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"essh%s\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"Starting an LCS device resulted in an error, rc=%d!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lcs_channel*)* @lcs_start_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lcs_start_channel(%struct.lcs_channel* %0) #0 {
  %2 = alloca %struct.lcs_channel*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.lcs_channel* %0, %struct.lcs_channel** %2, align 8
  %5 = load i32, i32* @trace, align 4
  %6 = load %struct.lcs_channel*, %struct.lcs_channel** %2, align 8
  %7 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = call i32 @dev_name(i32* %9)
  %11 = call i32 @LCS_DBF_TEXT_(i32 4, i32 %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.lcs_channel*, %struct.lcs_channel** %2, align 8
  %13 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = call i32 @get_ccwdev_lock(%struct.TYPE_3__* %14)
  %16 = load i64, i64* %3, align 8
  %17 = call i32 @spin_lock_irqsave(i32 %15, i64 %16)
  %18 = load %struct.lcs_channel*, %struct.lcs_channel** %2, align 8
  %19 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = load %struct.lcs_channel*, %struct.lcs_channel** %2, align 8
  %22 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.lcs_channel*, %struct.lcs_channel** %2, align 8
  %25 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %23, %26
  %28 = load i32, i32* @DOIO_DENY_PREFETCH, align 4
  %29 = load i32, i32* @DOIO_ALLOW_SUSPEND, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @ccw_device_start(%struct.TYPE_3__* %20, i64 %27, i32 0, i32 0, i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %1
  %35 = load i32, i32* @LCS_CH_STATE_RUNNING, align 4
  %36 = load %struct.lcs_channel*, %struct.lcs_channel** %2, align 8
  %37 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  br label %38

38:                                               ; preds = %34, %1
  %39 = load %struct.lcs_channel*, %struct.lcs_channel** %2, align 8
  %40 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = call i32 @get_ccwdev_lock(%struct.TYPE_3__* %41)
  %43 = load i64, i64* %3, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32 %42, i64 %43)
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %38
  %48 = load i32, i32* @trace, align 4
  %49 = load %struct.lcs_channel*, %struct.lcs_channel** %2, align 8
  %50 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = call i32 @dev_name(i32* %52)
  %54 = call i32 @LCS_DBF_TEXT_(i32 4, i32 %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load %struct.lcs_channel*, %struct.lcs_channel** %2, align 8
  %56 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @dev_err(i32* %58, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %47, %38
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @LCS_DBF_TEXT_(i32, i32, i8*, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @get_ccwdev_lock(%struct.TYPE_3__*) #1

declare dso_local i32 @ccw_device_start(%struct.TYPE_3__*, i64, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
