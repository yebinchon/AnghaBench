; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_lcs.c_lcs_ready_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_lcs.c_lcs_ready_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcs_channel = type { i32, %struct.TYPE_2__*, %struct.lcs_buffer* }
%struct.TYPE_2__ = type { i32 }
%struct.lcs_buffer = type { i64, i32 }

@trace = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"rdybuff\00", align 1
@LCS_BUF_STATE_LOCKED = common dso_local global i64 0, align 8
@LCS_BUF_STATE_PROCESSED = common dso_local global i64 0, align 8
@LCS_BUF_STATE_READY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lcs_channel*, %struct.lcs_buffer*)* @lcs_ready_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lcs_ready_buffer(%struct.lcs_channel* %0, %struct.lcs_buffer* %1) #0 {
  %3 = alloca %struct.lcs_channel*, align 8
  %4 = alloca %struct.lcs_buffer*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lcs_channel* %0, %struct.lcs_channel** %3, align 8
  store %struct.lcs_buffer* %1, %struct.lcs_buffer** %4, align 8
  %8 = load i32, i32* @trace, align 4
  %9 = call i32 @LCS_DBF_TEXT(i32 5, i32 %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.lcs_buffer*, %struct.lcs_buffer** %4, align 8
  %11 = getelementptr inbounds %struct.lcs_buffer, %struct.lcs_buffer* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @LCS_BUF_STATE_LOCKED, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.lcs_buffer*, %struct.lcs_buffer** %4, align 8
  %17 = getelementptr inbounds %struct.lcs_buffer, %struct.lcs_buffer* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @LCS_BUF_STATE_PROCESSED, align 8
  %20 = icmp ne i64 %18, %19
  br label %21

21:                                               ; preds = %15, %2
  %22 = phi i1 [ false, %2 ], [ %20, %15 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load %struct.lcs_channel*, %struct.lcs_channel** %3, align 8
  %26 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @get_ccwdev_lock(i32 %27)
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @spin_lock_irqsave(i32 %28, i64 %29)
  %31 = load i64, i64* @LCS_BUF_STATE_READY, align 8
  %32 = load %struct.lcs_buffer*, %struct.lcs_buffer** %4, align 8
  %33 = getelementptr inbounds %struct.lcs_buffer, %struct.lcs_buffer* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.lcs_buffer*, %struct.lcs_buffer** %4, align 8
  %35 = load %struct.lcs_channel*, %struct.lcs_channel** %3, align 8
  %36 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %35, i32 0, i32 2
  %37 = load %struct.lcs_buffer*, %struct.lcs_buffer** %36, align 8
  %38 = ptrtoint %struct.lcs_buffer* %34 to i64
  %39 = ptrtoint %struct.lcs_buffer* %37 to i64
  %40 = sub i64 %38, %39
  %41 = sdiv exact i64 %40, 16
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %6, align 4
  %43 = load %struct.lcs_buffer*, %struct.lcs_buffer** %4, align 8
  %44 = getelementptr inbounds %struct.lcs_buffer, %struct.lcs_buffer* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.lcs_channel*, %struct.lcs_channel** %3, align 8
  %47 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i32 %45, i32* %52, align 4
  %53 = load %struct.lcs_channel*, %struct.lcs_channel** %3, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @__lcs_ready_buffer_bits(%struct.lcs_channel* %53, i32 %54)
  %56 = load %struct.lcs_channel*, %struct.lcs_channel** %3, align 8
  %57 = call i32 @__lcs_resume_channel(%struct.lcs_channel* %56)
  store i32 %57, i32* %7, align 4
  %58 = load %struct.lcs_channel*, %struct.lcs_channel** %3, align 8
  %59 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @get_ccwdev_lock(i32 %60)
  %62 = load i64, i64* %5, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32 %61, i64 %62)
  %64 = load i32, i32* %7, align 4
  ret i32 %64
}

declare dso_local i32 @LCS_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @get_ccwdev_lock(i32) #1

declare dso_local i32 @__lcs_ready_buffer_bits(%struct.lcs_channel*, i32) #1

declare dso_local i32 @__lcs_resume_channel(%struct.lcs_channel*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
