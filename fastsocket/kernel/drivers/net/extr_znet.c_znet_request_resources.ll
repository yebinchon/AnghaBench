; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_znet.c_znet_request_resources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_znet.c_znet_request_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.znet_private = type { i32, i32, i32, i32, i32 }

@znet_interrupt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"ZNet\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"ZNet rx\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"ZNet tx\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"ZNet SIA\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"ZNet I/O\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @znet_request_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @znet_request_resources(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.znet_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %5 = load %struct.net_device*, %struct.net_device** %3, align 8
  %6 = call %struct.znet_private* @netdev_priv(%struct.net_device* %5)
  store %struct.znet_private* %6, %struct.znet_private** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call i64 @request_irq(i32 %9, i32* @znet_interrupt, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.net_device* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %73

14:                                               ; preds = %1
  %15 = load %struct.znet_private*, %struct.znet_private** %4, align 8
  %16 = getelementptr inbounds %struct.znet_private, %struct.znet_private* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @request_dma(i32 %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %67

21:                                               ; preds = %14
  %22 = load %struct.znet_private*, %struct.znet_private** %4, align 8
  %23 = getelementptr inbounds %struct.znet_private, %struct.znet_private* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @request_dma(i32 %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %62

28:                                               ; preds = %21
  %29 = load %struct.znet_private*, %struct.znet_private** %4, align 8
  %30 = getelementptr inbounds %struct.znet_private, %struct.znet_private* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.znet_private*, %struct.znet_private** %4, align 8
  %33 = getelementptr inbounds %struct.znet_private, %struct.znet_private* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @request_region(i32 %31, i32 %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %28
  br label %57

38:                                               ; preds = %28
  %39 = load %struct.net_device*, %struct.net_device** %3, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.znet_private*, %struct.znet_private** %4, align 8
  %43 = getelementptr inbounds %struct.znet_private, %struct.znet_private* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @request_region(i32 %41, i32 %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %38
  br label %49

48:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %74

49:                                               ; preds = %47
  %50 = load %struct.znet_private*, %struct.znet_private** %4, align 8
  %51 = getelementptr inbounds %struct.znet_private, %struct.znet_private* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.znet_private*, %struct.znet_private** %4, align 8
  %54 = getelementptr inbounds %struct.znet_private, %struct.znet_private* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @release_region(i32 %52, i32 %55)
  br label %57

57:                                               ; preds = %49, %37
  %58 = load %struct.znet_private*, %struct.znet_private** %4, align 8
  %59 = getelementptr inbounds %struct.znet_private, %struct.znet_private* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @free_dma(i32 %60)
  br label %62

62:                                               ; preds = %57, %27
  %63 = load %struct.znet_private*, %struct.znet_private** %4, align 8
  %64 = getelementptr inbounds %struct.znet_private, %struct.znet_private* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @free_dma(i32 %65)
  br label %67

67:                                               ; preds = %62, %20
  %68 = load %struct.net_device*, %struct.net_device** %3, align 8
  %69 = getelementptr inbounds %struct.net_device, %struct.net_device* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.net_device*, %struct.net_device** %3, align 8
  %72 = call i32 @free_irq(i32 %70, %struct.net_device* %71)
  br label %73

73:                                               ; preds = %67, %13
  store i32 -1, i32* %2, align 4
  br label %74

74:                                               ; preds = %73, %48
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local %struct.znet_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @request_irq(i32, i32*, i32, i8*, %struct.net_device*) #1

declare dso_local i64 @request_dma(i32, i8*) #1

declare dso_local i32 @request_region(i32, i32, i8*) #1

declare dso_local i32 @release_region(i32, i32) #1

declare dso_local i32 @free_dma(i32) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
