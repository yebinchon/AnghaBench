; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_check_blocks_with_parity2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_check_blocks_with_parity2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"CSEMI\00", align 1
@CSEM_REG_CSEM_PRTY_STS_0 = common dso_local global i32 0, align 4
@CSEM_REG_CSEM_PRTY_STS_1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"PXP\00", align 1
@PXP_REG_PXP_PRTY_STS = common dso_local global i32 0, align 4
@PXP2_REG_PXP2_PRTY_STS_0 = common dso_local global i32 0, align 4
@PXP2_REG_PXP2_PRTY_STS_1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"PXPPCICLOCKCLIENT\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"CFC\00", align 1
@CFC_REG_CFC_PRTY_STS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"CDU\00", align 1
@CDU_REG_CDU_PRTY_STS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"DMAE\00", align 1
@DMAE_REG_DMAE_PRTY_STS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"IGU\00", align 1
@HC_REG_HC_PRTY_STS = common dso_local global i32 0, align 4
@IGU_REG_IGU_PRTY_STS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"MISC\00", align 1
@MISC_REG_MISC_PRTY_STS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, i32, i32, i32)* @bnx2x_check_blocks_with_parity2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_check_blocks_with_parity2(%struct.bnx2x* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %132, %4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %135

14:                                               ; preds = %11
  %15 = load i32, i32* %9, align 4
  %16 = shl i32 1, %15
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %10, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %131

21:                                               ; preds = %14
  %22 = load i32, i32* %10, align 4
  switch i32 %22, label %126 [
    i32 133, label %23
    i32 129, label %37
    i32 128, label %54
    i32 134, label %62
    i32 135, label %73
    i32 132, label %84
    i32 131, label %95
    i32 130, label %115
  ]

23:                                               ; preds = %21
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %23
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %7, align 4
  %29 = call i32 @_print_next_block(i32 %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %31 = load i32, i32* @CSEM_REG_CSEM_PRTY_STS_0, align 4
  %32 = call i32 @_print_parity(%struct.bnx2x* %30, i32 %31)
  %33 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %34 = load i32, i32* @CSEM_REG_CSEM_PRTY_STS_1, align 4
  %35 = call i32 @_print_parity(%struct.bnx2x* %33, i32 %34)
  br label %36

36:                                               ; preds = %26, %23
  br label %126

37:                                               ; preds = %21
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %37
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  %43 = call i32 @_print_next_block(i32 %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %44 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %45 = load i32, i32* @PXP_REG_PXP_PRTY_STS, align 4
  %46 = call i32 @_print_parity(%struct.bnx2x* %44, i32 %45)
  %47 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %48 = load i32, i32* @PXP2_REG_PXP2_PRTY_STS_0, align 4
  %49 = call i32 @_print_parity(%struct.bnx2x* %47, i32 %48)
  %50 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %51 = load i32, i32* @PXP2_REG_PXP2_PRTY_STS_1, align 4
  %52 = call i32 @_print_parity(%struct.bnx2x* %50, i32 %51)
  br label %53

53:                                               ; preds = %40, %37
  br label %126

54:                                               ; preds = %21
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  %60 = call i32 @_print_next_block(i32 %58, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %61

61:                                               ; preds = %57, %54
  br label %126

62:                                               ; preds = %21
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %62
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  %68 = call i32 @_print_next_block(i32 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %69 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %70 = load i32, i32* @CFC_REG_CFC_PRTY_STS, align 4
  %71 = call i32 @_print_parity(%struct.bnx2x* %69, i32 %70)
  br label %72

72:                                               ; preds = %65, %62
  br label %126

73:                                               ; preds = %21
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %73
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %7, align 4
  %79 = call i32 @_print_next_block(i32 %77, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %80 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %81 = load i32, i32* @CDU_REG_CDU_PRTY_STS, align 4
  %82 = call i32 @_print_parity(%struct.bnx2x* %80, i32 %81)
  br label %83

83:                                               ; preds = %76, %73
  br label %126

84:                                               ; preds = %21
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %84
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %7, align 4
  %90 = call i32 @_print_next_block(i32 %88, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %91 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %92 = load i32, i32* @DMAE_REG_DMAE_PRTY_STS, align 4
  %93 = call i32 @_print_parity(%struct.bnx2x* %91, i32 %92)
  br label %94

94:                                               ; preds = %87, %84
  br label %126

95:                                               ; preds = %21
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %114

98:                                               ; preds = %95
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %7, align 4
  %101 = call i32 @_print_next_block(i32 %99, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %102 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %103 = call i32 @CHIP_IS_E1x(%struct.bnx2x* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %98
  %106 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %107 = load i32, i32* @HC_REG_HC_PRTY_STS, align 4
  %108 = call i32 @_print_parity(%struct.bnx2x* %106, i32 %107)
  br label %113

109:                                              ; preds = %98
  %110 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %111 = load i32, i32* @IGU_REG_IGU_PRTY_STS, align 4
  %112 = call i32 @_print_parity(%struct.bnx2x* %110, i32 %111)
  br label %113

113:                                              ; preds = %109, %105
  br label %114

114:                                              ; preds = %113, %95
  br label %126

115:                                              ; preds = %21
  %116 = load i32, i32* %8, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %115
  %119 = load i32, i32* %7, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %7, align 4
  %121 = call i32 @_print_next_block(i32 %119, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %122 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %123 = load i32, i32* @MISC_REG_MISC_PRTY_STS, align 4
  %124 = call i32 @_print_parity(%struct.bnx2x* %122, i32 %123)
  br label %125

125:                                              ; preds = %118, %115
  br label %126

126:                                              ; preds = %21, %125, %114, %94, %83, %72, %61, %53, %36
  %127 = load i32, i32* %10, align 4
  %128 = xor i32 %127, -1
  %129 = load i32, i32* %6, align 4
  %130 = and i32 %129, %128
  store i32 %130, i32* %6, align 4
  br label %131

131:                                              ; preds = %126, %14
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %9, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %9, align 4
  br label %11

135:                                              ; preds = %11
  %136 = load i32, i32* %7, align 4
  ret i32 %136
}

declare dso_local i32 @_print_next_block(i32, i8*) #1

declare dso_local i32 @_print_parity(%struct.bnx2x*, i32) #1

declare dso_local i32 @CHIP_IS_E1x(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
