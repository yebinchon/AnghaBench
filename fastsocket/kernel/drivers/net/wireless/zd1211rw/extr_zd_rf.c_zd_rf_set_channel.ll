; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_rf.c_zd_rf_set_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_rf.c_zd_rf_set_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_rf = type { {}*, i64 }
%struct.TYPE_3__ = type { i32 }

@MIN_CHANNEL24 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@MAX_CHANNEL24 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"channel: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zd_rf_set_channel(%struct.zd_rf* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zd_rf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.zd_rf* %0, %struct.zd_rf** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.zd_rf*, %struct.zd_rf** %4, align 8
  %8 = call %struct.TYPE_3__* @zd_rf_to_chip(%struct.zd_rf* %7)
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = call i32 @mutex_is_locked(i32* %9)
  %11 = call i32 @ZD_ASSERT(i32 %10)
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @MIN_CHANNEL24, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %46

18:                                               ; preds = %2
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @MAX_CHANNEL24, align 8
  %21 = icmp sgt i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %46

25:                                               ; preds = %18
  %26 = load %struct.zd_rf*, %struct.zd_rf** %4, align 8
  %27 = call %struct.TYPE_3__* @zd_rf_to_chip(%struct.zd_rf* %26)
  %28 = call i32 @zd_chip_dev(%struct.TYPE_3__* %27)
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @dev_dbg_f(i32 %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %29)
  %31 = load %struct.zd_rf*, %struct.zd_rf** %4, align 8
  %32 = getelementptr inbounds %struct.zd_rf, %struct.zd_rf* %31, i32 0, i32 0
  %33 = bitcast {}** %32 to i32 (%struct.zd_rf*, i64)**
  %34 = load i32 (%struct.zd_rf*, i64)*, i32 (%struct.zd_rf*, i64)** %33, align 8
  %35 = load %struct.zd_rf*, %struct.zd_rf** %4, align 8
  %36 = load i64, i64* %5, align 8
  %37 = call i32 %34(%struct.zd_rf* %35, i64 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp sge i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %25
  %41 = load i64, i64* %5, align 8
  %42 = load %struct.zd_rf*, %struct.zd_rf** %4, align 8
  %43 = getelementptr inbounds %struct.zd_rf, %struct.zd_rf* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  br label %44

44:                                               ; preds = %40, %25
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %22, %15
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @ZD_ASSERT(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local %struct.TYPE_3__* @zd_rf_to_chip(%struct.zd_rf*) #1

declare dso_local i32 @dev_dbg_f(i32, i8*, i64) #1

declare dso_local i32 @zd_chip_dev(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
