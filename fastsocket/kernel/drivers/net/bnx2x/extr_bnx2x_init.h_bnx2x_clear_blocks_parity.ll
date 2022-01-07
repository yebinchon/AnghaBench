; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_init.h_bnx2x_clear_blocks_parity.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_init.h_bnx2x_clear_blocks_parity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.bnx2x = type { i32 }

@AEU_INPUTS_ATTN_BITS_MCP_LATCHED_ROM_PARITY = common dso_local global i32 0, align 4
@AEU_INPUTS_ATTN_BITS_MCP_LATCHED_SCPAD_PARITY = common dso_local global i32 0, align 4
@AEU_INPUTS_ATTN_BITS_MCP_LATCHED_UMP_RX_PARITY = common dso_local global i32 0, align 4
@AEU_INPUTS_ATTN_BITS_MCP_LATCHED_UMP_TX_PARITY = common dso_local global i32 0, align 4
@XSEM_REG_FAST_MEMORY = common dso_local global i64 0, align 8
@SEM_FAST_REG_PARITY_RST = common dso_local global i64 0, align 8
@TSEM_REG_FAST_MEMORY = common dso_local global i64 0, align 8
@USEM_REG_FAST_MEMORY = common dso_local global i64 0, align 8
@CSEM_REG_FAST_MEMORY = common dso_local global i64 0, align 8
@bnx2x_blocks_parity_data = common dso_local global %struct.TYPE_3__* null, align 8
@NETIF_MSG_HW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Parity errors in %s: 0x%x\0A\00", align 1
@MISC_REG_AEU_AFTER_INVERT_4_MCP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Parity error in MCP: 0x%x\0A\00", align 1
@MISC_REG_AEU_CLR_LATCH_SIGNAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*)* @bnx2x_clear_blocks_parity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_clear_blocks_parity(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %7 = load i32, i32* @AEU_INPUTS_ATTN_BITS_MCP_LATCHED_ROM_PARITY, align 4
  %8 = load i32, i32* @AEU_INPUTS_ATTN_BITS_MCP_LATCHED_SCPAD_PARITY, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @AEU_INPUTS_ATTN_BITS_MCP_LATCHED_UMP_RX_PARITY, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @AEU_INPUTS_ATTN_BITS_MCP_LATCHED_UMP_TX_PARITY, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %5, align 4
  %14 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %15 = load i64, i64* @XSEM_REG_FAST_MEMORY, align 8
  %16 = load i64, i64* @SEM_FAST_REG_PARITY_RST, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @REG_WR(%struct.bnx2x* %14, i64 %17, i32 1)
  %19 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %20 = load i64, i64* @TSEM_REG_FAST_MEMORY, align 8
  %21 = load i64, i64* @SEM_FAST_REG_PARITY_RST, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @REG_WR(%struct.bnx2x* %19, i64 %22, i32 1)
  %24 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %25 = load i64, i64* @USEM_REG_FAST_MEMORY, align 8
  %26 = load i64, i64* @SEM_FAST_REG_PARITY_RST, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @REG_WR(%struct.bnx2x* %24, i64 %27, i32 1)
  %29 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %30 = load i64, i64* @CSEM_REG_FAST_MEMORY, align 8
  %31 = load i64, i64* @SEM_FAST_REG_PARITY_RST, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @REG_WR(%struct.bnx2x* %29, i64 %32, i32 1)
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %72, %1
  %35 = load i32, i32* %3, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bnx2x_blocks_parity_data, align 8
  %37 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %36)
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %75

39:                                               ; preds = %34
  %40 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @bnx2x_parity_reg_mask(%struct.bnx2x* %40, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %71

45:                                               ; preds = %39
  %46 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bnx2x_blocks_parity_data, align 8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @REG_RD(%struct.bnx2x* %46, i32 %52)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %6, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %45
  %59 = load i32, i32* @NETIF_MSG_HW, align 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bnx2x_blocks_parity_data, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* %6, align 4
  %68 = and i32 %66, %67
  %69 = call i32 (i32, i8*, i32, ...) @DP(i32 %59, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %65, i32 %68)
  br label %70

70:                                               ; preds = %58, %45
  br label %71

71:                                               ; preds = %70, %39
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %3, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %3, align 4
  br label %34

75:                                               ; preds = %34
  %76 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %77 = load i32, i32* @MISC_REG_AEU_AFTER_INVERT_4_MCP, align 4
  %78 = call i32 @REG_RD(%struct.bnx2x* %76, i32 %77)
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* %5, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %75
  %84 = load i32, i32* @NETIF_MSG_HW, align 4
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* %5, align 4
  %87 = and i32 %85, %86
  %88 = call i32 (i32, i8*, i32, ...) @DP(i32 %84, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %83, %75
  %90 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %91 = load i64, i64* @MISC_REG_AEU_CLR_LATCH_SIGNAL, align 8
  %92 = call i32 @REG_WR(%struct.bnx2x* %90, i64 %91, i32 1920)
  ret void
}

declare dso_local i32 @REG_WR(%struct.bnx2x*, i64, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @bnx2x_parity_reg_mask(%struct.bnx2x*, i32) #1

declare dso_local i32 @REG_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @DP(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
