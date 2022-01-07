; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_lcs.c___lcs_resume_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_lcs.c___lcs_resume_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcs_channel = type { i64, i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@LCS_CH_STATE_SUSPENDED = common dso_local global i64 0, align 8
@CCW_FLAG_SUSPEND = common dso_local global i32 0, align 4
@trace = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"rsch%s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ersc%s\00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"Sending data from the LCS device to the LAN failed with rc=%d\0A\00", align 1
@LCS_CH_STATE_RUNNING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lcs_channel*)* @__lcs_resume_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__lcs_resume_channel(%struct.lcs_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lcs_channel*, align 8
  %4 = alloca i32, align 4
  store %struct.lcs_channel* %0, %struct.lcs_channel** %3, align 8
  %5 = load %struct.lcs_channel*, %struct.lcs_channel** %3, align 8
  %6 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @LCS_CH_STATE_SUSPENDED, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %59

11:                                               ; preds = %1
  %12 = load %struct.lcs_channel*, %struct.lcs_channel** %3, align 8
  %13 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %12, i32 0, i32 3
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = load %struct.lcs_channel*, %struct.lcs_channel** %3, align 8
  %16 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @CCW_FLAG_SUSPEND, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %59

25:                                               ; preds = %11
  %26 = load i32, i32* @trace, align 4
  %27 = load %struct.lcs_channel*, %struct.lcs_channel** %3, align 8
  %28 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %27, i32 0, i32 2
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = call i32 @dev_name(i32* %30)
  %32 = call i32 @LCS_DBF_TEXT_(i32 5, i32 %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.lcs_channel*, %struct.lcs_channel** %3, align 8
  %34 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %33, i32 0, i32 2
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = call i32 @ccw_device_resume(%struct.TYPE_4__* %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %25
  %40 = load i32, i32* @trace, align 4
  %41 = load %struct.lcs_channel*, %struct.lcs_channel** %3, align 8
  %42 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %41, i32 0, i32 2
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = call i32 @dev_name(i32* %44)
  %46 = call i32 @LCS_DBF_TEXT_(i32 4, i32 %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load %struct.lcs_channel*, %struct.lcs_channel** %3, align 8
  %48 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %47, i32 0, i32 2
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @dev_err(i32* %50, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  br label %57

53:                                               ; preds = %25
  %54 = load i64, i64* @LCS_CH_STATE_RUNNING, align 8
  %55 = load %struct.lcs_channel*, %struct.lcs_channel** %3, align 8
  %56 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  br label %57

57:                                               ; preds = %53, %39
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %57, %24, %10
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @LCS_DBF_TEXT_(i32, i32, i8*, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @ccw_device_resume(%struct.TYPE_4__*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
