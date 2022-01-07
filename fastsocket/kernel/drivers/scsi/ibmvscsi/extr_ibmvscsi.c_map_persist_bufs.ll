; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvscsi.c_map_persist_bufs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvscsi.c_map_persist_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvscsi_host_data = type { i8*, i32, i8*, i32, i32 }

@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Unable to map capabilities buffer!\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Unable to map adapter info buffer!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibmvscsi_host_data*)* @map_persist_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_persist_bufs(%struct.ibmvscsi_host_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ibmvscsi_host_data*, align 8
  store %struct.ibmvscsi_host_data* %0, %struct.ibmvscsi_host_data** %3, align 8
  %4 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %5 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %8 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %7, i32 0, i32 4
  %9 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %10 = call i8* @dma_map_single(i32 %6, i32* %8, i32 4, i32 %9)
  %11 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %12 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %11, i32 0, i32 0
  store i8* %10, i8** %12, align 8
  %13 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %14 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %17 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i64 @dma_mapping_error(i32 %15, i8* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %23 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %58

26:                                               ; preds = %1
  %27 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %28 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %31 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %30, i32 0, i32 3
  %32 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %33 = call i8* @dma_map_single(i32 %29, i32* %31, i32 4, i32 %32)
  %34 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %35 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %34, i32 0, i32 2
  store i8* %33, i8** %35, align 8
  %36 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %37 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %40 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %39, i32 0, i32 2
  %41 = load i8*, i8** %40, align 8
  %42 = call i64 @dma_mapping_error(i32 %38, i8* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %26
  %45 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %46 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @dev_err(i32 %47, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %49 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %50 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %53 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %56 = call i32 @dma_unmap_single(i32 %51, i8* %54, i32 4, i32 %55)
  store i32 1, i32* %2, align 4
  br label %58

57:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %44, %21
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i8* @dma_map_single(i32, i32*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i8*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dma_unmap_single(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
