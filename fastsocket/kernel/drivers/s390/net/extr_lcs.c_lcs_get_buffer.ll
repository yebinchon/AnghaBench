; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_lcs.c_lcs_get_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_lcs.c_lcs_get_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcs_buffer = type { i32 }
%struct.lcs_channel = type { i32 }

@trace = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"getbuff\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lcs_buffer* (%struct.lcs_channel*)* @lcs_get_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lcs_buffer* @lcs_get_buffer(%struct.lcs_channel* %0) #0 {
  %2 = alloca %struct.lcs_channel*, align 8
  %3 = alloca %struct.lcs_buffer*, align 8
  %4 = alloca i64, align 8
  store %struct.lcs_channel* %0, %struct.lcs_channel** %2, align 8
  %5 = load i32, i32* @trace, align 4
  %6 = call i32 @LCS_DBF_TEXT(i32 5, i32 %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.lcs_channel*, %struct.lcs_channel** %2, align 8
  %8 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @get_ccwdev_lock(i32 %9)
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @spin_lock_irqsave(i32 %10, i64 %11)
  %13 = load %struct.lcs_channel*, %struct.lcs_channel** %2, align 8
  %14 = call %struct.lcs_buffer* @__lcs_get_buffer(%struct.lcs_channel* %13)
  store %struct.lcs_buffer* %14, %struct.lcs_buffer** %3, align 8
  %15 = load %struct.lcs_channel*, %struct.lcs_channel** %2, align 8
  %16 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @get_ccwdev_lock(i32 %17)
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @spin_unlock_irqrestore(i32 %18, i64 %19)
  %21 = load %struct.lcs_buffer*, %struct.lcs_buffer** %3, align 8
  ret %struct.lcs_buffer* %21
}

declare dso_local i32 @LCS_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @get_ccwdev_lock(i32) #1

declare dso_local %struct.lcs_buffer* @__lcs_get_buffer(%struct.lcs_channel*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
