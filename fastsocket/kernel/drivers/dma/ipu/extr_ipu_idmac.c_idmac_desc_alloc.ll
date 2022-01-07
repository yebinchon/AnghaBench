; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/ipu/extr_ipu_idmac.c_idmac_desc_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/ipu/extr_ipu_idmac.c_idmac_desc_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idmac_channel = type { i32, i32, %struct.TYPE_4__, i32, %struct.idmac_tx_desc* }
%struct.TYPE_4__ = type { i32 }
%struct.idmac_tx_desc = type { i32, %struct.dma_async_tx_descriptor }
%struct.dma_async_tx_descriptor = type { i32 }
%struct.idmac = type { i32 }
%struct.TYPE_3__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@idmac_tx_submit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.idmac_channel*, i32)* @idmac_desc_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idmac_desc_alloc(%struct.idmac_channel* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.idmac_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.idmac_tx_desc*, align 8
  %7 = alloca %struct.idmac*, align 8
  %8 = alloca %struct.dma_async_tx_descriptor*, align 8
  store %struct.idmac_channel* %0, %struct.idmac_channel** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 %10, 8
  %12 = trunc i64 %11 to i32
  %13 = call %struct.idmac_tx_desc* @vmalloc(i32 %12)
  store %struct.idmac_tx_desc* %13, %struct.idmac_tx_desc** %6, align 8
  %14 = load %struct.idmac_channel*, %struct.idmac_channel** %4, align 8
  %15 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.idmac* @to_idmac(i32 %17)
  store %struct.idmac* %18, %struct.idmac** %7, align 8
  %19 = load %struct.idmac_tx_desc*, %struct.idmac_tx_desc** %6, align 8
  %20 = icmp ne %struct.idmac_tx_desc* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %69

24:                                               ; preds = %2
  %25 = load %struct.idmac*, %struct.idmac** %7, align 8
  %26 = call %struct.TYPE_3__* @to_ipu(%struct.idmac* %25)
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = call i32 @tasklet_disable(i32* %27)
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.idmac_channel*, %struct.idmac_channel** %4, align 8
  %31 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.idmac_tx_desc*, %struct.idmac_tx_desc** %6, align 8
  %33 = load %struct.idmac_channel*, %struct.idmac_channel** %4, align 8
  %34 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %33, i32 0, i32 4
  store %struct.idmac_tx_desc* %32, %struct.idmac_tx_desc** %34, align 8
  %35 = load %struct.idmac_channel*, %struct.idmac_channel** %4, align 8
  %36 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %35, i32 0, i32 3
  %37 = call i32 @INIT_LIST_HEAD(i32* %36)
  %38 = load %struct.idmac_channel*, %struct.idmac_channel** %4, align 8
  %39 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %38, i32 0, i32 1
  %40 = call i32 @INIT_LIST_HEAD(i32* %39)
  br label %41

41:                                               ; preds = %45, %24
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %5, align 4
  %44 = icmp ne i32 %42, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %41
  %46 = load %struct.idmac_tx_desc*, %struct.idmac_tx_desc** %6, align 8
  %47 = getelementptr inbounds %struct.idmac_tx_desc, %struct.idmac_tx_desc* %46, i32 0, i32 1
  store %struct.dma_async_tx_descriptor* %47, %struct.dma_async_tx_descriptor** %8, align 8
  %48 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %8, align 8
  %49 = call i32 @memset(%struct.dma_async_tx_descriptor* %48, i32 0, i32 4)
  %50 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %8, align 8
  %51 = load %struct.idmac_channel*, %struct.idmac_channel** %4, align 8
  %52 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %51, i32 0, i32 2
  %53 = call i32 @dma_async_tx_descriptor_init(%struct.dma_async_tx_descriptor* %50, %struct.TYPE_4__* %52)
  %54 = load i32, i32* @idmac_tx_submit, align 4
  %55 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %8, align 8
  %56 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load %struct.idmac_tx_desc*, %struct.idmac_tx_desc** %6, align 8
  %58 = getelementptr inbounds %struct.idmac_tx_desc, %struct.idmac_tx_desc* %57, i32 0, i32 0
  %59 = load %struct.idmac_channel*, %struct.idmac_channel** %4, align 8
  %60 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %59, i32 0, i32 1
  %61 = call i32 @list_add(i32* %58, i32* %60)
  %62 = load %struct.idmac_tx_desc*, %struct.idmac_tx_desc** %6, align 8
  %63 = getelementptr inbounds %struct.idmac_tx_desc, %struct.idmac_tx_desc* %62, i32 1
  store %struct.idmac_tx_desc* %63, %struct.idmac_tx_desc** %6, align 8
  br label %41

64:                                               ; preds = %41
  %65 = load %struct.idmac*, %struct.idmac** %7, align 8
  %66 = call %struct.TYPE_3__* @to_ipu(%struct.idmac* %65)
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = call i32 @tasklet_enable(i32* %67)
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %64, %21
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.idmac_tx_desc* @vmalloc(i32) #1

declare dso_local %struct.idmac* @to_idmac(i32) #1

declare dso_local i32 @tasklet_disable(i32*) #1

declare dso_local %struct.TYPE_3__* @to_ipu(%struct.idmac*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @memset(%struct.dma_async_tx_descriptor*, i32, i32) #1

declare dso_local i32 @dma_async_tx_descriptor_init(%struct.dma_async_tx_descriptor*, %struct.TYPE_4__*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @tasklet_enable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
