; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_lcs.c___lcs_get_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_lcs.c___lcs_get_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcs_buffer = type { i64 }
%struct.lcs_channel = type { i32, %struct.lcs_buffer* }

@trace = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"_getbuff\00", align 1
@LCS_BUF_STATE_EMPTY = common dso_local global i64 0, align 8
@LCS_BUF_STATE_LOCKED = common dso_local global i64 0, align 8
@LCS_NUM_BUFFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lcs_buffer* (%struct.lcs_channel*)* @__lcs_get_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lcs_buffer* @__lcs_get_buffer(%struct.lcs_channel* %0) #0 {
  %2 = alloca %struct.lcs_buffer*, align 8
  %3 = alloca %struct.lcs_channel*, align 8
  %4 = alloca i32, align 4
  store %struct.lcs_channel* %0, %struct.lcs_channel** %3, align 8
  %5 = load i32, i32* @trace, align 4
  %6 = call i32 @LCS_DBF_TEXT(i32 5, i32 %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.lcs_channel*, %struct.lcs_channel** %3, align 8
  %8 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %4, align 4
  br label %10

10:                                               ; preds = %42, %1
  %11 = load %struct.lcs_channel*, %struct.lcs_channel** %3, align 8
  %12 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %11, i32 0, i32 1
  %13 = load %struct.lcs_buffer*, %struct.lcs_buffer** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.lcs_buffer, %struct.lcs_buffer* %13, i64 %15
  %17 = getelementptr inbounds %struct.lcs_buffer, %struct.lcs_buffer* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @LCS_BUF_STATE_EMPTY, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %10
  %22 = load i64, i64* @LCS_BUF_STATE_LOCKED, align 8
  %23 = load %struct.lcs_channel*, %struct.lcs_channel** %3, align 8
  %24 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %23, i32 0, i32 1
  %25 = load %struct.lcs_buffer*, %struct.lcs_buffer** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.lcs_buffer, %struct.lcs_buffer* %25, i64 %27
  %29 = getelementptr inbounds %struct.lcs_buffer, %struct.lcs_buffer* %28, i32 0, i32 0
  store i64 %22, i64* %29, align 8
  %30 = load %struct.lcs_channel*, %struct.lcs_channel** %3, align 8
  %31 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %30, i32 0, i32 1
  %32 = load %struct.lcs_buffer*, %struct.lcs_buffer** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.lcs_buffer, %struct.lcs_buffer* %32, i64 %34
  store %struct.lcs_buffer* %35, %struct.lcs_buffer** %2, align 8
  br label %49

36:                                               ; preds = %10
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  %39 = load i32, i32* @LCS_NUM_BUFFS, align 4
  %40 = sub nsw i32 %39, 1
  %41 = and i32 %38, %40
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %36
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.lcs_channel*, %struct.lcs_channel** %3, align 8
  %45 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %43, %46
  br i1 %47, label %10, label %48

48:                                               ; preds = %42
  store %struct.lcs_buffer* null, %struct.lcs_buffer** %2, align 8
  br label %49

49:                                               ; preds = %48, %21
  %50 = load %struct.lcs_buffer*, %struct.lcs_buffer** %2, align 8
  ret %struct.lcs_buffer* %50
}

declare dso_local i32 @LCS_DBF_TEXT(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
