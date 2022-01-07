; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945.c_il3945_is_temp_calib_needed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945.c_il3945_is_temp_calib_needed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"Getting cooler, delta %d,\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Same temp,\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Getting warmer, delta %d,\0A\00", align 1
@IL_TEMPERATURE_LIMIT_TIMER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Timed thermal calib not needed\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Timed thermal calib needed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_priv*)* @il3945_is_temp_calib_needed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il3945_is_temp_calib_needed(%struct.il_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.il_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %3, align 8
  %5 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %6 = call i32 @il3945_hw_reg_txpower_get_temperature(%struct.il_priv* %5)
  %7 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %8 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 4
  %9 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %10 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %13 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = sub nsw i32 %11, %14
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  %20 = call i32 (i8*, ...) @D_POWER(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %4, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %32

23:                                               ; preds = %1
  %24 = load i32, i32* %4, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = call i32 (i8*, ...) @D_POWER(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %31

28:                                               ; preds = %23
  %29 = load i32, i32* %4, align 4
  %30 = call i32 (i8*, ...) @D_POWER(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %28, %26
  br label %32

32:                                               ; preds = %31, %18
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @IL_TEMPERATURE_LIMIT_TIMER, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = call i32 (i8*, ...) @D_POWER(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %45

38:                                               ; preds = %32
  %39 = call i32 (i8*, ...) @D_POWER(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %40 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %41 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %44 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  store i32 1, i32* %2, align 4
  br label %45

45:                                               ; preds = %38, %36
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @il3945_hw_reg_txpower_get_temperature(%struct.il_priv*) #1

declare dso_local i32 @D_POWER(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
