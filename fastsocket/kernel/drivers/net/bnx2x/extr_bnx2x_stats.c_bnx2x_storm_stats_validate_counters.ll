; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_stats.c_bnx2x_storm_stats_validate_counters.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_stats.c_bnx2x_storm_stats_validate_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.stats_counter }
%struct.stats_counter = type { i32, i32, i32, i32 }

@BNX2X_MSG_STATS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"stats not updated by xstorm  xstorm counter (0x%x) != stats_counter (0x%x)\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [76 x i8] c"stats not updated by ustorm  ustorm counter (0x%x) != stats_counter (0x%x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [76 x i8] c"stats not updated by cstorm  cstorm counter (0x%x) != stats_counter (0x%x)\0A\00", align 1
@.str.3 = private unnamed_addr constant [76 x i8] c"stats not updated by tstorm  tstorm counter (0x%x) != stats_counter (0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*)* @bnx2x_storm_stats_validate_counters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_storm_stats_validate_counters(%struct.bnx2x* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca %struct.stats_counter*, align 8
  %5 = alloca i64, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  %6 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %7 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.stats_counter* %9, %struct.stats_counter** %4, align 8
  %10 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %11 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sub nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %5, align 8
  %15 = load %struct.stats_counter*, %struct.stats_counter** %4, align 8
  %16 = getelementptr inbounds %struct.stats_counter, %struct.stats_counter* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @le16_to_cpu(i32 %17)
  %19 = load i64, i64* %5, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %1
  %22 = load i32, i32* @BNX2X_MSG_STATS, align 4
  %23 = load %struct.stats_counter*, %struct.stats_counter** %4, align 8
  %24 = getelementptr inbounds %struct.stats_counter, %struct.stats_counter* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @le16_to_cpu(i32 %25)
  %27 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %28 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @DP(i32 %22, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i64 %26, i32 %29)
  %31 = load i32, i32* @EAGAIN, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %91

33:                                               ; preds = %1
  %34 = load %struct.stats_counter*, %struct.stats_counter** %4, align 8
  %35 = getelementptr inbounds %struct.stats_counter, %struct.stats_counter* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @le16_to_cpu(i32 %36)
  %38 = load i64, i64* %5, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %33
  %41 = load i32, i32* @BNX2X_MSG_STATS, align 4
  %42 = load %struct.stats_counter*, %struct.stats_counter** %4, align 8
  %43 = getelementptr inbounds %struct.stats_counter, %struct.stats_counter* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @le16_to_cpu(i32 %44)
  %46 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %47 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @DP(i32 %41, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i64 %45, i32 %48)
  %50 = load i32, i32* @EAGAIN, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %91

52:                                               ; preds = %33
  %53 = load %struct.stats_counter*, %struct.stats_counter** %4, align 8
  %54 = getelementptr inbounds %struct.stats_counter, %struct.stats_counter* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @le16_to_cpu(i32 %55)
  %57 = load i64, i64* %5, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %52
  %60 = load i32, i32* @BNX2X_MSG_STATS, align 4
  %61 = load %struct.stats_counter*, %struct.stats_counter** %4, align 8
  %62 = getelementptr inbounds %struct.stats_counter, %struct.stats_counter* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @le16_to_cpu(i32 %63)
  %65 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %66 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @DP(i32 %60, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.2, i64 0, i64 0), i64 %64, i32 %67)
  %69 = load i32, i32* @EAGAIN, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %91

71:                                               ; preds = %52
  %72 = load %struct.stats_counter*, %struct.stats_counter** %4, align 8
  %73 = getelementptr inbounds %struct.stats_counter, %struct.stats_counter* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @le16_to_cpu(i32 %74)
  %76 = load i64, i64* %5, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %90

78:                                               ; preds = %71
  %79 = load i32, i32* @BNX2X_MSG_STATS, align 4
  %80 = load %struct.stats_counter*, %struct.stats_counter** %4, align 8
  %81 = getelementptr inbounds %struct.stats_counter, %struct.stats_counter* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @le16_to_cpu(i32 %82)
  %84 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %85 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @DP(i32 %79, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.3, i64 0, i64 0), i64 %83, i32 %86)
  %88 = load i32, i32* @EAGAIN, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %2, align 4
  br label %91

90:                                               ; preds = %71
  store i32 0, i32* %2, align 4
  br label %91

91:                                               ; preds = %90, %78, %59, %40, %21
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @DP(i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
