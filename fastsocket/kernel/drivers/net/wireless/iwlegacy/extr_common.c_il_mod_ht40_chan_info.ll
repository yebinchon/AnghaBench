; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_mod_ht40_chan_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_mod_ht40_chan_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32 }
%struct.il_eeprom_channel = type { i32, i32 }
%struct.il_channel_info = type { i32, i32, i32, %struct.il_eeprom_channel, i32 }

@.str = private unnamed_addr constant [66 x i8] c"HT40 Ch. %d [%sGHz] %s%s%s%s%s(0x%02x %ddBm): Ad-Hoc %ssupported\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"5.2\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"2.4\00", align 1
@IBSS = common dso_local global i32 0, align 4
@ACTIVE = common dso_local global i32 0, align 4
@RADAR = common dso_local global i32 0, align 4
@WIDE = common dso_local global i32 0, align 4
@DFS = common dso_local global i32 0, align 4
@EEPROM_CHANNEL_IBSS = common dso_local global i32 0, align 4
@EEPROM_CHANNEL_RADAR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"not \00", align 1
@EEPROM_CHANNEL_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_priv*, i32, i32, %struct.il_eeprom_channel*, i32)* @il_mod_ht40_chan_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il_mod_ht40_chan_info(%struct.il_priv* %0, i32 %1, i32 %2, %struct.il_eeprom_channel* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.il_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.il_eeprom_channel*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.il_channel_info*, align 8
  store %struct.il_priv* %0, %struct.il_priv** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.il_eeprom_channel* %3, %struct.il_eeprom_channel** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %9, align 4
  %16 = call i64 @il_get_channel_info(%struct.il_priv* %13, i32 %14, i32 %15)
  %17 = inttoptr i64 %16 to %struct.il_channel_info*
  store %struct.il_channel_info* %17, %struct.il_channel_info** %12, align 8
  %18 = load %struct.il_channel_info*, %struct.il_channel_info** %12, align 8
  %19 = call i32 @il_is_channel_valid(%struct.il_channel_info* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %95

22:                                               ; preds = %5
  %23 = load %struct.il_channel_info*, %struct.il_channel_info** %12, align 8
  %24 = getelementptr inbounds %struct.il_channel_info, %struct.il_channel_info* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.il_channel_info*, %struct.il_channel_info** %12, align 8
  %27 = call i64 @il_is_channel_a_band(%struct.il_channel_info* %26)
  %28 = icmp ne i64 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %31 = load i32, i32* @IBSS, align 4
  %32 = call i32 @CHECK_AND_PRINT(i32 %31)
  %33 = load i32, i32* @ACTIVE, align 4
  %34 = call i32 @CHECK_AND_PRINT(i32 %33)
  %35 = load i32, i32* @RADAR, align 4
  %36 = call i32 @CHECK_AND_PRINT(i32 %35)
  %37 = load i32, i32* @WIDE, align 4
  %38 = call i32 @CHECK_AND_PRINT(i32 %37)
  %39 = load i32, i32* @DFS, align 4
  %40 = call i32 @CHECK_AND_PRINT(i32 %39)
  %41 = load %struct.il_eeprom_channel*, %struct.il_eeprom_channel** %10, align 8
  %42 = getelementptr inbounds %struct.il_eeprom_channel, %struct.il_eeprom_channel* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.il_eeprom_channel*, %struct.il_eeprom_channel** %10, align 8
  %45 = getelementptr inbounds %struct.il_eeprom_channel, %struct.il_eeprom_channel* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.il_eeprom_channel*, %struct.il_eeprom_channel** %10, align 8
  %48 = getelementptr inbounds %struct.il_eeprom_channel, %struct.il_eeprom_channel* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @EEPROM_CHANNEL_IBSS, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %22
  %54 = load %struct.il_eeprom_channel*, %struct.il_eeprom_channel** %10, align 8
  %55 = getelementptr inbounds %struct.il_eeprom_channel, %struct.il_eeprom_channel* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @EEPROM_CHANNEL_RADAR, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  br label %61

61:                                               ; preds = %53, %22
  %62 = phi i1 [ false, %22 ], [ %60, %53 ]
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  %65 = call i32 @D_EEPROM(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %25, i8* %30, i32 %32, i32 %34, i32 %36, i32 %38, i32 %40, i32 %43, i32 %46, i8* %64)
  %66 = load %struct.il_channel_info*, %struct.il_channel_info** %12, align 8
  %67 = getelementptr inbounds %struct.il_channel_info, %struct.il_channel_info* %66, i32 0, i32 3
  %68 = load %struct.il_eeprom_channel*, %struct.il_eeprom_channel** %10, align 8
  %69 = bitcast %struct.il_eeprom_channel* %67 to i8*
  %70 = bitcast %struct.il_eeprom_channel* %68 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %69, i8* align 4 %70, i64 8, i1 false)
  %71 = load %struct.il_eeprom_channel*, %struct.il_eeprom_channel** %10, align 8
  %72 = getelementptr inbounds %struct.il_eeprom_channel, %struct.il_eeprom_channel* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.il_channel_info*, %struct.il_channel_info** %12, align 8
  %75 = getelementptr inbounds %struct.il_channel_info, %struct.il_channel_info* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 4
  %76 = load %struct.il_eeprom_channel*, %struct.il_eeprom_channel** %10, align 8
  %77 = getelementptr inbounds %struct.il_eeprom_channel, %struct.il_eeprom_channel* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.il_channel_info*, %struct.il_channel_info** %12, align 8
  %80 = getelementptr inbounds %struct.il_channel_info, %struct.il_channel_info* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  %81 = load %struct.il_eeprom_channel*, %struct.il_eeprom_channel** %10, align 8
  %82 = getelementptr inbounds %struct.il_eeprom_channel, %struct.il_eeprom_channel* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @EEPROM_CHANNEL_VALID, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %61
  %88 = load i32, i32* %11, align 4
  %89 = xor i32 %88, -1
  %90 = load %struct.il_channel_info*, %struct.il_channel_info** %12, align 8
  %91 = getelementptr inbounds %struct.il_channel_info, %struct.il_channel_info* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, %89
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %87, %61
  store i32 0, i32* %6, align 4
  br label %95

95:                                               ; preds = %94, %21
  %96 = load i32, i32* %6, align 4
  ret i32 %96
}

declare dso_local i64 @il_get_channel_info(%struct.il_priv*, i32, i32) #1

declare dso_local i32 @il_is_channel_valid(%struct.il_channel_info*) #1

declare dso_local i32 @D_EEPROM(i8*, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i64 @il_is_channel_a_band(%struct.il_channel_info*) #1

declare dso_local i32 @CHECK_AND_PRINT(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
