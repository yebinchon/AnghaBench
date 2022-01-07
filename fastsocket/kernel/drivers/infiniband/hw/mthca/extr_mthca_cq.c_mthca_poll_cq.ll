; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_cq.c_mthca_poll_cq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_cq.c_mthca_poll_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32 }
%struct.ib_wc = type { i32 }
%struct.mthca_dev = type { i32 }
%struct.mthca_cq = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__, %struct.mthca_cq_buf }
%struct.TYPE_4__ = type { i64, i32, %struct.mthca_cq_buf }
%struct.TYPE_3__ = type { i32 }
%struct.mthca_cq_buf = type { i32 }
%struct.mthca_qp = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@CQ_RESIZE_READY = common dso_local global i64 0, align 8
@CQ_RESIZE_SWAPPED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mthca_poll_cq(%struct.ib_cq* %0, i32 %1, %struct.ib_wc* %2) #0 {
  %4 = alloca %struct.ib_cq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_wc*, align 8
  %7 = alloca %struct.mthca_dev*, align 8
  %8 = alloca %struct.mthca_cq*, align 8
  %9 = alloca %struct.mthca_qp*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.mthca_cq_buf, align 4
  %15 = alloca i32, align 4
  store %struct.ib_cq* %0, %struct.ib_cq** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ib_wc* %2, %struct.ib_wc** %6, align 8
  %16 = load %struct.ib_cq*, %struct.ib_cq** %4, align 8
  %17 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.mthca_dev* @to_mdev(i32 %18)
  store %struct.mthca_dev* %19, %struct.mthca_dev** %7, align 8
  %20 = load %struct.ib_cq*, %struct.ib_cq** %4, align 8
  %21 = call %struct.mthca_cq* @to_mcq(%struct.ib_cq* %20)
  store %struct.mthca_cq* %21, %struct.mthca_cq** %8, align 8
  store %struct.mthca_qp* null, %struct.mthca_qp** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %22 = load %struct.mthca_cq*, %struct.mthca_cq** %8, align 8
  %23 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %22, i32 0, i32 1
  %24 = load i64, i64* %10, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  store i32 0, i32* %13, align 4
  br label %26

26:                                               ; preds = %107, %3
  br label %27

27:                                               ; preds = %42, %26
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %27
  %32 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %33 = load %struct.mthca_cq*, %struct.mthca_cq** %8, align 8
  %34 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %35 = load i32, i32* %13, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %34, i64 %36
  %38 = call i32 @mthca_poll_one(%struct.mthca_dev* %32, %struct.mthca_cq* %33, %struct.mthca_qp** %9, i32* %12, %struct.ib_wc* %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  br label %45

42:                                               ; preds = %31
  %43 = load i32, i32* %13, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %13, align 4
  br label %27

45:                                               ; preds = %41, %27
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = call i32 (...) @wmb()
  %50 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %51 = load %struct.mthca_cq*, %struct.mthca_cq** %8, align 8
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @update_cons_index(%struct.mthca_dev* %50, %struct.mthca_cq* %51, i32 %52)
  br label %54

54:                                               ; preds = %48, %45
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @EAGAIN, align 4
  %57 = sub nsw i32 0, %56
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %59, label %72

59:                                               ; preds = %54
  %60 = load %struct.mthca_cq*, %struct.mthca_cq** %8, align 8
  %61 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %60, i32 0, i32 2
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = icmp ne %struct.TYPE_4__* %62, null
  br i1 %63, label %64, label %72

64:                                               ; preds = %59
  %65 = load %struct.mthca_cq*, %struct.mthca_cq** %8, align 8
  %66 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %65, i32 0, i32 2
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @CQ_RESIZE_READY, align 8
  %71 = icmp eq i64 %69, %70
  br label %72

72:                                               ; preds = %64, %59, %54
  %73 = phi i1 [ false, %59 ], [ false, %54 ], [ %71, %64 ]
  %74 = zext i1 %73 to i32
  %75 = call i64 @unlikely(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %149

77:                                               ; preds = %72
  %78 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %79 = call i32 @mthca_is_memfree(%struct.mthca_dev* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %90, label %81

81:                                               ; preds = %77
  %82 = load %struct.mthca_cq*, %struct.mthca_cq** %8, align 8
  %83 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.mthca_cq*, %struct.mthca_cq** %8, align 8
  %87 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = and i32 %88, %85
  store i32 %89, i32* %87, align 8
  br label %90

90:                                               ; preds = %81, %77
  %91 = load %struct.mthca_cq*, %struct.mthca_cq** %8, align 8
  %92 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %91, i32 0, i32 2
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 2
  %95 = load %struct.mthca_cq*, %struct.mthca_cq** %8, align 8
  %96 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.mthca_cq*, %struct.mthca_cq** %8, align 8
  %99 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %98, i32 0, i32 2
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = and i32 %97, %102
  %104 = call i32 @get_cqe_from_buf(%struct.mthca_cq_buf* %94, i32 %103)
  %105 = call i64 @cqe_sw(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %148

107:                                              ; preds = %90
  %108 = load %struct.mthca_cq*, %struct.mthca_cq** %8, align 8
  %109 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %108, i32 0, i32 4
  %110 = bitcast %struct.mthca_cq_buf* %14 to i8*
  %111 = bitcast %struct.mthca_cq_buf* %109 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %110, i8* align 4 %111, i64 4, i1 false)
  %112 = load %struct.mthca_cq*, %struct.mthca_cq** %8, align 8
  %113 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  store i32 %115, i32* %15, align 4
  %116 = load %struct.mthca_cq*, %struct.mthca_cq** %8, align 8
  %117 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %116, i32 0, i32 4
  %118 = load %struct.mthca_cq*, %struct.mthca_cq** %8, align 8
  %119 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %118, i32 0, i32 2
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 2
  %122 = bitcast %struct.mthca_cq_buf* %117 to i8*
  %123 = bitcast %struct.mthca_cq_buf* %121 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %122, i8* align 4 %123, i64 4, i1 false)
  %124 = load %struct.mthca_cq*, %struct.mthca_cq** %8, align 8
  %125 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %124, i32 0, i32 2
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.mthca_cq*, %struct.mthca_cq** %8, align 8
  %130 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  store i32 %128, i32* %131, align 8
  %132 = load %struct.mthca_cq*, %struct.mthca_cq** %8, align 8
  %133 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %132, i32 0, i32 2
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 2
  %136 = bitcast %struct.mthca_cq_buf* %135 to i8*
  %137 = bitcast %struct.mthca_cq_buf* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %136, i8* align 4 %137, i64 4, i1 false)
  %138 = load i32, i32* %15, align 4
  %139 = load %struct.mthca_cq*, %struct.mthca_cq** %8, align 8
  %140 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %139, i32 0, i32 2
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 1
  store i32 %138, i32* %142, align 8
  %143 = load i64, i64* @CQ_RESIZE_SWAPPED, align 8
  %144 = load %struct.mthca_cq*, %struct.mthca_cq** %8, align 8
  %145 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %144, i32 0, i32 2
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  store i64 %143, i64* %147, align 8
  br label %26

148:                                              ; preds = %90
  br label %149

149:                                              ; preds = %148, %72
  %150 = load %struct.mthca_cq*, %struct.mthca_cq** %8, align 8
  %151 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %150, i32 0, i32 1
  %152 = load i64, i64* %10, align 8
  %153 = call i32 @spin_unlock_irqrestore(i32* %151, i64 %152)
  %154 = load i32, i32* %11, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %161, label %156

156:                                              ; preds = %149
  %157 = load i32, i32* %11, align 4
  %158 = load i32, i32* @EAGAIN, align 4
  %159 = sub nsw i32 0, %158
  %160 = icmp eq i32 %157, %159
  br i1 %160, label %161, label %163

161:                                              ; preds = %156, %149
  %162 = load i32, i32* %13, align 4
  br label %165

163:                                              ; preds = %156
  %164 = load i32, i32* %11, align 4
  br label %165

165:                                              ; preds = %163, %161
  %166 = phi i32 [ %162, %161 ], [ %164, %163 ]
  ret i32 %166
}

declare dso_local %struct.mthca_dev* @to_mdev(i32) #1

declare dso_local %struct.mthca_cq* @to_mcq(%struct.ib_cq*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mthca_poll_one(%struct.mthca_dev*, %struct.mthca_cq*, %struct.mthca_qp**, i32*, %struct.ib_wc*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @update_cons_index(%struct.mthca_dev*, %struct.mthca_cq*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mthca_is_memfree(%struct.mthca_dev*) #1

declare dso_local i64 @cqe_sw(i32) #1

declare dso_local i32 @get_cqe_from_buf(%struct.mthca_cq_buf*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
