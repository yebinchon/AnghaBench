; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_efx.c_efx_copy_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_efx.c_efx_copy_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_channel = type { %struct.efx_rx_queue, %struct.efx_tx_queue*, i32, i32* }
%struct.efx_rx_queue = type { i32, i32, i32* }
%struct.efx_tx_queue = type { i32, i32*, %struct.efx_channel* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@EFX_TXQ_TYPES = common dso_local global i32 0, align 4
@efx_rx_slow_fill = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.efx_channel* (%struct.efx_channel*)* @efx_copy_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.efx_channel* @efx_copy_channel(%struct.efx_channel* %0) #0 {
  %2 = alloca %struct.efx_channel*, align 8
  %3 = alloca %struct.efx_channel*, align 8
  %4 = alloca %struct.efx_channel*, align 8
  %5 = alloca %struct.efx_rx_queue*, align 8
  %6 = alloca %struct.efx_tx_queue*, align 8
  %7 = alloca i32, align 4
  store %struct.efx_channel* %0, %struct.efx_channel** %3, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.efx_channel* @kmalloc(i32 40, i32 %8)
  store %struct.efx_channel* %9, %struct.efx_channel** %4, align 8
  %10 = load %struct.efx_channel*, %struct.efx_channel** %4, align 8
  %11 = icmp ne %struct.efx_channel* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store %struct.efx_channel* null, %struct.efx_channel** %2, align 8
  br label %66

13:                                               ; preds = %1
  %14 = load %struct.efx_channel*, %struct.efx_channel** %4, align 8
  %15 = load %struct.efx_channel*, %struct.efx_channel** %3, align 8
  %16 = bitcast %struct.efx_channel* %14 to i8*
  %17 = bitcast %struct.efx_channel* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 40, i1 false)
  %18 = load %struct.efx_channel*, %struct.efx_channel** %4, align 8
  %19 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %18, i32 0, i32 3
  store i32* null, i32** %19, align 8
  %20 = load %struct.efx_channel*, %struct.efx_channel** %4, align 8
  %21 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %20, i32 0, i32 2
  %22 = call i32 @memset(i32* %21, i32 0, i32 4)
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %48, %13
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @EFX_TXQ_TYPES, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %51

27:                                               ; preds = %23
  %28 = load %struct.efx_channel*, %struct.efx_channel** %4, align 8
  %29 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %28, i32 0, i32 1
  %30 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %30, i64 %32
  store %struct.efx_tx_queue* %33, %struct.efx_tx_queue** %6, align 8
  %34 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %6, align 8
  %35 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %34, i32 0, i32 2
  %36 = load %struct.efx_channel*, %struct.efx_channel** %35, align 8
  %37 = icmp ne %struct.efx_channel* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %27
  %39 = load %struct.efx_channel*, %struct.efx_channel** %4, align 8
  %40 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %6, align 8
  %41 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %40, i32 0, i32 2
  store %struct.efx_channel* %39, %struct.efx_channel** %41, align 8
  br label %42

42:                                               ; preds = %38, %27
  %43 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %6, align 8
  %44 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %43, i32 0, i32 1
  store i32* null, i32** %44, align 8
  %45 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %6, align 8
  %46 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %45, i32 0, i32 0
  %47 = call i32 @memset(i32* %46, i32 0, i32 4)
  br label %48

48:                                               ; preds = %42
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  br label %23

51:                                               ; preds = %23
  %52 = load %struct.efx_channel*, %struct.efx_channel** %4, align 8
  %53 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %52, i32 0, i32 0
  store %struct.efx_rx_queue* %53, %struct.efx_rx_queue** %5, align 8
  %54 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %5, align 8
  %55 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %54, i32 0, i32 2
  store i32* null, i32** %55, align 8
  %56 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %5, align 8
  %57 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %56, i32 0, i32 1
  %58 = call i32 @memset(i32* %57, i32 0, i32 4)
  %59 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %5, align 8
  %60 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %59, i32 0, i32 0
  %61 = load i32, i32* @efx_rx_slow_fill, align 4
  %62 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %5, align 8
  %63 = ptrtoint %struct.efx_rx_queue* %62 to i64
  %64 = call i32 @setup_timer(i32* %60, i32 %61, i64 %63)
  %65 = load %struct.efx_channel*, %struct.efx_channel** %4, align 8
  store %struct.efx_channel* %65, %struct.efx_channel** %2, align 8
  br label %66

66:                                               ; preds = %51, %12
  %67 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  ret %struct.efx_channel* %67
}

declare dso_local %struct.efx_channel* @kmalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @setup_timer(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
