; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pch_gbe/extr_pch_gbe_main.c_pch_gbe_change_mtu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pch_gbe/extr_pch_gbe_main.c_pch_gbe_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.pch_gbe_adapter = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ETH_HLEN = common dso_local global i32 0, align 4
@ETH_FCS_LEN = common dso_local global i32 0, align 4
@ETH_ZLEN = common dso_local global i32 0, align 4
@PCH_GBE_MAX_JUMBO_FRAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Invalid MTU setting\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PCH_GBE_FRAME_SIZE_2048 = common dso_local global i32 0, align 4
@PCH_GBE_FRAME_SIZE_4096 = common dso_local global i32 0, align 4
@PCH_GBE_FRAME_SIZE_8192 = common dso_local global i32 0, align 4
@PCH_GBE_MAX_RX_BUFFER_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [67 x i8] c"max_frame : %d  rx_buffer_len : %d  mtu : %d  max_frame_size : %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @pch_gbe_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pch_gbe_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pch_gbe_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.pch_gbe_adapter* @netdev_priv(%struct.net_device* %10)
  store %struct.pch_gbe_adapter* %11, %struct.pch_gbe_adapter** %6, align 8
  %12 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %6, align 8
  %13 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %8, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @ETH_HLEN, align 4
  %17 = add nsw i32 %15, %16
  %18 = load i32, i32* @ETH_FCS_LEN, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @ETH_ZLEN, align 4
  %22 = load i32, i32* @ETH_FCS_LEN, align 4
  %23 = add nsw i32 %21, %22
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @PCH_GBE_MAX_JUMBO_FRAME_SIZE, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %25, %2
  %30 = call i32 @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %122

33:                                               ; preds = %25
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @PCH_GBE_FRAME_SIZE_2048, align 4
  %36 = icmp sle i32 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load i32, i32* @PCH_GBE_FRAME_SIZE_2048, align 4
  %39 = sext i32 %38 to i64
  %40 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %6, align 8
  %41 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  br label %67

42:                                               ; preds = %33
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @PCH_GBE_FRAME_SIZE_4096, align 4
  %45 = icmp sle i32 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load i32, i32* @PCH_GBE_FRAME_SIZE_4096, align 4
  %48 = sext i32 %47 to i64
  %49 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %6, align 8
  %50 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  br label %66

51:                                               ; preds = %42
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @PCH_GBE_FRAME_SIZE_8192, align 4
  %54 = icmp sle i32 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load i32, i32* @PCH_GBE_FRAME_SIZE_8192, align 4
  %57 = sext i32 %56 to i64
  %58 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %6, align 8
  %59 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  br label %65

60:                                               ; preds = %51
  %61 = load i32, i32* @PCH_GBE_MAX_RX_BUFFER_SIZE, align 4
  %62 = sext i32 %61 to i64
  %63 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %6, align 8
  %64 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  br label %65

65:                                               ; preds = %60, %55
  br label %66

66:                                               ; preds = %65, %46
  br label %67

67:                                               ; preds = %66, %37
  %68 = load %struct.net_device*, %struct.net_device** %4, align 8
  %69 = call i64 @netif_running(%struct.net_device* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %96

71:                                               ; preds = %67
  %72 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %6, align 8
  %73 = call i32 @pch_gbe_down(%struct.pch_gbe_adapter* %72)
  %74 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %6, align 8
  %75 = call i32 @pch_gbe_up(%struct.pch_gbe_adapter* %74)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %71
  %79 = load i64, i64* %8, align 8
  %80 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %6, align 8
  %81 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  %82 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %6, align 8
  %83 = call i32 @pch_gbe_up(%struct.pch_gbe_adapter* %82)
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %122

86:                                               ; preds = %71
  %87 = load i32, i32* %5, align 4
  %88 = load %struct.net_device*, %struct.net_device** %4, align 8
  %89 = getelementptr inbounds %struct.net_device, %struct.net_device* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %6, align 8
  %92 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  store i32 %90, i32* %94, align 8
  br label %95

95:                                               ; preds = %86
  br label %107

96:                                               ; preds = %67
  %97 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %6, align 8
  %98 = call i32 @pch_gbe_reset(%struct.pch_gbe_adapter* %97)
  %99 = load i32, i32* %5, align 4
  %100 = load %struct.net_device*, %struct.net_device** %4, align 8
  %101 = getelementptr inbounds %struct.net_device, %struct.net_device* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* %7, align 4
  %103 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %6, align 8
  %104 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  store i32 %102, i32* %106, align 8
  br label %107

107:                                              ; preds = %96, %95
  %108 = load i32, i32* %7, align 4
  %109 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %6, align 8
  %110 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = trunc i64 %111 to i32
  %113 = load %struct.net_device*, %struct.net_device** %4, align 8
  %114 = getelementptr inbounds %struct.net_device, %struct.net_device* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %6, align 8
  %117 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @pr_debug(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %108, i32 %112, i32 %115, i32 %120)
  store i32 0, i32* %3, align 4
  br label %122

122:                                              ; preds = %107, %78, %29
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local %struct.pch_gbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @pch_gbe_down(%struct.pch_gbe_adapter*) #1

declare dso_local i32 @pch_gbe_up(%struct.pch_gbe_adapter*) #1

declare dso_local i32 @pch_gbe_reset(%struct.pch_gbe_adapter*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
