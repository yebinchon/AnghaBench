; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_atmel.c_atmel_get_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_atmel.c_atmel_get_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_param = type { i32, i32 }
%struct.atmel_private = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_param*, i8*)* @atmel_get_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_get_rate(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_param* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %struct.iw_param*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.atmel_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %struct.iw_param* %2, %struct.iw_param** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.atmel_private* @netdev_priv(%struct.net_device* %10)
  store %struct.atmel_private* %11, %struct.atmel_private** %9, align 8
  %12 = load %struct.atmel_private*, %struct.atmel_private** %9, align 8
  %13 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %4
  %17 = load %struct.iw_param*, %struct.iw_param** %7, align 8
  %18 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %17, i32 0, i32 0
  store i32 0, i32* %18, align 4
  %19 = load %struct.iw_param*, %struct.iw_param** %7, align 8
  %20 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %19, i32 0, i32 1
  store i32 11000000, i32* %20, align 4
  br label %40

21:                                               ; preds = %4
  %22 = load %struct.iw_param*, %struct.iw_param** %7, align 8
  %23 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  %24 = load %struct.atmel_private*, %struct.atmel_private** %9, align 8
  %25 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %39 [
    i32 0, label %27
    i32 1, label %30
    i32 2, label %33
    i32 3, label %36
  ]

27:                                               ; preds = %21
  %28 = load %struct.iw_param*, %struct.iw_param** %7, align 8
  %29 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %28, i32 0, i32 1
  store i32 1000000, i32* %29, align 4
  br label %39

30:                                               ; preds = %21
  %31 = load %struct.iw_param*, %struct.iw_param** %7, align 8
  %32 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %31, i32 0, i32 1
  store i32 2000000, i32* %32, align 4
  br label %39

33:                                               ; preds = %21
  %34 = load %struct.iw_param*, %struct.iw_param** %7, align 8
  %35 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %34, i32 0, i32 1
  store i32 5500000, i32* %35, align 4
  br label %39

36:                                               ; preds = %21
  %37 = load %struct.iw_param*, %struct.iw_param** %7, align 8
  %38 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %37, i32 0, i32 1
  store i32 11000000, i32* %38, align 4
  br label %39

39:                                               ; preds = %21, %36, %33, %30, %27
  br label %40

40:                                               ; preds = %39, %16
  ret i32 0
}

declare dso_local %struct.atmel_private* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
