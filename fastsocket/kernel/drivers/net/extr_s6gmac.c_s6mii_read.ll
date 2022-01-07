; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_s6gmac.c_s6mii_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_s6gmac.c_s6mii_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { %struct.s6gmac* }
%struct.s6gmac = type { i64 }

@ETIME = common dso_local global i32 0, align 4
@S6_GMAC_MACMIIADDR_PHY = common dso_local global i32 0, align 4
@S6_GMAC_MACMIIADDR_REG = common dso_local global i32 0, align 4
@S6_GMAC_MACMIIADDR = common dso_local global i64 0, align 8
@S6_GMAC_MACMIICMD_READ = common dso_local global i32 0, align 4
@S6_GMAC_MACMIICMD = common dso_local global i64 0, align 8
@S6_GMAC_MACMIISTAT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32)* @s6mii_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s6mii_read(%struct.mii_bus* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mii_bus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.s6gmac*, align 8
  store %struct.mii_bus* %0, %struct.mii_bus** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %10 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %9, i32 0, i32 0
  %11 = load %struct.s6gmac*, %struct.s6gmac** %10, align 8
  store %struct.s6gmac* %11, %struct.s6gmac** %8, align 8
  %12 = load %struct.s6gmac*, %struct.s6gmac** %8, align 8
  %13 = call i32 @s6mii_enable(%struct.s6gmac* %12)
  %14 = load %struct.s6gmac*, %struct.s6gmac** %8, align 8
  %15 = call i64 @s6mii_busy(%struct.s6gmac* %14, i32 256)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @ETIME, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %61

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @S6_GMAC_MACMIIADDR_PHY, align 4
  %23 = shl i32 %21, %22
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @S6_GMAC_MACMIIADDR_REG, align 4
  %26 = shl i32 %24, %25
  %27 = or i32 %23, %26
  %28 = load %struct.s6gmac*, %struct.s6gmac** %8, align 8
  %29 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @S6_GMAC_MACMIIADDR, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @writel(i32 %27, i64 %32)
  %34 = load i32, i32* @S6_GMAC_MACMIICMD_READ, align 4
  %35 = shl i32 1, %34
  %36 = load %struct.s6gmac*, %struct.s6gmac** %8, align 8
  %37 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @S6_GMAC_MACMIICMD, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writel(i32 %35, i64 %40)
  %42 = load %struct.s6gmac*, %struct.s6gmac** %8, align 8
  %43 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @S6_GMAC_MACMIICMD, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @writel(i32 0, i64 %46)
  %48 = load %struct.s6gmac*, %struct.s6gmac** %8, align 8
  %49 = call i64 @s6mii_busy(%struct.s6gmac* %48, i32 256)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %20
  %52 = load i32, i32* @ETIME, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %61

54:                                               ; preds = %20
  %55 = load %struct.s6gmac*, %struct.s6gmac** %8, align 8
  %56 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @S6_GMAC_MACMIISTAT, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @readl(i64 %59)
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %54, %51, %17
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @s6mii_enable(%struct.s6gmac*) #1

declare dso_local i64 @s6mii_busy(%struct.s6gmac*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
