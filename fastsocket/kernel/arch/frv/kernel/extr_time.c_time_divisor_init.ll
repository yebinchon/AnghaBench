; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/frv/kernel/extr_time.c_time_divisor_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/frv/kernel/extr_time.c_time_divisor_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__res_bus_clock_speed_HZ = common dso_local global i16 0, align 2
@HZ = common dso_local global i16 0, align 2
@TCTR_SC_CTR0 = common dso_local global i32 0, align 4
@TCTR_RL_RW_LH8 = common dso_local global i32 0, align 4
@TCTR_MODE_2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @time_divisor_init() #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  store i16 1, i16* %2, align 2
  store i16 4, i16* %3, align 2
  %4 = load i16, i16* @__res_bus_clock_speed_HZ, align 2
  %5 = zext i16 %4 to i32
  %6 = load i16, i16* %2, align 2
  %7 = zext i16 %6 to i32
  %8 = sdiv i32 %5, %7
  %9 = load i16, i16* @HZ, align 2
  %10 = zext i16 %9 to i32
  %11 = sdiv i32 %8, %10
  %12 = load i16, i16* %3, align 2
  %13 = zext i16 %12 to i32
  %14 = shl i32 1, %13
  %15 = sdiv i32 %11, %14
  %16 = trunc i32 %15 to i16
  store i16 %16, i16* %1, align 2
  %17 = load i16, i16* %2, align 2
  %18 = call i32 @__set_TPRV(i16 zeroext %17)
  %19 = load i16, i16* %3, align 2
  %20 = call i32 @__set_TxCKSL_DATA(i32 0, i16 zeroext %19)
  %21 = load i32, i32* @TCTR_SC_CTR0, align 4
  %22 = load i32, i32* @TCTR_RL_RW_LH8, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @TCTR_MODE_2, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @__set_TCTR(i32 %25)
  %27 = load i16, i16* %1, align 2
  %28 = zext i16 %27 to i32
  %29 = and i32 %28, 255
  %30 = trunc i32 %29 to i16
  %31 = call i32 @__set_TCSR_DATA(i32 0, i16 zeroext %30)
  %32 = load i16, i16* %1, align 2
  %33 = zext i16 %32 to i32
  %34 = ashr i32 %33, 8
  %35 = trunc i32 %34 to i16
  %36 = call i32 @__set_TCSR_DATA(i32 0, i16 zeroext %35)
  ret void
}

declare dso_local i32 @__set_TPRV(i16 zeroext) #1

declare dso_local i32 @__set_TxCKSL_DATA(i32, i16 zeroext) #1

declare dso_local i32 @__set_TCTR(i32) #1

declare dso_local i32 @__set_TCSR_DATA(i32, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
