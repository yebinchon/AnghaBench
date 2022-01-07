; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_scm_blk.c_scm_request_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_scm_blk.c_scm_request_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scm_blk_dev = type { i32 }
%struct.scm_request = type { i32, i64, %struct.scm_blk_dev*, %struct.request*, %struct.aob*, %struct.aob* }
%struct.aob = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.request = type { i32 }
%struct.aob_rq_header = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@ARQB_CMD_MOVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scm_blk_dev*, %struct.scm_request*, %struct.request*)* @scm_request_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scm_request_init(%struct.scm_blk_dev* %0, %struct.scm_request* %1, %struct.request* %2) #0 {
  %4 = alloca %struct.scm_blk_dev*, align 8
  %5 = alloca %struct.scm_request*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca %struct.aob_rq_header*, align 8
  %8 = alloca %struct.aob*, align 8
  store %struct.scm_blk_dev* %0, %struct.scm_blk_dev** %4, align 8
  store %struct.scm_request* %1, %struct.scm_request** %5, align 8
  store %struct.request* %2, %struct.request** %6, align 8
  %9 = load %struct.scm_request*, %struct.scm_request** %5, align 8
  %10 = call %struct.aob_rq_header* @to_aobrq(%struct.scm_request* %9)
  store %struct.aob_rq_header* %10, %struct.aob_rq_header** %7, align 8
  %11 = load %struct.scm_request*, %struct.scm_request** %5, align 8
  %12 = getelementptr inbounds %struct.scm_request, %struct.scm_request* %11, i32 0, i32 5
  %13 = load %struct.aob*, %struct.aob** %12, align 8
  store %struct.aob* %13, %struct.aob** %8, align 8
  %14 = load %struct.aob*, %struct.aob** %8, align 8
  %15 = call i32 @memset(%struct.aob* %14, i32 0, i32 16)
  %16 = load %struct.scm_request*, %struct.scm_request** %5, align 8
  %17 = getelementptr inbounds %struct.scm_request, %struct.scm_request* %16, i32 0, i32 4
  %18 = load %struct.aob*, %struct.aob** %17, align 8
  %19 = load i32, i32* @PAGE_SIZE, align 4
  %20 = call i32 @memset(%struct.aob* %18, i32 0, i32 %19)
  %21 = load %struct.scm_blk_dev*, %struct.scm_blk_dev** %4, align 8
  %22 = getelementptr inbounds %struct.scm_blk_dev, %struct.scm_blk_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.aob_rq_header*, %struct.aob_rq_header** %7, align 8
  %25 = getelementptr inbounds %struct.aob_rq_header, %struct.aob_rq_header* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @ARQB_CMD_MOVE, align 4
  %27 = load %struct.aob*, %struct.aob** %8, align 8
  %28 = getelementptr inbounds %struct.aob, %struct.aob* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  store i32 %26, i32* %29, align 8
  %30 = load %struct.aob_rq_header*, %struct.aob_rq_header** %7, align 8
  %31 = ptrtoint %struct.aob_rq_header* %30 to i64
  %32 = load %struct.aob*, %struct.aob** %8, align 8
  %33 = getelementptr inbounds %struct.aob, %struct.aob* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i64 %31, i64* %34, align 8
  %35 = load %struct.request*, %struct.request** %6, align 8
  %36 = load %struct.scm_request*, %struct.scm_request** %5, align 8
  %37 = getelementptr inbounds %struct.scm_request, %struct.scm_request* %36, i32 0, i32 3
  store %struct.request* %35, %struct.request** %37, align 8
  %38 = load %struct.scm_blk_dev*, %struct.scm_blk_dev** %4, align 8
  %39 = load %struct.scm_request*, %struct.scm_request** %5, align 8
  %40 = getelementptr inbounds %struct.scm_request, %struct.scm_request* %39, i32 0, i32 2
  store %struct.scm_blk_dev* %38, %struct.scm_blk_dev** %40, align 8
  %41 = load %struct.scm_request*, %struct.scm_request** %5, align 8
  %42 = getelementptr inbounds %struct.scm_request, %struct.scm_request* %41, i32 0, i32 0
  store i32 4, i32* %42, align 8
  %43 = load %struct.scm_request*, %struct.scm_request** %5, align 8
  %44 = getelementptr inbounds %struct.scm_request, %struct.scm_request* %43, i32 0, i32 1
  store i64 0, i64* %44, align 8
  %45 = load %struct.scm_request*, %struct.scm_request** %5, align 8
  %46 = call i32 @scm_request_cluster_init(%struct.scm_request* %45)
  ret void
}

declare dso_local %struct.aob_rq_header* @to_aobrq(%struct.scm_request*) #1

declare dso_local i32 @memset(%struct.aob*, i32, i32) #1

declare dso_local i32 @scm_request_cluster_init(%struct.scm_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
