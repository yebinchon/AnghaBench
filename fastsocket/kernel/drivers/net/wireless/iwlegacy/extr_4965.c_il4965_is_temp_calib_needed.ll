; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965.c_il4965_is_temp_calib_needed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965.c_il4965_is_temp_calib_needed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32, i32, i32 }

@S_STATS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Temperature not updated -- no stats.\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Getting cooler, delta %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Temperature unchanged\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Getting warmer, delta %d\0A\00", align 1
@IL_TEMPERATURE_THRESHOLD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c" => thermal txpower calib not needed\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c" => thermal txpower calib needed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_priv*)* @il4965_is_temp_calib_needed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il4965_is_temp_calib_needed(%struct.il_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.il_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %3, align 8
  %5 = load i32, i32* @S_STATS, align 4
  %6 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %7 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %6, i32 0, i32 2
  %8 = call i32 @test_bit(i32 %5, i32* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = call i32 @D_TEMP(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %44

12:                                               ; preds = %1
  %13 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %14 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %17 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %15, %18
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %12
  %23 = load i32, i32* %4, align 4
  %24 = call i32 (i8*, ...) @D_POWER(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %36

27:                                               ; preds = %12
  %28 = load i32, i32* %4, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = call i32 (i8*, ...) @D_POWER(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %35

32:                                               ; preds = %27
  %33 = load i32, i32* %4, align 4
  %34 = call i32 (i8*, ...) @D_POWER(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %32, %30
  br label %36

36:                                               ; preds = %35, %22
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @IL_TEMPERATURE_THRESHOLD, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = call i32 (i8*, ...) @D_POWER(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %44

42:                                               ; preds = %36
  %43 = call i32 (i8*, ...) @D_POWER(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %44

44:                                               ; preds = %42, %40, %10
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @D_TEMP(i8*) #1

declare dso_local i32 @D_POWER(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
