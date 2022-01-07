; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_verbs.c_qib_post_receive.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_verbs.c_qib_post_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.ib_recv_wr = type { i32, i32*, i32, %struct.ib_recv_wr* }
%struct.qib_qp = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32, %struct.qib_rwq* }
%struct.qib_rwq = type { i64, i64 }
%struct.qib_rwqe = type { i32, i32*, i32 }

@ib_qib_state_ops = common dso_local global i32* null, align 8
@QIB_POST_RECV_OK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_qp*, %struct.ib_recv_wr*, %struct.ib_recv_wr**)* @qib_post_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_post_receive(%struct.ib_qp* %0, %struct.ib_recv_wr* %1, %struct.ib_recv_wr** %2) #0 {
  %4 = alloca %struct.ib_qp*, align 8
  %5 = alloca %struct.ib_recv_wr*, align 8
  %6 = alloca %struct.ib_recv_wr**, align 8
  %7 = alloca %struct.qib_qp*, align 8
  %8 = alloca %struct.qib_rwq*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.qib_rwqe*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %4, align 8
  store %struct.ib_recv_wr* %1, %struct.ib_recv_wr** %5, align 8
  store %struct.ib_recv_wr** %2, %struct.ib_recv_wr*** %6, align 8
  %14 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %15 = call %struct.qib_qp* @to_iqp(%struct.ib_qp* %14)
  store %struct.qib_qp* %15, %struct.qib_qp** %7, align 8
  %16 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %17 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 3
  %19 = load %struct.qib_rwq*, %struct.qib_rwq** %18, align 8
  store %struct.qib_rwq* %19, %struct.qib_rwq** %8, align 8
  %20 = load i32*, i32** @ib_qib_state_ops, align 8
  %21 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %22 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @QIB_POST_RECV_OK, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load %struct.qib_rwq*, %struct.qib_rwq** %8, align 8
  %31 = icmp ne %struct.qib_rwq* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %29, %3
  %33 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %34 = load %struct.ib_recv_wr**, %struct.ib_recv_wr*** %6, align 8
  store %struct.ib_recv_wr* %33, %struct.ib_recv_wr** %34, align 8
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %10, align 4
  br label %143

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %138, %37
  %39 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %40 = icmp ne %struct.ib_recv_wr* %39, null
  br i1 %40, label %41, label %142

41:                                               ; preds = %38
  %42 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %43 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %46 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ugt i32 %44, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %41
  %51 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %52 = load %struct.ib_recv_wr**, %struct.ib_recv_wr*** %6, align 8
  store %struct.ib_recv_wr* %51, %struct.ib_recv_wr** %52, align 8
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %10, align 4
  br label %143

55:                                               ; preds = %41
  %56 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %57 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  %59 = load i64, i64* %9, align 8
  %60 = call i32 @spin_lock_irqsave(i32* %58, i64 %59)
  %61 = load %struct.qib_rwq*, %struct.qib_rwq** %8, align 8
  %62 = getelementptr inbounds %struct.qib_rwq, %struct.qib_rwq* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %12, align 8
  %65 = load i64, i64* %12, align 8
  %66 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %67 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp sge i64 %65, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %55
  store i64 0, i64* %12, align 8
  br label %72

72:                                               ; preds = %71, %55
  %73 = load i64, i64* %12, align 8
  %74 = load %struct.qib_rwq*, %struct.qib_rwq** %8, align 8
  %75 = getelementptr inbounds %struct.qib_rwq, %struct.qib_rwq* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %73, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %72
  %79 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %80 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  %82 = load i64, i64* %9, align 8
  %83 = call i32 @spin_unlock_irqrestore(i32* %81, i64 %82)
  %84 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %85 = load %struct.ib_recv_wr**, %struct.ib_recv_wr*** %6, align 8
  store %struct.ib_recv_wr* %84, %struct.ib_recv_wr** %85, align 8
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %10, align 4
  br label %143

88:                                               ; preds = %72
  %89 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %90 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %89, i32 0, i32 1
  %91 = load %struct.qib_rwq*, %struct.qib_rwq** %8, align 8
  %92 = getelementptr inbounds %struct.qib_rwq, %struct.qib_rwq* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call %struct.qib_rwqe* @get_rwqe_ptr(%struct.TYPE_2__* %90, i64 %93)
  store %struct.qib_rwqe* %94, %struct.qib_rwqe** %11, align 8
  %95 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %96 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.qib_rwqe*, %struct.qib_rwqe** %11, align 8
  %99 = getelementptr inbounds %struct.qib_rwqe, %struct.qib_rwqe* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 8
  %100 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %101 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.qib_rwqe*, %struct.qib_rwqe** %11, align 8
  %104 = getelementptr inbounds %struct.qib_rwqe, %struct.qib_rwqe* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  store i32 0, i32* %13, align 4
  br label %105

105:                                              ; preds = %125, %88
  %106 = load i32, i32* %13, align 4
  %107 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %108 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp slt i32 %106, %109
  br i1 %110, label %111, label %128

111:                                              ; preds = %105
  %112 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %113 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %13, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.qib_rwqe*, %struct.qib_rwqe** %11, align 8
  %120 = getelementptr inbounds %struct.qib_rwqe, %struct.qib_rwqe* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %13, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  store i32 %118, i32* %124, align 4
  br label %125

125:                                              ; preds = %111
  %126 = load i32, i32* %13, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %13, align 4
  br label %105

128:                                              ; preds = %105
  %129 = call i32 (...) @smp_wmb()
  %130 = load i64, i64* %12, align 8
  %131 = load %struct.qib_rwq*, %struct.qib_rwq** %8, align 8
  %132 = getelementptr inbounds %struct.qib_rwq, %struct.qib_rwq* %131, i32 0, i32 0
  store i64 %130, i64* %132, align 8
  %133 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %134 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 2
  %136 = load i64, i64* %9, align 8
  %137 = call i32 @spin_unlock_irqrestore(i32* %135, i64 %136)
  br label %138

138:                                              ; preds = %128
  %139 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %140 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %139, i32 0, i32 3
  %141 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %140, align 8
  store %struct.ib_recv_wr* %141, %struct.ib_recv_wr** %5, align 8
  br label %38

142:                                              ; preds = %38
  store i32 0, i32* %10, align 4
  br label %143

143:                                              ; preds = %142, %78, %50, %32
  %144 = load i32, i32* %10, align 4
  ret i32 %144
}

declare dso_local %struct.qib_qp* @to_iqp(%struct.ib_qp*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.qib_rwqe* @get_rwqe_ptr(%struct.TYPE_2__*, i64) #1

declare dso_local i32 @smp_wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
