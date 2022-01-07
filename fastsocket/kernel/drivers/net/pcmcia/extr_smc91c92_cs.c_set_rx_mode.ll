; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_smc91c92_cs.c_set_rx_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_smc91c92_cs.c_set_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32, i64 }
%struct.smc_private = type { i32 }

@IFF_PROMISC = common dso_local global i32 0, align 4
@RxStripCRC = common dso_local global i32 0, align 4
@RxEnable = common dso_local global i32 0, align 4
@RxPromisc = common dso_local global i32 0, align 4
@RxAllMulti = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@MULTICAST0 = common dso_local global i64 0, align 8
@MULTICAST4 = common dso_local global i64 0, align 8
@RCR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @set_rx_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_rx_mode(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.smc_private*, align 8
  %5 = alloca [2 x i32], align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %3, align 4
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call %struct.smc_private* @netdev_priv(%struct.net_device* %11)
  store %struct.smc_private* %12, %struct.smc_private** %4, align 8
  %13 = bitcast [2 x i32]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 8, i1 false)
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @IFF_PROMISC, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %1
  %21 = load i32, i32* @RxStripCRC, align 4
  %22 = load i32, i32* @RxEnable, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @RxPromisc, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @RxAllMulti, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %7, align 4
  br label %60

28:                                               ; preds = %1
  %29 = load %struct.net_device*, %struct.net_device** %2, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @IFF_ALLMULTI, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = load i32, i32* @RxStripCRC, align 4
  %37 = load i32, i32* @RxEnable, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @RxAllMulti, align 4
  %40 = or i32 %38, %39
  store i32 %40, i32* %7, align 4
  br label %59

41:                                               ; preds = %28
  %42 = load %struct.net_device*, %struct.net_device** %2, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %41
  %47 = load %struct.net_device*, %struct.net_device** %2, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.net_device*, %struct.net_device** %2, align 8
  %51 = getelementptr inbounds %struct.net_device, %struct.net_device* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %54 = call i32 @fill_multicast_tbl(i64 %49, i32 %52, i32* %53)
  br label %55

55:                                               ; preds = %46, %41
  %56 = load i32, i32* @RxStripCRC, align 4
  %57 = load i32, i32* @RxEnable, align 4
  %58 = or i32 %56, %57
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %55, %35
  br label %60

60:                                               ; preds = %59, %20
  %61 = load %struct.smc_private*, %struct.smc_private** %4, align 8
  %62 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %61, i32 0, i32 0
  %63 = load i64, i64* %6, align 8
  %64 = call i32 @spin_lock_irqsave(i32* %62, i64 %63)
  %65 = call i32 @SMC_SELECT_BANK(i32 3)
  %66 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %3, align 4
  %69 = zext i32 %68 to i64
  %70 = load i64, i64* @MULTICAST0, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @outl(i32 %67, i64 %71)
  %73 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %3, align 4
  %76 = zext i32 %75 to i64
  %77 = load i64, i64* @MULTICAST4, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @outl(i32 %74, i64 %78)
  %80 = call i32 @SMC_SELECT_BANK(i32 0)
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %3, align 4
  %83 = zext i32 %82 to i64
  %84 = load i64, i64* @RCR, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @outw(i32 %81, i64 %85)
  %87 = call i32 @SMC_SELECT_BANK(i32 2)
  %88 = load %struct.smc_private*, %struct.smc_private** %4, align 8
  %89 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %88, i32 0, i32 0
  %90 = load i64, i64* %6, align 8
  %91 = call i32 @spin_unlock_irqrestore(i32* %89, i64 %90)
  ret void
}

declare dso_local %struct.smc_private* @netdev_priv(%struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @fill_multicast_tbl(i64, i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @SMC_SELECT_BANK(i32) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
