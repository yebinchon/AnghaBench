; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_igu_int_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_igu_int_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@IGU_REG_PF_CONFIGURATION = common dso_local global i32 0, align 4
@IGU_PF_CONF_MSI_MSIX_EN = common dso_local global i32 0, align 4
@IGU_PF_CONF_INT_LINE_EN = common dso_local global i32 0, align 4
@IGU_PF_CONF_ATTN_BIT_EN = common dso_local global i32 0, align 4
@NETIF_MSG_IFDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"write %x to IGU\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"BUG! Proper val not read from IGU!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*)* @bnx2x_igu_int_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_igu_int_disable(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %4 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %5 = load i32, i32* @IGU_REG_PF_CONFIGURATION, align 4
  %6 = call i32 @REG_RD(%struct.bnx2x* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @IGU_PF_CONF_MSI_MSIX_EN, align 4
  %8 = load i32, i32* @IGU_PF_CONF_INT_LINE_EN, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @IGU_PF_CONF_ATTN_BIT_EN, align 4
  %11 = or i32 %9, %10
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* @NETIF_MSG_IFDOWN, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @DP(i32 %15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = call i32 (...) @mmiowb()
  %19 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %20 = load i32, i32* @IGU_REG_PF_CONFIGURATION, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @REG_WR(%struct.bnx2x* %19, i32 %20, i32 %21)
  %23 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %24 = load i32, i32* @IGU_REG_PF_CONFIGURATION, align 4
  %25 = call i32 @REG_RD(%struct.bnx2x* %23, i32 %24)
  %26 = load i32, i32* %3, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %1
  ret void
}

declare dso_local i32 @REG_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @DP(i32, i8*, i32) #1

declare dso_local i32 @mmiowb(...) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @BNX2X_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
