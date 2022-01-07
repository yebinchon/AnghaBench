; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_wavelan_cs.c_wavelan_get_freq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_wavelan_cs.c_wavelan_get_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i16, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@mmr_fee_status = common dso_local global i32 0, align 4
@MMR_FEE_STATUS_DWLD = common dso_local global i32 0, align 4
@MMR_FEE_STATUS_BUSY = common dso_local global i32 0, align 4
@fixed_bands = common dso_local global i16* null, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @wavelan_get_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wavelan_get_freq(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %union.iwreq_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.TYPE_6__, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i16, align 2
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %7, align 8
  store i8* %3, i8** %8, align 8
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  %18 = load %struct.net_device*, %struct.net_device** %5, align 8
  %19 = call %struct.TYPE_7__* @netdev_priv(%struct.net_device* %18)
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %10, align 8
  store i32 0, i32* %13, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i64, i64* %12, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @mmr_fee_status, align 4
  %26 = call i32 @mmroff(i32 0, i32 %25)
  %27 = call i32 @mmc_in(i32 %24, i32 %26)
  %28 = load i32, i32* @MMR_FEE_STATUS_DWLD, align 4
  %29 = load i32, i32* @MMR_FEE_STATUS_BUSY, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %27, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %50, label %33

33:                                               ; preds = %4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @fee_read(i32 %34, i32 0, i16* %14, i32 1)
  %36 = load i16, i16* %14, align 2
  %37 = zext i16 %36 to i32
  %38 = ashr i32 %37, 5
  %39 = mul nsw i32 %38, 5
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, 24000
  %42 = mul nsw i64 %41, 10000
  %43 = trunc i64 %42 to i16
  %44 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %45 = bitcast %union.iwreq_data* %44 to %struct.TYPE_5__*
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  store i16 %43, i16* %46, align 4
  %47 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %48 = bitcast %union.iwreq_data* %47 to %struct.TYPE_5__*
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  store i32 1, i32* %49, align 4
  br label %86

50:                                               ; preds = %4
  %51 = load %struct.net_device*, %struct.net_device** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %53 = bitcast i32* %52 to i8*
  %54 = bitcast %struct.TYPE_6__* %11 to i8*
  %55 = ptrtoint i8* %53 to i64
  %56 = ptrtoint i8* %54 to i64
  %57 = sub i64 %55, %56
  %58 = trunc i64 %57 to i32
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %60 = bitcast i32* %59 to i8*
  %61 = call i32 @psa_read(%struct.net_device* %51, i32 %58, i8* %60, i32 1)
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp sle i32 %63, 4
  br i1 %64, label %65, label %82

65:                                               ; preds = %50
  %66 = load i16*, i16** @fixed_bands, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i16, i16* %66, i64 %69
  %71 = load i16, i16* %70, align 2
  %72 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %73 = bitcast %union.iwreq_data* %72 to %struct.TYPE_5__*
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  store i16 %71, i16* %74, align 4
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i32
  %79 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %80 = bitcast %union.iwreq_data* %79 to %struct.TYPE_5__*
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  store i32 %78, i32* %81, align 4
  br label %85

82:                                               ; preds = %50
  %83 = load i32, i32* @EOPNOTSUPP, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %13, align 4
  br label %85

85:                                               ; preds = %82, %65
  br label %86

86:                                               ; preds = %85, %33
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i64, i64* %12, align 8
  %90 = call i32 @spin_unlock_irqrestore(i32* %88, i64 %89)
  %91 = load i32, i32* %13, align 4
  ret i32 %91
}

declare dso_local %struct.TYPE_7__* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mmc_in(i32, i32) #1

declare dso_local i32 @mmroff(i32, i32) #1

declare dso_local i32 @fee_read(i32, i32, i16*, i32) #1

declare dso_local i32 @psa_read(%struct.net_device*, i32, i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
