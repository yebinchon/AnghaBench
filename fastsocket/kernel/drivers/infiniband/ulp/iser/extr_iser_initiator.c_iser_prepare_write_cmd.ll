; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iser_initiator.c_iser_prepare_write_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iser_initiator.c_iser_prepare_write_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_task = type { i32, i32, %struct.iscsi_iser_task* }
%struct.iscsi_iser_task = type { %struct.TYPE_4__, %struct.iser_regd_buf*, %struct.iser_data_buf* }
%struct.TYPE_4__ = type { i32, %struct.ib_sge*, %struct.iser_hdr }
%struct.ib_sge = type { i32, i32, i64 }
%struct.iser_hdr = type { i32, i32, i32 }
%struct.iser_regd_buf = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i32 }
%struct.iser_data_buf = type { i32 }

@ISER_DIR_OUT = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [82 x i8] c"Total data length: %ld, less than EDTL: %d, in WRITE cmd BHS itt: %d, conn: 0x%p\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Failed to register write cmd RDMA mem\0A\00", align 1
@ISER_WSV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"Cmd itt:%d, WRITE tags, RKEY:%#.4X VA:%#llX + unsol:%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"Cmd itt:%d, WRITE, adding imm.data sz: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_task*, i32, i32, i32)* @iser_prepare_write_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iser_prepare_write_cmd(%struct.iscsi_task* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iscsi_task*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.iscsi_iser_task*, align 8
  %11 = alloca %struct.iser_regd_buf*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.iser_hdr*, align 8
  %14 = alloca %struct.iser_data_buf*, align 8
  %15 = alloca %struct.ib_sge*, align 8
  store %struct.iscsi_task* %0, %struct.iscsi_task** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.iscsi_task*, %struct.iscsi_task** %6, align 8
  %17 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %16, i32 0, i32 2
  %18 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %17, align 8
  store %struct.iscsi_iser_task* %18, %struct.iscsi_iser_task** %10, align 8
  %19 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %10, align 8
  %20 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  store %struct.iser_hdr* %21, %struct.iser_hdr** %13, align 8
  %22 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %10, align 8
  %23 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %22, i32 0, i32 2
  %24 = load %struct.iser_data_buf*, %struct.iser_data_buf** %23, align 8
  %25 = load i64, i64* @ISER_DIR_OUT, align 8
  %26 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %24, i64 %25
  store %struct.iser_data_buf* %26, %struct.iser_data_buf** %14, align 8
  %27 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %10, align 8
  %28 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load %struct.ib_sge*, %struct.ib_sge** %29, align 8
  %31 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %30, i64 1
  store %struct.ib_sge* %31, %struct.ib_sge** %15, align 8
  %32 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %10, align 8
  %33 = load %struct.iser_data_buf*, %struct.iser_data_buf** %14, align 8
  %34 = load i64, i64* @ISER_DIR_OUT, align 8
  %35 = load i32, i32* @DMA_TO_DEVICE, align 4
  %36 = call i32 @iser_dma_map_task_data(%struct.iscsi_iser_task* %32, %struct.iser_data_buf* %33, i64 %34, i32 %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %4
  %40 = load i32, i32* %12, align 4
  store i32 %40, i32* %5, align 4
  br label %151

41:                                               ; preds = %4
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %10, align 8
  %44 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %43, i32 0, i32 2
  %45 = load %struct.iser_data_buf*, %struct.iser_data_buf** %44, align 8
  %46 = load i64, i64* @ISER_DIR_OUT, align 8
  %47 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %45, i64 %46
  %48 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ugt i32 %42, %49
  br i1 %50, label %51, label %69

51:                                               ; preds = %41
  %52 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %10, align 8
  %53 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %52, i32 0, i32 2
  %54 = load %struct.iser_data_buf*, %struct.iser_data_buf** %53, align 8
  %55 = load i64, i64* @ISER_DIR_OUT, align 8
  %56 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %54, i64 %55
  %57 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.iscsi_task*, %struct.iscsi_task** %6, align 8
  %61 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.iscsi_task*, %struct.iscsi_task** %6, align 8
  %64 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (i8*, ...) @iser_err(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %59, i32 %62, i32 %65)
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %5, align 4
  br label %151

69:                                               ; preds = %41
  %70 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %10, align 8
  %71 = load i64, i64* @ISER_DIR_OUT, align 8
  %72 = call i32 @iser_reg_rdma_mem(%struct.iscsi_iser_task* %70, i64 %71)
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = call i32 (i8*, ...) @iser_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %77 = load i32, i32* %12, align 4
  store i32 %77, i32* %5, align 4
  br label %151

78:                                               ; preds = %69
  %79 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %10, align 8
  %80 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %79, i32 0, i32 1
  %81 = load %struct.iser_regd_buf*, %struct.iser_regd_buf** %80, align 8
  %82 = load i64, i64* @ISER_DIR_OUT, align 8
  %83 = getelementptr inbounds %struct.iser_regd_buf, %struct.iser_regd_buf* %81, i64 %82
  store %struct.iser_regd_buf* %83, %struct.iser_regd_buf** %11, align 8
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp ult i32 %84, %85
  br i1 %86, label %87, label %123

87:                                               ; preds = %78
  %88 = load i32, i32* @ISER_WSV, align 4
  %89 = load %struct.iser_hdr*, %struct.iser_hdr** %13, align 8
  %90 = getelementptr inbounds %struct.iser_hdr, %struct.iser_hdr* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 4
  %93 = load %struct.iser_regd_buf*, %struct.iser_regd_buf** %11, align 8
  %94 = getelementptr inbounds %struct.iser_regd_buf, %struct.iser_regd_buf* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @cpu_to_be32(i32 %96)
  %98 = load %struct.iser_hdr*, %struct.iser_hdr** %13, align 8
  %99 = getelementptr inbounds %struct.iser_hdr, %struct.iser_hdr* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = load %struct.iser_regd_buf*, %struct.iser_regd_buf** %11, align 8
  %101 = getelementptr inbounds %struct.iser_regd_buf, %struct.iser_regd_buf* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i32, i32* %8, align 4
  %105 = zext i32 %104 to i64
  %106 = add nsw i64 %103, %105
  %107 = call i32 @cpu_to_be64(i64 %106)
  %108 = load %struct.iser_hdr*, %struct.iser_hdr** %13, align 8
  %109 = getelementptr inbounds %struct.iser_hdr, %struct.iser_hdr* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 4
  %110 = load %struct.iscsi_task*, %struct.iscsi_task** %6, align 8
  %111 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.iser_regd_buf*, %struct.iser_regd_buf** %11, align 8
  %114 = getelementptr inbounds %struct.iser_regd_buf, %struct.iser_regd_buf* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.iser_regd_buf*, %struct.iser_regd_buf** %11, align 8
  %118 = getelementptr inbounds %struct.iser_regd_buf, %struct.iser_regd_buf* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i32, i32* %8, align 4
  %122 = call i32 (i8*, i32, i32, ...) @iser_dbg(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %112, i32 %116, i64 %120, i32 %121)
  br label %123

123:                                              ; preds = %87, %78
  %124 = load i32, i32* %7, align 4
  %125 = icmp ugt i32 %124, 0
  br i1 %125, label %126, label %150

126:                                              ; preds = %123
  %127 = load %struct.iscsi_task*, %struct.iscsi_task** %6, align 8
  %128 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* %7, align 4
  %131 = call i32 (i8*, i32, i32, ...) @iser_dbg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %129, i32 %130)
  %132 = load %struct.iser_regd_buf*, %struct.iser_regd_buf** %11, align 8
  %133 = getelementptr inbounds %struct.iser_regd_buf, %struct.iser_regd_buf* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.ib_sge*, %struct.ib_sge** %15, align 8
  %137 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %136, i32 0, i32 2
  store i64 %135, i64* %137, align 8
  %138 = load i32, i32* %7, align 4
  %139 = load %struct.ib_sge*, %struct.ib_sge** %15, align 8
  %140 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 8
  %141 = load %struct.iser_regd_buf*, %struct.iser_regd_buf** %11, align 8
  %142 = getelementptr inbounds %struct.iser_regd_buf, %struct.iser_regd_buf* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.ib_sge*, %struct.ib_sge** %15, align 8
  %146 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %145, i32 0, i32 1
  store i32 %144, i32* %146, align 4
  %147 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %10, align 8
  %148 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  store i32 2, i32* %149, align 8
  br label %150

150:                                              ; preds = %126, %123
  store i32 0, i32* %5, align 4
  br label %151

151:                                              ; preds = %150, %75, %51, %39
  %152 = load i32, i32* %5, align 4
  ret i32 %152
}

declare dso_local i32 @iser_dma_map_task_data(%struct.iscsi_iser_task*, %struct.iser_data_buf*, i64, i32) #1

declare dso_local i32 @iser_err(i8*, ...) #1

declare dso_local i32 @iser_reg_rdma_mem(%struct.iscsi_iser_task*, i64) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @cpu_to_be64(i64) #1

declare dso_local i32 @iser_dbg(i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
