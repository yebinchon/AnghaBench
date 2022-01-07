; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cm.c_cm_init_qp_rts_attr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cm.c_cm_init_qp_rts_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm_id_private = type { i32, %struct.TYPE_10__, %struct.TYPE_7__, i32, i32, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.ib_qp_attr = type { i8*, %struct.TYPE_9__, i32, i32, i32, i32, i32, i32, i32, i32 }

@IB_CM_LAP_UNINIT = common dso_local global i32 0, align 4
@IB_QP_STATE = common dso_local global i32 0, align 4
@IB_QP_SQ_PSN = common dso_local global i32 0, align 4
@IB_QP_RETRY_CNT = common dso_local global i32 0, align 4
@IB_QP_RNR_RETRY = common dso_local global i32 0, align 4
@IB_QP_MAX_QP_RD_ATOMIC = common dso_local global i32 0, align 4
@IB_QP_TIMEOUT = common dso_local global i32 0, align 4
@IB_QP_PATH_MIG_STATE = common dso_local global i32 0, align 4
@IB_MIG_REARM = common dso_local global i8* null, align 8
@IB_QP_ALT_PATH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cm_id_private*, %struct.ib_qp_attr*, i32*)* @cm_init_qp_rts_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cm_init_qp_rts_attr(%struct.cm_id_private* %0, %struct.ib_qp_attr* %1, i32* %2) #0 {
  %4 = alloca %struct.cm_id_private*, align 8
  %5 = alloca %struct.ib_qp_attr*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.cm_id_private* %0, %struct.cm_id_private** %4, align 8
  store %struct.ib_qp_attr* %1, %struct.ib_qp_attr** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %10 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %9, i32 0, i32 0
  %11 = load i64, i64* %7, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %14 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %13, i32 0, i32 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %126 [
    i32 131, label %17
    i32 134, label %17
    i32 133, label %17
    i32 135, label %17
    i32 132, label %17
    i32 136, label %17
    i32 137, label %17
  ]

17:                                               ; preds = %3, %3, %3, %3, %3, %3, %3
  %18 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %19 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %18, i32 0, i32 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @IB_CM_LAP_UNINIT, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %90

24:                                               ; preds = %17
  %25 = load i32, i32* @IB_QP_STATE, align 4
  %26 = load i32, i32* @IB_QP_SQ_PSN, align 4
  %27 = or i32 %25, %26
  %28 = load i32*, i32** %6, align 8
  store i32 %27, i32* %28, align 4
  %29 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %30 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @be32_to_cpu(i32 %31)
  %33 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %5, align 8
  %34 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %33, i32 0, i32 9
  store i32 %32, i32* %34, align 8
  %35 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %36 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 8
  switch i32 %37, label %73 [
    i32 130, label %38
    i32 129, label %38
    i32 128, label %62
  ]

38:                                               ; preds = %24, %24
  %39 = load i32, i32* @IB_QP_RETRY_CNT, align 4
  %40 = load i32, i32* @IB_QP_RNR_RETRY, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @IB_QP_MAX_QP_RD_ATOMIC, align 4
  %43 = or i32 %41, %42
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %43
  store i32 %46, i32* %44, align 4
  %47 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %48 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %5, align 8
  %51 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %50, i32 0, i32 8
  store i32 %49, i32* %51, align 4
  %52 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %53 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %5, align 8
  %56 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %55, i32 0, i32 7
  store i32 %54, i32* %56, align 8
  %57 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %58 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %5, align 8
  %61 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %60, i32 0, i32 6
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %24, %38
  %63 = load i32, i32* @IB_QP_TIMEOUT, align 4
  %64 = load i32*, i32** %6, align 8
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %63
  store i32 %66, i32* %64, align 4
  %67 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %68 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %5, align 8
  %72 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %71, i32 0, i32 5
  store i32 %70, i32* %72, align 8
  br label %74

73:                                               ; preds = %24
  br label %74

74:                                               ; preds = %73, %62
  %75 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %76 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %74
  %82 = load i32, i32* @IB_QP_PATH_MIG_STATE, align 4
  %83 = load i32*, i32** %6, align 8
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %82
  store i32 %85, i32* %83, align 4
  %86 = load i8*, i8** @IB_MIG_REARM, align 8
  %87 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %5, align 8
  %88 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %87, i32 0, i32 0
  store i8* %86, i8** %88, align 8
  br label %89

89:                                               ; preds = %81, %74
  br label %125

90:                                               ; preds = %17
  %91 = load i32, i32* @IB_QP_ALT_PATH, align 4
  %92 = load i32, i32* @IB_QP_PATH_MIG_STATE, align 4
  %93 = or i32 %91, %92
  %94 = load i32*, i32** %6, align 8
  store i32 %93, i32* %94, align 4
  %95 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %96 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 3
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %5, align 8
  %102 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %101, i32 0, i32 4
  store i32 %100, i32* %102, align 4
  %103 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %104 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %5, align 8
  %108 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %107, i32 0, i32 3
  store i32 %106, i32* %108, align 8
  %109 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %110 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %5, align 8
  %114 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 4
  %115 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %5, align 8
  %116 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %115, i32 0, i32 1
  %117 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %118 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  %120 = bitcast %struct.TYPE_9__* %116 to i8*
  %121 = bitcast %struct.TYPE_9__* %119 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %120, i8* align 8 %121, i64 4, i1 false)
  %122 = load i8*, i8** @IB_MIG_REARM, align 8
  %123 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %5, align 8
  %124 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %123, i32 0, i32 0
  store i8* %122, i8** %124, align 8
  br label %125

125:                                              ; preds = %90, %89
  store i32 0, i32* %8, align 4
  br label %129

126:                                              ; preds = %3
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %8, align 4
  br label %129

129:                                              ; preds = %126, %125
  %130 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %131 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %130, i32 0, i32 0
  %132 = load i64, i64* %7, align 8
  %133 = call i32 @spin_unlock_irqrestore(i32* %131, i64 %132)
  %134 = load i32, i32* %8, align 4
  ret i32 %134
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @be32_to_cpu(i32) #1

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
