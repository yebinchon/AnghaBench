; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_nvm.c_e1000_standby_nvm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_nvm.c_e1000_standby_nvm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_nvm_info }
%struct.e1000_nvm_info = type { i64, i32 }

@EECD = common dso_local global i32 0, align 4
@e1000_nvm_eeprom_spi = common dso_local global i64 0, align 8
@E1000_EECD_CS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_hw*)* @e1000_standby_nvm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_standby_nvm(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_nvm_info*, align 8
  %4 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %5 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %6 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %5, i32 0, i32 0
  store %struct.e1000_nvm_info* %6, %struct.e1000_nvm_info** %3, align 8
  %7 = load i32, i32* @EECD, align 4
  %8 = call i32 @er32(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %10 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @e1000_nvm_eeprom_spi, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %38

14:                                               ; preds = %1
  %15 = load i32, i32* @E1000_EECD_CS, align 4
  %16 = load i32, i32* %4, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* @EECD, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @ew32(i32 %18, i32 %19)
  %21 = call i32 (...) @e1e_flush()
  %22 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %23 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @udelay(i32 %24)
  %26 = load i32, i32* @E1000_EECD_CS, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* @EECD, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @ew32(i32 %30, i32 %31)
  %33 = call i32 (...) @e1e_flush()
  %34 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %35 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @udelay(i32 %36)
  br label %38

38:                                               ; preds = %14, %1
  ret void
}

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @e1e_flush(...) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
