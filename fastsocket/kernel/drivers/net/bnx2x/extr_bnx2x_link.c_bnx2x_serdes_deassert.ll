; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_serdes_deassert.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_serdes_deassert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"bnx2x_serdes_deassert\0A\00", align 1
@SERDES_RESET_BITS = common dso_local global i32 0, align 4
@GRCBASE_MISC = common dso_local global i64 0, align 8
@MISC_REGISTERS_RESET_REG_3_CLEAR = common dso_local global i64 0, align 8
@MISC_REGISTERS_RESET_REG_3_SET = common dso_local global i64 0, align 8
@NIG_REG_SERDES0_CTRL_MD_DEVAD = common dso_local global i64 0, align 8
@DEFAULT_PHY_DEV_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, i32)* @bnx2x_serdes_deassert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_serdes_deassert(%struct.bnx2x* %0, i32 %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @NETIF_MSG_LINK, align 4
  %7 = call i32 @DP(i32 %6, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @SERDES_RESET_BITS, align 4
  %9 = load i32, i32* %4, align 4
  %10 = mul nsw i32 %9, 16
  %11 = shl i32 %8, %10
  store i32 %11, i32* %5, align 4
  %12 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %13 = load i64, i64* @GRCBASE_MISC, align 8
  %14 = load i64, i64* @MISC_REGISTERS_RESET_REG_3_CLEAR, align 8
  %15 = add nsw i64 %13, %14
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @REG_WR(%struct.bnx2x* %12, i64 %15, i32 %16)
  %18 = call i32 @udelay(i32 500)
  %19 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %20 = load i64, i64* @GRCBASE_MISC, align 8
  %21 = load i64, i64* @MISC_REGISTERS_RESET_REG_3_SET, align 8
  %22 = add nsw i64 %20, %21
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @REG_WR(%struct.bnx2x* %19, i64 %22, i32 %23)
  %25 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @bnx2x_set_serdes_access(%struct.bnx2x* %25, i32 %26)
  %28 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %29 = load i64, i64* @NIG_REG_SERDES0_CTRL_MD_DEVAD, align 8
  %30 = load i32, i32* %4, align 4
  %31 = mul nsw i32 %30, 16
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %29, %32
  %34 = load i32, i32* @DEFAULT_PHY_DEV_ADDR, align 4
  %35 = call i32 @REG_WR(%struct.bnx2x* %28, i64 %33, i32 %34)
  ret void
}

declare dso_local i32 @DP(i32, i8*) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i64, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @bnx2x_set_serdes_access(%struct.bnx2x*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
