; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_do_scan_abort.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_do_scan_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32, i32 }

@S_SCANNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Not performing scan to abort\0A\00", align 1
@S_SCAN_ABORTING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Scan abort in progress\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Send scan abort failed %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Successfully send scan abort\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.il_priv*)* @il_do_scan_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @il_do_scan_abort(%struct.il_priv* %0) #0 {
  %2 = alloca %struct.il_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %2, align 8
  %4 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %5 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %4, i32 0, i32 1
  %6 = call i32 @lockdep_assert_held(i32* %5)
  %7 = load i32, i32* @S_SCANNING, align 4
  %8 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %9 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %8, i32 0, i32 0
  %10 = call i32 @test_bit(i32 %7, i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = call i32 (i8*, ...) @D_SCAN(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %34

14:                                               ; preds = %1
  %15 = load i32, i32* @S_SCAN_ABORTING, align 4
  %16 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %17 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %16, i32 0, i32 0
  %18 = call i64 @test_and_set_bit(i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = call i32 (i8*, ...) @D_SCAN(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %34

22:                                               ; preds = %14
  %23 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %24 = call i32 @il_send_scan_abort(%struct.il_priv* %23)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load i32, i32* %3, align 4
  %29 = call i32 (i8*, ...) @D_SCAN(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  %30 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %31 = call i32 @il_force_scan_end(%struct.il_priv* %30)
  br label %34

32:                                               ; preds = %22
  %33 = call i32 (i8*, ...) @D_SCAN(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %34

34:                                               ; preds = %12, %20, %32, %27
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @D_SCAN(i8*, ...) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @il_send_scan_abort(%struct.il_priv*) #1

declare dso_local i32 @il_force_scan_end(%struct.il_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
