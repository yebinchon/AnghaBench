; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_lcs.c_lcs_release_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_lcs.c_lcs_release_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcs_channel = type { i32 }
%struct.lcs_buffer = type { i64 }

@trace = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"relbuff\00", align 1
@LCS_BUF_STATE_LOCKED = common dso_local global i64 0, align 8
@LCS_BUF_STATE_PROCESSED = common dso_local global i64 0, align 8
@LCS_BUF_STATE_EMPTY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lcs_channel*, %struct.lcs_buffer*)* @lcs_release_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lcs_release_buffer(%struct.lcs_channel* %0, %struct.lcs_buffer* %1) #0 {
  %3 = alloca %struct.lcs_channel*, align 8
  %4 = alloca %struct.lcs_buffer*, align 8
  %5 = alloca i64, align 8
  store %struct.lcs_channel* %0, %struct.lcs_channel** %3, align 8
  store %struct.lcs_buffer* %1, %struct.lcs_buffer** %4, align 8
  %6 = load i32, i32* @trace, align 4
  %7 = call i32 @LCS_DBF_TEXT(i32 5, i32 %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.lcs_buffer*, %struct.lcs_buffer** %4, align 8
  %9 = getelementptr inbounds %struct.lcs_buffer, %struct.lcs_buffer* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @LCS_BUF_STATE_LOCKED, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.lcs_buffer*, %struct.lcs_buffer** %4, align 8
  %15 = getelementptr inbounds %struct.lcs_buffer, %struct.lcs_buffer* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @LCS_BUF_STATE_PROCESSED, align 8
  %18 = icmp ne i64 %16, %17
  br label %19

19:                                               ; preds = %13, %2
  %20 = phi i1 [ false, %2 ], [ %18, %13 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load %struct.lcs_channel*, %struct.lcs_channel** %3, align 8
  %24 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @get_ccwdev_lock(i32 %25)
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @spin_lock_irqsave(i32 %26, i64 %27)
  %29 = load i64, i64* @LCS_BUF_STATE_EMPTY, align 8
  %30 = load %struct.lcs_buffer*, %struct.lcs_buffer** %4, align 8
  %31 = getelementptr inbounds %struct.lcs_buffer, %struct.lcs_buffer* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.lcs_channel*, %struct.lcs_channel** %3, align 8
  %33 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @get_ccwdev_lock(i32 %34)
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32 %35, i64 %36)
  ret void
}

declare dso_local i32 @LCS_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @get_ccwdev_lock(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
