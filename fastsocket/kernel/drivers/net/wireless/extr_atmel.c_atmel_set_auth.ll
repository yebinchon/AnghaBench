; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_atmel.c_atmel_set_auth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_atmel.c_atmel_set_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.iw_param }
%struct.iw_param = type { i32, i32 }
%struct.atmel_private = type { i32 }

@IW_AUTH_INDEX = common dso_local global i32 0, align 4
@IW_AUTH_ALG_SHARED_KEY = common dso_local global i32 0, align 4
@IW_AUTH_ALG_OPEN_SYSTEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @atmel_set_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_set_auth(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.atmel_private*, align 8
  %11 = alloca %struct.iw_param*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = call %struct.atmel_private* @netdev_priv(%struct.net_device* %12)
  store %struct.atmel_private* %13, %struct.atmel_private** %10, align 8
  %14 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %15 = bitcast %union.iwreq_data* %14 to %struct.iw_param*
  store %struct.iw_param* %15, %struct.iw_param** %11, align 8
  %16 = load %struct.iw_param*, %struct.iw_param** %11, align 8
  %17 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @IW_AUTH_INDEX, align 4
  %20 = and i32 %18, %19
  switch i32 %20, label %65 [
    i32 128, label %21
    i32 134, label %21
    i32 135, label %21
    i32 132, label %21
    i32 130, label %21
    i32 131, label %21
    i32 133, label %22
    i32 136, label %31
    i32 129, label %56
  ]

21:                                               ; preds = %4, %4, %4, %4, %4, %4
  br label %68

22:                                               ; preds = %4
  %23 = load %struct.iw_param*, %struct.iw_param** %11, align 8
  %24 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 1, i32 0
  %29 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %30 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  br label %68

31:                                               ; preds = %4
  %32 = load %struct.iw_param*, %struct.iw_param** %11, align 8
  %33 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @IW_AUTH_ALG_SHARED_KEY, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %40 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %39, i32 0, i32 0
  store i32 1, i32* %40, align 4
  br label %55

41:                                               ; preds = %31
  %42 = load %struct.iw_param*, %struct.iw_param** %11, align 8
  %43 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @IW_AUTH_ALG_OPEN_SYSTEM, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %50 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %49, i32 0, i32 0
  store i32 0, i32* %50, align 4
  br label %54

51:                                               ; preds = %41
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  br label %71

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %54, %38
  br label %68

56:                                               ; preds = %4
  %57 = load %struct.iw_param*, %struct.iw_param** %11, align 8
  %58 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32, i32* @EOPNOTSUPP, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %5, align 4
  br label %71

64:                                               ; preds = %56
  br label %68

65:                                               ; preds = %4
  %66 = load i32, i32* @EOPNOTSUPP, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %71

68:                                               ; preds = %64, %55, %22, %21
  %69 = load i32, i32* @EINPROGRESS, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %68, %65, %61, %51
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local %struct.atmel_private* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
