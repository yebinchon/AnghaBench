; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_qdio_establish_cq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_qdio_establish_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_7__, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.qdio_buffer = type { i32 }
%struct.ccw_device = type opaque

@QETH_CQ_ENABLED = common dso_local global i64 0, align 8
@QDIO_MAX_BUFFERS_PER_Q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qeth_card*, %struct.qdio_buffer**, void (%struct.ccw_device*, i32, i64)**)* @qeth_qdio_establish_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qeth_qdio_establish_cq(%struct.qeth_card* %0, %struct.qdio_buffer** %1, void (%struct.ccw_device*, i32, i64)** %2) #0 {
  %4 = alloca %struct.qeth_card*, align 8
  %5 = alloca %struct.qdio_buffer**, align 8
  %6 = alloca void (%struct.ccw_device*, i32, i64)**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %4, align 8
  store %struct.qdio_buffer** %1, %struct.qdio_buffer*** %5, align 8
  store void (%struct.ccw_device*, i32, i64)** %2, void (%struct.ccw_device*, i32, i64)*** %6, align 8
  %9 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %10 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @QETH_CQ_ENABLED, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %66

15:                                               ; preds = %3
  %16 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %17 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %18 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sub nsw i32 %20, 1
  %22 = mul nsw i32 %16, %21
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %24 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %25 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sub nsw i32 %27, 1
  %29 = mul nsw i32 %23, %28
  store i32 %29, i32* %7, align 4
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %54, %15
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %57

34:                                               ; preds = %30
  %35 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %36 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @virt_to_phys(i32 %45)
  %47 = inttoptr i64 %46 to %struct.qdio_buffer*
  %48 = load %struct.qdio_buffer**, %struct.qdio_buffer*** %5, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.qdio_buffer*, %struct.qdio_buffer** %48, i64 %52
  store %struct.qdio_buffer* %47, %struct.qdio_buffer** %53, align 8
  br label %54

54:                                               ; preds = %34
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %30

57:                                               ; preds = %30
  %58 = load void (%struct.ccw_device*, i32, i64)**, void (%struct.ccw_device*, i32, i64)*** %6, align 8
  %59 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %60 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds void (%struct.ccw_device*, i32, i64)*, void (%struct.ccw_device*, i32, i64)** %58, i64 %64
  store void (%struct.ccw_device*, i32, i64)* null, void (%struct.ccw_device*, i32, i64)** %65, align 8
  br label %66

66:                                               ; preds = %57, %3
  ret void
}

declare dso_local i64 @virt_to_phys(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
