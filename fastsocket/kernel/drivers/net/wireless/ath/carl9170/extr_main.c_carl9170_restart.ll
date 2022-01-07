; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_main.c_carl9170_restart.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_main.c_carl9170_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { i32, i32, i32, i32, i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@CARL9170_STARTED = common dso_local global i32 0, align 4
@CARL9170_IDLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"ignoring restart (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"restart device (%d)\0A\00", align 1
@CARL9170_RR_NO_REASON = common dso_local global i32 0, align 4
@__CARL9170_RR_LAST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @carl9170_restart(%struct.ar9170* %0, i32 %1) #0 {
  %3 = alloca %struct.ar9170*, align 8
  %4 = alloca i32, align 4
  store %struct.ar9170* %0, %struct.ar9170** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %6 = load i32, i32* @CARL9170_STARTED, align 4
  %7 = load i32, i32* @CARL9170_IDLE, align 4
  %8 = call i32 @carl9170_set_state_when(%struct.ar9170* %5, i32 %6, i32 %7)
  %9 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %10 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %9, i32 0, i32 7
  %11 = call i32 @atomic_inc_return(i32* %10)
  %12 = icmp sgt i32 %11, 1
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %15 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %14, i32 0, i32 6
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @dev_dbg(i32* %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %73

20:                                               ; preds = %2
  %21 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %22 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ieee80211_stop_queues(i32 %23)
  %25 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %26 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %25, i32 0, i32 6
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @dev_err(i32* %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @CARL9170_RR_NO_REASON, align 4
  %33 = icmp eq i32 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @WARN_ON(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %20
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @__CARL9170_RR_LAST, align 4
  %40 = icmp uge i32 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @WARN_ON(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %37, %20
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %47 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  br label %48

48:                                               ; preds = %44, %37
  %49 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %50 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  br label %73

54:                                               ; preds = %48
  %55 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %56 = call i32 @IS_ACCEPTING_CMD(%struct.ar9170* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %60 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58, %54
  %64 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %65 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %64, i32 0, i32 1
  store i32 1, i32* %65, align 4
  br label %66

66:                                               ; preds = %63, %58
  %67 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %68 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %71 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %70, i32 0, i32 2
  %72 = call i32 @ieee80211_queue_work(i32 %69, i32* %71)
  br label %73

73:                                               ; preds = %66, %53, %13
  ret void
}

declare dso_local i32 @carl9170_set_state_when(%struct.ar9170*, i32, i32) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @ieee80211_stop_queues(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @IS_ACCEPTING_CMD(%struct.ar9170*) #1

declare dso_local i32 @ieee80211_queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
