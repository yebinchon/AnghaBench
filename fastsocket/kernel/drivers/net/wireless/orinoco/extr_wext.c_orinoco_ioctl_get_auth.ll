; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_wext.c_orinoco_ioctl_get_auth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_wext.c_orinoco_ioctl_get_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.iw_param }
%struct.iw_param = type { i64, i32 }
%struct.orinoco_private = type { i32, i32, i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@IW_AUTH_INDEX = common dso_local global i64 0, align 8
@IW_AUTH_ALG_SHARED_KEY = common dso_local global i32 0, align 4
@IW_AUTH_ALG_OPEN_SYSTEM = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @orinoco_ioctl_get_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orinoco_ioctl_get_auth(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.orinoco_private*, align 8
  %11 = alloca %struct.iw_param*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = call %struct.orinoco_private* @ndev_priv(%struct.net_device* %14)
  store %struct.orinoco_private* %15, %struct.orinoco_private** %10, align 8
  %16 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %17 = bitcast %union.iwreq_data* %16 to %struct.iw_param*
  store %struct.iw_param* %17, %struct.iw_param** %11, align 8
  store i32 0, i32* %13, align 4
  %18 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %19 = call i64 @orinoco_lock(%struct.orinoco_private* %18, i64* %12)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %69

24:                                               ; preds = %4
  %25 = load %struct.iw_param*, %struct.iw_param** %11, align 8
  %26 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @IW_AUTH_INDEX, align 8
  %29 = and i64 %27, %28
  switch i64 %29, label %62 [
    i64 130, label %30
    i64 129, label %36
    i64 131, label %42
    i64 128, label %56
  ]

30:                                               ; preds = %24
  %31 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %32 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.iw_param*, %struct.iw_param** %11, align 8
  %35 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  br label %65

36:                                               ; preds = %24
  %37 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %38 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.iw_param*, %struct.iw_param** %11, align 8
  %41 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  br label %65

42:                                               ; preds = %24
  %43 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %44 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i32, i32* @IW_AUTH_ALG_SHARED_KEY, align 4
  %49 = load %struct.iw_param*, %struct.iw_param** %11, align 8
  %50 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  br label %55

51:                                               ; preds = %42
  %52 = load i32, i32* @IW_AUTH_ALG_OPEN_SYSTEM, align 4
  %53 = load %struct.iw_param*, %struct.iw_param** %11, align 8
  %54 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  br label %55

55:                                               ; preds = %51, %47
  br label %65

56:                                               ; preds = %24
  %57 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %58 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.iw_param*, %struct.iw_param** %11, align 8
  %61 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  br label %65

62:                                               ; preds = %24
  %63 = load i32, i32* @EOPNOTSUPP, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %13, align 4
  br label %65

65:                                               ; preds = %62, %56, %55, %36, %30
  %66 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %67 = call i32 @orinoco_unlock(%struct.orinoco_private* %66, i64* %12)
  %68 = load i32, i32* %13, align 4
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %65, %21
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local %struct.orinoco_private* @ndev_priv(%struct.net_device*) #1

declare dso_local i64 @orinoco_lock(%struct.orinoco_private*, i64*) #1

declare dso_local i32 @orinoco_unlock(%struct.orinoco_private*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
