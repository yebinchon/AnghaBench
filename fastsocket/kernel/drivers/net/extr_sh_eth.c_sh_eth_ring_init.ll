; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sh_eth.c_sh_eth_ring_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sh_eth.c_sh_eth_ring_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.sh_eth_private = type { i32, i32, i8*, i8*, i32, i64, i8*, i8* }

@PKT_BUF_SZ = common dso_local global i32 0, align 4
@RX_RING_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Cannot allocate Rx skb\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@TX_RING_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Cannot allocate Tx skb\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Cannot allocate Rx Ring (size %d bytes)\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Cannot allocate Tx Ring (size %d bytes)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @sh_eth_ring_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_eth_ring_init(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.sh_eth_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.sh_eth_private* @netdev_priv(%struct.net_device* %8)
  store %struct.sh_eth_private* %9, %struct.sh_eth_private** %4, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp sle i32 %12, 1492
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @PKT_BUF_SZ, align 4
  br label %25

16:                                               ; preds = %1
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 26
  %21 = add nsw i32 %20, 7
  %22 = and i32 %21, -8
  %23 = add nsw i32 %22, 2
  %24 = add nsw i32 %23, 16
  br label %25

25:                                               ; preds = %16, %14
  %26 = phi i32 [ %15, %14 ], [ %24, %16 ]
  %27 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %28 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* @RX_RING_SIZE, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 1, %30
  %32 = trunc i64 %31 to i32
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i8* @kmalloc(i32 %32, i32 %33)
  %35 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %36 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %35, i32 0, i32 7
  store i8* %34, i8** %36, align 8
  %37 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %38 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %37, i32 0, i32 7
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %48, label %41

41:                                               ; preds = %25
  %42 = load %struct.net_device*, %struct.net_device** %3, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 1
  %44 = call i32 (i32*, i8*, ...) @dev_err(i32* %43, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %2, align 4
  br label %130

48:                                               ; preds = %25
  %49 = load i32, i32* @TX_RING_SIZE, align 4
  %50 = sext i32 %49 to i64
  %51 = mul i64 1, %50
  %52 = trunc i64 %51 to i32
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call i8* @kmalloc(i32 %52, i32 %53)
  %55 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %56 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %55, i32 0, i32 6
  store i8* %54, i8** %56, align 8
  %57 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %58 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %57, i32 0, i32 6
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %67, label %61

61:                                               ; preds = %48
  %62 = load %struct.net_device*, %struct.net_device** %3, align 8
  %63 = getelementptr inbounds %struct.net_device, %struct.net_device* %62, i32 0, i32 1
  %64 = call i32 (i32*, i8*, ...) @dev_err(i32* %63, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %7, align 4
  br label %126

67:                                               ; preds = %48
  %68 = load i32, i32* @RX_RING_SIZE, align 4
  %69 = sext i32 %68 to i64
  %70 = mul i64 4, %69
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %74 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %73, i32 0, i32 1
  %75 = load i32, i32* @GFP_KERNEL, align 4
  %76 = call i8* @dma_alloc_coherent(i32* null, i32 %72, i32* %74, i32 %75)
  %77 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %78 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %77, i32 0, i32 2
  store i8* %76, i8** %78, align 8
  %79 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %80 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %79, i32 0, i32 2
  %81 = load i8*, i8** %80, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %90, label %83

83:                                               ; preds = %67
  %84 = load %struct.net_device*, %struct.net_device** %3, align 8
  %85 = getelementptr inbounds %struct.net_device, %struct.net_device* %84, i32 0, i32 1
  %86 = load i32, i32* %5, align 4
  %87 = call i32 (i32*, i8*, ...) @dev_err(i32* %85, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* @ENOMEM, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %7, align 4
  br label %117

90:                                               ; preds = %67
  %91 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %92 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %91, i32 0, i32 5
  store i64 0, i64* %92, align 8
  %93 = load i32, i32* @TX_RING_SIZE, align 4
  %94 = sext i32 %93 to i64
  %95 = mul i64 4, %94
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %6, align 4
  %98 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %99 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %98, i32 0, i32 4
  %100 = load i32, i32* @GFP_KERNEL, align 4
  %101 = call i8* @dma_alloc_coherent(i32* null, i32 %97, i32* %99, i32 %100)
  %102 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %103 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %102, i32 0, i32 3
  store i8* %101, i8** %103, align 8
  %104 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %105 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %104, i32 0, i32 3
  %106 = load i8*, i8** %105, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %115, label %108

108:                                              ; preds = %90
  %109 = load %struct.net_device*, %struct.net_device** %3, align 8
  %110 = getelementptr inbounds %struct.net_device, %struct.net_device* %109, i32 0, i32 1
  %111 = load i32, i32* %6, align 4
  %112 = call i32 (i32*, i8*, ...) @dev_err(i32* %110, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* @ENOMEM, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %7, align 4
  br label %117

115:                                              ; preds = %90
  %116 = load i32, i32* %7, align 4
  store i32 %116, i32* %2, align 4
  br label %130

117:                                              ; preds = %108, %83
  %118 = load i32, i32* %5, align 4
  %119 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %120 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %119, i32 0, i32 2
  %121 = load i8*, i8** %120, align 8
  %122 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %123 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @dma_free_coherent(i32* null, i32 %118, i8* %121, i32 %124)
  br label %126

126:                                              ; preds = %117, %61
  %127 = load %struct.net_device*, %struct.net_device** %3, align 8
  %128 = call i32 @sh_eth_ring_free(%struct.net_device* %127)
  %129 = load i32, i32* %7, align 4
  store i32 %129, i32* %2, align 4
  br label %130

130:                                              ; preds = %126, %115, %41
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local %struct.sh_eth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i8*, i32) #1

declare dso_local i32 @sh_eth_ring_free(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
