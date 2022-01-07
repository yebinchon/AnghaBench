; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_wavelan_cs.c_wavelan_get_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_wavelan_cs.c_wavelan_get_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.iw_range = type { i32, double, i32, i32, i32, i32, i32*, i32*, i32, i32, i32*, i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_7__, i32 }
%struct.TYPE_8__ = type { i32, i32, i8* }
%struct.TYPE_7__ = type { i32, i32, i8* }

@WIRELESS_EXT = common dso_local global i32 0, align 4
@MMR_SGNL_QUAL = common dso_local global i8* null, align 8
@MMR_SIGNAL_LVL = common dso_local global i32 0, align 4
@MMR_SILENCE_LVL = common dso_local global i32 0, align 4
@IW_EVENT_CAPA_K_1 = common dso_local global i32 0, align 4
@mmr_fee_status = common dso_local global i32 0, align 4
@MMR_FEE_STATUS_DWLD = common dso_local global i32 0, align 4
@MMR_FEE_STATUS_BUSY = common dso_local global i32 0, align 4
@IW_MAX_FREQUENCIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @wavelan_get_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wavelan_get_range(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %union.iwreq_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.iw_range*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %7, align 8
  store i8* %3, i8** %8, align 8
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %9, align 4
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = call %struct.TYPE_9__* @netdev_priv(%struct.net_device* %17)
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %10, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = bitcast i8* %19 to %struct.iw_range*
  store %struct.iw_range* %20, %struct.iw_range** %11, align 8
  store i32 0, i32* %13, align 4
  %21 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %22 = bitcast %union.iwreq_data* %21 to %struct.TYPE_6__*
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store i32 120, i32* %23, align 4
  %24 = load %struct.iw_range*, %struct.iw_range** %11, align 8
  %25 = call i32 @memset(%struct.iw_range* %24, i32 0, i32 120)
  %26 = load i32, i32* @WIRELESS_EXT, align 4
  %27 = load %struct.iw_range*, %struct.iw_range** %11, align 8
  %28 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %27, i32 0, i32 16
  store i32 %26, i32* %28, align 8
  %29 = load %struct.iw_range*, %struct.iw_range** %11, align 8
  %30 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %29, i32 0, i32 0
  store i32 9, i32* %30, align 8
  %31 = load %struct.iw_range*, %struct.iw_range** %11, align 8
  %32 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %31, i32 0, i32 1
  store double 1.400000e+06, double* %32, align 8
  %33 = load %struct.iw_range*, %struct.iw_range** %11, align 8
  %34 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %33, i32 0, i32 2
  store i32 0, i32* %34, align 8
  %35 = load %struct.iw_range*, %struct.iw_range** %11, align 8
  %36 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %35, i32 0, i32 3
  store i32 65535, i32* %36, align 4
  %37 = load %struct.iw_range*, %struct.iw_range** %11, align 8
  %38 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %37, i32 0, i32 4
  store i32 63, i32* %38, align 8
  %39 = load i8*, i8** @MMR_SGNL_QUAL, align 8
  %40 = load %struct.iw_range*, %struct.iw_range** %11, align 8
  %41 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %40, i32 0, i32 15
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 2
  store i8* %39, i8** %42, align 8
  %43 = load i32, i32* @MMR_SIGNAL_LVL, align 4
  %44 = load %struct.iw_range*, %struct.iw_range** %11, align 8
  %45 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %44, i32 0, i32 15
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 4
  %47 = load i32, i32* @MMR_SILENCE_LVL, align 4
  %48 = load %struct.iw_range*, %struct.iw_range** %11, align 8
  %49 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %48, i32 0, i32 15
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 8
  %51 = load i8*, i8** @MMR_SGNL_QUAL, align 8
  %52 = load %struct.iw_range*, %struct.iw_range** %11, align 8
  %53 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %52, i32 0, i32 14
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 2
  store i8* %51, i8** %54, align 8
  %55 = load %struct.iw_range*, %struct.iw_range** %11, align 8
  %56 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %55, i32 0, i32 14
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  store i32 30, i32* %57, align 8
  %58 = load %struct.iw_range*, %struct.iw_range** %11, align 8
  %59 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %58, i32 0, i32 14
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  store i32 8, i32* %60, align 4
  %61 = load %struct.iw_range*, %struct.iw_range** %11, align 8
  %62 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %61, i32 0, i32 5
  store i32 1, i32* %62, align 4
  %63 = load %struct.iw_range*, %struct.iw_range** %11, align 8
  %64 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %63, i32 0, i32 6
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  store i32 2000000, i32* %66, align 4
  %67 = call i32 @IW_EVENT_CAPA_MASK(i32 35586)
  %68 = call i32 @IW_EVENT_CAPA_MASK(i32 35588)
  %69 = or i32 %67, %68
  %70 = call i32 @IW_EVENT_CAPA_MASK(i32 35590)
  %71 = or i32 %69, %70
  %72 = load %struct.iw_range*, %struct.iw_range** %11, align 8
  %73 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %72, i32 0, i32 7
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  store i32 %71, i32* %75, align 4
  %76 = load i32, i32* @IW_EVENT_CAPA_K_1, align 4
  %77 = load %struct.iw_range*, %struct.iw_range** %11, align 8
  %78 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %77, i32 0, i32 7
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  store i32 %76, i32* %80, align 4
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i64, i64* %12, align 8
  %84 = call i32 @spin_lock_irqsave(i32* %82, i64 %83)
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* @mmr_fee_status, align 4
  %87 = call i32 @mmroff(i32 0, i32 %86)
  %88 = call i32 @mmc_in(i32 %85, i32 %87)
  %89 = load i32, i32* @MMR_FEE_STATUS_DWLD, align 4
  %90 = load i32, i32* @MMR_FEE_STATUS_BUSY, align 4
  %91 = or i32 %89, %90
  %92 = and i32 %88, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %105, label %94

94:                                               ; preds = %4
  %95 = load %struct.iw_range*, %struct.iw_range** %11, align 8
  %96 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %95, i32 0, i32 8
  store i32 10, i32* %96, align 8
  %97 = load i32, i32* %9, align 4
  %98 = load %struct.iw_range*, %struct.iw_range** %11, align 8
  %99 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %98, i32 0, i32 13
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @IW_MAX_FREQUENCIES, align 4
  %102 = call i32 @wv_frequency_list(i32 %97, i32 %100, i32 %101)
  %103 = load %struct.iw_range*, %struct.iw_range** %11, align 8
  %104 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %103, i32 0, i32 9
  store i32 %102, i32* %104, align 4
  br label %110

105:                                              ; preds = %4
  %106 = load %struct.iw_range*, %struct.iw_range** %11, align 8
  %107 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %106, i32 0, i32 9
  store i32 0, i32* %107, align 4
  %108 = load %struct.iw_range*, %struct.iw_range** %11, align 8
  %109 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %108, i32 0, i32 8
  store i32 0, i32* %109, align 8
  br label %110

110:                                              ; preds = %105, %94
  %111 = load i32, i32* %9, align 4
  %112 = call i64 @mmc_encr(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %110
  %115 = load %struct.iw_range*, %struct.iw_range** %11, align 8
  %116 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %115, i32 0, i32 10
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  store i32 8, i32* %118, align 4
  %119 = load %struct.iw_range*, %struct.iw_range** %11, align 8
  %120 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %119, i32 0, i32 11
  store i32 1, i32* %120, align 8
  %121 = load %struct.iw_range*, %struct.iw_range** %11, align 8
  %122 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %121, i32 0, i32 12
  store i32 1, i32* %122, align 4
  br label %128

123:                                              ; preds = %110
  %124 = load %struct.iw_range*, %struct.iw_range** %11, align 8
  %125 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %124, i32 0, i32 11
  store i32 0, i32* %125, align 8
  %126 = load %struct.iw_range*, %struct.iw_range** %11, align 8
  %127 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %126, i32 0, i32 12
  store i32 0, i32* %127, align 4
  br label %128

128:                                              ; preds = %123, %114
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  %131 = load i64, i64* %12, align 8
  %132 = call i32 @spin_unlock_irqrestore(i32* %130, i64 %131)
  %133 = load i32, i32* %13, align 4
  ret i32 %133
}

declare dso_local %struct.TYPE_9__* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(%struct.iw_range*, i32, i32) #1

declare dso_local i32 @IW_EVENT_CAPA_MASK(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mmc_in(i32, i32) #1

declare dso_local i32 @mmroff(i32, i32) #1

declare dso_local i32 @wv_frequency_list(i32, i32, i32) #1

declare dso_local i64 @mmc_encr(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
