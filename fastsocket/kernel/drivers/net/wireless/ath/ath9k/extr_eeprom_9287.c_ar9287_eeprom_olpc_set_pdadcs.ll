; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_eeprom_9287.c_ar9287_eeprom_olpc_set_pdadcs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_eeprom_9287.c_ar9287_eeprom_olpc_set_pdadcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, i32, i32)* @ar9287_eeprom_olpc_set_pdadcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9287_eeprom_olpc_set_pdadcs(%struct.ath_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %10 = call i32 @REG_READ(%struct.ath_hw* %9, i32 41584)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = and i32 %11, -50331649
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = or i32 %13, 50331648
  store i32 %14, i32* %7, align 4
  %15 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @REG_WRITE(%struct.ath_hw* %15, i32 41584, i32 %16)
  %18 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %19 = call i32 @REG_READ(%struct.ath_hw* %18, i32 45680)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = and i32 %20, -50331649
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = or i32 %22, 50331648
  store i32 %23, i32* %7, align 4
  %24 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @REG_WRITE(%struct.ath_hw* %24, i32 45680, i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %3
  %30 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %31 = call i32 @REG_READ(%struct.ath_hw* %30, i32 41880)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = and i32 %32, -16711681
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %5, align 4
  %35 = and i32 %34, 255
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = shl i32 %37, 16
  %39 = or i32 %36, %38
  store i32 %39, i32* %7, align 4
  %40 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @REG_WRITE(%struct.ath_hw* %40, i32 41880, i32 %41)
  br label %43

43:                                               ; preds = %29, %3
  %44 = load i32, i32* %6, align 4
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %60

46:                                               ; preds = %43
  %47 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %48 = call i32 @REG_READ(%struct.ath_hw* %47, i32 45976)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = and i32 %49, -16711681
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %5, align 4
  %52 = and i32 %51, 255
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %8, align 4
  %55 = shl i32 %54, 16
  %56 = or i32 %53, %55
  store i32 %56, i32* %7, align 4
  %57 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @REG_WRITE(%struct.ath_hw* %57, i32 45976, i32 %58)
  br label %60

60:                                               ; preds = %46, %43
  ret void
}

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
