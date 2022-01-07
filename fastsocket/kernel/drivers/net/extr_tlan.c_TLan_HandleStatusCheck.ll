; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tlan.c_TLan_HandleStatusCheck.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tlan.c_TLan_HandleStatusCheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i64 }
%struct.TYPE_3__ = type { i32*, i64, i32 }

@TLAN_HI_IV_MASK = common dso_local global i32 0, align 4
@TLAN_CH_PARM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"TLAN:  %s: Adaptor Error = 0x%x\0A\00", align 1
@TLAN_RECORD = common dso_local global i32 0, align 4
@TLAN_HC_AD_RST = common dso_local global i32 0, align 4
@TLAN_HOST_CMD = common dso_local global i64 0, align 8
@TLAN_DEBUG_GNRL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"%s: Status Check\0A\00", align 1
@TLAN_NET_STS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"%s:    Net_Sts = %x\0A\00", align 1
@TLAN_NET_STS_MIRQ = common dso_local global i32 0, align 4
@TLAN_TLPHY_STS = common dso_local global i32 0, align 4
@TLAN_TLPHY_CTL = common dso_local global i32 0, align 4
@TLAN_TS_POLOK = common dso_local global i32 0, align 4
@TLAN_TC_SWAPOL = common dso_local global i32 0, align 4
@debug = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @TLan_HandleStatusCheck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TLan_HandleStatusCheck(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = call %struct.TYPE_3__* @netdev_priv(%struct.net_device* %12)
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %5, align 8
  store i32 1, i32* %6, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @TLAN_HI_IV_MASK, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %47

18:                                               ; preds = %2
  %19 = load %struct.net_device*, %struct.net_device** %3, align 8
  %20 = call i32 @netif_stop_queue(%struct.net_device* %19)
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @TLAN_CH_PARM, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @inl(i64 %25)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30)
  %32 = load %struct.net_device*, %struct.net_device** %3, align 8
  %33 = load i32, i32* @TLAN_RECORD, align 4
  %34 = call i32 @TLan_ReadAndClearStats(%struct.net_device* %32, i32 %33)
  %35 = load i32, i32* @TLAN_HC_AD_RST, align 4
  %36 = load %struct.net_device*, %struct.net_device** %3, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @TLAN_HOST_CMD, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @outl(i32 %35, i64 %40)
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = call i32 @schedule_work(i32* %43)
  %45 = load %struct.net_device*, %struct.net_device** %3, align 8
  %46 = call i32 @netif_wake_queue(%struct.net_device* %45)
  store i32 0, i32* %6, align 4
  br label %147

47:                                               ; preds = %2
  %48 = load i32, i32* @TLAN_DEBUG_GNRL, align 4
  %49 = load %struct.net_device*, %struct.net_device** %3, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 (i32, i8*, i32, ...) @TLAN_DBG(i32 %48, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %9, align 4
  %61 = load %struct.net_device*, %struct.net_device** %3, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* @TLAN_NET_STS, align 4
  %65 = call i32 @TLan_DioRead8(i64 %63, i32 %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %47
  %69 = load %struct.net_device*, %struct.net_device** %3, align 8
  %70 = getelementptr inbounds %struct.net_device, %struct.net_device* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* @TLAN_NET_STS, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @TLan_DioWrite8(i64 %71, i32 %72, i32 %73)
  %75 = load i32, i32* @TLAN_DEBUG_GNRL, align 4
  %76 = load %struct.net_device*, %struct.net_device** %3, align 8
  %77 = getelementptr inbounds %struct.net_device, %struct.net_device* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = call i32 (i32, i8*, i32, ...) @TLAN_DBG(i32 %75, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %68, %47
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @TLAN_NET_STS_MIRQ, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %146

86:                                               ; preds = %81
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %146

91:                                               ; preds = %86
  %92 = load %struct.net_device*, %struct.net_device** %3, align 8
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* @TLAN_TLPHY_STS, align 4
  %95 = call i32 @TLan_MiiReadReg(%struct.net_device* %92, i32 %93, i32 %94, i32* %11)
  %96 = load %struct.net_device*, %struct.net_device** %3, align 8
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* @TLAN_TLPHY_CTL, align 4
  %99 = call i32 @TLan_MiiReadReg(%struct.net_device* %96, i32 %97, i32 %98, i32* %10)
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* @TLAN_TS_POLOK, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %118, label %104

104:                                              ; preds = %91
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* @TLAN_TC_SWAPOL, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %118, label %109

109:                                              ; preds = %104
  %110 = load i32, i32* @TLAN_TC_SWAPOL, align 4
  %111 = load i32, i32* %10, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %10, align 4
  %113 = load %struct.net_device*, %struct.net_device** %3, align 8
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* @TLAN_TLPHY_CTL, align 4
  %116 = load i32, i32* %10, align 4
  %117 = call i32 @TLan_MiiWriteReg(%struct.net_device* %113, i32 %114, i32 %115, i32 %116)
  br label %139

118:                                              ; preds = %104, %91
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* @TLAN_TS_POLOK, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %138

123:                                              ; preds = %118
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* @TLAN_TC_SWAPOL, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %138

128:                                              ; preds = %123
  %129 = load i32, i32* @TLAN_TC_SWAPOL, align 4
  %130 = xor i32 %129, -1
  %131 = load i32, i32* %10, align 4
  %132 = and i32 %131, %130
  store i32 %132, i32* %10, align 4
  %133 = load %struct.net_device*, %struct.net_device** %3, align 8
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* @TLAN_TLPHY_CTL, align 4
  %136 = load i32, i32* %10, align 4
  %137 = call i32 @TLan_MiiWriteReg(%struct.net_device* %133, i32 %134, i32 %135, i32 %136)
  br label %138

138:                                              ; preds = %128, %123, %118
  br label %139

139:                                              ; preds = %138, %109
  %140 = load i64, i64* @debug, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %139
  %143 = load %struct.net_device*, %struct.net_device** %3, align 8
  %144 = call i32 @TLan_PhyPrint(%struct.net_device* %143)
  br label %145

145:                                              ; preds = %142, %139
  br label %146

146:                                              ; preds = %145, %86, %81
  br label %147

147:                                              ; preds = %146, %18
  %148 = load i32, i32* %6, align 4
  ret i32 %148
}

declare dso_local %struct.TYPE_3__* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @printk(i8*, i32, i32) #1

declare dso_local i32 @TLan_ReadAndClearStats(%struct.net_device*, i32) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @TLAN_DBG(i32, i8*, i32, ...) #1

declare dso_local i32 @TLan_DioRead8(i64, i32) #1

declare dso_local i32 @TLan_DioWrite8(i64, i32, i32) #1

declare dso_local i32 @TLan_MiiReadReg(%struct.net_device*, i32, i32, i32*) #1

declare dso_local i32 @TLan_MiiWriteReg(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @TLan_PhyPrint(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
