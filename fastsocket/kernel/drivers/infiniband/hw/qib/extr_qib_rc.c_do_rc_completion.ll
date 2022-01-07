; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_rc.c_do_rc_completion.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_rc.c_do_rc_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_qp = type { i32, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.qib_swqe = type { i32, i32, i32, %struct.TYPE_3__, %struct.qib_sge* }
%struct.TYPE_3__ = type { i32, i32, i64, i32 }
%struct.qib_sge = type { i32 }
%struct.qib_ibport = type { i32 }
%struct.ib_wc = type { %struct.TYPE_4__*, i32, i32, i32, i32 }

@QIB_S_SIGNAL_REQ_WR = common dso_local global i32 0, align 4
@IB_SEND_SIGNALED = common dso_local global i32 0, align 4
@IB_WC_SUCCESS = common dso_local global i32 0, align 4
@ib_qib_wc_opcode = common dso_local global i32* null, align 8
@SEND_LAST = common dso_local global i32 0, align 4
@IB_QPS_SQD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.qib_swqe* (%struct.qib_qp*, %struct.qib_swqe*, %struct.qib_ibport*)* @do_rc_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.qib_swqe* @do_rc_completion(%struct.qib_qp* %0, %struct.qib_swqe* %1, %struct.qib_ibport* %2) #0 {
  %4 = alloca %struct.qib_qp*, align 8
  %5 = alloca %struct.qib_swqe*, align 8
  %6 = alloca %struct.qib_ibport*, align 8
  %7 = alloca %struct.ib_wc, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.qib_sge*, align 8
  store %struct.qib_qp* %0, %struct.qib_qp** %4, align 8
  store %struct.qib_swqe* %1, %struct.qib_swqe** %5, align 8
  store %struct.qib_ibport* %2, %struct.qib_ibport** %6, align 8
  %10 = load %struct.qib_swqe*, %struct.qib_swqe** %5, align 8
  %11 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %14 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %13, i32 0, i32 14
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @qib_cmp24(i32 %12, i32 %15)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %3
  %19 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %20 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %19, i32 0, i32 14
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %23 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %22, i32 0, i32 13
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @qib_cmp24(i32 %21, i32 %24)
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %107

27:                                               ; preds = %18, %3
  store i32 0, i32* %8, align 4
  br label %28

28:                                               ; preds = %46, %27
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.qib_swqe*, %struct.qib_swqe** %5, align 8
  %31 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ult i32 %29, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %28
  %36 = load %struct.qib_swqe*, %struct.qib_swqe** %5, align 8
  %37 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %36, i32 0, i32 4
  %38 = load %struct.qib_sge*, %struct.qib_sge** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %38, i64 %40
  store %struct.qib_sge* %41, %struct.qib_sge** %9, align 8
  %42 = load %struct.qib_sge*, %struct.qib_sge** %9, align 8
  %43 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @qib_put_mr(i32 %44)
  br label %46

46:                                               ; preds = %35
  %47 = load i32, i32* %8, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %28

49:                                               ; preds = %28
  %50 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %51 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @QIB_S_SIGNAL_REQ_WR, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %49
  %57 = load %struct.qib_swqe*, %struct.qib_swqe** %5, align 8
  %58 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @IB_SEND_SIGNALED, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %94

64:                                               ; preds = %56, %49
  %65 = call i32 @memset(%struct.ib_wc* %7, i32 0, i32 24)
  %66 = load %struct.qib_swqe*, %struct.qib_swqe** %5, align 8
  %67 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %7, i32 0, i32 4
  store i32 %69, i32* %70, align 4
  %71 = load i32, i32* @IB_WC_SUCCESS, align 4
  %72 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %7, i32 0, i32 3
  store i32 %71, i32* %72, align 8
  %73 = load i32*, i32** @ib_qib_wc_opcode, align 8
  %74 = load %struct.qib_swqe*, %struct.qib_swqe** %5, align 8
  %75 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds i32, i32* %73, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %7, i32 0, i32 2
  store i32 %79, i32* %80, align 4
  %81 = load %struct.qib_swqe*, %struct.qib_swqe** %5, align 8
  %82 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %7, i32 0, i32 1
  store i32 %83, i32* %84, align 8
  %85 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %86 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %85, i32 0, i32 12
  %87 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %7, i32 0, i32 0
  store %struct.TYPE_4__* %86, %struct.TYPE_4__** %87, align 8
  %88 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %89 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %88, i32 0, i32 12
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @to_icq(i32 %91)
  %93 = call i32 @qib_cq_enter(i32 %92, %struct.ib_wc* %7, i32 0)
  br label %94

94:                                               ; preds = %64, %56
  %95 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %96 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %97, 1
  store i64 %98, i64* %96, align 8
  %99 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %100 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = icmp sge i64 %98, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %94
  %104 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %105 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %104, i32 0, i32 1
  store i64 0, i64* %105, align 8
  br label %106

106:                                              ; preds = %103, %94
  br label %112

107:                                              ; preds = %18
  %108 = load %struct.qib_ibport*, %struct.qib_ibport** %6, align 8
  %109 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 4
  br label %112

112:                                              ; preds = %107, %106
  %113 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %114 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %113, i32 0, i32 10
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %117 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %116, i32 0, i32 11
  store i32 %115, i32* %117, align 4
  %118 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %119 = load %struct.qib_swqe*, %struct.qib_swqe** %5, align 8
  %120 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @update_last_psn(%struct.qib_qp* %118, i32 %121)
  %123 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %124 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %127 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %126, i32 0, i32 4
  %128 = load i64, i64* %127, align 8
  %129 = icmp eq i64 %125, %128
  br i1 %129, label %130, label %171

130:                                              ; preds = %112
  %131 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %132 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %131, i32 0, i32 4
  %133 = load i64, i64* %132, align 8
  %134 = add nsw i64 %133, 1
  store i64 %134, i64* %132, align 8
  %135 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %136 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = icmp sge i64 %134, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %130
  %140 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %141 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %140, i32 0, i32 4
  store i64 0, i64* %141, align 8
  br label %142

142:                                              ; preds = %139, %130
  %143 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %144 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %143, i32 0, i32 4
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %147 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %146, i32 0, i32 3
  store i64 %145, i64* %147, align 8
  %148 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %149 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %150 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %149, i32 0, i32 4
  %151 = load i64, i64* %150, align 8
  %152 = call %struct.qib_swqe* @get_swqe_ptr(%struct.qib_qp* %148, i64 %151)
  store %struct.qib_swqe* %152, %struct.qib_swqe** %5, align 8
  %153 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %154 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %153, i32 0, i32 3
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %157 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %156, i32 0, i32 5
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %155, %158
  br i1 %159, label %160, label %170

160:                                              ; preds = %142
  %161 = load i32, i32* @SEND_LAST, align 4
  %162 = call i32 @OP(i32 %161)
  %163 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %164 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %163, i32 0, i32 9
  store i32 %162, i32* %164, align 4
  %165 = load %struct.qib_swqe*, %struct.qib_swqe** %5, align 8
  %166 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %169 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %168, i32 0, i32 8
  store i32 %167, i32* %169, align 8
  br label %170

170:                                              ; preds = %160, %142
  br label %206

171:                                              ; preds = %112
  %172 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %173 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %172, i32 0, i32 3
  %174 = load i64, i64* %173, align 8
  %175 = add nsw i64 %174, 1
  store i64 %175, i64* %173, align 8
  %176 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %177 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = icmp sge i64 %175, %178
  br i1 %179, label %180, label %183

180:                                              ; preds = %171
  %181 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %182 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %181, i32 0, i32 3
  store i64 0, i64* %182, align 8
  br label %183

183:                                              ; preds = %180, %171
  %184 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %185 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %184, i32 0, i32 6
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @IB_QPS_SQD, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %200

189:                                              ; preds = %183
  %190 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %191 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %190, i32 0, i32 3
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %194 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %193, i32 0, i32 4
  %195 = load i64, i64* %194, align 8
  %196 = icmp eq i64 %192, %195
  br i1 %196, label %197, label %200

197:                                              ; preds = %189
  %198 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %199 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %198, i32 0, i32 7
  store i64 0, i64* %199, align 8
  br label %200

200:                                              ; preds = %197, %189, %183
  %201 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %202 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %203 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %202, i32 0, i32 3
  %204 = load i64, i64* %203, align 8
  %205 = call %struct.qib_swqe* @get_swqe_ptr(%struct.qib_qp* %201, i64 %204)
  store %struct.qib_swqe* %205, %struct.qib_swqe** %5, align 8
  br label %206

206:                                              ; preds = %200, %170
  %207 = load %struct.qib_swqe*, %struct.qib_swqe** %5, align 8
  ret %struct.qib_swqe* %207
}

declare dso_local i64 @qib_cmp24(i32, i32) #1

declare dso_local i32 @qib_put_mr(i32) #1

declare dso_local i32 @memset(%struct.ib_wc*, i32, i32) #1

declare dso_local i32 @qib_cq_enter(i32, %struct.ib_wc*, i32) #1

declare dso_local i32 @to_icq(i32) #1

declare dso_local i32 @update_last_psn(%struct.qib_qp*, i32) #1

declare dso_local %struct.qib_swqe* @get_swqe_ptr(%struct.qib_qp*, i64) #1

declare dso_local i32 @OP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
