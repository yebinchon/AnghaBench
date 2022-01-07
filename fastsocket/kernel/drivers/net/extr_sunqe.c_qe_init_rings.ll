; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sunqe.c_qe_init_rings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sunqe.c_qe_init_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sunqe = type { i64, i64, i64, i64, i64, %struct.sunqe_buffers*, %struct.sunqe_buffers* }
%struct.sunqe_buffers = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.qe_init_block = type { %struct.TYPE_2__* }

@RX_RING_SIZE = common dso_local global i32 0, align 4
@rx_buf = common dso_local global i32 0, align 4
@RXD_OWN = common dso_local global i32 0, align 4
@RXD_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sunqe*)* @qe_init_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qe_init_rings(%struct.sunqe* %0) #0 {
  %2 = alloca %struct.sunqe*, align 8
  %3 = alloca %struct.qe_init_block*, align 8
  %4 = alloca %struct.sunqe_buffers*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.sunqe* %0, %struct.sunqe** %2, align 8
  %7 = load %struct.sunqe*, %struct.sunqe** %2, align 8
  %8 = getelementptr inbounds %struct.sunqe, %struct.sunqe* %7, i32 0, i32 6
  %9 = load %struct.sunqe_buffers*, %struct.sunqe_buffers** %8, align 8
  %10 = bitcast %struct.sunqe_buffers* %9 to %struct.qe_init_block*
  store %struct.qe_init_block* %10, %struct.qe_init_block** %3, align 8
  %11 = load %struct.sunqe*, %struct.sunqe** %2, align 8
  %12 = getelementptr inbounds %struct.sunqe, %struct.sunqe* %11, i32 0, i32 5
  %13 = load %struct.sunqe_buffers*, %struct.sunqe_buffers** %12, align 8
  store %struct.sunqe_buffers* %13, %struct.sunqe_buffers** %4, align 8
  %14 = load %struct.sunqe*, %struct.sunqe** %2, align 8
  %15 = getelementptr inbounds %struct.sunqe, %struct.sunqe* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %5, align 8
  %17 = load %struct.sunqe*, %struct.sunqe** %2, align 8
  %18 = getelementptr inbounds %struct.sunqe, %struct.sunqe* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = load %struct.sunqe*, %struct.sunqe** %2, align 8
  %20 = getelementptr inbounds %struct.sunqe, %struct.sunqe* %19, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = load %struct.sunqe*, %struct.sunqe** %2, align 8
  %22 = getelementptr inbounds %struct.sunqe, %struct.sunqe* %21, i32 0, i32 2
  store i64 0, i64* %22, align 8
  %23 = load %struct.sunqe*, %struct.sunqe** %2, align 8
  %24 = getelementptr inbounds %struct.sunqe, %struct.sunqe* %23, i32 0, i32 3
  store i64 0, i64* %24, align 8
  %25 = load %struct.qe_init_block*, %struct.qe_init_block** %3, align 8
  %26 = bitcast %struct.qe_init_block* %25 to %struct.sunqe_buffers*
  %27 = call i32 @memset(%struct.sunqe_buffers* %26, i32 0, i32 8)
  %28 = load %struct.sunqe_buffers*, %struct.sunqe_buffers** %4, align 8
  %29 = call i32 @memset(%struct.sunqe_buffers* %28, i32 0, i32 8)
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %56, %1
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @RX_RING_SIZE, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %59

34:                                               ; preds = %30
  %35 = load i64, i64* %5, align 8
  %36 = load i32, i32* @rx_buf, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i64 @qebuf_offset(i32 %36, i32 %37)
  %39 = add nsw i64 %35, %38
  %40 = load %struct.qe_init_block*, %struct.qe_init_block** %3, align 8
  %41 = getelementptr inbounds %struct.qe_init_block, %struct.qe_init_block* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store i64 %39, i64* %46, align 8
  %47 = load i32, i32* @RXD_OWN, align 4
  %48 = or i32 %47, ptrtoint (i32* @RXD_LENGTH to i32)
  %49 = load %struct.qe_init_block*, %struct.qe_init_block** %3, align 8
  %50 = getelementptr inbounds %struct.qe_init_block, %struct.qe_init_block* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32 %48, i32* %55, align 8
  br label %56

56:                                               ; preds = %34
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %30

59:                                               ; preds = %30
  ret void
}

declare dso_local i32 @memset(%struct.sunqe_buffers*, i32, i32) #1

declare dso_local i64 @qebuf_offset(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
