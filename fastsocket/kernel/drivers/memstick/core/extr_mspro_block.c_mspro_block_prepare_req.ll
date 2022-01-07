; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/memstick/core/extr_mspro_block.c_mspro_block_prepare_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/memstick/core/extr_mspro_block.c_mspro_block_prepare_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.request = type { i64, i32 }

@REQ_TYPE_FS = common dso_local global i64 0, align 8
@REQ_TYPE_BLOCK_PC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"MSPro unsupported request\00", align 1
@BLKPREP_KILL = common dso_local global i32 0, align 4
@REQ_DONTPREP = common dso_local global i32 0, align 4
@BLKPREP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, %struct.request*)* @mspro_block_prepare_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mspro_block_prepare_req(%struct.request_queue* %0, %struct.request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca %struct.request*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %4, align 8
  store %struct.request* %1, %struct.request** %5, align 8
  %6 = load %struct.request*, %struct.request** %5, align 8
  %7 = getelementptr inbounds %struct.request, %struct.request* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @REQ_TYPE_FS, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  %12 = load %struct.request*, %struct.request** %5, align 8
  %13 = getelementptr inbounds %struct.request, %struct.request* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @REQ_TYPE_BLOCK_PC, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = load %struct.request*, %struct.request** %5, align 8
  %19 = call i32 @blk_dump_rq_flags(%struct.request* %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @BLKPREP_KILL, align 4
  store i32 %20, i32* %3, align 4
  br label %28

21:                                               ; preds = %11, %2
  %22 = load i32, i32* @REQ_DONTPREP, align 4
  %23 = load %struct.request*, %struct.request** %5, align 8
  %24 = getelementptr inbounds %struct.request, %struct.request* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load i32, i32* @BLKPREP_OK, align 4
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %21, %17
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @blk_dump_rq_flags(%struct.request*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
