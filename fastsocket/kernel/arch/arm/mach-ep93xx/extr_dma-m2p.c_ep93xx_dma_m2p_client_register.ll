; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ep93xx/extr_dma-m2p.c_ep93xx_dma_m2p_client_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ep93xx/extr_dma-m2p.c_ep93xx_dma_m2p_client_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ep93xx_dma_m2p_client = type { %struct.m2p_channel*, i64 }
%struct.m2p_channel = type { i32, i32*, i32*, i64, %struct.ep93xx_dma_m2p_client*, i32 }

@m2p_irq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"dma-m2p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ep93xx_dma_m2p_client_register(%struct.ep93xx_dma_m2p_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ep93xx_dma_m2p_client*, align 8
  %4 = alloca %struct.m2p_channel*, align 8
  %5 = alloca i32, align 4
  store %struct.ep93xx_dma_m2p_client* %0, %struct.ep93xx_dma_m2p_client** %3, align 8
  %6 = load %struct.ep93xx_dma_m2p_client*, %struct.ep93xx_dma_m2p_client** %3, align 8
  %7 = call %struct.m2p_channel* @find_free_channel(%struct.ep93xx_dma_m2p_client* %6)
  store %struct.m2p_channel* %7, %struct.m2p_channel** %4, align 8
  %8 = load %struct.m2p_channel*, %struct.m2p_channel** %4, align 8
  %9 = call i64 @IS_ERR(%struct.m2p_channel* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.m2p_channel*, %struct.m2p_channel** %4, align 8
  %13 = call i32 @PTR_ERR(%struct.m2p_channel* %12)
  store i32 %13, i32* %2, align 4
  br label %52

14:                                               ; preds = %1
  %15 = load %struct.m2p_channel*, %struct.m2p_channel** %4, align 8
  %16 = getelementptr inbounds %struct.m2p_channel, %struct.m2p_channel* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @m2p_irq, align 4
  %19 = load %struct.ep93xx_dma_m2p_client*, %struct.ep93xx_dma_m2p_client** %3, align 8
  %20 = getelementptr inbounds %struct.ep93xx_dma_m2p_client, %struct.ep93xx_dma_m2p_client* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = inttoptr i64 %21 to i8*
  br label %26

25:                                               ; preds = %14
  br label %26

26:                                               ; preds = %25, %23
  %27 = phi i8* [ %24, %23 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %25 ]
  %28 = load %struct.m2p_channel*, %struct.m2p_channel** %4, align 8
  %29 = call i32 @request_irq(i32 %17, i32 %18, i32 0, i8* %27, %struct.m2p_channel* %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %2, align 4
  br label %52

34:                                               ; preds = %26
  %35 = load %struct.ep93xx_dma_m2p_client*, %struct.ep93xx_dma_m2p_client** %3, align 8
  %36 = load %struct.m2p_channel*, %struct.m2p_channel** %4, align 8
  %37 = getelementptr inbounds %struct.m2p_channel, %struct.m2p_channel* %36, i32 0, i32 4
  store %struct.ep93xx_dma_m2p_client* %35, %struct.ep93xx_dma_m2p_client** %37, align 8
  %38 = load %struct.m2p_channel*, %struct.m2p_channel** %4, align 8
  %39 = getelementptr inbounds %struct.m2p_channel, %struct.m2p_channel* %38, i32 0, i32 3
  store i64 0, i64* %39, align 8
  %40 = load %struct.m2p_channel*, %struct.m2p_channel** %4, align 8
  %41 = getelementptr inbounds %struct.m2p_channel, %struct.m2p_channel* %40, i32 0, i32 2
  store i32* null, i32** %41, align 8
  %42 = load %struct.m2p_channel*, %struct.m2p_channel** %4, align 8
  %43 = getelementptr inbounds %struct.m2p_channel, %struct.m2p_channel* %42, i32 0, i32 1
  store i32* null, i32** %43, align 8
  %44 = load %struct.m2p_channel*, %struct.m2p_channel** %4, align 8
  %45 = getelementptr inbounds %struct.m2p_channel, %struct.m2p_channel* %44, i32 0, i32 0
  %46 = call i32 @INIT_LIST_HEAD(i32* %45)
  %47 = load %struct.m2p_channel*, %struct.m2p_channel** %4, align 8
  %48 = load %struct.ep93xx_dma_m2p_client*, %struct.ep93xx_dma_m2p_client** %3, align 8
  %49 = getelementptr inbounds %struct.ep93xx_dma_m2p_client, %struct.ep93xx_dma_m2p_client* %48, i32 0, i32 0
  store %struct.m2p_channel* %47, %struct.m2p_channel** %49, align 8
  %50 = load %struct.m2p_channel*, %struct.m2p_channel** %4, align 8
  %51 = call i32 @channel_enable(%struct.m2p_channel* %50)
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %34, %32, %11
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.m2p_channel* @find_free_channel(%struct.ep93xx_dma_m2p_client*) #1

declare dso_local i64 @IS_ERR(%struct.m2p_channel*) #1

declare dso_local i32 @PTR_ERR(%struct.m2p_channel*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.m2p_channel*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @channel_enable(%struct.m2p_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
