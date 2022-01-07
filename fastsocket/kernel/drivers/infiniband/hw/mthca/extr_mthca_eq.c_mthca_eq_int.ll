; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_eq.c_mthca_eq_int.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_eq.c_mthca_eq_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { i32 }
%struct.mthca_eq = type { i32, i32 }
%struct.mthca_eqe = type { i32, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@IB_EVENT_PATH_MIG = common dso_local global i32 0, align 4
@IB_EVENT_COMM_EST = common dso_local global i32 0, align 4
@IB_EVENT_SQ_DRAINED = common dso_local global i32 0, align 4
@IB_EVENT_QP_LAST_WQE_REACHED = common dso_local global i32 0, align 4
@IB_EVENT_SRQ_LIMIT_REACHED = common dso_local global i32 0, align 4
@IB_EVENT_QP_FATAL = common dso_local global i32 0, align 4
@IB_EVENT_PATH_MIG_ERR = common dso_local global i32 0, align 4
@IB_EVENT_QP_REQ_ERR = common dso_local global i32 0, align 4
@IB_EVENT_QP_ACCESS_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"CQ %s on CQN %06x\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"overrun\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"access violation\00", align 1
@IB_EVENT_CQ_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"EQ overrun on EQN %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Unhandled event %02x(%02x) on EQ %d\0A\00", align 1
@MTHCA_NUM_SPARE_EQE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mthca_dev*, %struct.mthca_eq*)* @mthca_eq_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mthca_eq_int(%struct.mthca_dev* %0, %struct.mthca_eq* %1) #0 {
  %3 = alloca %struct.mthca_dev*, align 8
  %4 = alloca %struct.mthca_eq*, align 8
  %5 = alloca %struct.mthca_eqe*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %3, align 8
  store %struct.mthca_eq* %1, %struct.mthca_eq** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %238, %2
  %10 = load %struct.mthca_eq*, %struct.mthca_eq** %4, align 8
  %11 = call %struct.mthca_eqe* @next_eqe_sw(%struct.mthca_eq* %10)
  store %struct.mthca_eqe* %11, %struct.mthca_eqe** %5, align 8
  %12 = icmp ne %struct.mthca_eqe* %11, null
  br i1 %12, label %13, label %239

13:                                               ; preds = %9
  %14 = call i32 (...) @rmb()
  %15 = load %struct.mthca_eqe*, %struct.mthca_eqe** %5, align 8
  %16 = getelementptr inbounds %struct.mthca_eqe, %struct.mthca_eqe* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %204 [
    i32 143, label %18
    i32 137, label %35
    i32 144, label %46
    i32 134, label %57
    i32 131, label %68
    i32 132, label %79
    i32 129, label %90
    i32 136, label %101
    i32 128, label %112
    i32 130, label %123
    i32 145, label %134
    i32 135, label %154
    i32 142, label %170
    i32 139, label %197
    i32 140, label %203
    i32 133, label %203
    i32 138, label %203
    i32 141, label %203
  ]

18:                                               ; preds = %13
  %19 = load %struct.mthca_eqe*, %struct.mthca_eqe** %5, align 8
  %20 = getelementptr inbounds %struct.mthca_eqe, %struct.mthca_eqe* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 5
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @be32_to_cpu(i32 %23)
  %25 = and i32 %24, 16777215
  store i32 %25, i32* %6, align 4
  %26 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %27 = load %struct.mthca_eq*, %struct.mthca_eq** %4, align 8
  %28 = getelementptr inbounds %struct.mthca_eq, %struct.mthca_eq* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @disarm_cq(%struct.mthca_dev* %26, i32 %29, i32 %30)
  %32 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @mthca_cq_completion(%struct.mthca_dev* %32, i32 %33)
  br label %216

35:                                               ; preds = %13
  %36 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %37 = load %struct.mthca_eqe*, %struct.mthca_eqe** %5, align 8
  %38 = getelementptr inbounds %struct.mthca_eqe, %struct.mthca_eqe* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @be32_to_cpu(i32 %41)
  %43 = and i32 %42, 16777215
  %44 = load i32, i32* @IB_EVENT_PATH_MIG, align 4
  %45 = call i32 @mthca_qp_event(%struct.mthca_dev* %36, i32 %43, i32 %44)
  br label %216

46:                                               ; preds = %13
  %47 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %48 = load %struct.mthca_eqe*, %struct.mthca_eqe** %5, align 8
  %49 = getelementptr inbounds %struct.mthca_eqe, %struct.mthca_eqe* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @be32_to_cpu(i32 %52)
  %54 = and i32 %53, 16777215
  %55 = load i32, i32* @IB_EVENT_COMM_EST, align 4
  %56 = call i32 @mthca_qp_event(%struct.mthca_dev* %47, i32 %54, i32 %55)
  br label %216

57:                                               ; preds = %13
  %58 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %59 = load %struct.mthca_eqe*, %struct.mthca_eqe** %5, align 8
  %60 = getelementptr inbounds %struct.mthca_eqe, %struct.mthca_eqe* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @be32_to_cpu(i32 %63)
  %65 = and i32 %64, 16777215
  %66 = load i32, i32* @IB_EVENT_SQ_DRAINED, align 4
  %67 = call i32 @mthca_qp_event(%struct.mthca_dev* %58, i32 %65, i32 %66)
  br label %216

68:                                               ; preds = %13
  %69 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %70 = load %struct.mthca_eqe*, %struct.mthca_eqe** %5, align 8
  %71 = getelementptr inbounds %struct.mthca_eqe, %struct.mthca_eqe* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @be32_to_cpu(i32 %74)
  %76 = and i32 %75, 16777215
  %77 = load i32, i32* @IB_EVENT_QP_LAST_WQE_REACHED, align 4
  %78 = call i32 @mthca_qp_event(%struct.mthca_dev* %69, i32 %76, i32 %77)
  br label %216

79:                                               ; preds = %13
  %80 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %81 = load %struct.mthca_eqe*, %struct.mthca_eqe** %5, align 8
  %82 = getelementptr inbounds %struct.mthca_eqe, %struct.mthca_eqe* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @be32_to_cpu(i32 %85)
  %87 = and i32 %86, 16777215
  %88 = load i32, i32* @IB_EVENT_SRQ_LIMIT_REACHED, align 4
  %89 = call i32 @mthca_srq_event(%struct.mthca_dev* %80, i32 %87, i32 %88)
  br label %216

90:                                               ; preds = %13
  %91 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %92 = load %struct.mthca_eqe*, %struct.mthca_eqe** %5, align 8
  %93 = getelementptr inbounds %struct.mthca_eqe, %struct.mthca_eqe* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @be32_to_cpu(i32 %96)
  %98 = and i32 %97, 16777215
  %99 = load i32, i32* @IB_EVENT_QP_FATAL, align 4
  %100 = call i32 @mthca_qp_event(%struct.mthca_dev* %91, i32 %98, i32 %99)
  br label %216

101:                                              ; preds = %13
  %102 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %103 = load %struct.mthca_eqe*, %struct.mthca_eqe** %5, align 8
  %104 = getelementptr inbounds %struct.mthca_eqe, %struct.mthca_eqe* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @be32_to_cpu(i32 %107)
  %109 = and i32 %108, 16777215
  %110 = load i32, i32* @IB_EVENT_PATH_MIG_ERR, align 4
  %111 = call i32 @mthca_qp_event(%struct.mthca_dev* %102, i32 %109, i32 %110)
  br label %216

112:                                              ; preds = %13
  %113 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %114 = load %struct.mthca_eqe*, %struct.mthca_eqe** %5, align 8
  %115 = getelementptr inbounds %struct.mthca_eqe, %struct.mthca_eqe* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @be32_to_cpu(i32 %118)
  %120 = and i32 %119, 16777215
  %121 = load i32, i32* @IB_EVENT_QP_REQ_ERR, align 4
  %122 = call i32 @mthca_qp_event(%struct.mthca_dev* %113, i32 %120, i32 %121)
  br label %216

123:                                              ; preds = %13
  %124 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %125 = load %struct.mthca_eqe*, %struct.mthca_eqe** %5, align 8
  %126 = getelementptr inbounds %struct.mthca_eqe, %struct.mthca_eqe* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @be32_to_cpu(i32 %129)
  %131 = and i32 %130, 16777215
  %132 = load i32, i32* @IB_EVENT_QP_ACCESS_ERR, align 4
  %133 = call i32 @mthca_qp_event(%struct.mthca_dev* %124, i32 %131, i32 %132)
  br label %216

134:                                              ; preds = %13
  %135 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %136 = load %struct.mthca_eqe*, %struct.mthca_eqe** %5, align 8
  %137 = getelementptr inbounds %struct.mthca_eqe, %struct.mthca_eqe* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @be16_to_cpu(i32 %140)
  %142 = load %struct.mthca_eqe*, %struct.mthca_eqe** %5, align 8
  %143 = getelementptr inbounds %struct.mthca_eqe, %struct.mthca_eqe* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.mthca_eqe*, %struct.mthca_eqe** %5, align 8
  %148 = getelementptr inbounds %struct.mthca_eqe, %struct.mthca_eqe* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @be64_to_cpu(i32 %151)
  %153 = call i32 @mthca_cmd_event(%struct.mthca_dev* %135, i32 %141, i32 %146, i32 %152)
  br label %216

154:                                              ; preds = %13
  %155 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %156 = load %struct.mthca_eqe*, %struct.mthca_eqe** %5, align 8
  %157 = getelementptr inbounds %struct.mthca_eqe, %struct.mthca_eqe* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @be32_to_cpu(i32 %160)
  %162 = ashr i32 %161, 28
  %163 = and i32 %162, 3
  %164 = load %struct.mthca_eqe*, %struct.mthca_eqe** %5, align 8
  %165 = getelementptr inbounds %struct.mthca_eqe, %struct.mthca_eqe* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = icmp eq i32 %166, 4
  %168 = zext i1 %167 to i32
  %169 = call i32 @port_change(%struct.mthca_dev* %155, i32 %163, i32 %168)
  br label %216

170:                                              ; preds = %13
  %171 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %172 = load %struct.mthca_eqe*, %struct.mthca_eqe** %5, align 8
  %173 = getelementptr inbounds %struct.mthca_eqe, %struct.mthca_eqe* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = icmp eq i32 %176, 1
  %178 = zext i1 %177 to i64
  %179 = select i1 %177, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0)
  %180 = load %struct.mthca_eqe*, %struct.mthca_eqe** %5, align 8
  %181 = getelementptr inbounds %struct.mthca_eqe, %struct.mthca_eqe* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @be32_to_cpu(i32 %184)
  %186 = and i32 %185, 16777215
  %187 = call i32 (%struct.mthca_dev*, i8*, ...) @mthca_warn(%struct.mthca_dev* %171, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %179, i32 %186)
  %188 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %189 = load %struct.mthca_eqe*, %struct.mthca_eqe** %5, align 8
  %190 = getelementptr inbounds %struct.mthca_eqe, %struct.mthca_eqe* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @be32_to_cpu(i32 %193)
  %195 = load i32, i32* @IB_EVENT_CQ_ERR, align 4
  %196 = call i32 @mthca_cq_event(%struct.mthca_dev* %188, i32 %194, i32 %195)
  br label %216

197:                                              ; preds = %13
  %198 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %199 = load %struct.mthca_eq*, %struct.mthca_eq** %4, align 8
  %200 = getelementptr inbounds %struct.mthca_eq, %struct.mthca_eq* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = call i32 (%struct.mthca_dev*, i8*, ...) @mthca_warn(%struct.mthca_dev* %198, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %201)
  br label %216

203:                                              ; preds = %13, %13, %13, %13
  br label %204

204:                                              ; preds = %13, %203
  %205 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %206 = load %struct.mthca_eqe*, %struct.mthca_eqe** %5, align 8
  %207 = getelementptr inbounds %struct.mthca_eqe, %struct.mthca_eqe* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.mthca_eqe*, %struct.mthca_eqe** %5, align 8
  %210 = getelementptr inbounds %struct.mthca_eqe, %struct.mthca_eqe* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.mthca_eq*, %struct.mthca_eq** %4, align 8
  %213 = getelementptr inbounds %struct.mthca_eq, %struct.mthca_eq* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = call i32 (%struct.mthca_dev*, i8*, ...) @mthca_warn(%struct.mthca_dev* %205, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %208, i32 %211, i32 %214)
  br label %216

216:                                              ; preds = %204, %197, %170, %154, %134, %123, %112, %101, %90, %79, %68, %57, %46, %35, %18
  %217 = load %struct.mthca_eqe*, %struct.mthca_eqe** %5, align 8
  %218 = call i32 @set_eqe_hw(%struct.mthca_eqe* %217)
  %219 = load %struct.mthca_eq*, %struct.mthca_eq** %4, align 8
  %220 = getelementptr inbounds %struct.mthca_eq, %struct.mthca_eq* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %220, align 4
  store i32 1, i32* %7, align 4
  %223 = load i32, i32* %8, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %8, align 4
  %225 = load i32, i32* %8, align 4
  %226 = load i32, i32* @MTHCA_NUM_SPARE_EQE, align 4
  %227 = icmp sge i32 %225, %226
  %228 = zext i1 %227 to i32
  %229 = call i64 @unlikely(i32 %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %238

231:                                              ; preds = %216
  %232 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %233 = load %struct.mthca_eq*, %struct.mthca_eq** %4, align 8
  %234 = load %struct.mthca_eq*, %struct.mthca_eq** %4, align 8
  %235 = getelementptr inbounds %struct.mthca_eq, %struct.mthca_eq* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @set_eq_ci(%struct.mthca_dev* %232, %struct.mthca_eq* %233, i32 %236)
  store i32 0, i32* %8, align 4
  br label %238

238:                                              ; preds = %231, %216
  br label %9

239:                                              ; preds = %9
  %240 = load i32, i32* %7, align 4
  ret i32 %240
}

declare dso_local %struct.mthca_eqe* @next_eqe_sw(%struct.mthca_eq*) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @disarm_cq(%struct.mthca_dev*, i32, i32) #1

declare dso_local i32 @mthca_cq_completion(%struct.mthca_dev*, i32) #1

declare dso_local i32 @mthca_qp_event(%struct.mthca_dev*, i32, i32) #1

declare dso_local i32 @mthca_srq_event(%struct.mthca_dev*, i32, i32) #1

declare dso_local i32 @mthca_cmd_event(%struct.mthca_dev*, i32, i32, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @port_change(%struct.mthca_dev*, i32, i32) #1

declare dso_local i32 @mthca_warn(%struct.mthca_dev*, i8*, ...) #1

declare dso_local i32 @mthca_cq_event(%struct.mthca_dev*, i32, i32) #1

declare dso_local i32 @set_eqe_hw(%struct.mthca_eqe*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @set_eq_ci(%struct.mthca_dev*, %struct.mthca_eq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
