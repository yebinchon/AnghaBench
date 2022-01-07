; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9003_eeprom_struct_find_by_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9003_eeprom_struct_find_by_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9300_eeprom = type { i32 }

@ar9300_eep_templates = common dso_local global %struct.ar9300_eeprom** null, align 8
@N_LOOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ar9300_eeprom* (i32)* @ar9003_eeprom_struct_find_by_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ar9300_eeprom* @ar9003_eeprom_struct_find_by_id(i32 %0) #0 {
  %2 = alloca %struct.ar9300_eeprom*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %26, %1
  %6 = load i32, i32* %4, align 4
  %7 = sext i32 %6 to i64
  %8 = icmp ult i64 %7, 1
  br i1 %8, label %9, label %29

9:                                                ; preds = %5
  %10 = load %struct.ar9300_eeprom**, %struct.ar9300_eeprom*** @ar9300_eep_templates, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %10, i64 %12
  %14 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %13, align 8
  %15 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %9
  %20 = load %struct.ar9300_eeprom**, %struct.ar9300_eeprom*** @ar9300_eep_templates, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %20, i64 %22
  %24 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %23, align 8
  store %struct.ar9300_eeprom* %24, %struct.ar9300_eeprom** %2, align 8
  br label %30

25:                                               ; preds = %9
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %5

29:                                               ; preds = %5
  store %struct.ar9300_eeprom* null, %struct.ar9300_eeprom** %2, align 8
  br label %30

30:                                               ; preds = %29, %19
  %31 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %2, align 8
  ret %struct.ar9300_eeprom* %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
