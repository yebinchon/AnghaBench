; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_lib82596.c_i596_cleanup_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_lib82596.c_i596_cleanup_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.i596_private = type { %struct.TYPE_9__*, i32, %struct.i596_cmd* }
%struct.TYPE_9__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8* }
%struct.i596_cmd = type { i8*, %struct.i596_cmd*, i32 }
%struct.tx_cmd = type { %struct.TYPE_8__, i32, %struct.sk_buff* }
%struct.TYPE_8__ = type { i32 }
%struct.sk_buff = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@I596_NULL = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"i596_cleanup_cmd timed out\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.i596_private*)* @i596_cleanup_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i596_cleanup_cmd(%struct.net_device* %0, %struct.i596_private* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.i596_private*, align 8
  %5 = alloca %struct.i596_cmd*, align 8
  %6 = alloca %struct.tx_cmd*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.i596_private* %1, %struct.i596_private** %4, align 8
  br label %8

8:                                                ; preds = %75, %2
  %9 = load %struct.i596_private*, %struct.i596_private** %4, align 8
  %10 = getelementptr inbounds %struct.i596_private, %struct.i596_private* %9, i32 0, i32 2
  %11 = load %struct.i596_cmd*, %struct.i596_cmd** %10, align 8
  %12 = icmp ne %struct.i596_cmd* %11, null
  br i1 %12, label %13, label %79

13:                                               ; preds = %8
  %14 = load %struct.i596_private*, %struct.i596_private** %4, align 8
  %15 = getelementptr inbounds %struct.i596_private, %struct.i596_private* %14, i32 0, i32 2
  %16 = load %struct.i596_cmd*, %struct.i596_cmd** %15, align 8
  store %struct.i596_cmd* %16, %struct.i596_cmd** %5, align 8
  %17 = load %struct.i596_cmd*, %struct.i596_cmd** %5, align 8
  %18 = getelementptr inbounds %struct.i596_cmd, %struct.i596_cmd* %17, i32 0, i32 1
  %19 = load %struct.i596_cmd*, %struct.i596_cmd** %18, align 8
  %20 = load %struct.i596_private*, %struct.i596_private** %4, align 8
  %21 = getelementptr inbounds %struct.i596_private, %struct.i596_private* %20, i32 0, i32 2
  store %struct.i596_cmd* %19, %struct.i596_cmd** %21, align 8
  %22 = load %struct.i596_private*, %struct.i596_private** %4, align 8
  %23 = getelementptr inbounds %struct.i596_private, %struct.i596_private* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %23, align 8
  %26 = load %struct.i596_cmd*, %struct.i596_cmd** %5, align 8
  %27 = getelementptr inbounds %struct.i596_cmd, %struct.i596_cmd* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @SWAP16(i32 %28)
  %30 = and i32 %29, 7
  switch i32 %30, label %69 [
    i32 128, label %31
  ]

31:                                               ; preds = %13
  %32 = load %struct.i596_cmd*, %struct.i596_cmd** %5, align 8
  %33 = bitcast %struct.i596_cmd* %32 to %struct.tx_cmd*
  store %struct.tx_cmd* %33, %struct.tx_cmd** %6, align 8
  %34 = load %struct.tx_cmd*, %struct.tx_cmd** %6, align 8
  %35 = getelementptr inbounds %struct.tx_cmd, %struct.tx_cmd* %34, i32 0, i32 2
  %36 = load %struct.sk_buff*, %struct.sk_buff** %35, align 8
  store %struct.sk_buff* %36, %struct.sk_buff** %7, align 8
  %37 = load %struct.net_device*, %struct.net_device** %3, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.tx_cmd*, %struct.tx_cmd** %6, align 8
  %42 = getelementptr inbounds %struct.tx_cmd, %struct.tx_cmd* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @DMA_TO_DEVICE, align 4
  %48 = call i32 @dma_unmap_single(i32 %40, i32 %43, i32 %46, i32 %47)
  %49 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %50 = call i32 @dev_kfree_skb(%struct.sk_buff* %49)
  %51 = load %struct.net_device*, %struct.net_device** %3, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  %56 = load %struct.net_device*, %struct.net_device** %3, align 8
  %57 = getelementptr inbounds %struct.net_device, %struct.net_device* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  %61 = load %struct.i596_cmd*, %struct.i596_cmd** %5, align 8
  %62 = getelementptr inbounds %struct.i596_cmd, %struct.i596_cmd* %61, i32 0, i32 1
  store %struct.i596_cmd* null, %struct.i596_cmd** %62, align 8
  %63 = load i8*, i8** @I596_NULL, align 8
  %64 = load %struct.i596_cmd*, %struct.i596_cmd** %5, align 8
  %65 = getelementptr inbounds %struct.i596_cmd, %struct.i596_cmd* %64, i32 0, i32 0
  store i8* %63, i8** %65, align 8
  %66 = load %struct.tx_cmd*, %struct.tx_cmd** %6, align 8
  %67 = getelementptr inbounds %struct.tx_cmd, %struct.tx_cmd* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  store i32 0, i32* %68, align 8
  br label %75

69:                                               ; preds = %13
  %70 = load %struct.i596_cmd*, %struct.i596_cmd** %5, align 8
  %71 = getelementptr inbounds %struct.i596_cmd, %struct.i596_cmd* %70, i32 0, i32 1
  store %struct.i596_cmd* null, %struct.i596_cmd** %71, align 8
  %72 = load i8*, i8** @I596_NULL, align 8
  %73 = load %struct.i596_cmd*, %struct.i596_cmd** %5, align 8
  %74 = getelementptr inbounds %struct.i596_cmd, %struct.i596_cmd* %73, i32 0, i32 0
  store i8* %72, i8** %74, align 8
  br label %75

75:                                               ; preds = %69, %31
  %76 = load %struct.net_device*, %struct.net_device** %3, align 8
  %77 = load %struct.i596_cmd*, %struct.i596_cmd** %5, align 8
  %78 = call i32 @DMA_WBACK_INV(%struct.net_device* %76, %struct.i596_cmd* %77, i32 24)
  br label %8

79:                                               ; preds = %8
  %80 = load %struct.net_device*, %struct.net_device** %3, align 8
  %81 = load %struct.i596_private*, %struct.i596_private** %4, align 8
  %82 = getelementptr inbounds %struct.i596_private, %struct.i596_private* %81, i32 0, i32 0
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = call i32 @wait_cmd(%struct.net_device* %80, %struct.TYPE_9__* %83, i32 100, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %85 = load i8*, i8** @I596_NULL, align 8
  %86 = load %struct.i596_private*, %struct.i596_private** %4, align 8
  %87 = getelementptr inbounds %struct.i596_private, %struct.i596_private* %86, i32 0, i32 0
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  store i8* %85, i8** %90, align 8
  %91 = load %struct.net_device*, %struct.net_device** %3, align 8
  %92 = load %struct.i596_private*, %struct.i596_private** %4, align 8
  %93 = getelementptr inbounds %struct.i596_private, %struct.i596_private* %92, i32 0, i32 0
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = call i32 @DMA_WBACK(%struct.net_device* %91, %struct.TYPE_10__* %95, i32 4)
  ret void
}

declare dso_local i32 @SWAP16(i32) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @DMA_WBACK_INV(%struct.net_device*, %struct.i596_cmd*, i32) #1

declare dso_local i32 @wait_cmd(%struct.net_device*, %struct.TYPE_9__*, i32, i8*) #1

declare dso_local i32 @DMA_WBACK(%struct.net_device*, %struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
