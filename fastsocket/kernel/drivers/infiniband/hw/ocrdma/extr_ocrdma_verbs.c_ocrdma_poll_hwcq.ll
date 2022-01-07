; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_poll_hwcq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_poll_hwcq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_cq = type { i32, i32, i32, i32, i32, %struct.ocrdma_cqe*, %struct.ocrdma_dev* }
%struct.ocrdma_cqe = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.ocrdma_dev = type { %struct.ocrdma_qp** }
%struct.ocrdma_qp = type { i32 }
%struct.ib_wc = type { i32 }

@OCRDMA_CQE_QPN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocrdma_cq*, i32, %struct.ib_wc*)* @ocrdma_poll_hwcq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocrdma_poll_hwcq(%struct.ocrdma_cq* %0, i32 %1, %struct.ib_wc* %2) #0 {
  %4 = alloca %struct.ocrdma_cq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_wc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ocrdma_qp*, align 8
  %12 = alloca %struct.ocrdma_dev*, align 8
  %13 = alloca %struct.ocrdma_cqe*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ocrdma_cq* %0, %struct.ocrdma_cq** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ib_wc* %2, %struct.ib_wc** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store %struct.ocrdma_qp* null, %struct.ocrdma_qp** %11, align 8
  %17 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %4, align 8
  %18 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %17, i32 0, i32 6
  %19 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %18, align 8
  store %struct.ocrdma_dev* %19, %struct.ocrdma_dev** %12, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %20 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %4, align 8
  %21 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %14, align 4
  br label %23

23:                                               ; preds = %109, %3
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %110

26:                                               ; preds = %23
  %27 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %4, align 8
  %28 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %27, i32 0, i32 5
  %29 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %28, align 8
  %30 = load i32, i32* %14, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.ocrdma_cqe, %struct.ocrdma_cqe* %29, i64 %31
  store %struct.ocrdma_cqe* %32, %struct.ocrdma_cqe** %13, align 8
  %33 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %4, align 8
  %34 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %13, align 8
  %35 = call i32 @is_cqe_valid(%struct.ocrdma_cq* %33, %struct.ocrdma_cqe* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %26
  br label %110

38:                                               ; preds = %26
  %39 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %13, align 8
  %40 = getelementptr inbounds %struct.ocrdma_cqe, %struct.ocrdma_cqe* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @le32_to_cpu(i64 %42)
  %44 = load i32, i32* @OCRDMA_CQE_QPN_MASK, align 4
  %45 = and i32 %43, %44
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  br label %86

49:                                               ; preds = %38
  %50 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %12, align 8
  %51 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %50, i32 0, i32 0
  %52 = load %struct.ocrdma_qp**, %struct.ocrdma_qp*** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.ocrdma_qp*, %struct.ocrdma_qp** %52, i64 %54
  %56 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %55, align 8
  store %struct.ocrdma_qp* %56, %struct.ocrdma_qp** %11, align 8
  %57 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %11, align 8
  %58 = icmp eq %struct.ocrdma_qp* %57, null
  %59 = zext i1 %58 to i32
  %60 = call i32 @BUG_ON(i32 %59)
  %61 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %13, align 8
  %62 = call i64 @is_cqe_for_sq(%struct.ocrdma_cqe* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %49
  %65 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %11, align 8
  %66 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %13, align 8
  %67 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %68 = call i32 @ocrdma_poll_scqe(%struct.ocrdma_qp* %65, %struct.ocrdma_cqe* %66, %struct.ib_wc* %67, i32* %15, i32* %16)
  store i32 %68, i32* %9, align 4
  br label %74

69:                                               ; preds = %49
  %70 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %11, align 8
  %71 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %13, align 8
  %72 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %73 = call i32 @ocrdma_poll_rcqe(%struct.ocrdma_qp* %70, %struct.ocrdma_cqe* %71, %struct.ib_wc* %72, i32* %15, i32* %16)
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %69, %64
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  br label %99

78:                                               ; preds = %74
  %79 = load i32, i32* %16, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  br label %111

82:                                               ; preds = %78
  %83 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %13, align 8
  %84 = getelementptr inbounds %struct.ocrdma_cqe, %struct.ocrdma_cqe* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  store i64 0, i64* %85, align 8
  br label %86

86:                                               ; preds = %82, %48
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %14, align 4
  %90 = add nsw i32 %89, 1
  %91 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %4, align 8
  %92 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = srem i32 %90, %93
  store i32 %94, i32* %14, align 4
  %95 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %4, align 8
  %96 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %13, align 8
  %97 = load i32, i32* %14, align 4
  %98 = call i32 @ocrdma_change_cq_phase(%struct.ocrdma_cq* %95, %struct.ocrdma_cqe* %96, i32 %97)
  br label %99

99:                                               ; preds = %86, %77
  %100 = load i32, i32* %15, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %99
  %103 = load i32, i32* %5, align 4
  %104 = sub nsw i32 %103, 1
  store i32 %104, i32* %5, align 4
  %105 = load i32, i32* %8, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %8, align 4
  %107 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %108 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %107, i64 1
  store %struct.ib_wc* %108, %struct.ib_wc** %6, align 8
  store i32 0, i32* %15, align 4
  br label %109

109:                                              ; preds = %102, %99
  br label %23

110:                                              ; preds = %37, %23
  br label %111

111:                                              ; preds = %110, %81
  %112 = load i32, i32* %14, align 4
  %113 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %4, align 8
  %114 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  %115 = load i32, i32* %10, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %123, label %117

117:                                              ; preds = %111
  %118 = load i32, i32* %9, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %117
  %121 = load i32, i32* %16, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %136

123:                                              ; preds = %120, %117, %111
  %124 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %12, align 8
  %125 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %4, align 8
  %126 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %4, align 8
  %129 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %4, align 8
  %132 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* %10, align 4
  %135 = call i32 @ocrdma_ring_cq_db(%struct.ocrdma_dev* %124, i32 %127, i32 %130, i32 %133, i32 %134)
  br label %136

136:                                              ; preds = %123, %120
  %137 = load i32, i32* %8, align 4
  ret i32 %137
}

declare dso_local i32 @is_cqe_valid(%struct.ocrdma_cq*, %struct.ocrdma_cqe*) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @is_cqe_for_sq(%struct.ocrdma_cqe*) #1

declare dso_local i32 @ocrdma_poll_scqe(%struct.ocrdma_qp*, %struct.ocrdma_cqe*, %struct.ib_wc*, i32*, i32*) #1

declare dso_local i32 @ocrdma_poll_rcqe(%struct.ocrdma_qp*, %struct.ocrdma_cqe*, %struct.ib_wc*, i32*, i32*) #1

declare dso_local i32 @ocrdma_change_cq_phase(%struct.ocrdma_cq*, %struct.ocrdma_cqe*, i32) #1

declare dso_local i32 @ocrdma_ring_cq_db(%struct.ocrdma_dev*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
