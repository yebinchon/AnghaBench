; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/83xx/extr_mcu_mpc8349emitx.c_mcu_power_off.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/83xx/extr_mcu_mpc8349emitx.c_mcu_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcu = type { i32, i32, i32 }

@glob_mcu = common dso_local global %struct.mcu* null, align 8
@.str = private unnamed_addr constant [41 x i8] c"Sending power-off request to the MCU...\0A\00", align 1
@MCU_REG_CTRL = common dso_local global i32 0, align 4
@MCU_CTRL_POFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mcu_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcu_power_off() #0 {
  %1 = alloca %struct.mcu*, align 8
  %2 = load %struct.mcu*, %struct.mcu** @glob_mcu, align 8
  store %struct.mcu* %2, %struct.mcu** %1, align 8
  %3 = call i32 @pr_info(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.mcu*, %struct.mcu** %1, align 8
  %5 = getelementptr inbounds %struct.mcu, %struct.mcu* %4, i32 0, i32 1
  %6 = call i32 @mutex_lock(i32* %5)
  %7 = load %struct.mcu*, %struct.mcu** @glob_mcu, align 8
  %8 = getelementptr inbounds %struct.mcu, %struct.mcu* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @MCU_REG_CTRL, align 4
  %11 = load %struct.mcu*, %struct.mcu** %1, align 8
  %12 = getelementptr inbounds %struct.mcu, %struct.mcu* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @MCU_CTRL_POFF, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @i2c_smbus_write_byte_data(i32 %9, i32 %10, i32 %15)
  %17 = load %struct.mcu*, %struct.mcu** %1, align 8
  %18 = getelementptr inbounds %struct.mcu, %struct.mcu* %17, i32 0, i32 1
  %19 = call i32 @mutex_unlock(i32* %18)
  ret void
}

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
