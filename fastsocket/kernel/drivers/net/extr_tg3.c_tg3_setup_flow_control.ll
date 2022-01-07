; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_setup_flow_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_setup_flow_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64, i64, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i64 }

@USE_PHYLIB = common dso_local global i32 0, align 4
@TG3_PHY_MII_ADDR = common dso_local global i64 0, align 8
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@PAUSE_AUTONEG = common dso_local global i32 0, align 4
@TG3_PHYFLG_ANY_SERDES = common dso_local global i32 0, align 4
@FLOW_CTRL_RX = common dso_local global i64 0, align 8
@RX_MODE_FLOW_CTRL_ENABLE = common dso_local global i32 0, align 4
@MAC_RX_MODE = common dso_local global i32 0, align 4
@FLOW_CTRL_TX = common dso_local global i64 0, align 8
@TX_MODE_FLOW_CTRL_ENABLE = common dso_local global i32 0, align 4
@MAC_TX_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3*, i32, i32)* @tg3_setup_flow_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_setup_flow_control(%struct.tg3* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tg3*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %8, align 8
  %11 = load %struct.tg3*, %struct.tg3** %4, align 8
  %12 = getelementptr inbounds %struct.tg3, %struct.tg3* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %9, align 4
  %14 = load %struct.tg3*, %struct.tg3** %4, align 8
  %15 = getelementptr inbounds %struct.tg3, %struct.tg3* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %10, align 4
  %17 = load %struct.tg3*, %struct.tg3** %4, align 8
  %18 = load i32, i32* @USE_PHYLIB, align 4
  %19 = call i64 @tg3_flag(%struct.tg3* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %3
  %22 = load %struct.tg3*, %struct.tg3** %4, align 8
  %23 = getelementptr inbounds %struct.tg3, %struct.tg3* %22, i32 0, i32 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %25, align 8
  %27 = load i64, i64* @TG3_PHY_MII_ADDR, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %26, i64 %27
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %7, align 8
  br label %37

32:                                               ; preds = %3
  %33 = load %struct.tg3*, %struct.tg3** %4, align 8
  %34 = getelementptr inbounds %struct.tg3, %struct.tg3* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %7, align 8
  br label %37

37:                                               ; preds = %32, %21
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* @AUTONEG_ENABLE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %62

41:                                               ; preds = %37
  %42 = load %struct.tg3*, %struct.tg3** %4, align 8
  %43 = load i32, i32* @PAUSE_AUTONEG, align 4
  %44 = call i64 @tg3_flag(%struct.tg3* %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %41
  %47 = load %struct.tg3*, %struct.tg3** %4, align 8
  %48 = getelementptr inbounds %struct.tg3, %struct.tg3* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @TG3_PHYFLG_ANY_SERDES, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i64 @tg3_resolve_flowctrl_1000X(i32 %54, i32 %55)
  store i64 %56, i64* %8, align 8
  br label %61

57:                                               ; preds = %46
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i64 @mii_resolve_flowctrl_fdx(i32 %58, i32 %59)
  store i64 %60, i64* %8, align 8
  br label %61

61:                                               ; preds = %57, %53
  br label %67

62:                                               ; preds = %41, %37
  %63 = load %struct.tg3*, %struct.tg3** %4, align 8
  %64 = getelementptr inbounds %struct.tg3, %struct.tg3* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %8, align 8
  br label %67

67:                                               ; preds = %62, %61
  %68 = load i64, i64* %8, align 8
  %69 = load %struct.tg3*, %struct.tg3** %4, align 8
  %70 = getelementptr inbounds %struct.tg3, %struct.tg3* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  store i64 %68, i64* %71, align 8
  %72 = load i64, i64* %8, align 8
  %73 = load i64, i64* @FLOW_CTRL_RX, align 8
  %74 = and i64 %72, %73
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %67
  %77 = load i32, i32* @RX_MODE_FLOW_CTRL_ENABLE, align 4
  %78 = load %struct.tg3*, %struct.tg3** %4, align 8
  %79 = getelementptr inbounds %struct.tg3, %struct.tg3* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 8
  br label %89

82:                                               ; preds = %67
  %83 = load i32, i32* @RX_MODE_FLOW_CTRL_ENABLE, align 4
  %84 = xor i32 %83, -1
  %85 = load %struct.tg3*, %struct.tg3** %4, align 8
  %86 = getelementptr inbounds %struct.tg3, %struct.tg3* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = and i32 %87, %84
  store i32 %88, i32* %86, align 8
  br label %89

89:                                               ; preds = %82, %76
  %90 = load i32, i32* %9, align 4
  %91 = load %struct.tg3*, %struct.tg3** %4, align 8
  %92 = getelementptr inbounds %struct.tg3, %struct.tg3* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %90, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %89
  %96 = load i32, i32* @MAC_RX_MODE, align 4
  %97 = load %struct.tg3*, %struct.tg3** %4, align 8
  %98 = getelementptr inbounds %struct.tg3, %struct.tg3* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @tw32_f(i32 %96, i32 %99)
  br label %101

101:                                              ; preds = %95, %89
  %102 = load i64, i64* %8, align 8
  %103 = load i64, i64* @FLOW_CTRL_TX, align 8
  %104 = and i64 %102, %103
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %101
  %107 = load i32, i32* @TX_MODE_FLOW_CTRL_ENABLE, align 4
  %108 = load %struct.tg3*, %struct.tg3** %4, align 8
  %109 = getelementptr inbounds %struct.tg3, %struct.tg3* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 4
  br label %119

112:                                              ; preds = %101
  %113 = load i32, i32* @TX_MODE_FLOW_CTRL_ENABLE, align 4
  %114 = xor i32 %113, -1
  %115 = load %struct.tg3*, %struct.tg3** %4, align 8
  %116 = getelementptr inbounds %struct.tg3, %struct.tg3* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = and i32 %117, %114
  store i32 %118, i32* %116, align 4
  br label %119

119:                                              ; preds = %112, %106
  %120 = load i32, i32* %10, align 4
  %121 = load %struct.tg3*, %struct.tg3** %4, align 8
  %122 = getelementptr inbounds %struct.tg3, %struct.tg3* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %120, %123
  br i1 %124, label %125, label %131

125:                                              ; preds = %119
  %126 = load i32, i32* @MAC_TX_MODE, align 4
  %127 = load %struct.tg3*, %struct.tg3** %4, align 8
  %128 = getelementptr inbounds %struct.tg3, %struct.tg3* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @tw32_f(i32 %126, i32 %129)
  br label %131

131:                                              ; preds = %125, %119
  ret void
}

declare dso_local i64 @tg3_flag(%struct.tg3*, i32) #1

declare dso_local i64 @tg3_resolve_flowctrl_1000X(i32, i32) #1

declare dso_local i64 @mii_resolve_flowctrl_fdx(i32, i32) #1

declare dso_local i32 @tw32_f(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
