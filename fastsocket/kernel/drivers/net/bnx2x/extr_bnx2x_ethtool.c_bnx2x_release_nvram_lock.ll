; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_ethtool.c_bnx2x_release_nvram_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_ethtool.c_bnx2x_release_nvram_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@BNX2X_NVRAM_TIMEOUT_COUNT = common dso_local global i32 0, align 4
@MCP_REG_MCPR_NVM_SW_ARB = common dso_local global i32 0, align 4
@MCPR_NVM_SW_ARB_ARB_REQ_CLR1 = common dso_local global i32 0, align 4
@MCPR_NVM_SW_ARB_ARB_ARB1 = common dso_local global i32 0, align 4
@BNX2X_MSG_ETHTOOL = common dso_local global i32 0, align 4
@BNX2X_MSG_NVM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"cannot free access to nvram interface\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@HW_LOCK_RESOURCE_NVRAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*)* @bnx2x_release_nvram_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_release_nvram_lock(%struct.bnx2x* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  %8 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %9 = call i32 @BP_PORT(%struct.bnx2x* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* @BNX2X_NVRAM_TIMEOUT_COUNT, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %12 = call i64 @CHIP_REV_IS_SLOW(%struct.bnx2x* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  %16 = mul nsw i32 %15, 100
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %14, %1
  %18 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %19 = load i32, i32* @MCP_REG_MCPR_NVM_SW_ARB, align 4
  %20 = load i32, i32* @MCPR_NVM_SW_ARB_ARB_REQ_CLR1, align 4
  %21 = load i32, i32* %4, align 4
  %22 = shl i32 %20, %21
  %23 = call i32 @REG_WR(%struct.bnx2x* %18, i32 %19, i32 %22)
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %42, %17
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %5, align 4
  %27 = mul nsw i32 %26, 10
  %28 = icmp slt i32 %25, %27
  br i1 %28, label %29, label %45

29:                                               ; preds = %24
  %30 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %31 = load i32, i32* @MCP_REG_MCPR_NVM_SW_ARB, align 4
  %32 = call i32 @REG_RD(%struct.bnx2x* %30, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @MCPR_NVM_SW_ARB_ARB_ARB1, align 4
  %35 = load i32, i32* %4, align 4
  %36 = shl i32 %34, %35
  %37 = and i32 %33, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %29
  br label %45

40:                                               ; preds = %29
  %41 = call i32 @udelay(i32 5)
  br label %42

42:                                               ; preds = %40
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %24

45:                                               ; preds = %39, %24
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @MCPR_NVM_SW_ARB_ARB_ARB1, align 4
  %48 = load i32, i32* %4, align 4
  %49 = shl i32 %47, %48
  %50 = and i32 %46, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %45
  %53 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %54 = load i32, i32* @BNX2X_MSG_NVM, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @DP(i32 %55, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %57 = load i32, i32* @EBUSY, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %63

59:                                               ; preds = %45
  %60 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %61 = load i32, i32* @HW_LOCK_RESOURCE_NVRAM, align 4
  %62 = call i32 @bnx2x_release_hw_lock(%struct.bnx2x* %60, i32 %61)
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %59, %52
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @BP_PORT(%struct.bnx2x*) #1

declare dso_local i64 @CHIP_REV_IS_SLOW(%struct.bnx2x*) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @REG_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @DP(i32, i8*) #1

declare dso_local i32 @bnx2x_release_hw_lock(%struct.bnx2x*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
