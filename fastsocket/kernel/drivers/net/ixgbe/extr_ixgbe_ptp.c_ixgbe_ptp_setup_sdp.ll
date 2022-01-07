; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_ptp.c_ixgbe_ptp_setup_sdp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_ptp.c_ixgbe_ptp_setup_sdp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, i32, %struct.TYPE_3__, %struct.ixgbe_hw }
%struct.TYPE_3__ = type { i32 }
%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@IXGBE_FLAG2_PTP_PPS_ENABLED = common dso_local global i32 0, align 4
@ixgbe_mac_X540 = common dso_local global i64 0, align 8
@IXGBE_TSAUXC = common dso_local global i32 0, align 4
@IXGBE_ESDP = common dso_local global i32 0, align 4
@IXGBE_ESDP_SDP0_DIR = common dso_local global i32 0, align 4
@IXGBE_ESDP_SDP0_NATIVE = common dso_local global i32 0, align 4
@IXGBE_TSAUXC_EN_CLK = common dso_local global i32 0, align 4
@IXGBE_TSAUXC_SYNCLK = common dso_local global i32 0, align 4
@IXGBE_TSAUXC_SDP0_INT = common dso_local global i32 0, align 4
@NSECS_PER_SEC = common dso_local global i32 0, align 4
@IXGBE_SYSTIML = common dso_local global i32 0, align 4
@IXGBE_SYSTIMH = common dso_local global i32 0, align 4
@IXGBE_CLKTIML = common dso_local global i32 0, align 4
@IXGBE_CLKTIMH = common dso_local global i32 0, align 4
@IXGBE_TRGTTIML0 = common dso_local global i32 0, align 4
@IXGBE_TRGTTIMH0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_adapter*)* @ixgbe_ptp_setup_sdp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_ptp_setup_sdp(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca %struct.ixgbe_adapter*, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %2, align 8
  %14 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %14, i32 0, i32 3
  store %struct.ixgbe_hw* %15, %struct.ixgbe_hw** %3, align 8
  %16 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %17 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %4, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %20 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %21 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @IXGBE_FLAG2_PTP_PPS_ENABLED, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %111

26:                                               ; preds = %1
  %27 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %28 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @ixgbe_mac_X540, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %111

33:                                               ; preds = %26
  %34 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %35 = load i32, i32* @IXGBE_TSAUXC, align 4
  %36 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %34, i32 %35, i32 0)
  %37 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %38 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %37)
  %39 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %40 = load i32, i32* @IXGBE_ESDP, align 4
  %41 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %39, i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* @IXGBE_ESDP_SDP0_DIR, align 4
  %43 = load i32, i32* @IXGBE_ESDP_SDP0_NATIVE, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* %5, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* @IXGBE_TSAUXC_EN_CLK, align 4
  %48 = load i32, i32* @IXGBE_TSAUXC_SYNCLK, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @IXGBE_TSAUXC_SDP0_INT, align 4
  %51 = or i32 %49, %50
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* @NSECS_PER_SEC, align 4
  %53 = load i32, i32* %4, align 4
  %54 = shl i32 %52, %53
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* @NSECS_PER_SEC, align 4
  %56 = load i32, i32* %4, align 4
  %57 = shl i32 %55, %56
  %58 = ashr i32 %57, 32
  store i32 %58, i32* %8, align 4
  %59 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %60 = load i32, i32* @IXGBE_SYSTIML, align 4
  %61 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %59, i32 %60)
  %62 = load i32, i32* %13, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %13, align 4
  %64 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %65 = load i32, i32* @IXGBE_SYSTIMH, align 4
  %66 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %64, i32 %65)
  %67 = shl i32 %66, 32
  %68 = load i32, i32* %13, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %13, align 4
  %70 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %71 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %70, i32 0, i32 1
  %72 = load i32, i32* %13, align 4
  %73 = call i32 @timecounter_cyc2time(i32* %71, i32 %72)
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* @NSECS_PER_SEC, align 4
  %76 = call i32 @div_u64_rem(i32 %74, i32 %75, i32* %11)
  %77 = load i32, i32* @NSECS_PER_SEC, align 4
  %78 = load i32, i32* %11, align 4
  %79 = sub nsw i32 %77, %78
  %80 = load i32, i32* %4, align 4
  %81 = shl i32 %79, %80
  %82 = load i32, i32* %13, align 4
  %83 = add nsw i32 %82, %81
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %13, align 4
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %13, align 4
  %86 = ashr i32 %85, 32
  store i32 %86, i32* %10, align 4
  %87 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %88 = load i32, i32* @IXGBE_CLKTIML, align 4
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %87, i32 %88, i32 %89)
  %91 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %92 = load i32, i32* @IXGBE_CLKTIMH, align 4
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %91, i32 %92, i32 %93)
  %95 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %96 = load i32, i32* @IXGBE_TRGTTIML0, align 4
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %95, i32 %96, i32 %97)
  %99 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %100 = load i32, i32* @IXGBE_TRGTTIMH0, align 4
  %101 = load i32, i32* %10, align 4
  %102 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %99, i32 %100, i32 %101)
  %103 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %104 = load i32, i32* @IXGBE_ESDP, align 4
  %105 = load i32, i32* %5, align 4
  %106 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %103, i32 %104, i32 %105)
  %107 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %108 = load i32, i32* @IXGBE_TSAUXC, align 4
  %109 = load i32, i32* %6, align 4
  %110 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %107, i32 %108, i32 %109)
  br label %115

111:                                              ; preds = %26, %1
  %112 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %113 = load i32, i32* @IXGBE_TSAUXC, align 4
  %114 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %112, i32 %113, i32 0)
  br label %115

115:                                              ; preds = %111, %33
  %116 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %117 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %116)
  ret void
}

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw*) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @timecounter_cyc2time(i32*, i32) #1

declare dso_local i32 @div_u64_rem(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
