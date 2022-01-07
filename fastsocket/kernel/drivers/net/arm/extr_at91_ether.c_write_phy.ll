; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_at91_ether.c_write_phy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_at91_ether.c_write_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AT91_EMAC_MAN = common dso_local global i32 0, align 4
@AT91_EMAC_MAN_802_3 = common dso_local global i8 0, align 1
@AT91_EMAC_RW_W = common dso_local global i8 0, align 1
@AT91_EMAC_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8, i8, i32)* @write_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_phy(i8 zeroext %0, i8 zeroext %1, i32 %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store i8 %0, i8* %4, align 1
  store i8 %1, i8* %5, align 1
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @AT91_EMAC_MAN, align 4
  %8 = load i8, i8* @AT91_EMAC_MAN_802_3, align 1
  %9 = zext i8 %8 to i32
  %10 = load i8, i8* @AT91_EMAC_RW_W, align 1
  %11 = zext i8 %10 to i32
  %12 = or i32 %9, %11
  %13 = load i8, i8* %4, align 1
  %14 = zext i8 %13 to i32
  %15 = and i32 %14, 31
  %16 = shl i32 %15, 23
  %17 = or i32 %12, %16
  %18 = load i8, i8* %5, align 1
  %19 = zext i8 %18 to i32
  %20 = shl i32 %19, 18
  %21 = or i32 %17, %20
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @AT91_EMAC_DATA, align 4
  %24 = and i32 %22, %23
  %25 = or i32 %21, %24
  %26 = trunc i32 %25 to i8
  %27 = call i32 @at91_emac_write(i32 %7, i8 zeroext %26)
  %28 = call i32 (...) @at91_phy_wait()
  ret void
}

declare dso_local i32 @at91_emac_write(i32, i8 zeroext) #1

declare dso_local i32 @at91_phy_wait(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
