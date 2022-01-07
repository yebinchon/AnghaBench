; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_s6gmac.c_s6mii_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_s6gmac.c_s6mii_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { %struct.s6gmac* }
%struct.s6gmac = type { i64 }

@ETIME = common dso_local global i32 0, align 4
@S6_GMAC_MACMIIADDR_PHY = common dso_local global i32 0, align 4
@S6_GMAC_MACMIIADDR_REG = common dso_local global i32 0, align 4
@S6_GMAC_MACMIIADDR = common dso_local global i64 0, align 8
@S6_GMAC_MACMIICTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32, i32)* @s6mii_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s6mii_write(%struct.mii_bus* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mii_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.s6gmac*, align 8
  store %struct.mii_bus* %0, %struct.mii_bus** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %12 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %11, i32 0, i32 0
  %13 = load %struct.s6gmac*, %struct.s6gmac** %12, align 8
  store %struct.s6gmac* %13, %struct.s6gmac** %10, align 8
  %14 = load %struct.s6gmac*, %struct.s6gmac** %10, align 8
  %15 = call i32 @s6mii_enable(%struct.s6gmac* %14)
  %16 = load %struct.s6gmac*, %struct.s6gmac** %10, align 8
  %17 = call i64 @s6mii_busy(%struct.s6gmac* %16, i32 256)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @ETIME, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %50

22:                                               ; preds = %4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @S6_GMAC_MACMIIADDR_PHY, align 4
  %25 = shl i32 %23, %24
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @S6_GMAC_MACMIIADDR_REG, align 4
  %28 = shl i32 %26, %27
  %29 = or i32 %25, %28
  %30 = load %struct.s6gmac*, %struct.s6gmac** %10, align 8
  %31 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @S6_GMAC_MACMIIADDR, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @writel(i32 %29, i64 %34)
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.s6gmac*, %struct.s6gmac** %10, align 8
  %38 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @S6_GMAC_MACMIICTRL, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @writel(i32 %36, i64 %41)
  %43 = load %struct.s6gmac*, %struct.s6gmac** %10, align 8
  %44 = call i64 @s6mii_busy(%struct.s6gmac* %43, i32 256)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %22
  %47 = load i32, i32* @ETIME, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %50

49:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %49, %46, %19
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @s6mii_enable(%struct.s6gmac*) #1

declare dso_local i64 @s6mii_busy(%struct.s6gmac*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
