; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_scan_cancel_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_scan_cancel_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"Scan cancel timeout\0A\00", align 1
@S_SCAN_HW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @il_scan_cancel_timeout(%struct.il_priv* %0, i64 %1) #0 {
  %3 = alloca %struct.il_priv*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.il_priv* %0, %struct.il_priv** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* @jiffies, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call i64 @msecs_to_jiffies(i64 %7)
  %9 = add i64 %6, %8
  store i64 %9, i64* %5, align 8
  %10 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %11 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %10, i32 0, i32 1
  %12 = call i32 @lockdep_assert_held(i32* %11)
  %13 = call i32 @D_SCAN(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %15 = call i32 @il_do_scan_abort(%struct.il_priv* %14)
  br label %16

16:                                               ; preds = %28, %2
  %17 = load i64, i64* @jiffies, align 8
  %18 = load i64, i64* %5, align 8
  %19 = call i64 @time_before_eq(i64 %17, i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %16
  %22 = load i32, i32* @S_SCAN_HW, align 4
  %23 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %24 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %23, i32 0, i32 0
  %25 = call i32 @test_bit(i32 %22, i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  br label %30

28:                                               ; preds = %21
  %29 = call i32 @msleep(i32 20)
  br label %16

30:                                               ; preds = %27, %16
  %31 = load i32, i32* @S_SCAN_HW, align 4
  %32 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %33 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %32, i32 0, i32 0
  %34 = call i32 @test_bit(i32 %31, i32* %33)
  ret i32 %34
}

declare dso_local i64 @msecs_to_jiffies(i64) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @D_SCAN(i8*) #1

declare dso_local i32 @il_do_scan_abort(%struct.il_priv*) #1

declare dso_local i64 @time_before_eq(i64, i64) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
