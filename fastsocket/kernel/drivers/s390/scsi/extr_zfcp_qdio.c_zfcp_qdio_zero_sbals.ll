; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_qdio.c_zfcp_qdio_zero_sbals.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_qdio.c_zfcp_qdio_zero_sbals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_buffer = type { i32 }

@QDIO_MAX_BUFFERS_PER_Q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qdio_buffer**, i32, i32)* @zfcp_qdio_zero_sbals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_qdio_zero_sbals(%struct.qdio_buffer** %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.qdio_buffer**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qdio_buffer** %0, %struct.qdio_buffer*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  store i32 %9, i32* %7, align 4
  br label %10

10:                                               ; preds = %26, %3
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = add nsw i32 %12, %13
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %10
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %19 = srem i32 %17, %18
  store i32 %19, i32* %8, align 4
  %20 = load %struct.qdio_buffer**, %struct.qdio_buffer*** %4, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.qdio_buffer*, %struct.qdio_buffer** %20, i64 %22
  %24 = load %struct.qdio_buffer*, %struct.qdio_buffer** %23, align 8
  %25 = call i32 @memset(%struct.qdio_buffer* %24, i32 0, i32 4)
  br label %26

26:                                               ; preds = %16
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %7, align 4
  br label %10

29:                                               ; preds = %10
  ret void
}

declare dso_local i32 @memset(%struct.qdio_buffer*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
