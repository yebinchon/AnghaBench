; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_lcs.c_lcs_tasklet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_lcs.c_lcs_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcs_channel = type { i32, i64, i64, i32, %struct.TYPE_2__*, %struct.lcs_buffer* }
%struct.TYPE_2__ = type { i32 }
%struct.lcs_buffer = type { i64, i32 (%struct.lcs_channel*, %struct.lcs_buffer*)* }

@trace = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"tlet%s\00", align 1
@LCS_BUF_STATE_PROCESSED = common dso_local global i64 0, align 8
@LCS_NUM_BUFFS = common dso_local global i32 0, align 4
@LCS_CH_STATE_STOPPED = common dso_local global i64 0, align 8
@LCS_CH_STATE_SUSPENDED = common dso_local global i64 0, align 8
@LCS_BUF_STATE_READY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @lcs_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lcs_tasklet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.lcs_channel*, align 8
  %5 = alloca %struct.lcs_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = inttoptr i64 %8 to %struct.lcs_channel*
  store %struct.lcs_channel* %9, %struct.lcs_channel** %4, align 8
  %10 = load i32, i32* @trace, align 4
  %11 = load %struct.lcs_channel*, %struct.lcs_channel** %4, align 8
  %12 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %11, i32 0, i32 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = call i32 @dev_name(i32* %14)
  %16 = call i32 @LCS_DBF_TEXT_(i32 5, i32 %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.lcs_channel*, %struct.lcs_channel** %4, align 8
  %18 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %17, i32 0, i32 5
  %19 = load %struct.lcs_buffer*, %struct.lcs_buffer** %18, align 8
  store %struct.lcs_buffer* %19, %struct.lcs_buffer** %5, align 8
  %20 = load %struct.lcs_channel*, %struct.lcs_channel** %4, align 8
  %21 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %53, %1
  %24 = load %struct.lcs_buffer*, %struct.lcs_buffer** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.lcs_buffer, %struct.lcs_buffer* %24, i64 %26
  %28 = getelementptr inbounds %struct.lcs_buffer, %struct.lcs_buffer* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @LCS_BUF_STATE_PROCESSED, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %59

32:                                               ; preds = %23
  %33 = load %struct.lcs_buffer*, %struct.lcs_buffer** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.lcs_buffer, %struct.lcs_buffer* %33, i64 %35
  %37 = getelementptr inbounds %struct.lcs_buffer, %struct.lcs_buffer* %36, i32 0, i32 1
  %38 = load i32 (%struct.lcs_channel*, %struct.lcs_buffer*)*, i32 (%struct.lcs_channel*, %struct.lcs_buffer*)** %37, align 8
  %39 = icmp ne i32 (%struct.lcs_channel*, %struct.lcs_buffer*)* %38, null
  br i1 %39, label %40, label %53

40:                                               ; preds = %32
  %41 = load %struct.lcs_buffer*, %struct.lcs_buffer** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.lcs_buffer, %struct.lcs_buffer* %41, i64 %43
  %45 = getelementptr inbounds %struct.lcs_buffer, %struct.lcs_buffer* %44, i32 0, i32 1
  %46 = load i32 (%struct.lcs_channel*, %struct.lcs_buffer*)*, i32 (%struct.lcs_channel*, %struct.lcs_buffer*)** %45, align 8
  %47 = load %struct.lcs_channel*, %struct.lcs_channel** %4, align 8
  %48 = load %struct.lcs_buffer*, %struct.lcs_buffer** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.lcs_buffer, %struct.lcs_buffer* %48, i64 %50
  %52 = call i32 %46(%struct.lcs_channel* %47, %struct.lcs_buffer* %51)
  br label %53

53:                                               ; preds = %40, %32
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  %56 = load i32, i32* @LCS_NUM_BUFFS, align 4
  %57 = sub nsw i32 %56, 1
  %58 = and i32 %55, %57
  store i32 %58, i32* %6, align 4
  br label %23

59:                                               ; preds = %23
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.lcs_channel*, %struct.lcs_channel** %4, align 8
  %62 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.lcs_channel*, %struct.lcs_channel** %4, align 8
  %64 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @LCS_CH_STATE_STOPPED, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %59
  %69 = load %struct.lcs_channel*, %struct.lcs_channel** %4, align 8
  %70 = call i32 @lcs_start_channel(%struct.lcs_channel* %69)
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %68, %59
  %72 = load %struct.lcs_channel*, %struct.lcs_channel** %4, align 8
  %73 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %72, i32 0, i32 4
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = call i32 @get_ccwdev_lock(%struct.TYPE_2__* %74)
  %76 = load i64, i64* %3, align 8
  %77 = call i32 @spin_lock_irqsave(i32 %75, i64 %76)
  %78 = load %struct.lcs_channel*, %struct.lcs_channel** %4, align 8
  %79 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @LCS_CH_STATE_SUSPENDED, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %98

83:                                               ; preds = %71
  %84 = load %struct.lcs_channel*, %struct.lcs_channel** %4, align 8
  %85 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %84, i32 0, i32 5
  %86 = load %struct.lcs_buffer*, %struct.lcs_buffer** %85, align 8
  %87 = load %struct.lcs_channel*, %struct.lcs_channel** %4, align 8
  %88 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds %struct.lcs_buffer, %struct.lcs_buffer* %86, i64 %89
  %91 = getelementptr inbounds %struct.lcs_buffer, %struct.lcs_buffer* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @LCS_BUF_STATE_READY, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %83
  %96 = load %struct.lcs_channel*, %struct.lcs_channel** %4, align 8
  %97 = call i32 @__lcs_resume_channel(%struct.lcs_channel* %96)
  store i32 %97, i32* %7, align 4
  br label %98

98:                                               ; preds = %95, %83, %71
  %99 = load %struct.lcs_channel*, %struct.lcs_channel** %4, align 8
  %100 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %99, i32 0, i32 4
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = call i32 @get_ccwdev_lock(%struct.TYPE_2__* %101)
  %103 = load i64, i64* %3, align 8
  %104 = call i32 @spin_unlock_irqrestore(i32 %102, i64 %103)
  %105 = load %struct.lcs_channel*, %struct.lcs_channel** %4, align 8
  %106 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %105, i32 0, i32 3
  %107 = call i32 @wake_up(i32* %106)
  ret void
}

declare dso_local i32 @LCS_DBF_TEXT_(i32, i32, i8*, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @lcs_start_channel(%struct.lcs_channel*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @get_ccwdev_lock(%struct.TYPE_2__*) #1

declare dso_local i32 @__lcs_resume_channel(%struct.lcs_channel*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
