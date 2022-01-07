; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_qdio.c_zfcp_qdio_buffers_enqueue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_qdio.c_zfcp_qdio_buffers_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_buffer = type { i32 }

@QDIO_MAX_BUFFERS_PER_Q = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@QBUFF_PER_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qdio_buffer**)* @zfcp_qdio_buffers_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_qdio_buffers_enqueue(%struct.qdio_buffer** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qdio_buffer**, align 8
  %4 = alloca i32, align 4
  store %struct.qdio_buffer** %0, %struct.qdio_buffer*** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %27, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %31

9:                                                ; preds = %5
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i64 @get_zeroed_page(i32 %10)
  %12 = inttoptr i64 %11 to %struct.qdio_buffer*
  %13 = load %struct.qdio_buffer**, %struct.qdio_buffer*** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.qdio_buffer*, %struct.qdio_buffer** %13, i64 %15
  store %struct.qdio_buffer* %12, %struct.qdio_buffer** %16, align 8
  %17 = load %struct.qdio_buffer**, %struct.qdio_buffer*** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.qdio_buffer*, %struct.qdio_buffer** %17, i64 %19
  %21 = load %struct.qdio_buffer*, %struct.qdio_buffer** %20, align 8
  %22 = icmp ne %struct.qdio_buffer* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %9
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %58

26:                                               ; preds = %9
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* @QBUFF_PER_PAGE, align 4
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, %28
  store i32 %30, i32* %4, align 4
  br label %5

31:                                               ; preds = %5
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %54, %31
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %57

36:                                               ; preds = %32
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @QBUFF_PER_PAGE, align 4
  %39 = srem i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %36
  %42 = load %struct.qdio_buffer**, %struct.qdio_buffer*** %3, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.qdio_buffer*, %struct.qdio_buffer** %42, i64 %45
  %47 = load %struct.qdio_buffer*, %struct.qdio_buffer** %46, align 8
  %48 = getelementptr inbounds %struct.qdio_buffer, %struct.qdio_buffer* %47, i64 1
  %49 = load %struct.qdio_buffer**, %struct.qdio_buffer*** %3, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.qdio_buffer*, %struct.qdio_buffer** %49, i64 %51
  store %struct.qdio_buffer* %48, %struct.qdio_buffer** %52, align 8
  br label %53

53:                                               ; preds = %41, %36
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %4, align 4
  br label %32

57:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %23
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i64 @get_zeroed_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
