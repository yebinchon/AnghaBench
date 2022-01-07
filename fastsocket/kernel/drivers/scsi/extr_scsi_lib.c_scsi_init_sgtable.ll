; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_lib.c_scsi_init_sgtable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_lib.c_scsi_init_sgtable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32, i32*, i32 }
%struct.scsi_data_buffer = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@BLKPREP_DEFER = common dso_local global i32 0, align 4
@BLKPREP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request*, %struct.scsi_data_buffer*, i32)* @scsi_init_sgtable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scsi_init_sgtable(%struct.request* %0, %struct.scsi_data_buffer* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.request*, align 8
  %6 = alloca %struct.scsi_data_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.request* %0, %struct.request** %5, align 8
  store %struct.scsi_data_buffer* %1, %struct.scsi_data_buffer** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.scsi_data_buffer*, %struct.scsi_data_buffer** %6, align 8
  %10 = load %struct.request*, %struct.request** %5, align 8
  %11 = getelementptr inbounds %struct.request, %struct.request* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @scsi_alloc_sgtable(%struct.scsi_data_buffer* %9, i32 %12, i32 %13)
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @BLKPREP_DEFER, align 4
  store i32 %18, i32* %4, align 4
  br label %48

19:                                               ; preds = %3
  %20 = load %struct.request*, %struct.request** %5, align 8
  %21 = getelementptr inbounds %struct.request, %struct.request* %20, i32 0, i32 1
  store i32* null, i32** %21, align 8
  %22 = load %struct.request*, %struct.request** %5, align 8
  %23 = getelementptr inbounds %struct.request, %struct.request* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.request*, %struct.request** %5, align 8
  %26 = load %struct.scsi_data_buffer*, %struct.scsi_data_buffer** %6, align 8
  %27 = getelementptr inbounds %struct.scsi_data_buffer, %struct.scsi_data_buffer* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @blk_rq_map_sg(i32 %24, %struct.request* %25, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.scsi_data_buffer*, %struct.scsi_data_buffer** %6, align 8
  %33 = getelementptr inbounds %struct.scsi_data_buffer, %struct.scsi_data_buffer* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp sgt i32 %31, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @BUG_ON(i32 %37)
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.scsi_data_buffer*, %struct.scsi_data_buffer** %6, align 8
  %41 = getelementptr inbounds %struct.scsi_data_buffer, %struct.scsi_data_buffer* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 4
  %43 = load %struct.request*, %struct.request** %5, align 8
  %44 = call i32 @blk_rq_bytes(%struct.request* %43)
  %45 = load %struct.scsi_data_buffer*, %struct.scsi_data_buffer** %6, align 8
  %46 = getelementptr inbounds %struct.scsi_data_buffer, %struct.scsi_data_buffer* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @BLKPREP_OK, align 4
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %19, %17
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @scsi_alloc_sgtable(%struct.scsi_data_buffer*, i32, i32) #1

declare dso_local i32 @blk_rq_map_sg(i32, %struct.request*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @blk_rq_bytes(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
