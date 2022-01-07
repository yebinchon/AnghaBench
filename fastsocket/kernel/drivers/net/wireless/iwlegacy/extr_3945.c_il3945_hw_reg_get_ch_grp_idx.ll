; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945.c_il3945_hw_reg_get_ch_grp_idx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945.c_il3945_hw_reg_get_ch_grp_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i64 }
%struct.il_channel_info = type { i32 }
%struct.il3945_eeprom = type { %struct.il3945_eeprom_txpower_group* }
%struct.il3945_eeprom_txpower_group = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Chnl %d mapped to grp %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_priv*, %struct.il_channel_info*)* @il3945_hw_reg_get_ch_grp_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il3945_hw_reg_get_ch_grp_idx(%struct.il_priv* %0, %struct.il_channel_info* %1) #0 {
  %3 = alloca %struct.il_priv*, align 8
  %4 = alloca %struct.il_channel_info*, align 8
  %5 = alloca %struct.il3945_eeprom*, align 8
  %6 = alloca %struct.il3945_eeprom_txpower_group*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %3, align 8
  store %struct.il_channel_info* %1, %struct.il_channel_info** %4, align 8
  %10 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %11 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.il3945_eeprom*
  store %struct.il3945_eeprom* %13, %struct.il3945_eeprom** %5, align 8
  %14 = load %struct.il3945_eeprom*, %struct.il3945_eeprom** %5, align 8
  %15 = getelementptr inbounds %struct.il3945_eeprom, %struct.il3945_eeprom* %14, i32 0, i32 0
  %16 = load %struct.il3945_eeprom_txpower_group*, %struct.il3945_eeprom_txpower_group** %15, align 8
  %17 = getelementptr inbounds %struct.il3945_eeprom_txpower_group, %struct.il3945_eeprom_txpower_group* %16, i64 0
  store %struct.il3945_eeprom_txpower_group* %17, %struct.il3945_eeprom_txpower_group** %6, align 8
  store i32 0, i32* %8, align 4
  %18 = load %struct.il_channel_info*, %struct.il_channel_info** %4, align 8
  %19 = call i64 @il_is_channel_a_band(%struct.il_channel_info* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %48

21:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  br label %22

22:                                               ; preds = %40, %21
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 5
  br i1 %24, label %25, label %43

25:                                               ; preds = %22
  %26 = load %struct.il3945_eeprom_txpower_group*, %struct.il3945_eeprom_txpower_group** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.il3945_eeprom_txpower_group, %struct.il3945_eeprom_txpower_group* %26, i64 %28
  %30 = getelementptr inbounds %struct.il3945_eeprom_txpower_group, %struct.il3945_eeprom_txpower_group* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %9, align 4
  %32 = load %struct.il_channel_info*, %struct.il_channel_info** %4, align 8
  %33 = getelementptr inbounds %struct.il_channel_info, %struct.il_channel_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp sle i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %25
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %8, align 4
  br label %43

39:                                               ; preds = %25
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %22

43:                                               ; preds = %37, %22
  %44 = load i32, i32* %7, align 4
  %45 = icmp eq i32 %44, 5
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 4, i32* %8, align 4
  br label %47

47:                                               ; preds = %46, %43
  br label %49

48:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %49

49:                                               ; preds = %48, %47
  %50 = load %struct.il_channel_info*, %struct.il_channel_info** %4, align 8
  %51 = getelementptr inbounds %struct.il_channel_info, %struct.il_channel_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @D_POWER(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %53)
  %55 = load i32, i32* %8, align 4
  ret i32 %55
}

declare dso_local i64 @il_is_channel_a_band(%struct.il_channel_info*) #1

declare dso_local i32 @D_POWER(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
