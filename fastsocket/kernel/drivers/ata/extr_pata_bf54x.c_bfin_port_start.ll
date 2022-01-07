; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_bf54x.c_bfin_port_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_bf54x.c_bfin_port_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, i64, i64 }

@.str = private unnamed_addr constant [21 x i8] c"in atapi port start\0A\00", align 1
@CH_ATAPI_RX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"BFIN ATAPI RX DMA\00", align 1
@CH_ATAPI_TX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"BFIN ATAPI TX DMA\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"Unable to request ATAPI DMA! Continue in PIO mode.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_port*)* @bfin_port_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfin_port_start(%struct.ata_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_port*, align 8
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  %4 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %5 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @dev_dbg(i32 %6, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %9 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %14 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %39

18:                                               ; preds = %12, %1
  %19 = load i32, i32* @CH_ATAPI_RX, align 4
  %20 = call i64 @request_dma(i32 %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %21 = icmp sge i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  %23 = load i32, i32* @CH_ATAPI_TX, align 4
  %24 = call i64 @request_dma(i32 %23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %25 = icmp sge i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %39

27:                                               ; preds = %22
  %28 = load i32, i32* @CH_ATAPI_RX, align 4
  %29 = call i32 @free_dma(i32 %28)
  br label %30

30:                                               ; preds = %27, %18
  %31 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %32 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %31, i32 0, i32 2
  store i64 0, i64* %32, align 8
  %33 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %34 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %36 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %30, %26, %17
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i64 @request_dma(i32, i8*) #1

declare dso_local i32 @free_dma(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
