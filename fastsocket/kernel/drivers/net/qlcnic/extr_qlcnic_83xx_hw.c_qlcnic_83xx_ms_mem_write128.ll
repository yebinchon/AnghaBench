; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_ms_mem_write128.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_ms_mem_write128.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@QLCNIC_MS_ADDR_HI = common dso_local global i32 0, align 4
@QLCNIC_ADDR_QDR_NET = common dso_local global i32 0, align 4
@QLCNIC_ADDR_QDR_NET_MAX = common dso_local global i32 0, align 4
@QLCNIC_ADDR_DDR_NET = common dso_local global i32 0, align 4
@QLCNIC_ADDR_DDR_NET_MAX = common dso_local global i32 0, align 4
@QLCNIC_MS_ADDR_LO = common dso_local global i32 0, align 4
@QLCNIC_MS_WRTDATA_LO = common dso_local global i32 0, align 4
@QLCNIC_MS_WRTDATA_HI = common dso_local global i32 0, align 4
@QLCNIC_MS_WRTDATA_ULO = common dso_local global i32 0, align 4
@QLCNIC_MS_WRTDATA_UHI = common dso_local global i32 0, align 4
@QLCNIC_MS_CTRL = common dso_local global i32 0, align 4
@QLCNIC_TA_WRITE_ENABLE = common dso_local global i32 0, align 4
@QLCNIC_TA_WRITE_START = common dso_local global i32 0, align 4
@MAX_CTL_CHECK = common dso_local global i32 0, align 4
@TA_CTL_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"MS memory write failed.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_83xx_ms_mem_write128(%struct.qlcnic_adapter* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qlcnic_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %14 = load i32, i32* %7, align 4
  %15 = and i32 %14, 15
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %141

20:                                               ; preds = %4
  %21 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %22 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %27 = load i32, i32* @QLCNIC_MS_ADDR_HI, align 4
  %28 = call i32 @qlcnic_83xx_wrt_reg_indirect(%struct.qlcnic_adapter* %26, i32 %27, i32 0)
  store i32 0, i32* %10, align 4
  br label %29

29:                                               ; preds = %129, %20
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %134

33:                                               ; preds = %29
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @QLCNIC_ADDR_QDR_NET, align 4
  %36 = load i32, i32* @QLCNIC_ADDR_QDR_NET_MAX, align 4
  %37 = call i64 @ADDR_IN_RANGE(i32 %34, i32 %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %53, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @QLCNIC_ADDR_DDR_NET, align 4
  %42 = load i32, i32* @QLCNIC_ADDR_DDR_NET_MAX, align 4
  %43 = call i64 @ADDR_IN_RANGE(i32 %40, i32 %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %39
  %46 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %47 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = call i32 @mutex_unlock(i32* %49)
  %51 = load i32, i32* @EIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %141

53:                                               ; preds = %39, %33
  %54 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %55 = load i32, i32* @QLCNIC_MS_ADDR_LO, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @qlcnic_83xx_wrt_reg_indirect(%struct.qlcnic_adapter* %54, i32 %55, i32 %56)
  %58 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %59 = load i32, i32* @QLCNIC_MS_WRTDATA_LO, align 4
  %60 = load i32*, i32** %8, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %61, i32** %8, align 8
  %62 = load i32, i32* %60, align 4
  %63 = call i32 @qlcnic_83xx_wrt_reg_indirect(%struct.qlcnic_adapter* %58, i32 %59, i32 %62)
  %64 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %65 = load i32, i32* @QLCNIC_MS_WRTDATA_HI, align 4
  %66 = load i32*, i32** %8, align 8
  %67 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %67, i32** %8, align 8
  %68 = load i32, i32* %66, align 4
  %69 = call i32 @qlcnic_83xx_wrt_reg_indirect(%struct.qlcnic_adapter* %64, i32 %65, i32 %68)
  %70 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %71 = load i32, i32* @QLCNIC_MS_WRTDATA_ULO, align 4
  %72 = load i32*, i32** %8, align 8
  %73 = getelementptr inbounds i32, i32* %72, i32 1
  store i32* %73, i32** %8, align 8
  %74 = load i32, i32* %72, align 4
  %75 = call i32 @qlcnic_83xx_wrt_reg_indirect(%struct.qlcnic_adapter* %70, i32 %71, i32 %74)
  %76 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %77 = load i32, i32* @QLCNIC_MS_WRTDATA_UHI, align 4
  %78 = load i32*, i32** %8, align 8
  %79 = getelementptr inbounds i32, i32* %78, i32 1
  store i32* %79, i32** %8, align 8
  %80 = load i32, i32* %78, align 4
  %81 = call i32 @qlcnic_83xx_wrt_reg_indirect(%struct.qlcnic_adapter* %76, i32 %77, i32 %80)
  %82 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %83 = load i32, i32* @QLCNIC_MS_CTRL, align 4
  %84 = load i32, i32* @QLCNIC_TA_WRITE_ENABLE, align 4
  %85 = call i32 @qlcnic_83xx_wrt_reg_indirect(%struct.qlcnic_adapter* %82, i32 %83, i32 %84)
  %86 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %87 = load i32, i32* @QLCNIC_MS_CTRL, align 4
  %88 = load i32, i32* @QLCNIC_TA_WRITE_START, align 4
  %89 = call i32 @qlcnic_83xx_wrt_reg_indirect(%struct.qlcnic_adapter* %86, i32 %87, i32 %88)
  store i32 0, i32* %11, align 4
  br label %90

90:                                               ; preds = %104, %53
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* @MAX_CTL_CHECK, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %107

94:                                               ; preds = %90
  %95 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %96 = load i32, i32* @QLCNIC_MS_CTRL, align 4
  %97 = call i32 @qlcnic_83xx_rd_reg_indirect(%struct.qlcnic_adapter* %95, i32 %96)
  store i32 %97, i32* %13, align 4
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* @TA_CTL_BUSY, align 4
  %100 = and i32 %98, %99
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %94
  br label %107

103:                                              ; preds = %94
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %11, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %11, align 4
  br label %90

107:                                              ; preds = %102, %90
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* @MAX_CTL_CHECK, align 4
  %110 = icmp sge i32 %108, %109
  br i1 %110, label %111, label %128

111:                                              ; preds = %107
  %112 = call i64 (...) @printk_ratelimit()
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %127

114:                                              ; preds = %111
  %115 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %116 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %115, i32 0, i32 1
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = call i32 @dev_err(i32* %118, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %120 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %121 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %120, i32 0, i32 0
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = call i32 @mutex_unlock(i32* %123)
  %125 = load i32, i32* @EIO, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %5, align 4
  br label %141

127:                                              ; preds = %111
  br label %128

128:                                              ; preds = %127, %107
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %10, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %10, align 4
  %132 = load i32, i32* %7, align 4
  %133 = add nsw i32 %132, 16
  store i32 %133, i32* %7, align 4
  br label %29

134:                                              ; preds = %29
  %135 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %136 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %135, i32 0, i32 0
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = call i32 @mutex_unlock(i32* %138)
  %140 = load i32, i32* %12, align 4
  store i32 %140, i32* %5, align 4
  br label %141

141:                                              ; preds = %134, %114, %45, %17
  %142 = load i32, i32* %5, align 4
  ret i32 %142
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @qlcnic_83xx_wrt_reg_indirect(%struct.qlcnic_adapter*, i32, i32) #1

declare dso_local i64 @ADDR_IN_RANGE(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @qlcnic_83xx_rd_reg_indirect(%struct.qlcnic_adapter*, i32) #1

declare dso_local i64 @printk_ratelimit(...) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
