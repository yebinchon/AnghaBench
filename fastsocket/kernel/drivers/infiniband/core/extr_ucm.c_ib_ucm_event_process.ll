; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_ucm.c_ib_ucm_event_process.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_ucm.c_ib_ucm_event_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cm_event = type { i32, i8*, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, %struct.TYPE_20__, %struct.TYPE_16__, %struct.TYPE_29__, %struct.TYPE_27__, %struct.TYPE_25__, %struct.TYPE_23__, i32, %struct.TYPE_21__ }
%struct.TYPE_20__ = type { i8*, i64 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_29__ = type { i8*, i64, i32 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_25__ = type { i8*, i64, i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_21__ = type { i32 }
%struct.ib_ucm_event = type { i8*, %struct.TYPE_19__, i8*, i64, i64 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_30__, %struct.TYPE_28__, %struct.TYPE_26__, %struct.TYPE_24__, %struct.TYPE_22__, i32, i32 }
%struct.TYPE_30__ = type { i32, i32 }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_22__ = type { i32 }

@IB_CM_REQ_PRIVATE_DATA_SIZE = common dso_local global i64 0, align 8
@IB_UCM_PRES_PRIMARY = common dso_local global i32 0, align 4
@IB_UCM_PRES_ALTERNATE = common dso_local global i32 0, align 4
@IB_CM_REP_PRIVATE_DATA_SIZE = common dso_local global i64 0, align 8
@IB_CM_RTU_PRIVATE_DATA_SIZE = common dso_local global i64 0, align 8
@IB_CM_DREQ_PRIVATE_DATA_SIZE = common dso_local global i64 0, align 8
@IB_CM_DREP_PRIVATE_DATA_SIZE = common dso_local global i64 0, align 8
@IB_CM_MRA_PRIVATE_DATA_SIZE = common dso_local global i64 0, align 8
@IB_CM_REJ_PRIVATE_DATA_SIZE = common dso_local global i64 0, align 8
@IB_CM_LAP_PRIVATE_DATA_SIZE = common dso_local global i64 0, align 8
@IB_CM_APR_PRIVATE_DATA_SIZE = common dso_local global i64 0, align 8
@IB_CM_SIDR_REQ_PRIVATE_DATA_SIZE = common dso_local global i64 0, align 8
@IB_CM_SIDR_REP_PRIVATE_DATA_SIZE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@IB_UCM_PRES_DATA = common dso_local global i32 0, align 4
@IB_UCM_PRES_INFO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_cm_event*, %struct.ib_ucm_event*)* @ib_ucm_event_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ib_ucm_event_process(%struct.ib_cm_event* %0, %struct.ib_ucm_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_cm_event*, align 8
  %5 = alloca %struct.ib_ucm_event*, align 8
  %6 = alloca i8*, align 8
  store %struct.ib_cm_event* %0, %struct.ib_cm_event** %4, align 8
  store %struct.ib_ucm_event* %1, %struct.ib_ucm_event** %5, align 8
  store i8* null, i8** %6, align 8
  %7 = load %struct.ib_cm_event*, %struct.ib_cm_event** %4, align 8
  %8 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %223 [
    i32 131, label %10
    i32 132, label %42
    i32 130, label %54
    i32 136, label %66
    i32 137, label %78
    i32 134, label %90
    i32 133, label %104
    i32 135, label %130
    i32 138, label %149
    i32 128, label %175
    i32 129, label %199
  ]

10:                                               ; preds = %2
  %11 = load %struct.ib_ucm_event*, %struct.ib_ucm_event** %5, align 8
  %12 = getelementptr inbounds %struct.ib_ucm_event, %struct.ib_ucm_event* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 8
  %15 = load %struct.ib_cm_event*, %struct.ib_cm_event** %4, align 8
  %16 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 8
  %18 = call i32 @ib_ucm_event_req_get(i32* %14, %struct.TYPE_21__* %17)
  %19 = load i64, i64* @IB_CM_REQ_PRIVATE_DATA_SIZE, align 8
  %20 = load %struct.ib_ucm_event*, %struct.ib_ucm_event** %5, align 8
  %21 = getelementptr inbounds %struct.ib_ucm_event, %struct.ib_ucm_event* %20, i32 0, i32 4
  store i64 %19, i64* %21, align 8
  %22 = load i32, i32* @IB_UCM_PRES_PRIMARY, align 4
  %23 = load %struct.ib_ucm_event*, %struct.ib_ucm_event** %5, align 8
  %24 = getelementptr inbounds %struct.ib_ucm_event, %struct.ib_ucm_event* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 8
  %26 = load %struct.ib_cm_event*, %struct.ib_cm_event** %4, align 8
  %27 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %10
  %33 = load i32, i32* @IB_UCM_PRES_ALTERNATE, align 4
  br label %35

34:                                               ; preds = %10
  br label %35

35:                                               ; preds = %34, %32
  %36 = phi i32 [ %33, %32 ], [ 0, %34 ]
  %37 = load %struct.ib_ucm_event*, %struct.ib_ucm_event** %5, align 8
  %38 = getelementptr inbounds %struct.ib_ucm_event, %struct.ib_ucm_event* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, %36
  store i32 %41, i32* %39, align 8
  br label %232

42:                                               ; preds = %2
  %43 = load %struct.ib_ucm_event*, %struct.ib_ucm_event** %5, align 8
  %44 = getelementptr inbounds %struct.ib_ucm_event, %struct.ib_ucm_event* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 7
  %47 = load %struct.ib_cm_event*, %struct.ib_cm_event** %4, align 8
  %48 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 7
  %50 = call i32 @ib_ucm_event_rep_get(i32* %46, i32* %49)
  %51 = load i64, i64* @IB_CM_REP_PRIVATE_DATA_SIZE, align 8
  %52 = load %struct.ib_ucm_event*, %struct.ib_ucm_event** %5, align 8
  %53 = getelementptr inbounds %struct.ib_ucm_event, %struct.ib_ucm_event* %52, i32 0, i32 4
  store i64 %51, i64* %53, align 8
  br label %232

54:                                               ; preds = %2
  %55 = load i64, i64* @IB_CM_RTU_PRIVATE_DATA_SIZE, align 8
  %56 = load %struct.ib_ucm_event*, %struct.ib_ucm_event** %5, align 8
  %57 = getelementptr inbounds %struct.ib_ucm_event, %struct.ib_ucm_event* %56, i32 0, i32 4
  store i64 %55, i64* %57, align 8
  %58 = load %struct.ib_cm_event*, %struct.ib_cm_event** %4, align 8
  %59 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.ib_ucm_event*, %struct.ib_ucm_event** %5, align 8
  %63 = getelementptr inbounds %struct.ib_ucm_event, %struct.ib_ucm_event* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 0
  store i32 %61, i32* %65, align 4
  br label %232

66:                                               ; preds = %2
  %67 = load i64, i64* @IB_CM_DREQ_PRIVATE_DATA_SIZE, align 8
  %68 = load %struct.ib_ucm_event*, %struct.ib_ucm_event** %5, align 8
  %69 = getelementptr inbounds %struct.ib_ucm_event, %struct.ib_ucm_event* %68, i32 0, i32 4
  store i64 %67, i64* %69, align 8
  %70 = load %struct.ib_cm_event*, %struct.ib_cm_event** %4, align 8
  %71 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.ib_ucm_event*, %struct.ib_ucm_event** %5, align 8
  %75 = getelementptr inbounds %struct.ib_ucm_event, %struct.ib_ucm_event* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 0
  store i32 %73, i32* %77, align 4
  br label %232

78:                                               ; preds = %2
  %79 = load i64, i64* @IB_CM_DREP_PRIVATE_DATA_SIZE, align 8
  %80 = load %struct.ib_ucm_event*, %struct.ib_ucm_event** %5, align 8
  %81 = getelementptr inbounds %struct.ib_ucm_event, %struct.ib_ucm_event* %80, i32 0, i32 4
  store i64 %79, i64* %81, align 8
  %82 = load %struct.ib_cm_event*, %struct.ib_cm_event** %4, align 8
  %83 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.ib_ucm_event*, %struct.ib_ucm_event** %5, align 8
  %87 = getelementptr inbounds %struct.ib_ucm_event, %struct.ib_ucm_event* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 0
  store i32 %85, i32* %89, align 4
  br label %232

90:                                               ; preds = %2
  %91 = load %struct.ib_cm_event*, %struct.ib_cm_event** %4, align 8
  %92 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 6
  %94 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.ib_ucm_event*, %struct.ib_ucm_event** %5, align 8
  %97 = getelementptr inbounds %struct.ib_ucm_event, %struct.ib_ucm_event* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 6
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 0
  store i32 %95, i32* %100, align 4
  %101 = load i64, i64* @IB_CM_MRA_PRIVATE_DATA_SIZE, align 8
  %102 = load %struct.ib_ucm_event*, %struct.ib_ucm_event** %5, align 8
  %103 = getelementptr inbounds %struct.ib_ucm_event, %struct.ib_ucm_event* %102, i32 0, i32 4
  store i64 %101, i64* %103, align 8
  br label %232

104:                                              ; preds = %2
  %105 = load %struct.ib_cm_event*, %struct.ib_cm_event** %4, align 8
  %106 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 5
  %108 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.ib_ucm_event*, %struct.ib_ucm_event** %5, align 8
  %111 = getelementptr inbounds %struct.ib_ucm_event, %struct.ib_ucm_event* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 5
  %114 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %113, i32 0, i32 0
  store i32 %109, i32* %114, align 4
  %115 = load i64, i64* @IB_CM_REJ_PRIVATE_DATA_SIZE, align 8
  %116 = load %struct.ib_ucm_event*, %struct.ib_ucm_event** %5, align 8
  %117 = getelementptr inbounds %struct.ib_ucm_event, %struct.ib_ucm_event* %116, i32 0, i32 4
  store i64 %115, i64* %117, align 8
  %118 = load %struct.ib_cm_event*, %struct.ib_cm_event** %4, align 8
  %119 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 5
  %121 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.ib_ucm_event*, %struct.ib_ucm_event** %5, align 8
  %124 = getelementptr inbounds %struct.ib_ucm_event, %struct.ib_ucm_event* %123, i32 0, i32 3
  store i64 %122, i64* %124, align 8
  %125 = load %struct.ib_cm_event*, %struct.ib_cm_event** %4, align 8
  %126 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 5
  %128 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  store i8* %129, i8** %6, align 8
  br label %232

130:                                              ; preds = %2
  %131 = load %struct.ib_ucm_event*, %struct.ib_ucm_event** %5, align 8
  %132 = getelementptr inbounds %struct.ib_ucm_event, %struct.ib_ucm_event* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 4
  %135 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %134, i32 0, i32 0
  %136 = load %struct.ib_cm_event*, %struct.ib_cm_event** %4, align 8
  %137 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 4
  %139 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @ib_copy_path_rec_to_user(i32* %135, i32 %140)
  %142 = load i64, i64* @IB_CM_LAP_PRIVATE_DATA_SIZE, align 8
  %143 = load %struct.ib_ucm_event*, %struct.ib_ucm_event** %5, align 8
  %144 = getelementptr inbounds %struct.ib_ucm_event, %struct.ib_ucm_event* %143, i32 0, i32 4
  store i64 %142, i64* %144, align 8
  %145 = load i32, i32* @IB_UCM_PRES_ALTERNATE, align 4
  %146 = load %struct.ib_ucm_event*, %struct.ib_ucm_event** %5, align 8
  %147 = getelementptr inbounds %struct.ib_ucm_event, %struct.ib_ucm_event* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %147, i32 0, i32 0
  store i32 %145, i32* %148, align 8
  br label %232

149:                                              ; preds = %2
  %150 = load %struct.ib_cm_event*, %struct.ib_cm_event** %4, align 8
  %151 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 3
  %153 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.ib_ucm_event*, %struct.ib_ucm_event** %5, align 8
  %156 = getelementptr inbounds %struct.ib_ucm_event, %struct.ib_ucm_event* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 3
  %159 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %158, i32 0, i32 0
  store i32 %154, i32* %159, align 4
  %160 = load i64, i64* @IB_CM_APR_PRIVATE_DATA_SIZE, align 8
  %161 = load %struct.ib_ucm_event*, %struct.ib_ucm_event** %5, align 8
  %162 = getelementptr inbounds %struct.ib_ucm_event, %struct.ib_ucm_event* %161, i32 0, i32 4
  store i64 %160, i64* %162, align 8
  %163 = load %struct.ib_cm_event*, %struct.ib_cm_event** %4, align 8
  %164 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 3
  %166 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.ib_ucm_event*, %struct.ib_ucm_event** %5, align 8
  %169 = getelementptr inbounds %struct.ib_ucm_event, %struct.ib_ucm_event* %168, i32 0, i32 3
  store i64 %167, i64* %169, align 8
  %170 = load %struct.ib_cm_event*, %struct.ib_cm_event** %4, align 8
  %171 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i32 0, i32 3
  %173 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %172, i32 0, i32 0
  %174 = load i8*, i8** %173, align 8
  store i8* %174, i8** %6, align 8
  br label %232

175:                                              ; preds = %2
  %176 = load %struct.ib_cm_event*, %struct.ib_cm_event** %4, align 8
  %177 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.ib_ucm_event*, %struct.ib_ucm_event** %5, align 8
  %182 = getelementptr inbounds %struct.ib_ucm_event, %struct.ib_ucm_event* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %184, i32 0, i32 1
  store i32 %180, i32* %185, align 4
  %186 = load %struct.ib_cm_event*, %struct.ib_cm_event** %4, align 8
  %187 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %187, i32 0, i32 2
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.ib_ucm_event*, %struct.ib_ucm_event** %5, align 8
  %192 = getelementptr inbounds %struct.ib_ucm_event, %struct.ib_ucm_event* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %194, i32 0, i32 0
  store i32 %190, i32* %195, align 4
  %196 = load i64, i64* @IB_CM_SIDR_REQ_PRIVATE_DATA_SIZE, align 8
  %197 = load %struct.ib_ucm_event*, %struct.ib_ucm_event** %5, align 8
  %198 = getelementptr inbounds %struct.ib_ucm_event, %struct.ib_ucm_event* %197, i32 0, i32 4
  store i64 %196, i64* %198, align 8
  br label %232

199:                                              ; preds = %2
  %200 = load %struct.ib_ucm_event*, %struct.ib_ucm_event** %5, align 8
  %201 = getelementptr inbounds %struct.ib_ucm_event, %struct.ib_ucm_event* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %202, i32 0, i32 1
  %204 = load %struct.ib_cm_event*, %struct.ib_cm_event** %4, align 8
  %205 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %204, i32 0, i32 2
  %206 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %205, i32 0, i32 1
  %207 = call i32 @ib_ucm_event_sidr_rep_get(i32* %203, %struct.TYPE_20__* %206)
  %208 = load i64, i64* @IB_CM_SIDR_REP_PRIVATE_DATA_SIZE, align 8
  %209 = load %struct.ib_ucm_event*, %struct.ib_ucm_event** %5, align 8
  %210 = getelementptr inbounds %struct.ib_ucm_event, %struct.ib_ucm_event* %209, i32 0, i32 4
  store i64 %208, i64* %210, align 8
  %211 = load %struct.ib_cm_event*, %struct.ib_cm_event** %4, align 8
  %212 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %211, i32 0, i32 2
  %213 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = load %struct.ib_ucm_event*, %struct.ib_ucm_event** %5, align 8
  %217 = getelementptr inbounds %struct.ib_ucm_event, %struct.ib_ucm_event* %216, i32 0, i32 3
  store i64 %215, i64* %217, align 8
  %218 = load %struct.ib_cm_event*, %struct.ib_cm_event** %4, align 8
  %219 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %218, i32 0, i32 2
  %220 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %220, i32 0, i32 0
  %222 = load i8*, i8** %221, align 8
  store i8* %222, i8** %6, align 8
  br label %232

223:                                              ; preds = %2
  %224 = load %struct.ib_cm_event*, %struct.ib_cm_event** %4, align 8
  %225 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %224, i32 0, i32 2
  %226 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.ib_ucm_event*, %struct.ib_ucm_event** %5, align 8
  %229 = getelementptr inbounds %struct.ib_ucm_event, %struct.ib_ucm_event* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %230, i32 0, i32 0
  store i32 %227, i32* %231, align 4
  br label %232

232:                                              ; preds = %223, %199, %175, %149, %130, %104, %90, %78, %66, %54, %42, %35
  %233 = load %struct.ib_ucm_event*, %struct.ib_ucm_event** %5, align 8
  %234 = getelementptr inbounds %struct.ib_ucm_event, %struct.ib_ucm_event* %233, i32 0, i32 4
  %235 = load i64, i64* %234, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %260

237:                                              ; preds = %232
  %238 = load %struct.ib_cm_event*, %struct.ib_cm_event** %4, align 8
  %239 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %238, i32 0, i32 1
  %240 = load i8*, i8** %239, align 8
  %241 = load %struct.ib_ucm_event*, %struct.ib_ucm_event** %5, align 8
  %242 = getelementptr inbounds %struct.ib_ucm_event, %struct.ib_ucm_event* %241, i32 0, i32 4
  %243 = load i64, i64* %242, align 8
  %244 = load i32, i32* @GFP_KERNEL, align 4
  %245 = call i8* @kmemdup(i8* %240, i64 %243, i32 %244)
  %246 = load %struct.ib_ucm_event*, %struct.ib_ucm_event** %5, align 8
  %247 = getelementptr inbounds %struct.ib_ucm_event, %struct.ib_ucm_event* %246, i32 0, i32 0
  store i8* %245, i8** %247, align 8
  %248 = load %struct.ib_ucm_event*, %struct.ib_ucm_event** %5, align 8
  %249 = getelementptr inbounds %struct.ib_ucm_event, %struct.ib_ucm_event* %248, i32 0, i32 0
  %250 = load i8*, i8** %249, align 8
  %251 = icmp ne i8* %250, null
  br i1 %251, label %253, label %252

252:                                              ; preds = %237
  br label %292

253:                                              ; preds = %237
  %254 = load i32, i32* @IB_UCM_PRES_DATA, align 4
  %255 = load %struct.ib_ucm_event*, %struct.ib_ucm_event** %5, align 8
  %256 = getelementptr inbounds %struct.ib_ucm_event, %struct.ib_ucm_event* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = or i32 %258, %254
  store i32 %259, i32* %257, align 8
  br label %260

260:                                              ; preds = %253, %232
  %261 = load %struct.ib_ucm_event*, %struct.ib_ucm_event** %5, align 8
  %262 = getelementptr inbounds %struct.ib_ucm_event, %struct.ib_ucm_event* %261, i32 0, i32 3
  %263 = load i64, i64* %262, align 8
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %286

265:                                              ; preds = %260
  %266 = load i8*, i8** %6, align 8
  %267 = load %struct.ib_ucm_event*, %struct.ib_ucm_event** %5, align 8
  %268 = getelementptr inbounds %struct.ib_ucm_event, %struct.ib_ucm_event* %267, i32 0, i32 3
  %269 = load i64, i64* %268, align 8
  %270 = load i32, i32* @GFP_KERNEL, align 4
  %271 = call i8* @kmemdup(i8* %266, i64 %269, i32 %270)
  %272 = load %struct.ib_ucm_event*, %struct.ib_ucm_event** %5, align 8
  %273 = getelementptr inbounds %struct.ib_ucm_event, %struct.ib_ucm_event* %272, i32 0, i32 2
  store i8* %271, i8** %273, align 8
  %274 = load %struct.ib_ucm_event*, %struct.ib_ucm_event** %5, align 8
  %275 = getelementptr inbounds %struct.ib_ucm_event, %struct.ib_ucm_event* %274, i32 0, i32 2
  %276 = load i8*, i8** %275, align 8
  %277 = icmp ne i8* %276, null
  br i1 %277, label %279, label %278

278:                                              ; preds = %265
  br label %287

279:                                              ; preds = %265
  %280 = load i32, i32* @IB_UCM_PRES_INFO, align 4
  %281 = load %struct.ib_ucm_event*, %struct.ib_ucm_event** %5, align 8
  %282 = getelementptr inbounds %struct.ib_ucm_event, %struct.ib_ucm_event* %281, i32 0, i32 1
  %283 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = or i32 %284, %280
  store i32 %285, i32* %283, align 8
  br label %286

286:                                              ; preds = %279, %260
  store i32 0, i32* %3, align 4
  br label %295

287:                                              ; preds = %278
  %288 = load %struct.ib_ucm_event*, %struct.ib_ucm_event** %5, align 8
  %289 = getelementptr inbounds %struct.ib_ucm_event, %struct.ib_ucm_event* %288, i32 0, i32 0
  %290 = load i8*, i8** %289, align 8
  %291 = call i32 @kfree(i8* %290)
  br label %292

292:                                              ; preds = %287, %252
  %293 = load i32, i32* @ENOMEM, align 4
  %294 = sub nsw i32 0, %293
  store i32 %294, i32* %3, align 4
  br label %295

295:                                              ; preds = %292, %286
  %296 = load i32, i32* %3, align 4
  ret i32 %296
}

declare dso_local i32 @ib_ucm_event_req_get(i32*, %struct.TYPE_21__*) #1

declare dso_local i32 @ib_ucm_event_rep_get(i32*, i32*) #1

declare dso_local i32 @ib_copy_path_rec_to_user(i32*, i32) #1

declare dso_local i32 @ib_ucm_event_sidr_rep_get(i32*, %struct.TYPE_20__*) #1

declare dso_local i8* @kmemdup(i8*, i64, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
