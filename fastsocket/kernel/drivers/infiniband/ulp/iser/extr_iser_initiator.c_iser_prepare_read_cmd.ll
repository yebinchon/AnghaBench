; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iser_initiator.c_iser_prepare_read_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iser_initiator.c_iser_prepare_read_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_task = type { i32, %struct.iscsi_iser_task* }
%struct.iscsi_iser_task = type { %struct.iser_regd_buf*, i32, %struct.iser_data_buf*, %struct.TYPE_3__ }
%struct.iser_regd_buf = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.iser_data_buf = type { i32 }
%struct.TYPE_3__ = type { %struct.iser_hdr }
%struct.iser_hdr = type { i32, i32, i32 }

@ISER_DIR_IN = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [81 x i8] c"Total data length: %ld, less than EDTL: %d, in READ cmd BHS itt: %d, conn: 0x%p\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to set up Data-IN RDMA\0A\00", align 1
@ISER_RSV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Cmd itt:%d READ tags RKEY:%#.4X VA:%#llX\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_task*, i32)* @iser_prepare_read_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iser_prepare_read_cmd(%struct.iscsi_task* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_task*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iscsi_iser_task*, align 8
  %7 = alloca %struct.iser_regd_buf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.iser_hdr*, align 8
  %10 = alloca %struct.iser_data_buf*, align 8
  store %struct.iscsi_task* %0, %struct.iscsi_task** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %12 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %11, i32 0, i32 1
  %13 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %12, align 8
  store %struct.iscsi_iser_task* %13, %struct.iscsi_iser_task** %6, align 8
  %14 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %6, align 8
  %15 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store %struct.iser_hdr* %16, %struct.iser_hdr** %9, align 8
  %17 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %6, align 8
  %18 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %17, i32 0, i32 2
  %19 = load %struct.iser_data_buf*, %struct.iser_data_buf** %18, align 8
  %20 = load i64, i64* @ISER_DIR_IN, align 8
  %21 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %19, i64 %20
  store %struct.iser_data_buf* %21, %struct.iser_data_buf** %10, align 8
  %22 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %6, align 8
  %23 = load %struct.iser_data_buf*, %struct.iser_data_buf** %10, align 8
  %24 = load i64, i64* @ISER_DIR_IN, align 8
  %25 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %26 = call i32 @iser_dma_map_task_data(%struct.iscsi_iser_task* %22, %struct.iser_data_buf* %23, i64 %24, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %3, align 4
  br label %105

31:                                               ; preds = %2
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %6, align 8
  %34 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %33, i32 0, i32 2
  %35 = load %struct.iser_data_buf*, %struct.iser_data_buf** %34, align 8
  %36 = load i64, i64* @ISER_DIR_IN, align 8
  %37 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %35, i64 %36
  %38 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ugt i32 %32, %39
  br i1 %40, label %41, label %59

41:                                               ; preds = %31
  %42 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %6, align 8
  %43 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %42, i32 0, i32 2
  %44 = load %struct.iser_data_buf*, %struct.iser_data_buf** %43, align 8
  %45 = load i64, i64* @ISER_DIR_IN, align 8
  %46 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %44, i64 %45
  %47 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %51 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %6, align 8
  %54 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 (i8*, ...) @iser_err(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %49, i32 %52, i32 %55)
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %105

59:                                               ; preds = %31
  %60 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %6, align 8
  %61 = load i64, i64* @ISER_DIR_IN, align 8
  %62 = call i32 @iser_reg_rdma_mem(%struct.iscsi_iser_task* %60, i64 %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = call i32 (i8*, ...) @iser_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %3, align 4
  br label %105

68:                                               ; preds = %59
  %69 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %6, align 8
  %70 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %69, i32 0, i32 0
  %71 = load %struct.iser_regd_buf*, %struct.iser_regd_buf** %70, align 8
  %72 = load i64, i64* @ISER_DIR_IN, align 8
  %73 = getelementptr inbounds %struct.iser_regd_buf, %struct.iser_regd_buf* %71, i64 %72
  store %struct.iser_regd_buf* %73, %struct.iser_regd_buf** %7, align 8
  %74 = load i32, i32* @ISER_RSV, align 4
  %75 = load %struct.iser_hdr*, %struct.iser_hdr** %9, align 8
  %76 = getelementptr inbounds %struct.iser_hdr, %struct.iser_hdr* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 4
  %79 = load %struct.iser_regd_buf*, %struct.iser_regd_buf** %7, align 8
  %80 = getelementptr inbounds %struct.iser_regd_buf, %struct.iser_regd_buf* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @cpu_to_be32(i32 %82)
  %84 = load %struct.iser_hdr*, %struct.iser_hdr** %9, align 8
  %85 = getelementptr inbounds %struct.iser_hdr, %struct.iser_hdr* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load %struct.iser_regd_buf*, %struct.iser_regd_buf** %7, align 8
  %87 = getelementptr inbounds %struct.iser_regd_buf, %struct.iser_regd_buf* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @cpu_to_be64(i64 %89)
  %91 = load %struct.iser_hdr*, %struct.iser_hdr** %9, align 8
  %92 = getelementptr inbounds %struct.iser_hdr, %struct.iser_hdr* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 4
  %93 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %94 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.iser_regd_buf*, %struct.iser_regd_buf** %7, align 8
  %97 = getelementptr inbounds %struct.iser_regd_buf, %struct.iser_regd_buf* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.iser_regd_buf*, %struct.iser_regd_buf** %7, align 8
  %101 = getelementptr inbounds %struct.iser_regd_buf, %struct.iser_regd_buf* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @iser_dbg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %95, i32 %99, i64 %103)
  store i32 0, i32* %3, align 4
  br label %105

105:                                              ; preds = %68, %65, %41, %29
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @iser_dma_map_task_data(%struct.iscsi_iser_task*, %struct.iser_data_buf*, i64, i32) #1

declare dso_local i32 @iser_err(i8*, ...) #1

declare dso_local i32 @iser_reg_rdma_mem(%struct.iscsi_iser_task*, i64) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @cpu_to_be64(i64) #1

declare dso_local i32 @iser_dbg(i8*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
