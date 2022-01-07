; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-scsi.c_nvme_trans_get_io_cdb6.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-scsi.c_nvme_trans_get_io_cdb6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_trans_io_cdb = type { i32, i64, i64, i64 }

@IO_6_CDB_LBA_OFFSET = common dso_local global i32 0, align 4
@IO_6_CDB_LBA_MASK = common dso_local global i32 0, align 4
@IO_6_CDB_TX_LEN_OFFSET = common dso_local global i32 0, align 4
@IO_6_DEFAULT_TX_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.nvme_trans_io_cdb*)* @nvme_trans_get_io_cdb6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_trans_get_io_cdb6(i32* %0, %struct.nvme_trans_io_cdb* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.nvme_trans_io_cdb*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.nvme_trans_io_cdb* %1, %struct.nvme_trans_io_cdb** %4, align 8
  %5 = load %struct.nvme_trans_io_cdb*, %struct.nvme_trans_io_cdb** %4, align 8
  %6 = getelementptr inbounds %struct.nvme_trans_io_cdb, %struct.nvme_trans_io_cdb* %5, i32 0, i32 3
  store i64 0, i64* %6, align 8
  %7 = load %struct.nvme_trans_io_cdb*, %struct.nvme_trans_io_cdb** %4, align 8
  %8 = getelementptr inbounds %struct.nvme_trans_io_cdb, %struct.nvme_trans_io_cdb* %7, i32 0, i32 2
  store i64 0, i64* %8, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* @IO_6_CDB_LBA_OFFSET, align 4
  %11 = call i32 @GET_U32_FROM_CDB(i32* %9, i32 %10)
  %12 = load i32, i32* @IO_6_CDB_LBA_MASK, align 4
  %13 = and i32 %11, %12
  %14 = load %struct.nvme_trans_io_cdb*, %struct.nvme_trans_io_cdb** %4, align 8
  %15 = getelementptr inbounds %struct.nvme_trans_io_cdb, %struct.nvme_trans_io_cdb* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* @IO_6_CDB_TX_LEN_OFFSET, align 4
  %18 = call i64 @GET_U8_FROM_CDB(i32* %16, i32 %17)
  %19 = load %struct.nvme_trans_io_cdb*, %struct.nvme_trans_io_cdb** %4, align 8
  %20 = getelementptr inbounds %struct.nvme_trans_io_cdb, %struct.nvme_trans_io_cdb* %19, i32 0, i32 1
  store i64 %18, i64* %20, align 8
  %21 = load %struct.nvme_trans_io_cdb*, %struct.nvme_trans_io_cdb** %4, align 8
  %22 = getelementptr inbounds %struct.nvme_trans_io_cdb, %struct.nvme_trans_io_cdb* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load i64, i64* @IO_6_DEFAULT_TX_LEN, align 8
  %27 = load %struct.nvme_trans_io_cdb*, %struct.nvme_trans_io_cdb** %4, align 8
  %28 = getelementptr inbounds %struct.nvme_trans_io_cdb, %struct.nvme_trans_io_cdb* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  br label %29

29:                                               ; preds = %25, %2
  ret void
}

declare dso_local i32 @GET_U32_FROM_CDB(i32*, i32) #1

declare dso_local i64 @GET_U8_FROM_CDB(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
