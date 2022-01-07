; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_set_bmac_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_set_bmac_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@NIG_REG_INGRESS_BMAC1_MEM = common dso_local global i32 0, align 4
@NIG_REG_INGRESS_BMAC0_MEM = common dso_local global i32 0, align 4
@NIG_REG_BMAC0_REGS_OUT_EN = common dso_local global i64 0, align 8
@BIGMAC2_REGISTER_BMAC_CONTROL = common dso_local global i64 0, align 8
@BIGMAC_REGISTER_BMAC_CONTROL = common dso_local global i64 0, align 8
@MISC_REG_RESET_REG_2 = common dso_local global i64 0, align 8
@MISC_REGISTERS_RESET_REG_2_RST_BMAC0 = common dso_local global i32 0, align 4
@BMAC_CONTROL_RX_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, i32, i32, i32)* @bnx2x_set_bmac_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_set_bmac_rx(%struct.bnx2x* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x i32], align 4
  %11 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = load i32, i32* @NIG_REG_INGRESS_BMAC1_MEM, align 4
  br label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @NIG_REG_INGRESS_BMAC0_MEM, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  store i32 %19, i32* %9, align 4
  %20 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %21 = load i64, i64* @NIG_REG_BMAC0_REGS_OUT_EN, align 8
  %22 = load i32, i32* %7, align 4
  %23 = mul nsw i32 %22, 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %21, %24
  %26 = call i32 @REG_RD(%struct.bnx2x* %20, i64 %25)
  store i32 %26, i32* %11, align 4
  %27 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %28 = call i64 @CHIP_IS_E2(%struct.bnx2x* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %18
  %31 = load i64, i64* @BIGMAC2_REGISTER_BMAC_CONTROL, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %9, align 4
  br label %42

36:                                               ; preds = %18
  %37 = load i64, i64* @BIGMAC_REGISTER_BMAC_CONTROL, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %39, %37
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %36, %30
  %43 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %44 = load i64, i64* @MISC_REG_RESET_REG_2, align 8
  %45 = call i32 @REG_RD(%struct.bnx2x* %43, i64 %44)
  %46 = load i32, i32* @MISC_REGISTERS_RESET_REG_2_RST_BMAC0, align 4
  %47 = load i32, i32* %7, align 4
  %48 = shl i32 %46, %47
  %49 = and i32 %45, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %78

51:                                               ; preds = %42
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %78

54:                                               ; preds = %51
  %55 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %56 = load i32, i32* %9, align 4
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %58 = call i32 @REG_RD_DMAE(%struct.bnx2x* %55, i32 %56, i32* %57, i32 2)
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %54
  %62 = load i32, i32* @BMAC_CONTROL_RX_ENABLE, align 4
  %63 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %62
  store i32 %65, i32* %63, align 4
  br label %72

66:                                               ; preds = %54
  %67 = load i32, i32* @BMAC_CONTROL_RX_ENABLE, align 4
  %68 = xor i32 %67, -1
  %69 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, %68
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %66, %61
  %73 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %74 = load i32, i32* %9, align 4
  %75 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %76 = call i32 @REG_WR_DMAE(%struct.bnx2x* %73, i32 %74, i32* %75, i32 2)
  %77 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %78

78:                                               ; preds = %72, %51, %42
  ret void
}

declare dso_local i32 @REG_RD(%struct.bnx2x*, i64) #1

declare dso_local i64 @CHIP_IS_E2(%struct.bnx2x*) #1

declare dso_local i32 @REG_RD_DMAE(%struct.bnx2x*, i32, i32*, i32) #1

declare dso_local i32 @REG_WR_DMAE(%struct.bnx2x*, i32, i32*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
