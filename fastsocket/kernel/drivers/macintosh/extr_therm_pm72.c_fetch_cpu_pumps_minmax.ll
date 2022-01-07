; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_therm_pm72.c_fetch_cpu_pumps_minmax.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_therm_pm72.c_fetch_cpu_pumps_minmax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_pid_state = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@cpu_state = common dso_local global %struct.cpu_pid_state* null, align 8
@CPU_PUMP_OUTPUT_MIN = common dso_local global i32 0, align 4
@CPU_PUMP_OUTPUT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @fetch_cpu_pumps_minmax to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fetch_cpu_pumps_minmax() #0 {
  %1 = alloca %struct.cpu_pid_state*, align 8
  %2 = alloca %struct.cpu_pid_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [4 x i32], align 16
  %6 = load %struct.cpu_pid_state*, %struct.cpu_pid_state** @cpu_state, align 8
  %7 = getelementptr inbounds %struct.cpu_pid_state, %struct.cpu_pid_state* %6, i64 0
  store %struct.cpu_pid_state* %7, %struct.cpu_pid_state** %1, align 8
  %8 = load %struct.cpu_pid_state*, %struct.cpu_pid_state** @cpu_state, align 8
  %9 = getelementptr inbounds %struct.cpu_pid_state, %struct.cpu_pid_state* %8, i64 1
  store %struct.cpu_pid_state* %9, %struct.cpu_pid_state** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 65535, i32* %4, align 4
  %10 = bitcast [4 x i32]* %5 to i32**
  %11 = load %struct.cpu_pid_state*, %struct.cpu_pid_state** %1, align 8
  %12 = getelementptr inbounds %struct.cpu_pid_state, %struct.cpu_pid_state* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i32 @memcpy(i32** %10, i32* %13, i32 8)
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %16 = load i32, i32* %15, align 16
  %17 = icmp ne i32 %16, 65535
  br i1 %17, label %18, label %31

18:                                               ; preds = %0
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 65535
  br i1 %21, label %22, label %31

22:                                               ; preds = %18
  %23 = load i32, i32* %3, align 4
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %25 = load i32, i32* %24, align 16
  %26 = call i32 @max(i32 %23, i32 %25)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %4, align 4
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @min(i32 %27, i32 %29)
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %22, %18, %0
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 65535
  br i1 %34, label %35, label %48

35:                                               ; preds = %31
  %36 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 3
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 65535
  br i1 %38, label %39, label %48

39:                                               ; preds = %35
  %40 = load i32, i32* %3, align 4
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @max(i32 %40, i32 %42)
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* %4, align 4
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 3
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @min(i32 %44, i32 %46)
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %39, %35, %31
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %58, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* %3, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %4, align 4
  %57 = icmp eq i32 %56, 65535
  br i1 %57, label %58, label %61

58:                                               ; preds = %55, %52, %48
  %59 = load i32, i32* @CPU_PUMP_OUTPUT_MIN, align 4
  store i32 %59, i32* %3, align 4
  %60 = load i32, i32* @CPU_PUMP_OUTPUT_MAX, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %58, %55
  %62 = load i32, i32* %3, align 4
  %63 = load %struct.cpu_pid_state*, %struct.cpu_pid_state** %2, align 8
  %64 = getelementptr inbounds %struct.cpu_pid_state, %struct.cpu_pid_state* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  %65 = load %struct.cpu_pid_state*, %struct.cpu_pid_state** %1, align 8
  %66 = getelementptr inbounds %struct.cpu_pid_state, %struct.cpu_pid_state* %65, i32 0, i32 0
  store i32 %62, i32* %66, align 4
  %67 = load i32, i32* %4, align 4
  %68 = load %struct.cpu_pid_state*, %struct.cpu_pid_state** %2, align 8
  %69 = getelementptr inbounds %struct.cpu_pid_state, %struct.cpu_pid_state* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.cpu_pid_state*, %struct.cpu_pid_state** %1, align 8
  %71 = getelementptr inbounds %struct.cpu_pid_state, %struct.cpu_pid_state* %70, i32 0, i32 1
  store i32 %67, i32* %71, align 4
  ret void
}

declare dso_local i32 @memcpy(i32**, i32*, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
