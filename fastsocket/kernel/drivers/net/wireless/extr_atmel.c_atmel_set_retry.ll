; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_atmel.c_atmel_set_retry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_atmel.c_atmel_set_retry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_param = type { i32, i32, i32 }
%struct.atmel_private = type { i32, i32 }

@IW_RETRY_LIMIT = common dso_local global i32 0, align 4
@IW_RETRY_LONG = common dso_local global i32 0, align 4
@IW_RETRY_SHORT = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_param*, i8*)* @atmel_set_retry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_set_retry(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_param* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_param*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.atmel_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_param* %2, %struct.iw_param** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load %struct.net_device*, %struct.net_device** %6, align 8
  %12 = call %struct.atmel_private* @netdev_priv(%struct.net_device* %11)
  store %struct.atmel_private* %12, %struct.atmel_private** %10, align 8
  %13 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %14 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %65, label %17

17:                                               ; preds = %4
  %18 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %19 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @IW_RETRY_LIMIT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %65

24:                                               ; preds = %17
  %25 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %26 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @IW_RETRY_LONG, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %33 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %36 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  br label %62

37:                                               ; preds = %24
  %38 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %39 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @IW_RETRY_SHORT, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %37
  %45 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %46 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %49 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  br label %61

50:                                               ; preds = %37
  %51 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %52 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %55 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %57 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %60 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %50, %44
  br label %62

62:                                               ; preds = %61, %31
  %63 = load i32, i32* @EINPROGRESS, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  br label %68

65:                                               ; preds = %17, %4
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %65, %62
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local %struct.atmel_private* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
