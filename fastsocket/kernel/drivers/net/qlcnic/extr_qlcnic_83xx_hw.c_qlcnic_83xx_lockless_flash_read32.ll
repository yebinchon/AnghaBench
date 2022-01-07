; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_lockless_flash_read32.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_lockless_flash_read32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@QLCNIC_FLASH_SECTOR_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Illegal addr = 0x%x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@QLC_83XX_FLASH_DIRECT_WINDOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_83xx_lockless_flash_read32(%struct.qlcnic_adapter* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qlcnic_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %15, align 4
  %19 = load i32, i32* %15, align 4
  %20 = load i32, i32* @QLCNIC_FLASH_SECTOR_SIZE, align 4
  %21 = sub nsw i32 %20, 1
  %22 = and i32 %19, %21
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %15, align 4
  %24 = and i32 %23, 3
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %4
  %27 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %28 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %15, align 4
  %32 = call i32 @dev_err(i32* %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %125

35:                                               ; preds = %4
  %36 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %37 = load i32, i32* @QLC_83XX_FLASH_DIRECT_WINDOW, align 4
  %38 = load i32, i32* %15, align 4
  %39 = call i32 @qlcnic_83xx_wrt_reg_indirect(%struct.qlcnic_adapter* %36, i32 %37, i32 %38)
  %40 = load i32, i32* %14, align 4
  %41 = sext i32 %40 to i64
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 4
  %45 = add i64 %41, %44
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* @QLCNIC_FLASH_SECTOR_SIZE, align 4
  %49 = sub nsw i32 %48, 1
  %50 = icmp sgt i32 %47, %49
  br i1 %50, label %51, label %94

51:                                               ; preds = %35
  store i32 0, i32* %10, align 4
  br label %52

52:                                               ; preds = %90, %51
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %93

56:                                               ; preds = %52
  %57 = load i32, i32* %15, align 4
  %58 = call i32 @QLC_83XX_FLASH_DIRECT_DATA(i32 %57)
  store i32 %58, i32* %16, align 4
  %59 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %60 = load i32, i32* %16, align 4
  %61 = call i32 @qlcnic_83xx_rd_reg_indirect(%struct.qlcnic_adapter* %59, i32 %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @EIO, align 4
  %64 = sub nsw i32 0, %63
  %65 = icmp eq i32 %62, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %56
  %67 = load i32, i32* @EIO, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %5, align 4
  br label %125

69:                                               ; preds = %56
  %70 = load i32, i32* %11, align 4
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %12, align 4
  %72 = load i32*, i32** %8, align 8
  store i32 %71, i32* %72, align 4
  %73 = load i32*, i32** %8, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 4
  store i32* %74, i32** %8, align 8
  %75 = load i32, i32* %15, align 4
  %76 = add nsw i32 %75, 4
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* %14, align 4
  %78 = add nsw i32 %77, 4
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* @QLCNIC_FLASH_SECTOR_SIZE, align 4
  %81 = sub nsw i32 %80, 1
  %82 = icmp sgt i32 %79, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %69
  %84 = load i32, i32* @QLC_83XX_FLASH_DIRECT_WINDOW, align 4
  store i32 %84, i32* %17, align 4
  %85 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %86 = load i32, i32* %17, align 4
  %87 = load i32, i32* %15, align 4
  %88 = call i32 @qlcnic_83xx_wrt_reg_indirect(%struct.qlcnic_adapter* %85, i32 %86, i32 %87)
  store i32 0, i32* %14, align 4
  br label %89

89:                                               ; preds = %83, %69
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %10, align 4
  br label %52

93:                                               ; preds = %52
  br label %124

94:                                               ; preds = %35
  store i32 0, i32* %10, align 4
  br label %95

95:                                               ; preds = %120, %94
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %123

99:                                               ; preds = %95
  %100 = load i32, i32* %15, align 4
  %101 = call i32 @QLC_83XX_FLASH_DIRECT_DATA(i32 %100)
  store i32 %101, i32* %16, align 4
  %102 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %103 = load i32, i32* %16, align 4
  %104 = call i32 @qlcnic_83xx_rd_reg_indirect(%struct.qlcnic_adapter* %102, i32 %103)
  store i32 %104, i32* %11, align 4
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* @EIO, align 4
  %107 = sub nsw i32 0, %106
  %108 = icmp eq i32 %105, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %99
  %110 = load i32, i32* @EIO, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %5, align 4
  br label %125

112:                                              ; preds = %99
  %113 = load i32, i32* %11, align 4
  store i32 %113, i32* %12, align 4
  %114 = load i32, i32* %12, align 4
  %115 = load i32*, i32** %8, align 8
  store i32 %114, i32* %115, align 4
  %116 = load i32*, i32** %8, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 4
  store i32* %117, i32** %8, align 8
  %118 = load i32, i32* %15, align 4
  %119 = add nsw i32 %118, 4
  store i32 %119, i32* %15, align 4
  br label %120

120:                                              ; preds = %112
  %121 = load i32, i32* %10, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %10, align 4
  br label %95

123:                                              ; preds = %95
  br label %124

124:                                              ; preds = %123, %93
  store i32 0, i32* %5, align 4
  br label %125

125:                                              ; preds = %124, %109, %66, %26
  %126 = load i32, i32* %5, align 4
  ret i32 %126
}

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @qlcnic_83xx_wrt_reg_indirect(%struct.qlcnic_adapter*, i32, i32) #1

declare dso_local i32 @QLC_83XX_FLASH_DIRECT_DATA(i32) #1

declare dso_local i32 @qlcnic_83xx_rd_reg_indirect(%struct.qlcnic_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
