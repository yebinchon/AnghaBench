; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sonic.c_sonic_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sonic.c_sonic_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sonic_local = type { i32**, i8**, i32, i32**, i8**, i32* }

@sonic_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"sonic_close\0A\00", align 1
@SONIC_IMR = common dso_local global i32 0, align 4
@SONIC_ISR = common dso_local global i32 0, align 4
@SONIC_CMD = common dso_local global i32 0, align 4
@SONIC_CR_RST = common dso_local global i32 0, align 4
@SONIC_NUM_TDS = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@SONIC_NUM_RRS = common dso_local global i32 0, align 4
@SONIC_RBSIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @sonic_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sonic_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.sonic_local*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.sonic_local* @netdev_priv(%struct.net_device* %5)
  store %struct.sonic_local* %6, %struct.sonic_local** %3, align 8
  %7 = load i32, i32* @sonic_debug, align 4
  %8 = icmp sgt i32 %7, 2
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 @printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %1
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = call i32 @netif_stop_queue(%struct.net_device* %12)
  %14 = load i32, i32* @SONIC_IMR, align 4
  %15 = call i32 @SONIC_WRITE(i32 %14, i32 0)
  %16 = load i32, i32* @SONIC_ISR, align 4
  %17 = call i32 @SONIC_WRITE(i32 %16, i32 32767)
  %18 = load i32, i32* @SONIC_CMD, align 4
  %19 = load i32, i32* @SONIC_CR_RST, align 4
  %20 = call i32 @SONIC_WRITE(i32 %18, i32 %19)
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %85, %11
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @SONIC_NUM_TDS, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %88

25:                                               ; preds = %21
  %26 = load %struct.sonic_local*, %struct.sonic_local** %3, align 8
  %27 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %26, i32 0, i32 4
  %28 = load i8**, i8*** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %28, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %60

34:                                               ; preds = %25
  %35 = load %struct.sonic_local*, %struct.sonic_local** %3, align 8
  %36 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.sonic_local*, %struct.sonic_local** %3, align 8
  %39 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %38, i32 0, i32 4
  %40 = load i8**, i8*** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %40, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.sonic_local*, %struct.sonic_local** %3, align 8
  %46 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %45, i32 0, i32 5
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @DMA_TO_DEVICE, align 4
  %53 = call i32 @dma_unmap_single(i32 %37, i8* %44, i32 %51, i32 %52)
  %54 = load %struct.sonic_local*, %struct.sonic_local** %3, align 8
  %55 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %54, i32 0, i32 4
  %56 = load i8**, i8*** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8*, i8** %56, i64 %58
  store i8* null, i8** %59, align 8
  br label %60

60:                                               ; preds = %34, %25
  %61 = load %struct.sonic_local*, %struct.sonic_local** %3, align 8
  %62 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %61, i32 0, i32 3
  %63 = load i32**, i32*** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32*, i32** %63, i64 %65
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %84

69:                                               ; preds = %60
  %70 = load %struct.sonic_local*, %struct.sonic_local** %3, align 8
  %71 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %70, i32 0, i32 3
  %72 = load i32**, i32*** %71, align 8
  %73 = load i32, i32* %4, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32*, i32** %72, i64 %74
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @dev_kfree_skb(i32* %76)
  %78 = load %struct.sonic_local*, %struct.sonic_local** %3, align 8
  %79 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %78, i32 0, i32 3
  %80 = load i32**, i32*** %79, align 8
  %81 = load i32, i32* %4, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32*, i32** %80, i64 %82
  store i32* null, i32** %83, align 8
  br label %84

84:                                               ; preds = %69, %60
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %4, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %4, align 4
  br label %21

88:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %89

89:                                               ; preds = %147, %88
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* @SONIC_NUM_RRS, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %150

93:                                               ; preds = %89
  %94 = load %struct.sonic_local*, %struct.sonic_local** %3, align 8
  %95 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %94, i32 0, i32 1
  %96 = load i8**, i8*** %95, align 8
  %97 = load i32, i32* %4, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8*, i8** %96, i64 %98
  %100 = load i8*, i8** %99, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %122

102:                                              ; preds = %93
  %103 = load %struct.sonic_local*, %struct.sonic_local** %3, align 8
  %104 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.sonic_local*, %struct.sonic_local** %3, align 8
  %107 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %106, i32 0, i32 1
  %108 = load i8**, i8*** %107, align 8
  %109 = load i32, i32* %4, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8*, i8** %108, i64 %110
  %112 = load i8*, i8** %111, align 8
  %113 = load i32, i32* @SONIC_RBSIZE, align 4
  %114 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %115 = call i32 @dma_unmap_single(i32 %105, i8* %112, i32 %113, i32 %114)
  %116 = load %struct.sonic_local*, %struct.sonic_local** %3, align 8
  %117 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %116, i32 0, i32 1
  %118 = load i8**, i8*** %117, align 8
  %119 = load i32, i32* %4, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8*, i8** %118, i64 %120
  store i8* null, i8** %121, align 8
  br label %122

122:                                              ; preds = %102, %93
  %123 = load %struct.sonic_local*, %struct.sonic_local** %3, align 8
  %124 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %123, i32 0, i32 0
  %125 = load i32**, i32*** %124, align 8
  %126 = load i32, i32* %4, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32*, i32** %125, i64 %127
  %129 = load i32*, i32** %128, align 8
  %130 = icmp ne i32* %129, null
  br i1 %130, label %131, label %146

131:                                              ; preds = %122
  %132 = load %struct.sonic_local*, %struct.sonic_local** %3, align 8
  %133 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %132, i32 0, i32 0
  %134 = load i32**, i32*** %133, align 8
  %135 = load i32, i32* %4, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32*, i32** %134, i64 %136
  %138 = load i32*, i32** %137, align 8
  %139 = call i32 @dev_kfree_skb(i32* %138)
  %140 = load %struct.sonic_local*, %struct.sonic_local** %3, align 8
  %141 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %140, i32 0, i32 0
  %142 = load i32**, i32*** %141, align 8
  %143 = load i32, i32* %4, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32*, i32** %142, i64 %144
  store i32* null, i32** %145, align 8
  br label %146

146:                                              ; preds = %131, %122
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %4, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %4, align 4
  br label %89

150:                                              ; preds = %89
  ret i32 0
}

declare dso_local %struct.sonic_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @SONIC_WRITE(i32, i32) #1

declare dso_local i32 @dma_unmap_single(i32, i8*, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
