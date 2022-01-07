; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_wavelan_cs.c_wavelan_set_encode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_wavelan_cs.c_wavelan_set_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@mmw_encr_enable = common dso_local global i32 0, align 4
@MMW_ENCR_ENABLE_EN = common dso_local global i32 0, align 4
@MMW_ENCR_ENABLE_MODE = common dso_local global i32 0, align 4
@mmw_encr_key = common dso_local global i32 0, align 4
@IW_ENCODE_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @wavelan_set_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wavelan_set_encode(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %union.iwreq_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_6__, align 4
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
  %18 = call %struct.TYPE_7__* @netdev_priv(%struct.net_device* %17)
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %10, align 8
  store i32 0, i32* %13, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i64, i64* %11, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @mmc_encr(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %13, align 4
  br label %29

29:                                               ; preds = %26, %4
  %30 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %31 = bitcast %union.iwreq_data* %30 to %struct.TYPE_5__*
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 8
  br i1 %34, label %35, label %44

35:                                               ; preds = %29
  %36 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %37 = bitcast %union.iwreq_data* %36 to %struct.TYPE_5__*
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %13, align 4
  br label %44

44:                                               ; preds = %41, %35, %29
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %115, label %47

47:                                               ; preds = %44
  %48 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %49 = bitcast %union.iwreq_data* %48 to %struct.TYPE_5__*
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 8
  br i1 %52, label %53, label %87

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i8*, i8** %8, align 8
  %57 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %58 = bitcast %union.iwreq_data* %57 to %struct.TYPE_5__*
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @memcpy(i32 %55, i8* %56, i32 %60)
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  store i32 1, i32* %62, align 4
  %63 = load %struct.net_device*, %struct.net_device** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %65 = bitcast i32* %64 to i8*
  %66 = bitcast %struct.TYPE_6__* %12 to i8*
  %67 = ptrtoint i8* %65 to i64
  %68 = ptrtoint i8* %66 to i64
  %69 = sub i64 %67, %68
  %70 = trunc i64 %69 to i32
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %72 = bitcast i32* %71 to i8*
  %73 = call i32 @psa_write(%struct.net_device* %63, i32 %70, i8* %72, i32 9)
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @mmw_encr_enable, align 4
  %76 = call i32 @mmwoff(i32 0, i32 %75)
  %77 = load i32, i32* @MMW_ENCR_ENABLE_EN, align 4
  %78 = load i32, i32* @MMW_ENCR_ENABLE_MODE, align 4
  %79 = or i32 %77, %78
  %80 = call i32 @mmc_out(i32 %74, i32 %76, i32 %79)
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @mmw_encr_key, align 4
  %83 = call i32 @mmwoff(i32 0, i32 %82)
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %85 = bitcast i32* %84 to i8*
  %86 = call i32 @mmc_write(i32 %81, i32 %83, i8* %85, i32 8)
  br label %87

87:                                               ; preds = %53, %47
  %88 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %89 = bitcast %union.iwreq_data* %88 to %struct.TYPE_5__*
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @IW_ENCODE_DISABLED, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %112

95:                                               ; preds = %87
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  store i32 0, i32* %96, align 4
  %97 = load %struct.net_device*, %struct.net_device** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %99 = bitcast i32* %98 to i8*
  %100 = bitcast %struct.TYPE_6__* %12 to i8*
  %101 = ptrtoint i8* %99 to i64
  %102 = ptrtoint i8* %100 to i64
  %103 = sub i64 %101, %102
  %104 = trunc i64 %103 to i32
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %106 = bitcast i32* %105 to i8*
  %107 = call i32 @psa_write(%struct.net_device* %97, i32 %104, i8* %106, i32 1)
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* @mmw_encr_enable, align 4
  %110 = call i32 @mmwoff(i32 0, i32 %109)
  %111 = call i32 @mmc_out(i32 %108, i32 %110, i32 0)
  br label %112

112:                                              ; preds = %95, %87
  %113 = load %struct.net_device*, %struct.net_device** %5, align 8
  %114 = call i32 @update_psa_checksum(%struct.net_device* %113)
  br label %115

115:                                              ; preds = %112, %44
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load i64, i64* %11, align 8
  %119 = call i32 @spin_unlock_irqrestore(i32* %117, i64 %118)
  %120 = load i32, i32* %13, align 4
  ret i32 %120
}

declare dso_local %struct.TYPE_7__* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mmc_encr(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @psa_write(%struct.net_device*, i32, i8*, i32) #1

declare dso_local i32 @mmc_out(i32, i32, i32) #1

declare dso_local i32 @mmwoff(i32, i32) #1

declare dso_local i32 @mmc_write(i32, i32, i8*, i32) #1

declare dso_local i32 @update_psa_checksum(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
