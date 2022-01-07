; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_user_sdma.c_qib_user_sdma_writev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_user_sdma.c_qib_user_sdma_writev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.qib_ctxtdata = type { %struct.qib_pportdata*, %struct.qib_devdata* }
%struct.qib_pportdata = type { i64, i64 }
%struct.qib_devdata = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.qib_user_sdma_queue = type { i32, i32 }
%struct.iovec = type { i32 }
%struct.list_head = type { i32 }

@current = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qib_user_sdma_writev(%struct.qib_ctxtdata* %0, %struct.qib_user_sdma_queue* %1, %struct.iovec* %2, i64 %3) #0 {
  %5 = alloca %struct.qib_ctxtdata*, align 8
  %6 = alloca %struct.qib_user_sdma_queue*, align 8
  %7 = alloca %struct.iovec*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.qib_devdata*, align 8
  %10 = alloca %struct.qib_pportdata*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.list_head, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.qib_ctxtdata* %0, %struct.qib_ctxtdata** %5, align 8
  store %struct.qib_user_sdma_queue* %1, %struct.qib_user_sdma_queue** %6, align 8
  store %struct.iovec* %2, %struct.iovec** %7, align 8
  store i64 %3, i64* %8, align 8
  %15 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %16 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %15, i32 0, i32 1
  %17 = load %struct.qib_devdata*, %struct.qib_devdata** %16, align 8
  store %struct.qib_devdata* %17, %struct.qib_devdata** %9, align 8
  %18 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %19 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %18, i32 0, i32 0
  %20 = load %struct.qib_pportdata*, %struct.qib_pportdata** %19, align 8
  store %struct.qib_pportdata* %20, %struct.qib_pportdata** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %21 = call i32 @INIT_LIST_HEAD(%struct.list_head* %12)
  %22 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %6, align 8
  %23 = getelementptr inbounds %struct.qib_user_sdma_queue, %struct.qib_user_sdma_queue* %22, i32 0, i32 1
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %26 = call i32 @qib_sdma_running(%struct.qib_pportdata* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %4
  br label %113

29:                                               ; preds = %4
  %30 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %31 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %34 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %29
  %38 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %39 = call i32 @qib_user_sdma_hwqueue_clean(%struct.qib_pportdata* %38)
  %40 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %41 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %6, align 8
  %42 = call i32 @qib_user_sdma_queue_clean(%struct.qib_pportdata* %40, %struct.qib_user_sdma_queue* %41)
  br label %43

43:                                               ; preds = %37, %29
  br label %44

44:                                               ; preds = %111, %43
  %45 = load i64, i64* %8, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %112

47:                                               ; preds = %44
  store i32 8, i32* %14, align 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = call i32 @down_write(i32* %51)
  %53 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %54 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %6, align 8
  %55 = load %struct.iovec*, %struct.iovec** %7, align 8
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @qib_user_sdma_queue_pkts(%struct.qib_devdata* %53, %struct.qib_user_sdma_queue* %54, %struct.list_head* %12, %struct.iovec* %55, i64 %56, i32 8)
  store i32 %57, i32* %11, align 4
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = call i32 @up_write(i32* %61)
  %63 = load i32, i32* %11, align 4
  %64 = icmp sle i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %47
  br label %113

66:                                               ; preds = %47
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = load i64, i64* %8, align 8
  %70 = sub i64 %69, %68
  store i64 %70, i64* %8, align 8
  %71 = load i32, i32* %11, align 4
  %72 = load %struct.iovec*, %struct.iovec** %7, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds %struct.iovec, %struct.iovec* %72, i64 %73
  store %struct.iovec* %74, %struct.iovec** %7, align 8
  br label %75

75:                                               ; preds = %66
  %76 = call i32 @list_empty(%struct.list_head* %12)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %111, label %78

78:                                               ; preds = %75
  %79 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %80 = call i32 @qib_sdma_descq_freecnt(%struct.qib_pportdata* %79)
  %81 = load i32, i32* %11, align 4
  %82 = mul nsw i32 %81, 4
  %83 = icmp slt i32 %80, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %78
  %85 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %86 = call i32 @qib_user_sdma_hwqueue_clean(%struct.qib_pportdata* %85)
  %87 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %88 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %6, align 8
  %89 = call i32 @qib_user_sdma_queue_clean(%struct.qib_pportdata* %87, %struct.qib_user_sdma_queue* %88)
  br label %90

90:                                               ; preds = %84, %78
  %91 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %92 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %6, align 8
  %93 = call i32 @qib_user_sdma_push_pkts(%struct.qib_pportdata* %91, %struct.qib_user_sdma_queue* %92, %struct.list_head* %12)
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* %11, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %90
  br label %113

97:                                               ; preds = %90
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %13, align 4
  %100 = add nsw i32 %99, %98
  store i32 %100, i32* %13, align 4
  %101 = load i32, i32* %11, align 4
  %102 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %6, align 8
  %103 = getelementptr inbounds %struct.qib_user_sdma_queue, %struct.qib_user_sdma_queue* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, %101
  store i32 %105, i32* %103, align 4
  %106 = call i32 @list_empty(%struct.list_head* %12)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %97
  br label %113

109:                                              ; preds = %97
  br label %110

110:                                              ; preds = %109
  br label %111

111:                                              ; preds = %110, %75
  br label %44

112:                                              ; preds = %44
  br label %113

113:                                              ; preds = %112, %108, %96, %65, %28
  %114 = call i32 @list_empty(%struct.list_head* %12)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %123, label %116

116:                                              ; preds = %113
  %117 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %118 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %117, i32 0, i32 0
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %6, align 8
  %122 = call i32 @qib_user_sdma_free_pkt_list(i32* %120, %struct.qib_user_sdma_queue* %121, %struct.list_head* %12)
  br label %123

123:                                              ; preds = %116, %113
  %124 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %6, align 8
  %125 = getelementptr inbounds %struct.qib_user_sdma_queue, %struct.qib_user_sdma_queue* %124, i32 0, i32 1
  %126 = call i32 @mutex_unlock(i32* %125)
  %127 = load i32, i32* %11, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %123
  %130 = load i32, i32* %11, align 4
  br label %133

131:                                              ; preds = %123
  %132 = load i32, i32* %13, align 4
  br label %133

133:                                              ; preds = %131, %129
  %134 = phi i32 [ %130, %129 ], [ %132, %131 ]
  ret i32 %134
}

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @qib_sdma_running(%struct.qib_pportdata*) #1

declare dso_local i32 @qib_user_sdma_hwqueue_clean(%struct.qib_pportdata*) #1

declare dso_local i32 @qib_user_sdma_queue_clean(%struct.qib_pportdata*, %struct.qib_user_sdma_queue*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @qib_user_sdma_queue_pkts(%struct.qib_devdata*, %struct.qib_user_sdma_queue*, %struct.list_head*, %struct.iovec*, i64, i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @list_empty(%struct.list_head*) #1

declare dso_local i32 @qib_sdma_descq_freecnt(%struct.qib_pportdata*) #1

declare dso_local i32 @qib_user_sdma_push_pkts(%struct.qib_pportdata*, %struct.qib_user_sdma_queue*, %struct.list_head*) #1

declare dso_local i32 @qib_user_sdma_free_pkt_list(i32*, %struct.qib_user_sdma_queue*, %struct.list_head*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
