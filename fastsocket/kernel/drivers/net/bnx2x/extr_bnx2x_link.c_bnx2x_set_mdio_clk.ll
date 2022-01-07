; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_set_mdio_clk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_set_mdio_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@EMAC_REG_EMAC_MDIO_MODE = common dso_local global i32 0, align 4
@EMAC_MDIO_MODE_CLOCK_CNT_BITSHIFT = common dso_local global i64 0, align 8
@EMAC_MDIO_MODE_CLOCK_CNT = common dso_local global i32 0, align 4
@EMAC_MDIO_MODE_CLAUSE_45 = common dso_local global i32 0, align 4
@EMAC_MDIO_MODE_AUTO_POLL = common dso_local global i32 0, align 4
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Changing emac_mode from 0x%x to 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, i32, i32)* @bnx2x_set_mdio_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_set_mdio_clk(%struct.bnx2x* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @EMAC_REG_EMAC_MDIO_MODE, align 4
  %13 = add nsw i32 %11, %12
  %14 = call i32 @REG_RD(%struct.bnx2x* %10, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %16 = call i64 @USES_WARPCORE(%struct.bnx2x* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load i64, i64* @EMAC_MDIO_MODE_CLOCK_CNT_BITSHIFT, align 8
  %20 = shl i64 74, %19
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %9, align 4
  br label %26

22:                                               ; preds = %3
  %23 = load i64, i64* @EMAC_MDIO_MODE_CLOCK_CNT_BITSHIFT, align 8
  %24 = shl i64 49, %23
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %9, align 4
  br label %26

26:                                               ; preds = %22, %18
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @EMAC_MDIO_MODE_CLOCK_CNT, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* %9, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @EMAC_MDIO_MODE_CLAUSE_45, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %62

38:                                               ; preds = %32, %26
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @EMAC_MDIO_MODE_AUTO_POLL, align 4
  %41 = load i32, i32* @EMAC_MDIO_MODE_CLOCK_CNT, align 4
  %42 = or i32 %40, %41
  %43 = xor i32 %42, -1
  %44 = and i32 %39, %43
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %7, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* @EMAC_MDIO_MODE_CLAUSE_45, align 4
  %49 = load i32, i32* %7, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* @NETIF_MSG_LINK, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @DP(i32 %51, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %53)
  %55 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @EMAC_REG_EMAC_MDIO_MODE, align 4
  %58 = add nsw i32 %56, %57
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @REG_WR(%struct.bnx2x* %55, i32 %58, i32 %59)
  %61 = call i32 @udelay(i32 40)
  br label %62

62:                                               ; preds = %38, %37
  ret void
}

declare dso_local i32 @REG_RD(%struct.bnx2x*, i32) #1

declare dso_local i64 @USES_WARPCORE(%struct.bnx2x*) #1

declare dso_local i32 @DP(i32, i8*, i32, i32) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
