; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_rx_cq_clean.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_rx_cq_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_rx_obj = type { %struct.be_adapter*, %struct.be_queue_info, %struct.be_queue_info }
%struct.be_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.be_queue_info = type { i64, i64, i64, i32, i32 }
%struct.be_rx_page_info = type { i32 }
%struct.be_rx_compl_info = type { i64 }

@.str = private unnamed_addr constant [29 x i8] c"did not receive flush compl\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.be_rx_obj*)* @be_rx_cq_clean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_rx_cq_clean(%struct.be_rx_obj* %0) #0 {
  %2 = alloca %struct.be_rx_obj*, align 8
  %3 = alloca %struct.be_rx_page_info*, align 8
  %4 = alloca %struct.be_queue_info*, align 8
  %5 = alloca %struct.be_queue_info*, align 8
  %6 = alloca %struct.be_rx_compl_info*, align 8
  %7 = alloca %struct.be_adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.be_rx_obj* %0, %struct.be_rx_obj** %2, align 8
  %10 = load %struct.be_rx_obj*, %struct.be_rx_obj** %2, align 8
  %11 = getelementptr inbounds %struct.be_rx_obj, %struct.be_rx_obj* %10, i32 0, i32 2
  store %struct.be_queue_info* %11, %struct.be_queue_info** %4, align 8
  %12 = load %struct.be_rx_obj*, %struct.be_rx_obj** %2, align 8
  %13 = getelementptr inbounds %struct.be_rx_obj, %struct.be_rx_obj* %12, i32 0, i32 1
  store %struct.be_queue_info* %13, %struct.be_queue_info** %5, align 8
  %14 = load %struct.be_rx_obj*, %struct.be_rx_obj** %2, align 8
  %15 = getelementptr inbounds %struct.be_rx_obj, %struct.be_rx_obj* %14, i32 0, i32 0
  %16 = load %struct.be_adapter*, %struct.be_adapter** %15, align 8
  store %struct.be_adapter* %16, %struct.be_adapter** %7, align 8
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %63, %1
  %18 = load %struct.be_rx_obj*, %struct.be_rx_obj** %2, align 8
  %19 = call %struct.be_rx_compl_info* @be_rx_compl_get(%struct.be_rx_obj* %18)
  store %struct.be_rx_compl_info* %19, %struct.be_rx_compl_info** %6, align 8
  %20 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %6, align 8
  %21 = icmp eq %struct.be_rx_compl_info* %20, null
  br i1 %21, label %22, label %48

22:                                               ; preds = %17
  %23 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %24 = call i64 @lancer_chip(%struct.be_adapter* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %64

27:                                               ; preds = %22
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %8, align 4
  %30 = icmp sgt i32 %28, 10
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %33 = call i64 @be_hw_error(%struct.be_adapter* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %31, %27
  %36 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %37 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = call i32 @dev_warn(i32* %39, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %64

41:                                               ; preds = %31
  %42 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %43 = load %struct.be_queue_info*, %struct.be_queue_info** %5, align 8
  %44 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @be_cq_notify(%struct.be_adapter* %42, i32 %45, i32 1, i32 0)
  %47 = call i32 @mdelay(i32 1)
  br label %63

48:                                               ; preds = %17
  %49 = load %struct.be_rx_obj*, %struct.be_rx_obj** %2, align 8
  %50 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %6, align 8
  %51 = call i32 @be_rx_compl_discard(%struct.be_rx_obj* %49, %struct.be_rx_compl_info* %50)
  %52 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %53 = load %struct.be_queue_info*, %struct.be_queue_info** %5, align 8
  %54 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @be_cq_notify(%struct.be_adapter* %52, i32 %55, i32 0, i32 1)
  %57 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %6, align 8
  %58 = getelementptr inbounds %struct.be_rx_compl_info, %struct.be_rx_compl_info* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %48
  br label %64

62:                                               ; preds = %48
  br label %63

63:                                               ; preds = %62, %41
  br label %17

64:                                               ; preds = %61, %35, %26
  %65 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %66 = load %struct.be_queue_info*, %struct.be_queue_info** %5, align 8
  %67 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @be_cq_notify(%struct.be_adapter* %65, i32 %68, i32 0, i32 0)
  %70 = load %struct.be_queue_info*, %struct.be_queue_info** %4, align 8
  %71 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.be_queue_info*, %struct.be_queue_info** %4, align 8
  %74 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %72, %75
  %77 = load %struct.be_queue_info*, %struct.be_queue_info** %4, align 8
  %78 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %77, i32 0, i32 3
  %79 = call i64 @atomic_read(i32* %78)
  %80 = sub nsw i64 %76, %79
  %81 = load %struct.be_queue_info*, %struct.be_queue_info** %4, align 8
  %82 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = srem i64 %80, %83
  store i64 %84, i64* %9, align 8
  br label %85

85:                                               ; preds = %100, %64
  %86 = load %struct.be_queue_info*, %struct.be_queue_info** %4, align 8
  %87 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %86, i32 0, i32 3
  %88 = call i64 @atomic_read(i32* %87)
  %89 = icmp sgt i64 %88, 0
  br i1 %89, label %90, label %105

90:                                               ; preds = %85
  %91 = load %struct.be_rx_obj*, %struct.be_rx_obj** %2, align 8
  %92 = load i64, i64* %9, align 8
  %93 = call %struct.be_rx_page_info* @get_rx_page_info(%struct.be_rx_obj* %91, i64 %92)
  store %struct.be_rx_page_info* %93, %struct.be_rx_page_info** %3, align 8
  %94 = load %struct.be_rx_page_info*, %struct.be_rx_page_info** %3, align 8
  %95 = getelementptr inbounds %struct.be_rx_page_info, %struct.be_rx_page_info* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @put_page(i32 %96)
  %98 = load %struct.be_rx_page_info*, %struct.be_rx_page_info** %3, align 8
  %99 = call i32 @memset(%struct.be_rx_page_info* %98, i32 0, i32 4)
  br label %100

100:                                              ; preds = %90
  %101 = load %struct.be_queue_info*, %struct.be_queue_info** %4, align 8
  %102 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @index_inc(i64* %9, i64 %103)
  br label %85

105:                                              ; preds = %85
  %106 = load %struct.be_queue_info*, %struct.be_queue_info** %4, align 8
  %107 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %106, i32 0, i32 3
  %108 = call i64 @atomic_read(i32* %107)
  %109 = call i32 @BUG_ON(i64 %108)
  %110 = load %struct.be_queue_info*, %struct.be_queue_info** %4, align 8
  %111 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %110, i32 0, i32 0
  store i64 0, i64* %111, align 8
  %112 = load %struct.be_queue_info*, %struct.be_queue_info** %4, align 8
  %113 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %112, i32 0, i32 2
  store i64 0, i64* %113, align 8
  ret void
}

declare dso_local %struct.be_rx_compl_info* @be_rx_compl_get(%struct.be_rx_obj*) #1

declare dso_local i64 @lancer_chip(%struct.be_adapter*) #1

declare dso_local i64 @be_hw_error(%struct.be_adapter*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @be_cq_notify(%struct.be_adapter*, i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @be_rx_compl_discard(%struct.be_rx_obj*, %struct.be_rx_compl_info*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local %struct.be_rx_page_info* @get_rx_page_info(%struct.be_rx_obj*, i64) #1

declare dso_local i32 @put_page(i32) #1

declare dso_local i32 @memset(%struct.be_rx_page_info*, i32, i32) #1

declare dso_local i32 @index_inc(i64*, i64) #1

declare dso_local i32 @BUG_ON(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
