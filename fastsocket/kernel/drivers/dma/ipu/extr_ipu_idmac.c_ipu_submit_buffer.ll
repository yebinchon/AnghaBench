; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/ipu/extr_ipu_idmac.c_ipu_submit_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/ipu/extr_ipu_idmac.c_ipu_submit_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idmac_channel = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.idmac_tx_desc = type { i32 }
%struct.scatterlist = type { i32 }

@EINTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Updating sg %p on channel 0x%x buffer %d failed!\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Updated sg %p on channel 0x%x buffer %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.idmac_channel*, %struct.idmac_tx_desc*, %struct.scatterlist*, i32)* @ipu_submit_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipu_submit_buffer(%struct.idmac_channel* %0, %struct.idmac_tx_desc* %1, %struct.scatterlist* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.idmac_channel*, align 8
  %7 = alloca %struct.idmac_tx_desc*, align 8
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.device*, align 8
  %12 = alloca i32, align 4
  store %struct.idmac_channel* %0, %struct.idmac_channel** %6, align 8
  store %struct.idmac_tx_desc* %1, %struct.idmac_tx_desc** %7, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.idmac_channel*, %struct.idmac_channel** %6, align 8
  %14 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %10, align 4
  %17 = load %struct.idmac_channel*, %struct.idmac_channel** %6, align 8
  %18 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store %struct.device* %21, %struct.device** %11, align 8
  %22 = load %struct.idmac_tx_desc*, %struct.idmac_tx_desc** %7, align 8
  %23 = getelementptr inbounds %struct.idmac_tx_desc, %struct.idmac_tx_desc* %22, i32 0, i32 0
  %24 = call i64 @async_tx_test_ack(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i32, i32* @EINTR, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %53

29:                                               ; preds = %4
  %30 = load %struct.idmac_channel*, %struct.idmac_channel** %6, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %33 = call i32 @sg_dma_address(%struct.scatterlist* %32)
  %34 = call i32 @ipu_update_channel_buffer(%struct.idmac_channel* %30, i32 %31, i32 %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %29
  %38 = load %struct.device*, %struct.device** %11, align 8
  %39 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @dev_err(%struct.device* %38, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), %struct.scatterlist* %39, i32 %40, i32 %41)
  %43 = load i32, i32* %12, align 4
  store i32 %43, i32* %5, align 4
  br label %53

44:                                               ; preds = %29
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @ipu_select_buffer(i32 %45, i32 %46)
  %48 = load %struct.device*, %struct.device** %11, align 8
  %49 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @dev_dbg(%struct.device* %48, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), %struct.scatterlist* %49, i32 %50, i32 %51)
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %44, %37, %26
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i64 @async_tx_test_ack(i32*) #1

declare dso_local i32 @ipu_update_channel_buffer(%struct.idmac_channel*, i32, i32) #1

declare dso_local i32 @sg_dma_address(%struct.scatterlist*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @ipu_select_buffer(i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, %struct.scatterlist*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
