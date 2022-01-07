; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_force_scan_end.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_force_scan_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32, i32 }

@S_SCANNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Forcing scan end while not scanning\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Forcing scan end\0A\00", align 1
@S_SCAN_HW = common dso_local global i32 0, align 4
@S_SCAN_ABORTING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @il_force_scan_end(%struct.il_priv* %0) #0 {
  %2 = alloca %struct.il_priv*, align 8
  store %struct.il_priv* %0, %struct.il_priv** %2, align 8
  %3 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %4 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %3, i32 0, i32 1
  %5 = call i32 @lockdep_assert_held(i32* %4)
  %6 = load i32, i32* @S_SCANNING, align 4
  %7 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %8 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %7, i32 0, i32 0
  %9 = call i32 @test_bit(i32 %6, i32* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = call i32 @D_SCAN(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %29

13:                                               ; preds = %1
  %14 = call i32 @D_SCAN(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i32, i32* @S_SCANNING, align 4
  %16 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %17 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %16, i32 0, i32 0
  %18 = call i32 @clear_bit(i32 %15, i32* %17)
  %19 = load i32, i32* @S_SCAN_HW, align 4
  %20 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %21 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %20, i32 0, i32 0
  %22 = call i32 @clear_bit(i32 %19, i32* %21)
  %23 = load i32, i32* @S_SCAN_ABORTING, align 4
  %24 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %25 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %24, i32 0, i32 0
  %26 = call i32 @clear_bit(i32 %23, i32* %25)
  %27 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %28 = call i32 @il_complete_scan(%struct.il_priv* %27, i32 1)
  br label %29

29:                                               ; preds = %13, %11
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @D_SCAN(i8*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @il_complete_scan(%struct.il_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
