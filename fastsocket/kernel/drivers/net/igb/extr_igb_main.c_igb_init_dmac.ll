; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_init_dmac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_init_dmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { i32, i32, %struct.e1000_hw }
%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@e1000_82580 = common dso_local global i64 0, align 8
@IGB_FLAG_DMAC = common dso_local global i32 0, align 4
@E1000_DMCTXTH = common dso_local global i32 0, align 4
@E1000_FCRTC = common dso_local global i32 0, align 4
@E1000_FCRTC_RTH_COAL_MASK = common dso_local global i32 0, align 4
@E1000_FCRTC_RTH_COAL_SHIFT = common dso_local global i32 0, align 4
@E1000_DMACR = common dso_local global i32 0, align 4
@E1000_DMACR_DMACTHR_MASK = common dso_local global i32 0, align 4
@E1000_DMACR_DMACTHR_SHIFT = common dso_local global i32 0, align 4
@E1000_DMACR_DMAC_EN = common dso_local global i32 0, align 4
@E1000_DMACR_DMAC_LX_MASK = common dso_local global i32 0, align 4
@e1000_i354 = common dso_local global i64 0, align 8
@E1000_DMACR_DC_BMC2OSW_EN = common dso_local global i32 0, align 4
@E1000_DMCRTRH = common dso_local global i32 0, align 4
@IGB_DMCTLX_DCFLUSH_DIS = common dso_local global i32 0, align 4
@E1000_DMCTLX = common dso_local global i32 0, align 4
@IGB_MIN_TXPBSIZE = common dso_local global i32 0, align 4
@IGB_TX_BUF_4096 = common dso_local global i32 0, align 4
@E1000_PCIEMISC = common dso_local global i32 0, align 4
@E1000_PCIEMISC_LX_DECISION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igb_adapter*, i32)* @igb_init_dmac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igb_init_dmac(%struct.igb_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.igb_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.igb_adapter* %0, %struct.igb_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %10, i32 0, i32 2
  store %struct.e1000_hw* %11, %struct.e1000_hw** %5, align 8
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %13 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @e1000_82580, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %137

18:                                               ; preds = %2
  %19 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %20 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @IGB_FLAG_DMAC, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %136

25:                                               ; preds = %18
  %26 = load i32, i32* @E1000_DMCTXTH, align 4
  %27 = call i32 @wr32(i32 %26, i32 0)
  %28 = load i32, i32* %4, align 4
  %29 = mul nsw i32 64, %28
  %30 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %31 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sdiv i32 %32, 16
  %34 = sub nsw i32 %29, %33
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %4, align 4
  %37 = sub nsw i32 %36, 6
  %38 = mul nsw i32 64, %37
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %25
  %41 = load i32, i32* %4, align 4
  %42 = sub nsw i32 %41, 6
  %43 = mul nsw i32 64, %42
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %40, %25
  %45 = load i32, i32* @E1000_FCRTC, align 4
  %46 = call i32 @rd32(i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* @E1000_FCRTC_RTH_COAL_MASK, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %8, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @E1000_FCRTC_RTH_COAL_SHIFT, align 4
  %53 = shl i32 %51, %52
  %54 = load i32, i32* @E1000_FCRTC_RTH_COAL_MASK, align 4
  %55 = and i32 %53, %54
  %56 = load i32, i32* %8, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* @E1000_FCRTC, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @wr32(i32 %58, i32 %59)
  %61 = load i32, i32* %4, align 4
  %62 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %63 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = sdiv i32 %64, 512
  %66 = sub nsw i32 %61, %65
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %4, align 4
  %69 = sub nsw i32 %68, 10
  %70 = icmp slt i32 %67, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %44
  %72 = load i32, i32* %4, align 4
  %73 = sub nsw i32 %72, 10
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %71, %44
  %75 = load i32, i32* @E1000_DMACR, align 4
  %76 = call i32 @rd32(i32 %75)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* @E1000_DMACR_DMACTHR_MASK, align 4
  %78 = xor i32 %77, -1
  %79 = load i32, i32* %8, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @E1000_DMACR_DMACTHR_SHIFT, align 4
  %83 = shl i32 %81, %82
  %84 = load i32, i32* @E1000_DMACR_DMACTHR_MASK, align 4
  %85 = and i32 %83, %84
  %86 = load i32, i32* %8, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* @E1000_DMACR_DMAC_EN, align 4
  %89 = load i32, i32* @E1000_DMACR_DMAC_LX_MASK, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* %8, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = or i32 %93, 31
  store i32 %94, i32* %8, align 4
  %95 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %96 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @e1000_i354, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %74
  %102 = load i32, i32* @E1000_DMACR_DC_BMC2OSW_EN, align 4
  %103 = xor i32 %102, -1
  %104 = load i32, i32* %8, align 4
  %105 = and i32 %104, %103
  store i32 %105, i32* %8, align 4
  br label %106

106:                                              ; preds = %101, %74
  %107 = load i32, i32* @E1000_DMACR, align 4
  %108 = load i32, i32* %8, align 4
  %109 = call i32 @wr32(i32 %107, i32 %108)
  %110 = load i32, i32* @E1000_DMCRTRH, align 4
  %111 = call i32 @wr32(i32 %110, i32 0)
  %112 = load i32, i32* @IGB_DMCTLX_DCFLUSH_DIS, align 4
  %113 = or i32 %112, 4
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* @E1000_DMCTLX, align 4
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @wr32(i32 %114, i32 %115)
  %117 = load i32, i32* @E1000_DMCTXTH, align 4
  %118 = load i32, i32* @IGB_MIN_TXPBSIZE, align 4
  %119 = load i32, i32* @IGB_TX_BUF_4096, align 4
  %120 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %121 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %119, %122
  %124 = sub nsw i32 %118, %123
  %125 = ashr i32 %124, 6
  %126 = call i32 @wr32(i32 %117, i32 %125)
  %127 = load i32, i32* @E1000_PCIEMISC, align 4
  %128 = call i32 @rd32(i32 %127)
  store i32 %128, i32* %8, align 4
  %129 = load i32, i32* @E1000_PCIEMISC_LX_DECISION, align 4
  %130 = xor i32 %129, -1
  %131 = load i32, i32* %8, align 4
  %132 = and i32 %131, %130
  store i32 %132, i32* %8, align 4
  %133 = load i32, i32* @E1000_PCIEMISC, align 4
  %134 = load i32, i32* %8, align 4
  %135 = call i32 @wr32(i32 %133, i32 %134)
  br label %136

136:                                              ; preds = %106, %18
  br label %156

137:                                              ; preds = %2
  %138 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %139 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @e1000_82580, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %155

144:                                              ; preds = %137
  %145 = load i32, i32* @E1000_PCIEMISC, align 4
  %146 = call i32 @rd32(i32 %145)
  store i32 %146, i32* %9, align 4
  %147 = load i32, i32* @E1000_PCIEMISC, align 4
  %148 = load i32, i32* %9, align 4
  %149 = load i32, i32* @E1000_PCIEMISC_LX_DECISION, align 4
  %150 = xor i32 %149, -1
  %151 = and i32 %148, %150
  %152 = call i32 @wr32(i32 %147, i32 %151)
  %153 = load i32, i32* @E1000_DMACR, align 4
  %154 = call i32 @wr32(i32 %153, i32 0)
  br label %155

155:                                              ; preds = %144, %137
  br label %156

156:                                              ; preds = %155, %136
  ret void
}

declare dso_local i32 @wr32(i32, i32) #1

declare dso_local i32 @rd32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
