; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_init_input_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_init_input_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.qeth_qdio_buffer = type { %struct.TYPE_6__*, %struct.qeth_buffer_pool_entry*, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64, i32, i32 }
%struct.qeth_buffer_pool_entry = type { i32* }

@QETH_CQ_ENABLED = common dso_local global i64 0, align 8
@QETH_RX_PULL_LEN = common dso_local global i64 0, align 8
@ETH_HLEN = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@SBAL_EFLAGS_LAST_ENTRY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, %struct.qeth_qdio_buffer*)* @qeth_init_input_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_init_input_buffer(%struct.qeth_card* %0, %struct.qeth_qdio_buffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qeth_card*, align 8
  %5 = alloca %struct.qeth_qdio_buffer*, align 8
  %6 = alloca %struct.qeth_buffer_pool_entry*, align 8
  %7 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %4, align 8
  store %struct.qeth_qdio_buffer* %1, %struct.qeth_qdio_buffer** %5, align 8
  %8 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %9 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @QETH_CQ_ENABLED, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %32

14:                                               ; preds = %2
  %15 = load %struct.qeth_qdio_buffer*, %struct.qeth_qdio_buffer** %5, align 8
  %16 = getelementptr inbounds %struct.qeth_qdio_buffer, %struct.qeth_qdio_buffer* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %32, label %19

19:                                               ; preds = %14
  %20 = load i64, i64* @QETH_RX_PULL_LEN, align 8
  %21 = load i64, i64* @ETH_HLEN, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i64 @dev_alloc_skb(i64 %22)
  %24 = load %struct.qeth_qdio_buffer*, %struct.qeth_qdio_buffer** %5, align 8
  %25 = getelementptr inbounds %struct.qeth_qdio_buffer, %struct.qeth_qdio_buffer* %24, i32 0, i32 2
  store i64 %23, i64* %25, align 8
  %26 = load %struct.qeth_qdio_buffer*, %struct.qeth_qdio_buffer** %5, align 8
  %27 = getelementptr inbounds %struct.qeth_qdio_buffer, %struct.qeth_qdio_buffer* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %19
  store i32 1, i32* %3, align 4
  br label %114

31:                                               ; preds = %19
  br label %32

32:                                               ; preds = %31, %14, %2
  %33 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %34 = call %struct.qeth_buffer_pool_entry* @qeth_find_free_buffer_pool_entry(%struct.qeth_card* %33)
  store %struct.qeth_buffer_pool_entry* %34, %struct.qeth_buffer_pool_entry** %6, align 8
  %35 = load %struct.qeth_buffer_pool_entry*, %struct.qeth_buffer_pool_entry** %6, align 8
  %36 = icmp ne %struct.qeth_buffer_pool_entry* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  store i32 1, i32* %3, align 4
  br label %114

38:                                               ; preds = %32
  %39 = load %struct.qeth_buffer_pool_entry*, %struct.qeth_buffer_pool_entry** %6, align 8
  %40 = load %struct.qeth_qdio_buffer*, %struct.qeth_qdio_buffer** %5, align 8
  %41 = getelementptr inbounds %struct.qeth_qdio_buffer, %struct.qeth_qdio_buffer* %40, i32 0, i32 1
  store %struct.qeth_buffer_pool_entry* %39, %struct.qeth_buffer_pool_entry** %41, align 8
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %110, %38
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %45 = call i32 @QETH_MAX_BUFFER_ELEMENTS(%struct.qeth_card* %44)
  %46 = icmp slt i32 %43, %45
  br i1 %46, label %47, label %113

47:                                               ; preds = %42
  %48 = load i32, i32* @PAGE_SIZE, align 4
  %49 = load %struct.qeth_qdio_buffer*, %struct.qeth_qdio_buffer** %5, align 8
  %50 = getelementptr inbounds %struct.qeth_qdio_buffer, %struct.qeth_qdio_buffer* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 3
  store i32 %48, i32* %57, align 4
  %58 = load %struct.qeth_buffer_pool_entry*, %struct.qeth_buffer_pool_entry** %6, align 8
  %59 = getelementptr inbounds %struct.qeth_buffer_pool_entry, %struct.qeth_buffer_pool_entry* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.qeth_qdio_buffer*, %struct.qeth_qdio_buffer** %5, align 8
  %66 = getelementptr inbounds %struct.qeth_qdio_buffer, %struct.qeth_qdio_buffer* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 2
  store i32 %64, i32* %73, align 8
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %76 = call i32 @QETH_MAX_BUFFER_ELEMENTS(%struct.qeth_card* %75)
  %77 = sub nsw i32 %76, 1
  %78 = icmp eq i32 %74, %77
  br i1 %78, label %79, label %90

79:                                               ; preds = %47
  %80 = load i64, i64* @SBAL_EFLAGS_LAST_ENTRY, align 8
  %81 = load %struct.qeth_qdio_buffer*, %struct.qeth_qdio_buffer** %5, align 8
  %82 = getelementptr inbounds %struct.qeth_qdio_buffer, %struct.qeth_qdio_buffer* %81, i32 0, i32 0
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  store i64 %80, i64* %89, align 8
  br label %100

90:                                               ; preds = %47
  %91 = load %struct.qeth_qdio_buffer*, %struct.qeth_qdio_buffer** %5, align 8
  %92 = getelementptr inbounds %struct.qeth_qdio_buffer, %struct.qeth_qdio_buffer* %91, i32 0, i32 0
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  store i64 0, i64* %99, align 8
  br label %100

100:                                              ; preds = %90, %79
  %101 = load %struct.qeth_qdio_buffer*, %struct.qeth_qdio_buffer** %5, align 8
  %102 = getelementptr inbounds %struct.qeth_qdio_buffer, %struct.qeth_qdio_buffer* %101, i32 0, i32 0
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = load i32, i32* %7, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  store i64 0, i64* %109, align 8
  br label %110

110:                                              ; preds = %100
  %111 = load i32, i32* %7, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %7, align 4
  br label %42

113:                                              ; preds = %42
  store i32 0, i32* %3, align 4
  br label %114

114:                                              ; preds = %113, %37, %30
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i64 @dev_alloc_skb(i64) #1

declare dso_local %struct.qeth_buffer_pool_entry* @qeth_find_free_buffer_pool_entry(%struct.qeth_card*) #1

declare dso_local i32 @QETH_MAX_BUFFER_ELEMENTS(%struct.qeth_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
