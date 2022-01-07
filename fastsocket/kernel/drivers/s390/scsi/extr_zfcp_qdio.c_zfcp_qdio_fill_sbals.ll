; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_qdio.c_zfcp_qdio_fill_sbals.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_qdio.c_zfcp_qdio_fill_sbals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_qdio = type { i32 }
%struct.zfcp_queue_req = type { i32 }
%struct.qdio_buffer_element = type { i64, i8* }

@EINVAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zfcp_qdio*, %struct.zfcp_queue_req*, i32, i8*, i32)* @zfcp_qdio_fill_sbals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_qdio_fill_sbals(%struct.zfcp_qdio* %0, %struct.zfcp_queue_req* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.zfcp_qdio*, align 8
  %8 = alloca %struct.zfcp_queue_req*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.qdio_buffer_element*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  store %struct.zfcp_qdio* %0, %struct.zfcp_qdio** %7, align 8
  store %struct.zfcp_queue_req* %1, %struct.zfcp_queue_req** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i8*, i8** %10, align 8
  store i8* %16, i8** %15, align 8
  %17 = load i32, i32* %11, align 4
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %13, align 8
  br label %19

19:                                               ; preds = %57, %5
  %20 = load i64, i64* %13, align 8
  %21 = icmp ugt i64 %20, 0
  br i1 %21, label %22, label %64

22:                                               ; preds = %19
  %23 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %7, align 8
  %24 = load %struct.zfcp_queue_req*, %struct.zfcp_queue_req** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call %struct.qdio_buffer_element* @zfcp_qdio_sbale_next(%struct.zfcp_qdio* %23, %struct.zfcp_queue_req* %24, i32 %25)
  store %struct.qdio_buffer_element* %26, %struct.qdio_buffer_element** %12, align 8
  %27 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %12, align 8
  %28 = icmp ne %struct.qdio_buffer_element* %27, null
  br i1 %28, label %38, label %29

29:                                               ; preds = %22
  %30 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %7, align 8
  %31 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %30, i32 0, i32 0
  %32 = call i32 @atomic_inc(i32* %31)
  %33 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %7, align 8
  %34 = load %struct.zfcp_queue_req*, %struct.zfcp_queue_req** %8, align 8
  %35 = call i32 @zfcp_qdio_undo_sbals(%struct.zfcp_qdio* %33, %struct.zfcp_queue_req* %34)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %65

38:                                               ; preds = %22
  %39 = load i64, i64* %13, align 8
  %40 = load i32, i32* @PAGE_SIZE, align 4
  %41 = sext i32 %40 to i64
  %42 = load i8*, i8** %15, align 8
  %43 = ptrtoint i8* %42 to i64
  %44 = load i32, i32* @PAGE_SIZE, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = and i64 %43, %46
  %48 = sub i64 %41, %47
  %49 = trunc i64 %48 to i32
  %50 = call i64 @min(i64 %39, i32 %49)
  store i64 %50, i64* %14, align 8
  %51 = load i8*, i8** %15, align 8
  %52 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %12, align 8
  %53 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  %54 = load i64, i64* %14, align 8
  %55 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %12, align 8
  %56 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  br label %57

57:                                               ; preds = %38
  %58 = load i64, i64* %14, align 8
  %59 = load i8*, i8** %15, align 8
  %60 = getelementptr i8, i8* %59, i64 %58
  store i8* %60, i8** %15, align 8
  %61 = load i64, i64* %14, align 8
  %62 = load i64, i64* %13, align 8
  %63 = sub i64 %62, %61
  store i64 %63, i64* %13, align 8
  br label %19

64:                                               ; preds = %19
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %64, %29
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local %struct.qdio_buffer_element* @zfcp_qdio_sbale_next(%struct.zfcp_qdio*, %struct.zfcp_queue_req*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @zfcp_qdio_undo_sbals(%struct.zfcp_qdio*, %struct.zfcp_queue_req*) #1

declare dso_local i64 @min(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
