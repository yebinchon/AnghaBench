; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_verbs.c_nes_destroy_qp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_verbs.c_nes_destroy_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.nes_qp = type { i32, i64, i64, i64, i64, i32, i32, i64, i64, i64, i32, %struct.TYPE_3__, %struct.iw_cm_id* }
%struct.TYPE_3__ = type { i32 }
%struct.iw_cm_id = type { i32 (%struct.iw_cm_id*, %struct.iw_cm_event*)*, i32 (%struct.iw_cm_id*)*, i32, i32 }
%struct.iw_cm_event = type opaque
%struct.nes_ucontext = type { i64, i32**, i32 }
%struct.ib_qp_attr = type { i32 }
%struct.iw_cm_event.0 = type { i64, i32*, i32, i32, i32, i32 }

@sw_qps_destroyed = common dso_local global i32 0, align 4
@IB_QPS_INIT = common dso_local global i64 0, align 8
@IB_QPS_RTS = common dso_local global i64 0, align 8
@IB_QPS_ERR = common dso_local global i32 0, align 4
@IB_QP_STATE = common dso_local global i32 0, align 4
@IB_QPS_RTR = common dso_local global i64 0, align 8
@IW_CM_EVENT_CONNECT_REPLY = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@NES_DBG_QP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"Generating a CM Timeout Event for QP%u. cm_id = %p, refcount = %u. \0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"OFA CM event_handler returned, ret=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_qp*)* @nes_destroy_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nes_destroy_qp(%struct.ib_qp* %0) #0 {
  %2 = alloca %struct.ib_qp*, align 8
  %3 = alloca %struct.nes_qp*, align 8
  %4 = alloca %struct.nes_ucontext*, align 8
  %5 = alloca %struct.ib_qp_attr, align 4
  %6 = alloca %struct.iw_cm_id*, align 8
  %7 = alloca %struct.iw_cm_event.0, align 8
  %8 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %2, align 8
  %9 = load %struct.ib_qp*, %struct.ib_qp** %2, align 8
  %10 = call %struct.nes_qp* @to_nesqp(%struct.ib_qp* %9)
  store %struct.nes_qp* %10, %struct.nes_qp** %3, align 8
  store i32 0, i32* %8, align 4
  %11 = call i32 @atomic_inc(i32* @sw_qps_destroyed)
  %12 = load %struct.nes_qp*, %struct.nes_qp** %3, align 8
  %13 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load %struct.nes_qp*, %struct.nes_qp** %3, align 8
  %15 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @IB_QPS_INIT, align 8
  %18 = icmp sge i64 %16, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %1
  %20 = load %struct.nes_qp*, %struct.nes_qp** %3, align 8
  %21 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @IB_QPS_RTS, align 8
  %24 = icmp sle i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load i32, i32* @IB_QPS_ERR, align 4
  %27 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %5, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = load %struct.nes_qp*, %struct.nes_qp** %3, align 8
  %29 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %28, i32 0, i32 5
  %30 = load i32, i32* @IB_QP_STATE, align 4
  %31 = call i32 @nes_modify_qp(i32* %29, %struct.ib_qp_attr* %5, i32 %30, i32* null)
  br label %32

32:                                               ; preds = %25, %19, %1
  %33 = load %struct.nes_qp*, %struct.nes_qp** %3, align 8
  %34 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @IB_QPS_INIT, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = load %struct.nes_qp*, %struct.nes_qp** %3, align 8
  %40 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @IB_QPS_RTR, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %96

44:                                               ; preds = %38, %32
  %45 = load %struct.nes_qp*, %struct.nes_qp** %3, align 8
  %46 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %45, i32 0, i32 12
  %47 = load %struct.iw_cm_id*, %struct.iw_cm_id** %46, align 8
  %48 = icmp ne %struct.iw_cm_id* %47, null
  br i1 %48, label %49, label %96

49:                                               ; preds = %44
  %50 = load %struct.nes_qp*, %struct.nes_qp** %3, align 8
  %51 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %50, i32 0, i32 12
  %52 = load %struct.iw_cm_id*, %struct.iw_cm_id** %51, align 8
  store %struct.iw_cm_id* %52, %struct.iw_cm_id** %6, align 8
  %53 = load i32, i32* @IW_CM_EVENT_CONNECT_REPLY, align 4
  %54 = getelementptr inbounds %struct.iw_cm_event.0, %struct.iw_cm_event.0* %7, i32 0, i32 5
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* @ETIMEDOUT, align 4
  %56 = sub nsw i32 0, %55
  %57 = getelementptr inbounds %struct.iw_cm_event.0, %struct.iw_cm_event.0* %7, i32 0, i32 4
  store i32 %56, i32* %57, align 8
  %58 = load %struct.iw_cm_id*, %struct.iw_cm_id** %6, align 8
  %59 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.iw_cm_event.0, %struct.iw_cm_event.0* %7, i32 0, i32 3
  store i32 %60, i32* %61, align 4
  %62 = load %struct.iw_cm_id*, %struct.iw_cm_id** %6, align 8
  %63 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = getelementptr inbounds %struct.iw_cm_event.0, %struct.iw_cm_event.0* %7, i32 0, i32 2
  store i32 %64, i32* %65, align 8
  %66 = getelementptr inbounds %struct.iw_cm_event.0, %struct.iw_cm_event.0* %7, i32 0, i32 1
  store i32* null, i32** %66, align 8
  %67 = getelementptr inbounds %struct.iw_cm_event.0, %struct.iw_cm_event.0* %7, i32 0, i32 0
  store i64 0, i64* %67, align 8
  %68 = load i32, i32* @NES_DBG_QP, align 4
  %69 = load %struct.nes_qp*, %struct.nes_qp** %3, align 8
  %70 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %69, i32 0, i32 11
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.iw_cm_id*, %struct.iw_cm_id** %6, align 8
  %74 = load %struct.nes_qp*, %struct.nes_qp** %3, align 8
  %75 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %74, i32 0, i32 10
  %76 = call i32 @atomic_read(i32* %75)
  %77 = call i32 (i32, i8*, i32, ...) @nes_debug(i32 %68, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %72, %struct.iw_cm_id* %73, i32 %76)
  %78 = load %struct.iw_cm_id*, %struct.iw_cm_id** %6, align 8
  %79 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %78, i32 0, i32 1
  %80 = load i32 (%struct.iw_cm_id*)*, i32 (%struct.iw_cm_id*)** %79, align 8
  %81 = load %struct.iw_cm_id*, %struct.iw_cm_id** %6, align 8
  %82 = call i32 %80(%struct.iw_cm_id* %81)
  %83 = load %struct.iw_cm_id*, %struct.iw_cm_id** %6, align 8
  %84 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %83, i32 0, i32 0
  %85 = load i32 (%struct.iw_cm_id*, %struct.iw_cm_event*)*, i32 (%struct.iw_cm_id*, %struct.iw_cm_event*)** %84, align 8
  %86 = load %struct.iw_cm_id*, %struct.iw_cm_id** %6, align 8
  %87 = bitcast %struct.iw_cm_event.0* %7 to %struct.iw_cm_event*
  %88 = call i32 %85(%struct.iw_cm_id* %86, %struct.iw_cm_event* %87)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %49
  %92 = load i32, i32* @NES_DBG_QP, align 4
  %93 = load i32, i32* %8, align 4
  %94 = call i32 (i32, i8*, i32, ...) @nes_debug(i32 %92, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %91, %49
  br label %96

96:                                               ; preds = %95, %44, %38
  %97 = load %struct.nes_qp*, %struct.nes_qp** %3, align 8
  %98 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %97, i32 0, i32 9
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %166

101:                                              ; preds = %96
  %102 = load %struct.ib_qp*, %struct.ib_qp** %2, align 8
  %103 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %102, i32 0, i32 0
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = icmp ne %struct.TYPE_4__* %104, null
  br i1 %105, label %106, label %148

106:                                              ; preds = %101
  %107 = load %struct.ib_qp*, %struct.ib_qp** %2, align 8
  %108 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %107, i32 0, i32 0
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %148

113:                                              ; preds = %106
  %114 = load %struct.ib_qp*, %struct.ib_qp** %2, align 8
  %115 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %114, i32 0, i32 0
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = call %struct.nes_ucontext* @to_nesucontext(i64 %118)
  store %struct.nes_ucontext* %119, %struct.nes_ucontext** %4, align 8
  %120 = load %struct.nes_qp*, %struct.nes_qp** %3, align 8
  %121 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.nes_ucontext*, %struct.nes_ucontext** %4, align 8
  %124 = getelementptr inbounds %struct.nes_ucontext, %struct.nes_ucontext* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @clear_bit(i64 %122, i32 %125)
  %127 = load %struct.nes_ucontext*, %struct.nes_ucontext** %4, align 8
  %128 = getelementptr inbounds %struct.nes_ucontext, %struct.nes_ucontext* %127, i32 0, i32 1
  %129 = load i32**, i32*** %128, align 8
  %130 = load %struct.nes_qp*, %struct.nes_qp** %3, align 8
  %131 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds i32*, i32** %129, i64 %132
  store i32* null, i32** %133, align 8
  %134 = load %struct.nes_ucontext*, %struct.nes_ucontext** %4, align 8
  %135 = getelementptr inbounds %struct.nes_ucontext, %struct.nes_ucontext* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.nes_qp*, %struct.nes_qp** %3, align 8
  %138 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = icmp ugt i64 %136, %139
  br i1 %140, label %141, label %147

141:                                              ; preds = %113
  %142 = load %struct.nes_qp*, %struct.nes_qp** %3, align 8
  %143 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.nes_ucontext*, %struct.nes_ucontext** %4, align 8
  %146 = getelementptr inbounds %struct.nes_ucontext, %struct.nes_ucontext* %145, i32 0, i32 0
  store i64 %144, i64* %146, align 8
  br label %147

147:                                              ; preds = %141, %113
  br label %148

148:                                              ; preds = %147, %106, %101
  %149 = load %struct.nes_qp*, %struct.nes_qp** %3, align 8
  %150 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %149, i32 0, i32 8
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %165

153:                                              ; preds = %148
  %154 = load %struct.nes_qp*, %struct.nes_qp** %3, align 8
  %155 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %154, i32 0, i32 7
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %165

158:                                              ; preds = %153
  %159 = load %struct.nes_qp*, %struct.nes_qp** %3, align 8
  %160 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %159, i32 0, i32 7
  store i64 0, i64* %160, align 8
  %161 = load %struct.nes_qp*, %struct.nes_qp** %3, align 8
  %162 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %161, i32 0, i32 6
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @kunmap(i32 %163)
  br label %165

165:                                              ; preds = %158, %153, %148
  br label %197

166:                                              ; preds = %96
  %167 = load %struct.nes_qp*, %struct.nes_qp** %3, align 8
  %168 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %167, i32 0, i32 3
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %166
  %172 = load %struct.nes_qp*, %struct.nes_qp** %3, align 8
  %173 = load %struct.nes_qp*, %struct.nes_qp** %3, align 8
  %174 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %173, i32 0, i32 3
  %175 = load i64, i64* %174, align 8
  %176 = call i32 @nes_clean_cq(%struct.nes_qp* %172, i64 %175)
  br label %177

177:                                              ; preds = %171, %166
  %178 = load %struct.nes_qp*, %struct.nes_qp** %3, align 8
  %179 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %178, i32 0, i32 4
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %196

182:                                              ; preds = %177
  %183 = load %struct.nes_qp*, %struct.nes_qp** %3, align 8
  %184 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %183, i32 0, i32 4
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.nes_qp*, %struct.nes_qp** %3, align 8
  %187 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %186, i32 0, i32 3
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %185, %188
  br i1 %189, label %190, label %196

190:                                              ; preds = %182
  %191 = load %struct.nes_qp*, %struct.nes_qp** %3, align 8
  %192 = load %struct.nes_qp*, %struct.nes_qp** %3, align 8
  %193 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %192, i32 0, i32 4
  %194 = load i64, i64* %193, align 8
  %195 = call i32 @nes_clean_cq(%struct.nes_qp* %191, i64 %194)
  br label %196

196:                                              ; preds = %190, %182, %177
  br label %197

197:                                              ; preds = %196, %165
  %198 = load %struct.nes_qp*, %struct.nes_qp** %3, align 8
  %199 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %198, i32 0, i32 5
  %200 = call i32 @nes_rem_ref(i32* %199)
  ret i32 0
}

declare dso_local %struct.nes_qp* @to_nesqp(%struct.ib_qp*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @nes_modify_qp(i32*, %struct.ib_qp_attr*, i32, i32*) #1

declare dso_local i32 @nes_debug(i32, i8*, i32, ...) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local %struct.nes_ucontext* @to_nesucontext(i64) #1

declare dso_local i32 @clear_bit(i64, i32) #1

declare dso_local i32 @kunmap(i32) #1

declare dso_local i32 @nes_clean_cq(%struct.nes_qp*, i64) #1

declare dso_local i32 @nes_rem_ref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
