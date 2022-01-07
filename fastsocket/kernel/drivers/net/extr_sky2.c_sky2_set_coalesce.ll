; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sky2.c_sky2_set_coalesce.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sky2.c_sky2_set_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_coalesce = type { i64, i64, i64, i32, i64, i64 }
%struct.sky2_port = type { i32, %struct.sky2_hw* }
%struct.sky2_hw = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@RX_MAX_PENDING = common dso_local global i64 0, align 8
@STAT_TX_TIMER_CTRL = common dso_local global i32 0, align 4
@TIM_STOP = common dso_local global i64 0, align 8
@STAT_TX_TIMER_INI = common dso_local global i32 0, align 4
@TIM_START = common dso_local global i64 0, align 8
@STAT_TX_IDX_TH = common dso_local global i32 0, align 4
@STAT_LEV_TIMER_CTRL = common dso_local global i32 0, align 4
@STAT_LEV_TIMER_INI = common dso_local global i32 0, align 4
@STAT_FIFO_WM = common dso_local global i32 0, align 4
@STAT_ISR_TIMER_CTRL = common dso_local global i32 0, align 4
@STAT_ISR_TIMER_INI = common dso_local global i32 0, align 4
@STAT_FIFO_ISR_WM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_coalesce*)* @sky2_set_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sky2_set_coalesce(%struct.net_device* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_coalesce*, align 8
  %6 = alloca %struct.sky2_port*, align 8
  %7 = alloca %struct.sky2_hw*, align 8
  %8 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.sky2_port* @netdev_priv(%struct.net_device* %9)
  store %struct.sky2_port* %10, %struct.sky2_port** %6, align 8
  %11 = load %struct.sky2_port*, %struct.sky2_port** %6, align 8
  %12 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %11, i32 0, i32 1
  %13 = load %struct.sky2_hw*, %struct.sky2_hw** %12, align 8
  store %struct.sky2_hw* %13, %struct.sky2_hw** %7, align 8
  %14 = load %struct.sky2_hw*, %struct.sky2_hw** %7, align 8
  %15 = call i64 @sky2_clk2us(%struct.sky2_hw* %14, i32 16777215)
  store i64 %15, i64* %8, align 8
  %16 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %17 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %8, align 8
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %33, label %21

21:                                               ; preds = %2
  %22 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %23 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %8, align 8
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %29 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %8, align 8
  %32 = icmp sgt i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27, %21, %2
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %154

36:                                               ; preds = %27
  %37 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %38 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.sky2_port*, %struct.sky2_port** %6, align 8
  %41 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sub nsw i32 %42, 1
  %44 = icmp sge i32 %39, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %154

48:                                               ; preds = %36
  %49 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %50 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @RX_MAX_PENDING, align 8
  %53 = icmp sgt i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %154

57:                                               ; preds = %48
  %58 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %59 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %58, i32 0, i32 5
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @RX_MAX_PENDING, align 8
  %62 = icmp sgt i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %154

66:                                               ; preds = %57
  %67 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %68 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load %struct.sky2_hw*, %struct.sky2_hw** %7, align 8
  %73 = load i32, i32* @STAT_TX_TIMER_CTRL, align 4
  %74 = load i64, i64* @TIM_STOP, align 8
  %75 = call i32 @sky2_write8(%struct.sky2_hw* %72, i32 %73, i64 %74)
  br label %89

76:                                               ; preds = %66
  %77 = load %struct.sky2_hw*, %struct.sky2_hw** %7, align 8
  %78 = load i32, i32* @STAT_TX_TIMER_INI, align 4
  %79 = load %struct.sky2_hw*, %struct.sky2_hw** %7, align 8
  %80 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %81 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @sky2_us2clk(%struct.sky2_hw* %79, i64 %82)
  %84 = call i32 @sky2_write32(%struct.sky2_hw* %77, i32 %78, i32 %83)
  %85 = load %struct.sky2_hw*, %struct.sky2_hw** %7, align 8
  %86 = load i32, i32* @STAT_TX_TIMER_CTRL, align 4
  %87 = load i64, i64* @TIM_START, align 8
  %88 = call i32 @sky2_write8(%struct.sky2_hw* %85, i32 %86, i64 %87)
  br label %89

89:                                               ; preds = %76, %71
  %90 = load %struct.sky2_hw*, %struct.sky2_hw** %7, align 8
  %91 = load i32, i32* @STAT_TX_IDX_TH, align 4
  %92 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %93 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @sky2_write16(%struct.sky2_hw* %90, i32 %91, i32 %94)
  %96 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %97 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %89
  %101 = load %struct.sky2_hw*, %struct.sky2_hw** %7, align 8
  %102 = load i32, i32* @STAT_LEV_TIMER_CTRL, align 4
  %103 = load i64, i64* @TIM_STOP, align 8
  %104 = call i32 @sky2_write8(%struct.sky2_hw* %101, i32 %102, i64 %103)
  br label %118

105:                                              ; preds = %89
  %106 = load %struct.sky2_hw*, %struct.sky2_hw** %7, align 8
  %107 = load i32, i32* @STAT_LEV_TIMER_INI, align 4
  %108 = load %struct.sky2_hw*, %struct.sky2_hw** %7, align 8
  %109 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %110 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @sky2_us2clk(%struct.sky2_hw* %108, i64 %111)
  %113 = call i32 @sky2_write32(%struct.sky2_hw* %106, i32 %107, i32 %112)
  %114 = load %struct.sky2_hw*, %struct.sky2_hw** %7, align 8
  %115 = load i32, i32* @STAT_LEV_TIMER_CTRL, align 4
  %116 = load i64, i64* @TIM_START, align 8
  %117 = call i32 @sky2_write8(%struct.sky2_hw* %114, i32 %115, i64 %116)
  br label %118

118:                                              ; preds = %105, %100
  %119 = load %struct.sky2_hw*, %struct.sky2_hw** %7, align 8
  %120 = load i32, i32* @STAT_FIFO_WM, align 4
  %121 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %122 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %121, i32 0, i32 4
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @sky2_write8(%struct.sky2_hw* %119, i32 %120, i64 %123)
  %125 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %126 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %118
  %130 = load %struct.sky2_hw*, %struct.sky2_hw** %7, align 8
  %131 = load i32, i32* @STAT_ISR_TIMER_CTRL, align 4
  %132 = load i64, i64* @TIM_STOP, align 8
  %133 = call i32 @sky2_write8(%struct.sky2_hw* %130, i32 %131, i64 %132)
  br label %147

134:                                              ; preds = %118
  %135 = load %struct.sky2_hw*, %struct.sky2_hw** %7, align 8
  %136 = load i32, i32* @STAT_ISR_TIMER_INI, align 4
  %137 = load %struct.sky2_hw*, %struct.sky2_hw** %7, align 8
  %138 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %139 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = call i32 @sky2_us2clk(%struct.sky2_hw* %137, i64 %140)
  %142 = call i32 @sky2_write32(%struct.sky2_hw* %135, i32 %136, i32 %141)
  %143 = load %struct.sky2_hw*, %struct.sky2_hw** %7, align 8
  %144 = load i32, i32* @STAT_ISR_TIMER_CTRL, align 4
  %145 = load i64, i64* @TIM_START, align 8
  %146 = call i32 @sky2_write8(%struct.sky2_hw* %143, i32 %144, i64 %145)
  br label %147

147:                                              ; preds = %134, %129
  %148 = load %struct.sky2_hw*, %struct.sky2_hw** %7, align 8
  %149 = load i32, i32* @STAT_FIFO_ISR_WM, align 4
  %150 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %151 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %150, i32 0, i32 5
  %152 = load i64, i64* %151, align 8
  %153 = call i32 @sky2_write8(%struct.sky2_hw* %148, i32 %149, i64 %152)
  store i32 0, i32* %3, align 4
  br label %154

154:                                              ; preds = %147, %63, %54, %45, %33
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local %struct.sky2_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @sky2_clk2us(%struct.sky2_hw*, i32) #1

declare dso_local i32 @sky2_write8(%struct.sky2_hw*, i32, i64) #1

declare dso_local i32 @sky2_write32(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @sky2_us2clk(%struct.sky2_hw*, i64) #1

declare dso_local i32 @sky2_write16(%struct.sky2_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
