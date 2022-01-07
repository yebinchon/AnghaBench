; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_qp.c_ipath_error_qp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_qp.c_ipath_error_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_qp = type { i64, i64, i64, %struct.TYPE_4__, %struct.TYPE_6__, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i64, i32, i32 }
%struct.TYPE_6__ = type { i64, i32, %struct.ipath_rwq* }
%struct.ipath_rwq = type { i64, i64 }
%struct.ipath_ibdev = type { i32 }
%struct.ib_wc = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }

@IB_QPS_ERR = common dso_local global i64 0, align 8
@IB_WC_RECV = common dso_local global i32 0, align 4
@IPATH_R_WRID_VALID = common dso_local global i32 0, align 4
@IB_WC_WR_FLUSH_ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipath_error_qp(%struct.ipath_qp* %0, i32 %1) #0 {
  %3 = alloca %struct.ipath_qp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipath_ibdev*, align 8
  %6 = alloca %struct.ib_wc, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ipath_rwq*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.ipath_qp* %0, %struct.ipath_qp** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %12 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.ipath_ibdev* @to_idev(i32 %14)
  store %struct.ipath_ibdev* %15, %struct.ipath_ibdev** %5, align 8
  store i32 0, i32* %7, align 4
  %16 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %17 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @IB_QPS_ERR, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %168

22:                                               ; preds = %2
  %23 = load i64, i64* @IB_QPS_ERR, align 8
  %24 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %25 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %5, align 8
  %27 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %26, i32 0, i32 0
  %28 = call i32 @spin_lock(i32* %27)
  %29 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %30 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %29, i32 0, i32 8
  %31 = call i32 @list_empty(i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %22
  %34 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %35 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %34, i32 0, i32 8
  %36 = call i32 @list_del_init(i32* %35)
  br label %37

37:                                               ; preds = %33, %22
  %38 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %39 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %38, i32 0, i32 7
  %40 = call i32 @list_empty(i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %37
  %43 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %44 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %43, i32 0, i32 7
  %45 = call i32 @list_del_init(i32* %44)
  br label %46

46:                                               ; preds = %42, %37
  %47 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %5, align 8
  %48 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %47, i32 0, i32 0
  %49 = call i32 @spin_unlock(i32* %48)
  %50 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %51 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %54 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %52, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %46
  %58 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %59 = call i32 @ipath_schedule_send(%struct.ipath_qp* %58)
  br label %60

60:                                               ; preds = %57, %46
  %61 = call i32 @memset(%struct.ib_wc* %6, i32 0, i32 24)
  %62 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %63 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %6, i32 0, i32 3
  store %struct.TYPE_4__* %63, %struct.TYPE_4__** %64, align 8
  %65 = load i32, i32* @IB_WC_RECV, align 4
  %66 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %6, i32 0, i32 2
  store i32 %65, i32* %66, align 8
  %67 = load i32, i32* @IPATH_R_WRID_VALID, align 4
  %68 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %69 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %68, i32 0, i32 6
  %70 = call i64 @test_and_clear_bit(i32 %67, i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %60
  %73 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %74 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 8
  %76 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %6, i32 0, i32 1
  store i32 %75, i32* %76, align 4
  %77 = load i32, i32* %4, align 4
  %78 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %6, i32 0, i32 0
  store i32 %77, i32* %78, align 8
  %79 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %80 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @to_icq(i32 %82)
  %84 = call i32 @ipath_cq_enter(i32 %83, %struct.ib_wc* %6, i32 1)
  br label %85

85:                                               ; preds = %72, %60
  %86 = load i32, i32* @IB_WC_WR_FLUSH_ERR, align 4
  %87 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %6, i32 0, i32 0
  store i32 %86, i32* %87, align 8
  %88 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %89 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 2
  %91 = load %struct.ipath_rwq*, %struct.ipath_rwq** %90, align 8
  %92 = icmp ne %struct.ipath_rwq* %91, null
  br i1 %92, label %93, label %159

93:                                               ; preds = %85
  %94 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %95 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = call i32 @spin_lock(i32* %96)
  %98 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %99 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %98, i32 0, i32 4
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 2
  %101 = load %struct.ipath_rwq*, %struct.ipath_rwq** %100, align 8
  store %struct.ipath_rwq* %101, %struct.ipath_rwq** %8, align 8
  %102 = load %struct.ipath_rwq*, %struct.ipath_rwq** %8, align 8
  %103 = getelementptr inbounds %struct.ipath_rwq, %struct.ipath_rwq* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  store i64 %104, i64* %9, align 8
  %105 = load i64, i64* %9, align 8
  %106 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %107 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp sge i64 %105, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %93
  store i64 0, i64* %9, align 8
  br label %112

112:                                              ; preds = %111, %93
  %113 = load %struct.ipath_rwq*, %struct.ipath_rwq** %8, align 8
  %114 = getelementptr inbounds %struct.ipath_rwq, %struct.ipath_rwq* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  store i64 %115, i64* %10, align 8
  %116 = load i64, i64* %10, align 8
  %117 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %118 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %117, i32 0, i32 4
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp sge i64 %116, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %112
  store i64 0, i64* %10, align 8
  br label %123

123:                                              ; preds = %122, %112
  br label %124

124:                                              ; preds = %144, %123
  %125 = load i64, i64* %10, align 8
  %126 = load i64, i64* %9, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %151

128:                                              ; preds = %124
  %129 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %130 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %129, i32 0, i32 4
  %131 = load i64, i64* %10, align 8
  %132 = call %struct.TYPE_5__* @get_rwqe_ptr(%struct.TYPE_6__* %130, i64 %131)
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %6, i32 0, i32 1
  store i32 %134, i32* %135, align 4
  %136 = load i64, i64* %10, align 8
  %137 = add nsw i64 %136, 1
  store i64 %137, i64* %10, align 8
  %138 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %139 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %138, i32 0, i32 4
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp sge i64 %137, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %128
  store i64 0, i64* %10, align 8
  br label %144

144:                                              ; preds = %143, %128
  %145 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %146 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @to_icq(i32 %148)
  %150 = call i32 @ipath_cq_enter(i32 %149, %struct.ib_wc* %6, i32 1)
  br label %124

151:                                              ; preds = %124
  %152 = load i64, i64* %10, align 8
  %153 = load %struct.ipath_rwq*, %struct.ipath_rwq** %8, align 8
  %154 = getelementptr inbounds %struct.ipath_rwq, %struct.ipath_rwq* %153, i32 0, i32 1
  store i64 %152, i64* %154, align 8
  %155 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %156 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %155, i32 0, i32 4
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 1
  %158 = call i32 @spin_unlock(i32* %157)
  br label %167

159:                                              ; preds = %85
  %160 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %161 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %160, i32 0, i32 3
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %159
  store i32 1, i32* %7, align 4
  br label %166

166:                                              ; preds = %165, %159
  br label %167

167:                                              ; preds = %166, %151
  br label %168

168:                                              ; preds = %167, %21
  %169 = load i32, i32* %7, align 4
  ret i32 %169
}

declare dso_local %struct.ipath_ibdev* @to_idev(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ipath_schedule_send(%struct.ipath_qp*) #1

declare dso_local i32 @memset(%struct.ib_wc*, i32, i32) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @ipath_cq_enter(i32, %struct.ib_wc*, i32) #1

declare dso_local i32 @to_icq(i32) #1

declare dso_local %struct.TYPE_5__* @get_rwqe_ptr(%struct.TYPE_6__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
