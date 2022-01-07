; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-gru/extr_grukservices.c_gru_reserve_async_resources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-gru/extr_grukservices.c_gru_reserve_async_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gru_blade_state = type { i32, i32, i32, %struct.gru_thread_state*, %struct.completion* }
%struct.gru_thread_state = type { i64 }
%struct.completion = type { i32 }

@gru_base = common dso_local global %struct.gru_blade_state** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @gru_reserve_async_resources(i32 %0, i32 %1, i32 %2, %struct.completion* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.completion*, align 8
  %9 = alloca %struct.gru_blade_state*, align 8
  %10 = alloca %struct.gru_thread_state*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.completion* %3, %struct.completion** %8, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.gru_blade_state**, %struct.gru_blade_state*** @gru_base, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.gru_blade_state*, %struct.gru_blade_state** %12, i64 %14
  %16 = load %struct.gru_blade_state*, %struct.gru_blade_state** %15, align 8
  store %struct.gru_blade_state* %16, %struct.gru_blade_state** %9, align 8
  %17 = load %struct.gru_blade_state*, %struct.gru_blade_state** %9, align 8
  %18 = getelementptr inbounds %struct.gru_blade_state, %struct.gru_blade_state* %17, i32 0, i32 2
  %19 = call i32 @down_write(i32* %18)
  %20 = load %struct.gru_blade_state*, %struct.gru_blade_state** %9, align 8
  %21 = getelementptr inbounds %struct.gru_blade_state, %struct.gru_blade_state* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.gru_blade_state*, %struct.gru_blade_state** %9, align 8
  %24 = getelementptr inbounds %struct.gru_blade_state, %struct.gru_blade_state* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %22, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %4
  br label %55

29:                                               ; preds = %4
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.gru_blade_state*, %struct.gru_blade_state** %9, align 8
  %32 = getelementptr inbounds %struct.gru_blade_state, %struct.gru_blade_state* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.gru_blade_state*, %struct.gru_blade_state** %9, align 8
  %35 = getelementptr inbounds %struct.gru_blade_state, %struct.gru_blade_state* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.completion*, %struct.completion** %8, align 8
  %37 = load %struct.gru_blade_state*, %struct.gru_blade_state** %9, align 8
  %38 = getelementptr inbounds %struct.gru_blade_state, %struct.gru_blade_state* %37, i32 0, i32 4
  store %struct.completion* %36, %struct.completion** %38, align 8
  %39 = load %struct.gru_blade_state*, %struct.gru_blade_state** %9, align 8
  %40 = getelementptr inbounds %struct.gru_blade_state, %struct.gru_blade_state* %39, i32 0, i32 3
  %41 = load %struct.gru_thread_state*, %struct.gru_thread_state** %40, align 8
  store %struct.gru_thread_state* %41, %struct.gru_thread_state** %10, align 8
  %42 = load %struct.gru_thread_state*, %struct.gru_thread_state** %10, align 8
  %43 = icmp ne %struct.gru_thread_state* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %29
  %45 = load %struct.gru_thread_state*, %struct.gru_thread_state** %10, align 8
  %46 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load %struct.gru_thread_state*, %struct.gru_thread_state** %10, align 8
  %51 = call i32 @gru_unload_context(%struct.gru_thread_state* %50, i32 0)
  br label %52

52:                                               ; preds = %49, %44, %29
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @ASYNC_BID_TO_HAN(i32 %53)
  store i32 %54, i32* %11, align 4
  br label %55

55:                                               ; preds = %52, %28
  %56 = load %struct.gru_blade_state*, %struct.gru_blade_state** %9, align 8
  %57 = getelementptr inbounds %struct.gru_blade_state, %struct.gru_blade_state* %56, i32 0, i32 2
  %58 = call i32 @up_write(i32* %57)
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  ret i64 %60
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @gru_unload_context(%struct.gru_thread_state*, i32) #1

declare dso_local i32 @ASYNC_BID_TO_HAN(i32) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
