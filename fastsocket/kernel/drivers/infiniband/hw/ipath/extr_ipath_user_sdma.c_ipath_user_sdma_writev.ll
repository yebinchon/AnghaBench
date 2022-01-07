; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_user_sdma.c_ipath_user_sdma_writev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_user_sdma.c_ipath_user_sdma_writev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ipath_devdata = type { i64, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.ipath_user_sdma_queue = type { i32, i32 }
%struct.iovec = type { i32 }
%struct.list_head = type { i32 }

@current = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipath_user_sdma_writev(%struct.ipath_devdata* %0, %struct.ipath_user_sdma_queue* %1, %struct.iovec* %2, i64 %3) #0 {
  %5 = alloca %struct.ipath_devdata*, align 8
  %6 = alloca %struct.ipath_user_sdma_queue*, align 8
  %7 = alloca %struct.iovec*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.list_head, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ipath_devdata* %0, %struct.ipath_devdata** %5, align 8
  store %struct.ipath_user_sdma_queue* %1, %struct.ipath_user_sdma_queue** %6, align 8
  store %struct.iovec* %2, %struct.iovec** %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %13 = call i32 @INIT_LIST_HEAD(%struct.list_head* %10)
  %14 = load %struct.ipath_user_sdma_queue*, %struct.ipath_user_sdma_queue** %6, align 8
  %15 = getelementptr inbounds %struct.ipath_user_sdma_queue, %struct.ipath_user_sdma_queue* %14, i32 0, i32 1
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %18 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %21 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %19, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %4
  %25 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %26 = call i32 @ipath_user_sdma_hwqueue_clean(%struct.ipath_devdata* %25)
  %27 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %28 = load %struct.ipath_user_sdma_queue*, %struct.ipath_user_sdma_queue** %6, align 8
  %29 = call i32 @ipath_user_sdma_queue_clean(%struct.ipath_devdata* %27, %struct.ipath_user_sdma_queue* %28)
  br label %30

30:                                               ; preds = %24, %4
  br label %31

31:                                               ; preds = %98, %30
  %32 = load i64, i64* %8, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %99

34:                                               ; preds = %31
  store i32 8, i32* %12, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = call i32 @down_write(i32* %38)
  %40 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %41 = load %struct.ipath_user_sdma_queue*, %struct.ipath_user_sdma_queue** %6, align 8
  %42 = load %struct.iovec*, %struct.iovec** %7, align 8
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @ipath_user_sdma_queue_pkts(%struct.ipath_devdata* %40, %struct.ipath_user_sdma_queue* %41, %struct.list_head* %10, %struct.iovec* %42, i64 %43, i32 8)
  store i32 %44, i32* %9, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = call i32 @up_write(i32* %48)
  %50 = load i32, i32* %9, align 4
  %51 = icmp sle i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %34
  br label %100

53:                                               ; preds = %34
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = load i64, i64* %8, align 8
  %57 = sub i64 %56, %55
  store i64 %57, i64* %8, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.iovec*, %struct.iovec** %7, align 8
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds %struct.iovec, %struct.iovec* %59, i64 %60
  store %struct.iovec* %61, %struct.iovec** %7, align 8
  br label %62

62:                                               ; preds = %53
  %63 = call i32 @list_empty(%struct.list_head* %10)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %98, label %65

65:                                               ; preds = %62
  %66 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %67 = call i32 @ipath_sdma_descq_freecnt(%struct.ipath_devdata* %66)
  %68 = load i32, i32* %9, align 4
  %69 = mul nsw i32 %68, 4
  %70 = icmp slt i32 %67, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %65
  %72 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %73 = call i32 @ipath_user_sdma_hwqueue_clean(%struct.ipath_devdata* %72)
  %74 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %75 = load %struct.ipath_user_sdma_queue*, %struct.ipath_user_sdma_queue** %6, align 8
  %76 = call i32 @ipath_user_sdma_queue_clean(%struct.ipath_devdata* %74, %struct.ipath_user_sdma_queue* %75)
  br label %77

77:                                               ; preds = %71, %65
  %78 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %79 = load %struct.ipath_user_sdma_queue*, %struct.ipath_user_sdma_queue** %6, align 8
  %80 = call i32 @ipath_user_sdma_push_pkts(%struct.ipath_devdata* %78, %struct.ipath_user_sdma_queue* %79, %struct.list_head* %10)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  br label %100

84:                                               ; preds = %77
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %11, align 4
  %87 = add nsw i32 %86, %85
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %9, align 4
  %89 = load %struct.ipath_user_sdma_queue*, %struct.ipath_user_sdma_queue** %6, align 8
  %90 = getelementptr inbounds %struct.ipath_user_sdma_queue, %struct.ipath_user_sdma_queue* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, %88
  store i32 %92, i32* %90, align 4
  %93 = call i32 @list_empty(%struct.list_head* %10)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %84
  br label %100

96:                                               ; preds = %84
  br label %97

97:                                               ; preds = %96
  br label %98

98:                                               ; preds = %97, %62
  br label %31

99:                                               ; preds = %31
  br label %100

100:                                              ; preds = %99, %95, %83, %52
  %101 = call i32 @list_empty(%struct.list_head* %10)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %110, label %103

103:                                              ; preds = %100
  %104 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %105 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %104, i32 0, i32 2
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load %struct.ipath_user_sdma_queue*, %struct.ipath_user_sdma_queue** %6, align 8
  %109 = call i32 @ipath_user_sdma_free_pkt_list(i32* %107, %struct.ipath_user_sdma_queue* %108, %struct.list_head* %10)
  br label %110

110:                                              ; preds = %103, %100
  %111 = load %struct.ipath_user_sdma_queue*, %struct.ipath_user_sdma_queue** %6, align 8
  %112 = getelementptr inbounds %struct.ipath_user_sdma_queue, %struct.ipath_user_sdma_queue* %111, i32 0, i32 1
  %113 = call i32 @mutex_unlock(i32* %112)
  %114 = load i32, i32* %9, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %110
  %117 = load i32, i32* %9, align 4
  br label %120

118:                                              ; preds = %110
  %119 = load i32, i32* %11, align 4
  br label %120

120:                                              ; preds = %118, %116
  %121 = phi i32 [ %117, %116 ], [ %119, %118 ]
  ret i32 %121
}

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ipath_user_sdma_hwqueue_clean(%struct.ipath_devdata*) #1

declare dso_local i32 @ipath_user_sdma_queue_clean(%struct.ipath_devdata*, %struct.ipath_user_sdma_queue*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @ipath_user_sdma_queue_pkts(%struct.ipath_devdata*, %struct.ipath_user_sdma_queue*, %struct.list_head*, %struct.iovec*, i64, i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @list_empty(%struct.list_head*) #1

declare dso_local i32 @ipath_sdma_descq_freecnt(%struct.ipath_devdata*) #1

declare dso_local i32 @ipath_user_sdma_push_pkts(%struct.ipath_devdata*, %struct.ipath_user_sdma_queue*, %struct.list_head*) #1

declare dso_local i32 @ipath_user_sdma_free_pkt_list(i32*, %struct.ipath_user_sdma_queue*, %struct.list_head*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
