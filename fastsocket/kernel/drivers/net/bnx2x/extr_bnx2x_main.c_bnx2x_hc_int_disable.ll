; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_hc_int_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_hc_int_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@HC_REG_CONFIG_1 = common dso_local global i32 0, align 4
@HC_REG_CONFIG_0 = common dso_local global i32 0, align 4
@HC_REG_INT_MASK = common dso_local global i32 0, align 4
@HC_CONFIG_0_REG_SINGLE_ISR_EN_0 = common dso_local global i32 0, align 4
@HC_CONFIG_0_REG_INT_LINE_EN_0 = common dso_local global i32 0, align 4
@HC_CONFIG_0_REG_ATTN_BIT_EN_0 = common dso_local global i32 0, align 4
@HC_CONFIG_0_REG_MSI_MSIX_INT_EN_0 = common dso_local global i32 0, align 4
@NETIF_MSG_IFDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"write %x to HC %d (addr 0x%x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"BUG! Proper val not read from IGU!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*)* @bnx2x_hc_int_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_hc_int_disable(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %6 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %7 = call i32 @BP_PORT(%struct.bnx2x* %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @HC_REG_CONFIG_1, align 4
  br label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @HC_REG_CONFIG_0, align 4
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ %11, %10 ], [ %13, %12 ]
  store i32 %15, i32* %4, align 4
  %16 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @REG_RD(%struct.bnx2x* %16, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %20 = call i64 @CHIP_IS_E1(%struct.bnx2x* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %14
  %23 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %24 = load i32, i32* @HC_REG_INT_MASK, align 4
  %25 = load i32, i32* %3, align 4
  %26 = mul nsw i32 %25, 4
  %27 = add nsw i32 %24, %26
  %28 = call i32 @REG_WR(%struct.bnx2x* %23, i32 %27, i32 0)
  %29 = load i32, i32* @HC_CONFIG_0_REG_SINGLE_ISR_EN_0, align 4
  %30 = load i32, i32* @HC_CONFIG_0_REG_INT_LINE_EN_0, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @HC_CONFIG_0_REG_ATTN_BIT_EN_0, align 4
  %33 = or i32 %31, %32
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %5, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %5, align 4
  br label %48

37:                                               ; preds = %14
  %38 = load i32, i32* @HC_CONFIG_0_REG_SINGLE_ISR_EN_0, align 4
  %39 = load i32, i32* @HC_CONFIG_0_REG_MSI_MSIX_INT_EN_0, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @HC_CONFIG_0_REG_INT_LINE_EN_0, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @HC_CONFIG_0_REG_ATTN_BIT_EN_0, align 4
  %44 = or i32 %42, %43
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %5, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %37, %22
  %49 = load i32, i32* @NETIF_MSG_IFDOWN, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @DP(i32 %49, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %51, i32 %52)
  %54 = call i32 (...) @mmiowb()
  %55 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @REG_WR(%struct.bnx2x* %55, i32 %56, i32 %57)
  %59 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @REG_RD(%struct.bnx2x* %59, i32 %60)
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %48
  %65 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %48
  ret void
}

declare dso_local i32 @BP_PORT(%struct.bnx2x*) #1

declare dso_local i32 @REG_RD(%struct.bnx2x*, i32) #1

declare dso_local i64 @CHIP_IS_E1(%struct.bnx2x*) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @DP(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @mmiowb(...) #1

declare dso_local i32 @BNX2X_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
