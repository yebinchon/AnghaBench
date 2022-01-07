; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_file_ops.c_qib_aio_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_file_ops.c_qib_aio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.qib_filedata* }
%struct.qib_filedata = type { %struct.qib_user_sdma_queue* }
%struct.qib_user_sdma_queue = type { i32 }
%struct.iovec = type { i32 }
%struct.qib_ctxtdata = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.iovec*, i64, i32)* @qib_aio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_aio_write(%struct.kiocb* %0, %struct.iovec* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kiocb*, align 8
  %7 = alloca %struct.iovec*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.qib_filedata*, align 8
  %11 = alloca %struct.qib_ctxtdata*, align 8
  %12 = alloca %struct.qib_user_sdma_queue*, align 8
  store %struct.kiocb* %0, %struct.kiocb** %6, align 8
  store %struct.iovec* %1, %struct.iovec** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %14 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.qib_filedata*, %struct.qib_filedata** %16, align 8
  store %struct.qib_filedata* %17, %struct.qib_filedata** %10, align 8
  %18 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %19 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = call %struct.qib_ctxtdata* @ctxt_fp(%struct.TYPE_2__* %20)
  store %struct.qib_ctxtdata* %21, %struct.qib_ctxtdata** %11, align 8
  %22 = load %struct.qib_filedata*, %struct.qib_filedata** %10, align 8
  %23 = getelementptr inbounds %struct.qib_filedata, %struct.qib_filedata* %22, i32 0, i32 0
  %24 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %23, align 8
  store %struct.qib_user_sdma_queue* %24, %struct.qib_user_sdma_queue** %12, align 8
  %25 = load i64, i64* %8, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %12, align 8
  %29 = icmp ne %struct.qib_user_sdma_queue* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %27, %4
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %39

33:                                               ; preds = %27
  %34 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %11, align 8
  %35 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %12, align 8
  %36 = load %struct.iovec*, %struct.iovec** %7, align 8
  %37 = load i64, i64* %8, align 8
  %38 = call i32 @qib_user_sdma_writev(%struct.qib_ctxtdata* %34, %struct.qib_user_sdma_queue* %35, %struct.iovec* %36, i64 %37)
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %33, %30
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local %struct.qib_ctxtdata* @ctxt_fp(%struct.TYPE_2__*) #1

declare dso_local i32 @qib_user_sdma_writev(%struct.qib_ctxtdata*, %struct.qib_user_sdma_queue*, %struct.iovec*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
