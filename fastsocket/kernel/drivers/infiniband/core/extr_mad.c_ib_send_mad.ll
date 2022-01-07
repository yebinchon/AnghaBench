; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_mad.c_ib_send_mad.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_mad.c_ib_send_mad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_send_wr_private = type { i8*, i8*, %struct.TYPE_8__, %struct.TYPE_10__, %struct.TYPE_7__, %struct.ib_sge*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i64, i32, %struct.list_head }
%struct.list_head = type { i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_7__ = type { i32, %struct.ib_mad_agent* }
%struct.ib_mad_agent = type { i32, i32 }
%struct.ib_sge = type { i32, i8* }
%struct.TYPE_6__ = type { %struct.ib_mad_qp_info* }
%struct.ib_mad_qp_info = type { %struct.TYPE_9__, %struct.list_head }
%struct.ib_send_wr = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_send_mad(%struct.ib_mad_send_wr_private* %0) #0 {
  %2 = alloca %struct.ib_mad_send_wr_private*, align 8
  %3 = alloca %struct.ib_mad_qp_info*, align 8
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca %struct.ib_send_wr*, align 8
  %6 = alloca %struct.ib_mad_agent*, align 8
  %7 = alloca %struct.ib_sge*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.ib_mad_send_wr_private* %0, %struct.ib_mad_send_wr_private** %2, align 8
  %10 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %2, align 8
  %11 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %10, i32 0, i32 6
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %13, align 8
  store %struct.ib_mad_qp_info* %14, %struct.ib_mad_qp_info** %3, align 8
  %15 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %2, align 8
  %16 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %15, i32 0, i32 2
  %17 = ptrtoint %struct.TYPE_8__* %16 to i64
  %18 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %2, align 8
  %19 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  store i64 %17, i64* %20, align 8
  %21 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %3, align 8
  %22 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %21, i32 0, i32 0
  %23 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %2, align 8
  %24 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  store %struct.TYPE_9__* %22, %struct.TYPE_9__** %25, align 8
  %26 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %2, align 8
  %27 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %28, align 8
  store %struct.ib_mad_agent* %29, %struct.ib_mad_agent** %6, align 8
  %30 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %2, align 8
  %31 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %30, i32 0, i32 5
  %32 = load %struct.ib_sge*, %struct.ib_sge** %31, align 8
  store %struct.ib_sge* %32, %struct.ib_sge** %7, align 8
  %33 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %6, align 8
  %34 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %2, align 8
  %37 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.ib_sge*, %struct.ib_sge** %7, align 8
  %41 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %40, i64 0
  %42 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @DMA_TO_DEVICE, align 4
  %45 = call i8* @ib_dma_map_single(i32 %35, i32 %39, i32 %43, i32 %44)
  %46 = load %struct.ib_sge*, %struct.ib_sge** %7, align 8
  %47 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %46, i64 0
  %48 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %47, i32 0, i32 1
  store i8* %45, i8** %48, align 8
  %49 = load %struct.ib_sge*, %struct.ib_sge** %7, align 8
  %50 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %49, i64 0
  %51 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %2, align 8
  %54 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  %55 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %6, align 8
  %56 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %2, align 8
  %59 = call i32 @ib_get_payload(%struct.ib_mad_send_wr_private* %58)
  %60 = load %struct.ib_sge*, %struct.ib_sge** %7, align 8
  %61 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %60, i64 1
  %62 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @DMA_TO_DEVICE, align 4
  %65 = call i8* @ib_dma_map_single(i32 %57, i32 %59, i32 %63, i32 %64)
  %66 = load %struct.ib_sge*, %struct.ib_sge** %7, align 8
  %67 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %66, i64 1
  %68 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %67, i32 0, i32 1
  store i8* %65, i8** %68, align 8
  %69 = load %struct.ib_sge*, %struct.ib_sge** %7, align 8
  %70 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %69, i64 1
  %71 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %2, align 8
  %74 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %73, i32 0, i32 0
  store i8* %72, i8** %74, align 8
  %75 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %3, align 8
  %76 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 2
  %78 = load i64, i64* %8, align 8
  %79 = call i32 @spin_lock_irqsave(i32* %77, i64 %78)
  %80 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %3, align 8
  %81 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %3, align 8
  %85 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp slt i64 %83, %87
  br i1 %88, label %89, label %99

89:                                               ; preds = %1
  %90 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %6, align 8
  %91 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %2, align 8
  %94 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %93, i32 0, i32 3
  %95 = call i32 @ib_post_send(i32 %92, %struct.TYPE_10__* %94, %struct.ib_send_wr** %5)
  store i32 %95, i32* %9, align 4
  %96 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %3, align 8
  %97 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 3
  store %struct.list_head* %98, %struct.list_head** %4, align 8
  br label %102

99:                                               ; preds = %1
  store i32 0, i32* %9, align 4
  %100 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %3, align 8
  %101 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %100, i32 0, i32 1
  store %struct.list_head* %101, %struct.list_head** %4, align 8
  br label %102

102:                                              ; preds = %99, %89
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %116, label %105

105:                                              ; preds = %102
  %106 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %3, align 8
  %107 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %109, 1
  store i64 %110, i64* %108, align 8
  %111 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %2, align 8
  %112 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load %struct.list_head*, %struct.list_head** %4, align 8
  %115 = call i32 @list_add_tail(i32* %113, %struct.list_head* %114)
  br label %116

116:                                              ; preds = %105, %102
  %117 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %3, align 8
  %118 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 2
  %120 = load i64, i64* %8, align 8
  %121 = call i32 @spin_unlock_irqrestore(i32* %119, i64 %120)
  %122 = load i32, i32* %9, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %149

124:                                              ; preds = %116
  %125 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %6, align 8
  %126 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %2, align 8
  %129 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %128, i32 0, i32 1
  %130 = load i8*, i8** %129, align 8
  %131 = load %struct.ib_sge*, %struct.ib_sge** %7, align 8
  %132 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %131, i64 0
  %133 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @DMA_TO_DEVICE, align 4
  %136 = call i32 @ib_dma_unmap_single(i32 %127, i8* %130, i32 %134, i32 %135)
  %137 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %6, align 8
  %138 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %2, align 8
  %141 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %140, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = load %struct.ib_sge*, %struct.ib_sge** %7, align 8
  %144 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %143, i64 1
  %145 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @DMA_TO_DEVICE, align 4
  %148 = call i32 @ib_dma_unmap_single(i32 %139, i8* %142, i32 %146, i32 %147)
  br label %149

149:                                              ; preds = %124, %116
  %150 = load i32, i32* %9, align 4
  ret i32 %150
}

declare dso_local i8* @ib_dma_map_single(i32, i32, i32, i32) #1

declare dso_local i32 @ib_get_payload(%struct.ib_mad_send_wr_private*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ib_post_send(i32, %struct.TYPE_10__*, %struct.ib_send_wr**) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ib_dma_unmap_single(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
