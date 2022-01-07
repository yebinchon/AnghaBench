; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_srq.c_ipath_post_srq_receive.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_srq.c_ipath_post_srq_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_srq = type { i32 }
%struct.ib_recv_wr = type { i32, i32*, i32, %struct.ib_recv_wr* }
%struct.ipath_srq = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32, %struct.ipath_rwq* }
%struct.ipath_rwq = type { i64, i64 }
%struct.ipath_rwqe = type { i32, i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipath_post_srq_receive(%struct.ib_srq* %0, %struct.ib_recv_wr* %1, %struct.ib_recv_wr** %2) #0 {
  %4 = alloca %struct.ib_srq*, align 8
  %5 = alloca %struct.ib_recv_wr*, align 8
  %6 = alloca %struct.ib_recv_wr**, align 8
  %7 = alloca %struct.ipath_srq*, align 8
  %8 = alloca %struct.ipath_rwq*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ipath_rwqe*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.ib_srq* %0, %struct.ib_srq** %4, align 8
  store %struct.ib_recv_wr* %1, %struct.ib_recv_wr** %5, align 8
  store %struct.ib_recv_wr** %2, %struct.ib_recv_wr*** %6, align 8
  %14 = load %struct.ib_srq*, %struct.ib_srq** %4, align 8
  %15 = call %struct.ipath_srq* @to_isrq(%struct.ib_srq* %14)
  store %struct.ipath_srq* %15, %struct.ipath_srq** %7, align 8
  br label %16

16:                                               ; preds = %120, %3
  %17 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %18 = icmp ne %struct.ib_recv_wr* %17, null
  br i1 %18, label %19, label %124

19:                                               ; preds = %16
  %20 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %21 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.ipath_srq*, %struct.ipath_srq** %7, align 8
  %24 = getelementptr inbounds %struct.ipath_srq, %struct.ipath_srq* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ugt i32 %22, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %19
  %29 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %30 = load %struct.ib_recv_wr**, %struct.ib_recv_wr*** %6, align 8
  store %struct.ib_recv_wr* %29, %struct.ib_recv_wr** %30, align 8
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %10, align 4
  br label %125

33:                                               ; preds = %19
  %34 = load %struct.ipath_srq*, %struct.ipath_srq** %7, align 8
  %35 = getelementptr inbounds %struct.ipath_srq, %struct.ipath_srq* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = load i64, i64* %9, align 8
  %38 = call i32 @spin_lock_irqsave(i32* %36, i64 %37)
  %39 = load %struct.ipath_srq*, %struct.ipath_srq** %7, align 8
  %40 = getelementptr inbounds %struct.ipath_srq, %struct.ipath_srq* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 3
  %42 = load %struct.ipath_rwq*, %struct.ipath_rwq** %41, align 8
  store %struct.ipath_rwq* %42, %struct.ipath_rwq** %8, align 8
  %43 = load %struct.ipath_rwq*, %struct.ipath_rwq** %8, align 8
  %44 = getelementptr inbounds %struct.ipath_rwq, %struct.ipath_rwq* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %12, align 8
  %47 = load i64, i64* %12, align 8
  %48 = load %struct.ipath_srq*, %struct.ipath_srq** %7, align 8
  %49 = getelementptr inbounds %struct.ipath_srq, %struct.ipath_srq* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp sge i64 %47, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %33
  store i64 0, i64* %12, align 8
  br label %54

54:                                               ; preds = %53, %33
  %55 = load i64, i64* %12, align 8
  %56 = load %struct.ipath_rwq*, %struct.ipath_rwq** %8, align 8
  %57 = getelementptr inbounds %struct.ipath_rwq, %struct.ipath_rwq* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %55, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %54
  %61 = load %struct.ipath_srq*, %struct.ipath_srq** %7, align 8
  %62 = getelementptr inbounds %struct.ipath_srq, %struct.ipath_srq* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  %64 = load i64, i64* %9, align 8
  %65 = call i32 @spin_unlock_irqrestore(i32* %63, i64 %64)
  %66 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %67 = load %struct.ib_recv_wr**, %struct.ib_recv_wr*** %6, align 8
  store %struct.ib_recv_wr* %66, %struct.ib_recv_wr** %67, align 8
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %10, align 4
  br label %125

70:                                               ; preds = %54
  %71 = load %struct.ipath_srq*, %struct.ipath_srq** %7, align 8
  %72 = getelementptr inbounds %struct.ipath_srq, %struct.ipath_srq* %71, i32 0, i32 0
  %73 = load %struct.ipath_rwq*, %struct.ipath_rwq** %8, align 8
  %74 = getelementptr inbounds %struct.ipath_rwq, %struct.ipath_rwq* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call %struct.ipath_rwqe* @get_rwqe_ptr(%struct.TYPE_2__* %72, i64 %75)
  store %struct.ipath_rwqe* %76, %struct.ipath_rwqe** %11, align 8
  %77 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %78 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.ipath_rwqe*, %struct.ipath_rwqe** %11, align 8
  %81 = getelementptr inbounds %struct.ipath_rwqe, %struct.ipath_rwqe* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  %82 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %83 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.ipath_rwqe*, %struct.ipath_rwqe** %11, align 8
  %86 = getelementptr inbounds %struct.ipath_rwqe, %struct.ipath_rwqe* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  store i32 0, i32* %13, align 4
  br label %87

87:                                               ; preds = %107, %70
  %88 = load i32, i32* %13, align 4
  %89 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %90 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp slt i32 %88, %91
  br i1 %92, label %93, label %110

93:                                               ; preds = %87
  %94 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %95 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %13, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.ipath_rwqe*, %struct.ipath_rwqe** %11, align 8
  %102 = getelementptr inbounds %struct.ipath_rwqe, %struct.ipath_rwqe* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %13, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  store i32 %100, i32* %106, align 4
  br label %107

107:                                              ; preds = %93
  %108 = load i32, i32* %13, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %13, align 4
  br label %87

110:                                              ; preds = %87
  %111 = call i32 (...) @smp_wmb()
  %112 = load i64, i64* %12, align 8
  %113 = load %struct.ipath_rwq*, %struct.ipath_rwq** %8, align 8
  %114 = getelementptr inbounds %struct.ipath_rwq, %struct.ipath_rwq* %113, i32 0, i32 0
  store i64 %112, i64* %114, align 8
  %115 = load %struct.ipath_srq*, %struct.ipath_srq** %7, align 8
  %116 = getelementptr inbounds %struct.ipath_srq, %struct.ipath_srq* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 2
  %118 = load i64, i64* %9, align 8
  %119 = call i32 @spin_unlock_irqrestore(i32* %117, i64 %118)
  br label %120

120:                                              ; preds = %110
  %121 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %122 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %121, i32 0, i32 3
  %123 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %122, align 8
  store %struct.ib_recv_wr* %123, %struct.ib_recv_wr** %5, align 8
  br label %16

124:                                              ; preds = %16
  store i32 0, i32* %10, align 4
  br label %125

125:                                              ; preds = %124, %60, %28
  %126 = load i32, i32* %10, align 4
  ret i32 %126
}

declare dso_local %struct.ipath_srq* @to_isrq(%struct.ib_srq*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.ipath_rwqe* @get_rwqe_ptr(%struct.TYPE_2__*, i64) #1

declare dso_local i32 @smp_wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
