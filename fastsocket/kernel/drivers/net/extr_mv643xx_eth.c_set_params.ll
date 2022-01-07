; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mv643xx_eth.c_set_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mv643xx_eth.c_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv643xx_eth_private = type { i32, i32, i32, i32, i64, i32, i32, i64, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.mv643xx_eth_platform_data = type { i64, i32, i32, i64, i64, i32, i32, i64, i32 }

@DEFAULT_RX_QUEUE_SIZE = common dso_local global i64 0, align 8
@DEFAULT_TX_QUEUE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mv643xx_eth_private*, %struct.mv643xx_eth_platform_data*)* @set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_params(%struct.mv643xx_eth_private* %0, %struct.mv643xx_eth_platform_data* %1) #0 {
  %3 = alloca %struct.mv643xx_eth_private*, align 8
  %4 = alloca %struct.mv643xx_eth_platform_data*, align 8
  %5 = alloca %struct.net_device*, align 8
  store %struct.mv643xx_eth_private* %0, %struct.mv643xx_eth_private** %3, align 8
  store %struct.mv643xx_eth_platform_data* %1, %struct.mv643xx_eth_platform_data** %4, align 8
  %6 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %7 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %6, i32 0, i32 8
  %8 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %8, %struct.net_device** %5, align 8
  %9 = load %struct.mv643xx_eth_platform_data*, %struct.mv643xx_eth_platform_data** %4, align 8
  %10 = getelementptr inbounds %struct.mv643xx_eth_platform_data, %struct.mv643xx_eth_platform_data* %9, i32 0, i32 8
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @is_valid_ether_addr(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.mv643xx_eth_platform_data*, %struct.mv643xx_eth_platform_data** %4, align 8
  %19 = getelementptr inbounds %struct.mv643xx_eth_platform_data, %struct.mv643xx_eth_platform_data* %18, i32 0, i32 8
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @memcpy(i32 %17, i32 %20, i32 6)
  br label %28

22:                                               ; preds = %2
  %23 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %24 = load %struct.net_device*, %struct.net_device** %5, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @uc_addr_get(%struct.mv643xx_eth_private* %23, i32 %26)
  br label %28

28:                                               ; preds = %22, %14
  %29 = load i64, i64* @DEFAULT_RX_QUEUE_SIZE, align 8
  %30 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %31 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %30, i32 0, i32 7
  store i64 %29, i64* %31, align 8
  %32 = load %struct.mv643xx_eth_platform_data*, %struct.mv643xx_eth_platform_data** %4, align 8
  %33 = getelementptr inbounds %struct.mv643xx_eth_platform_data, %struct.mv643xx_eth_platform_data* %32, i32 0, i32 7
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %28
  %37 = load %struct.mv643xx_eth_platform_data*, %struct.mv643xx_eth_platform_data** %4, align 8
  %38 = getelementptr inbounds %struct.mv643xx_eth_platform_data, %struct.mv643xx_eth_platform_data* %37, i32 0, i32 7
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %41 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %40, i32 0, i32 7
  store i64 %39, i64* %41, align 8
  br label %42

42:                                               ; preds = %36, %28
  %43 = load %struct.mv643xx_eth_platform_data*, %struct.mv643xx_eth_platform_data** %4, align 8
  %44 = getelementptr inbounds %struct.mv643xx_eth_platform_data, %struct.mv643xx_eth_platform_data* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %47 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %46, i32 0, i32 6
  store i32 %45, i32* %47, align 4
  %48 = load %struct.mv643xx_eth_platform_data*, %struct.mv643xx_eth_platform_data** %4, align 8
  %49 = getelementptr inbounds %struct.mv643xx_eth_platform_data, %struct.mv643xx_eth_platform_data* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %52 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 8
  %53 = load %struct.mv643xx_eth_platform_data*, %struct.mv643xx_eth_platform_data** %4, align 8
  %54 = getelementptr inbounds %struct.mv643xx_eth_platform_data, %struct.mv643xx_eth_platform_data* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %42
  br label %59

58:                                               ; preds = %42
  br label %59

59:                                               ; preds = %58, %57
  %60 = phi i64 [ %55, %57 ], [ 1, %58 ]
  %61 = trunc i64 %60 to i32
  %62 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %63 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load i64, i64* @DEFAULT_TX_QUEUE_SIZE, align 8
  %65 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %66 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %65, i32 0, i32 4
  store i64 %64, i64* %66, align 8
  %67 = load %struct.mv643xx_eth_platform_data*, %struct.mv643xx_eth_platform_data** %4, align 8
  %68 = getelementptr inbounds %struct.mv643xx_eth_platform_data, %struct.mv643xx_eth_platform_data* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %59
  %72 = load %struct.mv643xx_eth_platform_data*, %struct.mv643xx_eth_platform_data** %4, align 8
  %73 = getelementptr inbounds %struct.mv643xx_eth_platform_data, %struct.mv643xx_eth_platform_data* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %76 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %75, i32 0, i32 4
  store i64 %74, i64* %76, align 8
  br label %77

77:                                               ; preds = %71, %59
  %78 = load %struct.mv643xx_eth_platform_data*, %struct.mv643xx_eth_platform_data** %4, align 8
  %79 = getelementptr inbounds %struct.mv643xx_eth_platform_data, %struct.mv643xx_eth_platform_data* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %82 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 4
  %83 = load %struct.mv643xx_eth_platform_data*, %struct.mv643xx_eth_platform_data** %4, align 8
  %84 = getelementptr inbounds %struct.mv643xx_eth_platform_data, %struct.mv643xx_eth_platform_data* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %87 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  %88 = load %struct.mv643xx_eth_platform_data*, %struct.mv643xx_eth_platform_data** %4, align 8
  %89 = getelementptr inbounds %struct.mv643xx_eth_platform_data, %struct.mv643xx_eth_platform_data* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %77
  br label %94

93:                                               ; preds = %77
  br label %94

94:                                               ; preds = %93, %92
  %95 = phi i64 [ %90, %92 ], [ 1, %93 ]
  %96 = trunc i64 %95 to i32
  %97 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %98 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  ret void
}

declare dso_local i64 @is_valid_ether_addr(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @uc_addr_get(%struct.mv643xx_eth_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
