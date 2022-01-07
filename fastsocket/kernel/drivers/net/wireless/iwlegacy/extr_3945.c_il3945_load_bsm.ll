; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945.c_il3945_load_bsm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945.c_il3945_load_bsm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64, i32* }

@.str = private unnamed_addr constant [16 x i8] c"Begin load bsm\0A\00", align 1
@IL39_MAX_BSM_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@BSM_DRAM_INST_PTR_REG = common dso_local global i32 0, align 4
@BSM_DRAM_DATA_PTR_REG = common dso_local global i32 0, align 4
@BSM_DRAM_INST_BYTECOUNT_REG = common dso_local global i32 0, align 4
@BSM_DRAM_DATA_BYTECOUNT_REG = common dso_local global i32 0, align 4
@BSM_SRAM_LOWER_BOUND = common dso_local global i64 0, align 8
@BSM_WR_MEM_SRC_REG = common dso_local global i32 0, align 4
@BSM_WR_MEM_DST_REG = common dso_local global i32 0, align 4
@IL39_RTC_INST_LOWER_BOUND = common dso_local global i64 0, align 8
@BSM_WR_DWCOUNT_REG = common dso_local global i32 0, align 4
@BSM_WR_CTRL_REG = common dso_local global i32 0, align 4
@BSM_WR_CTRL_REG_BIT_START = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"BSM write complete, poll %d iterations\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"BSM write did not complete!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@BSM_WR_CTRL_REG_BIT_START_EN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_priv*)* @il3945_load_bsm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il3945_load_bsm(%struct.il_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.il_priv*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.il_priv* %0, %struct.il_priv** %3, align 8
  %14 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %15 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %4, align 8
  %18 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %19 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %5, align 8
  %22 = call i32 (i8*, ...) @D_INFO(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* @IL39_MAX_BSM_SIZE, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %137

29:                                               ; preds = %1
  %30 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %31 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %6, align 8
  %34 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %35 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %7, align 8
  %38 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %39 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %8, align 8
  %42 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %43 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %9, align 8
  %46 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %47 = load i32, i32* @BSM_DRAM_INST_PTR_REG, align 4
  %48 = load i64, i64* %6, align 8
  %49 = call i32 @il_wr_prph(%struct.il_priv* %46, i32 %47, i64 %48)
  %50 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %51 = load i32, i32* @BSM_DRAM_DATA_PTR_REG, align 4
  %52 = load i64, i64* %7, align 8
  %53 = call i32 @il_wr_prph(%struct.il_priv* %50, i32 %51, i64 %52)
  %54 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %55 = load i32, i32* @BSM_DRAM_INST_BYTECOUNT_REG, align 4
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @il_wr_prph(%struct.il_priv* %54, i32 %55, i64 %56)
  %58 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %59 = load i32, i32* @BSM_DRAM_DATA_BYTECOUNT_REG, align 4
  %60 = load i64, i64* %9, align 8
  %61 = call i32 @il_wr_prph(%struct.il_priv* %58, i32 %59, i64 %60)
  %62 = load i64, i64* @BSM_SRAM_LOWER_BOUND, align 8
  store i64 %62, i64* %13, align 8
  br label %63

63:                                               ; preds = %76, %29
  %64 = load i64, i64* %13, align 8
  %65 = load i64, i64* @BSM_SRAM_LOWER_BOUND, align 8
  %66 = load i64, i64* %5, align 8
  %67 = add nsw i64 %65, %66
  %68 = icmp slt i64 %64, %67
  br i1 %68, label %69, label %81

69:                                               ; preds = %63
  %70 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %71 = load i64, i64* %13, align 8
  %72 = load i32*, i32** %4, align 8
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @le32_to_cpu(i32 %73)
  %75 = call i32 @_il_wr_prph(%struct.il_priv* %70, i64 %71, i32 %74)
  br label %76

76:                                               ; preds = %69
  %77 = load i64, i64* %13, align 8
  %78 = add i64 %77, 8
  store i64 %78, i64* %13, align 8
  %79 = load i32*, i32** %4, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %4, align 8
  br label %63

81:                                               ; preds = %63
  %82 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %83 = call i32 @il3945_verify_bsm(%struct.il_priv* %82)
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %10, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = load i32, i32* %10, align 4
  store i32 %87, i32* %2, align 4
  br label %137

88:                                               ; preds = %81
  %89 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %90 = load i32, i32* @BSM_WR_MEM_SRC_REG, align 4
  %91 = call i32 @il_wr_prph(%struct.il_priv* %89, i32 %90, i64 0)
  %92 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %93 = load i32, i32* @BSM_WR_MEM_DST_REG, align 4
  %94 = load i64, i64* @IL39_RTC_INST_LOWER_BOUND, align 8
  %95 = call i32 @il_wr_prph(%struct.il_priv* %92, i32 %93, i64 %94)
  %96 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %97 = load i32, i32* @BSM_WR_DWCOUNT_REG, align 4
  %98 = load i64, i64* %5, align 8
  %99 = udiv i64 %98, 8
  %100 = call i32 @il_wr_prph(%struct.il_priv* %96, i32 %97, i64 %99)
  %101 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %102 = load i32, i32* @BSM_WR_CTRL_REG, align 4
  %103 = load i64, i64* @BSM_WR_CTRL_REG_BIT_START, align 8
  %104 = call i32 @il_wr_prph(%struct.il_priv* %101, i32 %102, i64 %103)
  store i32 0, i32* %11, align 4
  br label %105

105:                                              ; preds = %119, %88
  %106 = load i32, i32* %11, align 4
  %107 = icmp slt i32 %106, 100
  br i1 %107, label %108, label %122

108:                                              ; preds = %105
  %109 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %110 = load i32, i32* @BSM_WR_CTRL_REG, align 4
  %111 = call i64 @il_rd_prph(%struct.il_priv* %109, i32 %110)
  store i64 %111, i64* %12, align 8
  %112 = load i64, i64* %12, align 8
  %113 = load i64, i64* @BSM_WR_CTRL_REG_BIT_START, align 8
  %114 = and i64 %112, %113
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %108
  br label %122

117:                                              ; preds = %108
  %118 = call i32 @udelay(i32 10)
  br label %119

119:                                              ; preds = %117
  %120 = load i32, i32* %11, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %11, align 4
  br label %105

122:                                              ; preds = %116, %105
  %123 = load i32, i32* %11, align 4
  %124 = icmp slt i32 %123, 100
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load i32, i32* %11, align 4
  %127 = call i32 (i8*, ...) @D_INFO(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %126)
  br label %132

128:                                              ; preds = %122
  %129 = call i32 @IL_ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %130 = load i32, i32* @EIO, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %2, align 4
  br label %137

132:                                              ; preds = %125
  %133 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %134 = load i32, i32* @BSM_WR_CTRL_REG, align 4
  %135 = load i64, i64* @BSM_WR_CTRL_REG_BIT_START_EN, align 8
  %136 = call i32 @il_wr_prph(%struct.il_priv* %133, i32 %134, i64 %135)
  store i32 0, i32* %2, align 4
  br label %137

137:                                              ; preds = %132, %128, %86, %26
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local i32 @D_INFO(i8*, ...) #1

declare dso_local i32 @il_wr_prph(%struct.il_priv*, i32, i64) #1

declare dso_local i32 @_il_wr_prph(%struct.il_priv*, i64, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @il3945_verify_bsm(%struct.il_priv*) #1

declare dso_local i64 @il_rd_prph(%struct.il_priv*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @IL_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
