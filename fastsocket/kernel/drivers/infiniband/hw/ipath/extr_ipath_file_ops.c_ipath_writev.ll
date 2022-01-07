; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_file_ops.c_ipath_writev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_file_ops.c_ipath_writev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { %struct.file* }
%struct.file = type { %struct.ipath_filedata* }
%struct.ipath_filedata = type { %struct.ipath_user_sdma_queue* }
%struct.ipath_user_sdma_queue = type { i32 }
%struct.iovec = type { i32 }
%struct.ipath_portdata = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.iovec*, i64, i32)* @ipath_writev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipath_writev(%struct.kiocb* %0, %struct.iovec* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kiocb*, align 8
  %7 = alloca %struct.iovec*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.file*, align 8
  %11 = alloca %struct.ipath_filedata*, align 8
  %12 = alloca %struct.ipath_portdata*, align 8
  %13 = alloca %struct.ipath_user_sdma_queue*, align 8
  store %struct.kiocb* %0, %struct.kiocb** %6, align 8
  store %struct.iovec* %1, %struct.iovec** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %15 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %14, i32 0, i32 0
  %16 = load %struct.file*, %struct.file** %15, align 8
  store %struct.file* %16, %struct.file** %10, align 8
  %17 = load %struct.file*, %struct.file** %10, align 8
  %18 = getelementptr inbounds %struct.file, %struct.file* %17, i32 0, i32 0
  %19 = load %struct.ipath_filedata*, %struct.ipath_filedata** %18, align 8
  store %struct.ipath_filedata* %19, %struct.ipath_filedata** %11, align 8
  %20 = load %struct.file*, %struct.file** %10, align 8
  %21 = call %struct.ipath_portdata* @port_fp(%struct.file* %20)
  store %struct.ipath_portdata* %21, %struct.ipath_portdata** %12, align 8
  %22 = load %struct.ipath_filedata*, %struct.ipath_filedata** %11, align 8
  %23 = getelementptr inbounds %struct.ipath_filedata, %struct.ipath_filedata* %22, i32 0, i32 0
  %24 = load %struct.ipath_user_sdma_queue*, %struct.ipath_user_sdma_queue** %23, align 8
  store %struct.ipath_user_sdma_queue* %24, %struct.ipath_user_sdma_queue** %13, align 8
  %25 = load i64, i64* %8, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %4
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %38

30:                                               ; preds = %4
  %31 = load %struct.ipath_portdata*, %struct.ipath_portdata** %12, align 8
  %32 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ipath_user_sdma_queue*, %struct.ipath_user_sdma_queue** %13, align 8
  %35 = load %struct.iovec*, %struct.iovec** %7, align 8
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @ipath_user_sdma_writev(i32 %33, %struct.ipath_user_sdma_queue* %34, %struct.iovec* %35, i64 %36)
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %30, %27
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local %struct.ipath_portdata* @port_fp(%struct.file*) #1

declare dso_local i32 @ipath_user_sdma_writev(i32, %struct.ipath_user_sdma_queue*, %struct.iovec*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
