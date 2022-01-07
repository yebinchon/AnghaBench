; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ep93xx/extr_dma-m2p.c_find_free_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ep93xx/extr_dma-m2p.c_find_free_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m2p_channel = type { %struct.ep93xx_dma_m2p_client*, i64 }
%struct.ep93xx_dma_m2p_client = type { i32, i64 }

@EP93XX_DMA_M2P_RX = common dso_local global i32 0, align 4
@m2p_rx = common dso_local global %struct.m2p_channel* null, align 8
@m2p_tx = common dso_local global %struct.m2p_channel* null, align 8
@EP93XX_DMA_M2P_PORT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"DMA channel already used by %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"unknown client\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"No free DMA channel for %s\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.m2p_channel* (%struct.ep93xx_dma_m2p_client*)* @find_free_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.m2p_channel* @find_free_channel(%struct.ep93xx_dma_m2p_client* %0) #0 {
  %2 = alloca %struct.m2p_channel*, align 8
  %3 = alloca %struct.ep93xx_dma_m2p_client*, align 8
  %4 = alloca %struct.m2p_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ep93xx_dma_m2p_client*, align 8
  %7 = alloca i32, align 4
  store %struct.ep93xx_dma_m2p_client* %0, %struct.ep93xx_dma_m2p_client** %3, align 8
  %8 = load %struct.ep93xx_dma_m2p_client*, %struct.ep93xx_dma_m2p_client** %3, align 8
  %9 = getelementptr inbounds %struct.ep93xx_dma_m2p_client, %struct.ep93xx_dma_m2p_client* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @EP93XX_DMA_M2P_RX, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load %struct.m2p_channel*, %struct.m2p_channel** @m2p_rx, align 8
  store %struct.m2p_channel* %15, %struct.m2p_channel** %4, align 8
  br label %18

16:                                               ; preds = %1
  %17 = load %struct.m2p_channel*, %struct.m2p_channel** @m2p_tx, align 8
  store %struct.m2p_channel* %17, %struct.m2p_channel** %4, align 8
  br label %18

18:                                               ; preds = %16, %14
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %65, %18
  %20 = load %struct.m2p_channel*, %struct.m2p_channel** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.m2p_channel, %struct.m2p_channel* %20, i64 %22
  %24 = getelementptr inbounds %struct.m2p_channel, %struct.m2p_channel* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %68

27:                                               ; preds = %19
  %28 = load %struct.m2p_channel*, %struct.m2p_channel** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.m2p_channel, %struct.m2p_channel* %28, i64 %30
  %32 = getelementptr inbounds %struct.m2p_channel, %struct.m2p_channel* %31, i32 0, i32 0
  %33 = load %struct.ep93xx_dma_m2p_client*, %struct.ep93xx_dma_m2p_client** %32, align 8
  store %struct.ep93xx_dma_m2p_client* %33, %struct.ep93xx_dma_m2p_client** %6, align 8
  %34 = load %struct.ep93xx_dma_m2p_client*, %struct.ep93xx_dma_m2p_client** %6, align 8
  %35 = icmp ne %struct.ep93xx_dma_m2p_client* %34, null
  br i1 %35, label %36, label %64

36:                                               ; preds = %27
  %37 = load %struct.ep93xx_dma_m2p_client*, %struct.ep93xx_dma_m2p_client** %3, align 8
  %38 = getelementptr inbounds %struct.ep93xx_dma_m2p_client, %struct.ep93xx_dma_m2p_client* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @EP93XX_DMA_M2P_PORT_MASK, align 4
  %41 = and i32 %39, %40
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.ep93xx_dma_m2p_client*, %struct.ep93xx_dma_m2p_client** %6, align 8
  %44 = getelementptr inbounds %struct.ep93xx_dma_m2p_client, %struct.ep93xx_dma_m2p_client* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @EP93XX_DMA_M2P_PORT_MASK, align 4
  %47 = and i32 %45, %46
  %48 = icmp eq i32 %42, %47
  br i1 %48, label %49, label %63

49:                                               ; preds = %36
  %50 = load %struct.ep93xx_dma_m2p_client*, %struct.ep93xx_dma_m2p_client** %3, align 8
  %51 = getelementptr inbounds %struct.ep93xx_dma_m2p_client, %struct.ep93xx_dma_m2p_client* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = inttoptr i64 %52 to i8*
  br label %57

56:                                               ; preds = %49
  br label %57

57:                                               ; preds = %56, %54
  %58 = phi i8* [ %55, %54 ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), %56 ]
  %59 = call i32 @pr_warning(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %58)
  %60 = load i32, i32* @EBUSY, align 4
  %61 = sub nsw i32 0, %60
  %62 = call %struct.m2p_channel* @ERR_PTR(i32 %61)
  store %struct.m2p_channel* %62, %struct.m2p_channel** %2, align 8
  br label %108

63:                                               ; preds = %36
  br label %64

64:                                               ; preds = %63, %27
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  br label %19

68:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %91, %68
  %70 = load %struct.m2p_channel*, %struct.m2p_channel** %4, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.m2p_channel, %struct.m2p_channel* %70, i64 %72
  %74 = getelementptr inbounds %struct.m2p_channel, %struct.m2p_channel* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %94

77:                                               ; preds = %69
  %78 = load %struct.m2p_channel*, %struct.m2p_channel** %4, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.m2p_channel, %struct.m2p_channel* %78, i64 %80
  %82 = getelementptr inbounds %struct.m2p_channel, %struct.m2p_channel* %81, i32 0, i32 0
  %83 = load %struct.ep93xx_dma_m2p_client*, %struct.ep93xx_dma_m2p_client** %82, align 8
  %84 = icmp eq %struct.ep93xx_dma_m2p_client* %83, null
  br i1 %84, label %85, label %90

85:                                               ; preds = %77
  %86 = load %struct.m2p_channel*, %struct.m2p_channel** %4, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.m2p_channel, %struct.m2p_channel* %86, i64 %88
  store %struct.m2p_channel* %89, %struct.m2p_channel** %2, align 8
  br label %108

90:                                               ; preds = %77
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %5, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %5, align 4
  br label %69

94:                                               ; preds = %69
  %95 = load %struct.ep93xx_dma_m2p_client*, %struct.ep93xx_dma_m2p_client** %3, align 8
  %96 = getelementptr inbounds %struct.ep93xx_dma_m2p_client, %struct.ep93xx_dma_m2p_client* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = inttoptr i64 %97 to i8*
  br label %102

101:                                              ; preds = %94
  br label %102

102:                                              ; preds = %101, %99
  %103 = phi i8* [ %100, %99 ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), %101 ]
  %104 = call i32 @pr_warning(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %103)
  %105 = load i32, i32* @ENODEV, align 4
  %106 = sub nsw i32 0, %105
  %107 = call %struct.m2p_channel* @ERR_PTR(i32 %106)
  store %struct.m2p_channel* %107, %struct.m2p_channel** %2, align 8
  br label %108

108:                                              ; preds = %102, %85, %57
  %109 = load %struct.m2p_channel*, %struct.m2p_channel** %2, align 8
  ret %struct.m2p_channel* %109
}

declare dso_local i32 @pr_warning(i8*, i8*) #1

declare dso_local %struct.m2p_channel* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
