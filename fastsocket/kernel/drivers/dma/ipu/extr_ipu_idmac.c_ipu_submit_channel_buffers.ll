; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/ipu/extr_ipu_idmac.c_ipu_submit_channel_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/ipu/extr_ipu_idmac.c_ipu_submit_channel_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idmac_channel = type { %struct.scatterlist** }
%struct.scatterlist = type { i32 }
%struct.idmac_tx_desc = type { %struct.scatterlist* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.idmac_channel*, %struct.idmac_tx_desc*)* @ipu_submit_channel_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipu_submit_channel_buffers(%struct.idmac_channel* %0, %struct.idmac_tx_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.idmac_channel*, align 8
  %5 = alloca %struct.idmac_tx_desc*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.idmac_channel* %0, %struct.idmac_channel** %4, align 8
  store %struct.idmac_tx_desc* %1, %struct.idmac_tx_desc** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.idmac_tx_desc*, %struct.idmac_tx_desc** %5, align 8
  %10 = getelementptr inbounds %struct.idmac_tx_desc, %struct.idmac_tx_desc* %9, i32 0, i32 0
  %11 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  store %struct.scatterlist* %11, %struct.scatterlist** %6, align 8
  br label %12

12:                                               ; preds = %50, %2
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 2
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %17 = icmp ne %struct.scatterlist* %16, null
  br label %18

18:                                               ; preds = %15, %12
  %19 = phi i1 [ false, %12 ], [ %17, %15 ]
  br i1 %19, label %20, label %53

20:                                               ; preds = %18
  %21 = load %struct.idmac_channel*, %struct.idmac_channel** %4, align 8
  %22 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %21, i32 0, i32 0
  %23 = load %struct.scatterlist**, %struct.scatterlist*** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.scatterlist*, %struct.scatterlist** %23, i64 %25
  %27 = load %struct.scatterlist*, %struct.scatterlist** %26, align 8
  %28 = icmp ne %struct.scatterlist* %27, null
  br i1 %28, label %49, label %29

29:                                               ; preds = %20
  %30 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %31 = load %struct.idmac_channel*, %struct.idmac_channel** %4, align 8
  %32 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %31, i32 0, i32 0
  %33 = load %struct.scatterlist**, %struct.scatterlist*** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.scatterlist*, %struct.scatterlist** %33, i64 %35
  store %struct.scatterlist* %30, %struct.scatterlist** %36, align 8
  %37 = load %struct.idmac_channel*, %struct.idmac_channel** %4, align 8
  %38 = load %struct.idmac_tx_desc*, %struct.idmac_tx_desc** %5, align 8
  %39 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @ipu_submit_buffer(%struct.idmac_channel* %37, %struct.idmac_tx_desc* %38, %struct.scatterlist* %39, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %29
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %3, align 4
  br label %55

46:                                               ; preds = %29
  %47 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %48 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %47)
  store %struct.scatterlist* %48, %struct.scatterlist** %6, align 8
  br label %49

49:                                               ; preds = %46, %20
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %12

53:                                               ; preds = %18
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %53, %44
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @ipu_submit_buffer(%struct.idmac_channel*, %struct.idmac_tx_desc*, %struct.scatterlist*, i32) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
