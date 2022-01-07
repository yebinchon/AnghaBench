; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_ruc.c_qib_send_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_ruc.c_qib_send_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_qp = type { i64, i32, i64, i64, i64, i64, i64, i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32 }
%struct.qib_swqe = type { i32, %struct.TYPE_8__, %struct.qib_sge* }
%struct.TYPE_8__ = type { i32, i32, i64, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.qib_sge = type { i32 }
%struct.ib_wc = type { i32, i32, %struct.TYPE_9__*, i32, i32 }
%struct.TYPE_10__ = type { i32 }

@ib_qib_state_ops = common dso_local global i32* null, align 8
@QIB_PROCESS_OR_FLUSH_SEND = common dso_local global i32 0, align 4
@IB_QPT_UD = common dso_local global i64 0, align 8
@IB_QPT_SMI = common dso_local global i64 0, align 8
@IB_QPT_GSI = common dso_local global i64 0, align 8
@QIB_S_SIGNAL_REQ_WR = common dso_local global i32 0, align 4
@IB_SEND_SIGNALED = common dso_local global i32 0, align 4
@IB_WC_SUCCESS = common dso_local global i32 0, align 4
@ib_qib_wc_opcode = common dso_local global i32* null, align 8
@IB_QPS_SQD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qib_send_complete(%struct.qib_qp* %0, %struct.qib_swqe* %1, i32 %2) #0 {
  %4 = alloca %struct.qib_qp*, align 8
  %5 = alloca %struct.qib_swqe*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.qib_sge*, align 8
  %11 = alloca %struct.ib_wc, align 8
  store %struct.qib_qp* %0, %struct.qib_qp** %4, align 8
  store %struct.qib_swqe* %1, %struct.qib_swqe** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32*, i32** @ib_qib_state_ops, align 8
  %13 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %14 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds i32, i32* %12, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @QIB_PROCESS_OR_FLUSH_SEND, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  br label %193

22:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %41, %22
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.qib_swqe*, %struct.qib_swqe** %5, align 8
  %26 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ult i32 %24, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %23
  %31 = load %struct.qib_swqe*, %struct.qib_swqe** %5, align 8
  %32 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %31, i32 0, i32 2
  %33 = load %struct.qib_sge*, %struct.qib_sge** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %33, i64 %35
  store %struct.qib_sge* %36, %struct.qib_sge** %10, align 8
  %37 = load %struct.qib_sge*, %struct.qib_sge** %10, align 8
  %38 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @qib_put_mr(i32 %39)
  br label %41

41:                                               ; preds = %30
  %42 = load i32, i32* %9, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %9, align 4
  br label %23

44:                                               ; preds = %23
  %45 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %46 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %45, i32 0, i32 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @IB_QPT_UD, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %65, label %51

51:                                               ; preds = %44
  %52 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %53 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %52, i32 0, i32 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @IB_QPT_SMI, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %65, label %58

58:                                               ; preds = %51
  %59 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %60 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %59, i32 0, i32 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @IB_QPT_GSI, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %58, %51, %44
  %66 = load %struct.qib_swqe*, %struct.qib_swqe** %5, align 8
  %67 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call %struct.TYPE_10__* @to_iah(i32 %71)
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = call i32 @atomic_dec(i32* %73)
  br label %75

75:                                               ; preds = %65, %58
  %76 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %77 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @QIB_S_SIGNAL_REQ_WR, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %94

82:                                               ; preds = %75
  %83 = load %struct.qib_swqe*, %struct.qib_swqe** %5, align 8
  %84 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @IB_SEND_SIGNALED, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %82
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @IB_WC_SUCCESS, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %133

94:                                               ; preds = %90, %82, %75
  %95 = call i32 @memset(%struct.ib_wc* %11, i32 0, i32 24)
  %96 = load %struct.qib_swqe*, %struct.qib_swqe** %5, align 8
  %97 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %11, i32 0, i32 4
  store i32 %99, i32* %100, align 4
  %101 = load i32, i32* %6, align 4
  %102 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %11, i32 0, i32 0
  store i32 %101, i32* %102, align 8
  %103 = load i32*, i32** @ib_qib_wc_opcode, align 8
  %104 = load %struct.qib_swqe*, %struct.qib_swqe** %5, align 8
  %105 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds i32, i32* %103, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %11, i32 0, i32 3
  store i32 %109, i32* %110, align 8
  %111 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %112 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %111, i32 0, i32 8
  %113 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %11, i32 0, i32 2
  store %struct.TYPE_9__* %112, %struct.TYPE_9__** %113, align 8
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* @IB_WC_SUCCESS, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %122

117:                                              ; preds = %94
  %118 = load %struct.qib_swqe*, %struct.qib_swqe** %5, align 8
  %119 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %11, i32 0, i32 1
  store i32 %120, i32* %121, align 4
  br label %122

122:                                              ; preds = %117, %94
  %123 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %124 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %123, i32 0, i32 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @to_icq(i32 %126)
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* @IB_WC_SUCCESS, align 4
  %130 = icmp ne i32 %128, %129
  %131 = zext i1 %130 to i32
  %132 = call i32 @qib_cq_enter(i32 %127, %struct.ib_wc* %11, i32 %131)
  br label %133

133:                                              ; preds = %122, %90
  %134 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %135 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  store i64 %136, i64* %8, align 8
  %137 = load i64, i64* %8, align 8
  store i64 %137, i64* %7, align 8
  %138 = load i64, i64* %8, align 8
  %139 = add nsw i64 %138, 1
  store i64 %139, i64* %8, align 8
  %140 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %141 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %140, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = icmp sge i64 %139, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %133
  store i64 0, i64* %8, align 8
  br label %145

145:                                              ; preds = %144, %133
  %146 = load i64, i64* %8, align 8
  %147 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %148 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %147, i32 0, i32 2
  store i64 %146, i64* %148, align 8
  %149 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %150 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %149, i32 0, i32 4
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* %7, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %158

154:                                              ; preds = %145
  %155 = load i64, i64* %8, align 8
  %156 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %157 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %156, i32 0, i32 4
  store i64 %155, i64* %157, align 8
  br label %158

158:                                              ; preds = %154, %145
  %159 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %160 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %159, i32 0, i32 5
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* %7, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %168

164:                                              ; preds = %158
  %165 = load i64, i64* %8, align 8
  %166 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %167 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %166, i32 0, i32 5
  store i64 %165, i64* %167, align 8
  br label %168

168:                                              ; preds = %164, %158
  %169 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %170 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %169, i32 0, i32 6
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* %7, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %178

174:                                              ; preds = %168
  %175 = load i64, i64* %8, align 8
  %176 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %177 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %176, i32 0, i32 6
  store i64 %175, i64* %177, align 8
  br label %178

178:                                              ; preds = %174, %168
  %179 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %180 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @IB_QPS_SQD, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %193

184:                                              ; preds = %178
  %185 = load i64, i64* %8, align 8
  %186 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %187 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %186, i32 0, i32 5
  %188 = load i64, i64* %187, align 8
  %189 = icmp eq i64 %185, %188
  br i1 %189, label %190, label %193

190:                                              ; preds = %184
  %191 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %192 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %191, i32 0, i32 7
  store i64 0, i64* %192, align 8
  br label %193

193:                                              ; preds = %21, %190, %184, %178
  ret void
}

declare dso_local i32 @qib_put_mr(i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local %struct.TYPE_10__* @to_iah(i32) #1

declare dso_local i32 @memset(%struct.ib_wc*, i32, i32) #1

declare dso_local i32 @qib_cq_enter(i32, %struct.ib_wc*, i32) #1

declare dso_local i32 @to_icq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
