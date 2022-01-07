; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_qdio.c_zfcp_qdio_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_qdio.c_zfcp_qdio_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_qdio = type { %struct.TYPE_4__, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { %struct.qdio_buffer** }
%struct.qdio_buffer = type { i32 }
%struct.TYPE_6__ = type { %struct.qdio_buffer** }
%struct.TYPE_5__ = type { i64 }

@QDIO_MAX_BUFFERS_PER_Q = common dso_local global i32 0, align 4
@QBUFF_PER_PAGE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfcp_qdio_destroy(%struct.zfcp_qdio* %0) #0 {
  %2 = alloca %struct.zfcp_qdio*, align 8
  %3 = alloca %struct.qdio_buffer**, align 8
  %4 = alloca %struct.qdio_buffer**, align 8
  %5 = alloca i32, align 4
  store %struct.zfcp_qdio* %0, %struct.zfcp_qdio** %2, align 8
  %6 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %2, align 8
  %7 = icmp ne %struct.zfcp_qdio* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %60

9:                                                ; preds = %1
  %10 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %2, align 8
  %11 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %10, i32 0, i32 2
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %9
  %17 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %2, align 8
  %18 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %17, i32 0, i32 2
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @qdio_free(i64 %21)
  br label %23

23:                                               ; preds = %16, %9
  %24 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %2, align 8
  %25 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.qdio_buffer**, %struct.qdio_buffer*** %26, align 8
  store %struct.qdio_buffer** %27, %struct.qdio_buffer*** %3, align 8
  %28 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %2, align 8
  %29 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.qdio_buffer**, %struct.qdio_buffer*** %30, align 8
  store %struct.qdio_buffer** %31, %struct.qdio_buffer*** %4, align 8
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %51, %23
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %57

36:                                               ; preds = %32
  %37 = load %struct.qdio_buffer**, %struct.qdio_buffer*** %3, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.qdio_buffer*, %struct.qdio_buffer** %37, i64 %39
  %41 = load %struct.qdio_buffer*, %struct.qdio_buffer** %40, align 8
  %42 = ptrtoint %struct.qdio_buffer* %41 to i64
  %43 = call i32 @free_page(i64 %42)
  %44 = load %struct.qdio_buffer**, %struct.qdio_buffer*** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.qdio_buffer*, %struct.qdio_buffer** %44, i64 %46
  %48 = load %struct.qdio_buffer*, %struct.qdio_buffer** %47, align 8
  %49 = ptrtoint %struct.qdio_buffer* %48 to i64
  %50 = call i32 @free_page(i64 %49)
  br label %51

51:                                               ; preds = %36
  %52 = load i64, i64* @QBUFF_PER_PAGE, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %54, %52
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %5, align 4
  br label %32

57:                                               ; preds = %32
  %58 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %2, align 8
  %59 = call i32 @kfree(%struct.zfcp_qdio* %58)
  br label %60

60:                                               ; preds = %57, %8
  ret void
}

declare dso_local i32 @qdio_free(i64) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @kfree(%struct.zfcp_qdio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
