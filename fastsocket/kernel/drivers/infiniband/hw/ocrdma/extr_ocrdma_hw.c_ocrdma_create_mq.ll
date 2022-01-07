; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_create_mq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_create_mq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { %struct.TYPE_11__, %struct.TYPE_13__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { %struct.TYPE_12__, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }

@OCRDMA_MQ_CQ_LEN = common dso_local global i32 0, align 4
@OCRDMA_MQ_LEN = common dso_local global i32 0, align 4
@QTYPE_CQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocrdma_dev*)* @ocrdma_create_mq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocrdma_create_mq(%struct.ocrdma_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ocrdma_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %3, align 8
  %5 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %6 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %7 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %9 = load i32, i32* @OCRDMA_MQ_CQ_LEN, align 4
  %10 = call i32 @ocrdma_alloc_q(%struct.ocrdma_dev* %5, %struct.TYPE_12__* %8, i32 %9, i32 4)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %86

14:                                               ; preds = %1
  %15 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %16 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %17 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %20 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = call i32 @ocrdma_mbx_mq_cq_create(%struct.ocrdma_dev* %15, %struct.TYPE_12__* %18, i32* %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %14
  br label %80

26:                                               ; preds = %14
  %27 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %28 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %27, i32 0, i32 1
  %29 = call i32 @memset(%struct.TYPE_13__* %28, i32 0, i32 8)
  %30 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %31 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 1
  %33 = call i32 @init_waitqueue_head(i32* %32)
  %34 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %35 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = call i32 @mutex_init(i32* %36)
  %38 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %39 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %40 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  %42 = load i32, i32* @OCRDMA_MQ_LEN, align 4
  %43 = call i32 @ocrdma_alloc_q(%struct.ocrdma_dev* %38, %struct.TYPE_12__* %41, i32 %42, i32 4)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %26
  br label %73

47:                                               ; preds = %26
  %48 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %49 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %50 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %53 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = call i32 @ocrdma_mbx_create_mq(%struct.ocrdma_dev* %48, %struct.TYPE_12__* %51, %struct.TYPE_12__* %54)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %47
  br label %67

59:                                               ; preds = %47
  %60 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %61 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %62 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @ocrdma_ring_cq_db(%struct.ocrdma_dev* %60, i32 %65, i32 1, i32 0, i32 0)
  store i32 0, i32* %2, align 4
  br label %88

67:                                               ; preds = %58
  %68 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %69 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %70 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 1
  %72 = call i32 @ocrdma_free_q(%struct.ocrdma_dev* %68, %struct.TYPE_12__* %71)
  br label %73

73:                                               ; preds = %67, %46
  %74 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %75 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %76 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load i32, i32* @QTYPE_CQ, align 4
  %79 = call i32 @ocrdma_mbx_delete_q(%struct.ocrdma_dev* %74, %struct.TYPE_12__* %77, i32 %78)
  br label %80

80:                                               ; preds = %73, %25
  %81 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %82 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %83 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = call i32 @ocrdma_free_q(%struct.ocrdma_dev* %81, %struct.TYPE_12__* %84)
  br label %86

86:                                               ; preds = %80, %13
  %87 = load i32, i32* %4, align 4
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %86, %59
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @ocrdma_alloc_q(%struct.ocrdma_dev*, %struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @ocrdma_mbx_mq_cq_create(%struct.ocrdma_dev*, %struct.TYPE_12__*, i32*) #1

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @ocrdma_mbx_create_mq(%struct.ocrdma_dev*, %struct.TYPE_12__*, %struct.TYPE_12__*) #1

declare dso_local i32 @ocrdma_ring_cq_db(%struct.ocrdma_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @ocrdma_free_q(%struct.ocrdma_dev*, %struct.TYPE_12__*) #1

declare dso_local i32 @ocrdma_mbx_delete_q(%struct.ocrdma_dev*, %struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
