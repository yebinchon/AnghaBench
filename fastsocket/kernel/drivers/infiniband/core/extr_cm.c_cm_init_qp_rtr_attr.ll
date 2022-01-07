; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cm.c_cm_init_qp_rtr_attr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cm.c_cm_init_qp_rtr_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm_id_private = type { i32, %struct.TYPE_10__, i32, i32, i32, i32, i32, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ib_qp_attr = type { %struct.TYPE_9__, i32, i32, i32, i32, i32, i8*, i8*, i32, i32 }

@IB_QP_STATE = common dso_local global i32 0, align 4
@IB_QP_AV = common dso_local global i32 0, align 4
@IB_QP_PATH_MTU = common dso_local global i32 0, align 4
@IB_QP_DEST_QPN = common dso_local global i32 0, align 4
@IB_QP_RQ_PSN = common dso_local global i32 0, align 4
@IB_QPT_RC = common dso_local global i32 0, align 4
@IB_QPT_XRC_TGT = common dso_local global i32 0, align 4
@IB_QP_MAX_DEST_RD_ATOMIC = common dso_local global i32 0, align 4
@IB_QP_MIN_RNR_TIMER = common dso_local global i32 0, align 4
@IB_QP_ALT_PATH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cm_id_private*, %struct.ib_qp_attr*, i32*)* @cm_init_qp_rtr_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cm_init_qp_rtr_attr(%struct.cm_id_private* %0, %struct.ib_qp_attr* %1, i32* %2) #0 {
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
  switch i32 %16, label %116 [
    i32 128, label %17
    i32 131, label %17
    i32 130, label %17
    i32 132, label %17
    i32 129, label %17
    i32 133, label %17
    i32 134, label %17
  ]

17:                                               ; preds = %3, %3, %3, %3, %3, %3, %3
  %18 = load i32, i32* @IB_QP_STATE, align 4
  %19 = load i32, i32* @IB_QP_AV, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @IB_QP_PATH_MTU, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @IB_QP_DEST_QPN, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @IB_QP_RQ_PSN, align 4
  %26 = or i32 %24, %25
  %27 = load i32*, i32** %6, align 8
  store i32 %26, i32* %27, align 4
  %28 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %29 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %28, i32 0, i32 7
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %5, align 8
  %33 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %32, i32 0, i32 9
  store i32 %31, i32* %33, align 4
  %34 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %35 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %5, align 8
  %38 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %37, i32 0, i32 8
  store i32 %36, i32* %38, align 8
  %39 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %40 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @be32_to_cpu(i32 %41)
  %43 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %5, align 8
  %44 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %43, i32 0, i32 7
  store i8* %42, i8** %44, align 8
  %45 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %46 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = call i8* @be32_to_cpu(i32 %47)
  %49 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %5, align 8
  %50 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %49, i32 0, i32 6
  store i8* %48, i8** %50, align 8
  %51 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %52 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @IB_QPT_RC, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %62, label %56

56:                                               ; preds = %17
  %57 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %58 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @IB_QPT_XRC_TGT, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %76

62:                                               ; preds = %56, %17
  %63 = load i32, i32* @IB_QP_MAX_DEST_RD_ATOMIC, align 4
  %64 = load i32, i32* @IB_QP_MIN_RNR_TIMER, align 4
  %65 = or i32 %63, %64
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %65
  store i32 %68, i32* %66, align 4
  %69 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %70 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %5, align 8
  %73 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %72, i32 0, i32 5
  store i32 %71, i32* %73, align 4
  %74 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %5, align 8
  %75 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %74, i32 0, i32 4
  store i32 0, i32* %75, align 8
  br label %76

76:                                               ; preds = %62, %56
  %77 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %78 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %115

83:                                               ; preds = %76
  %84 = load i32, i32* @IB_QP_ALT_PATH, align 4
  %85 = load i32*, i32** %6, align 8
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %84
  store i32 %87, i32* %85, align 4
  %88 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %89 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 3
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %5, align 8
  %95 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %94, i32 0, i32 3
  store i32 %93, i32* %95, align 4
  %96 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %97 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %5, align 8
  %101 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 8
  %102 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %103 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %5, align 8
  %107 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  %108 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %5, align 8
  %109 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %108, i32 0, i32 0
  %110 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %111 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = bitcast %struct.TYPE_9__* %109 to i8*
  %114 = bitcast %struct.TYPE_9__* %112 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %113, i8* align 8 %114, i64 4, i1 false)
  br label %115

115:                                              ; preds = %83, %76
  store i32 0, i32* %8, align 4
  br label %119

116:                                              ; preds = %3
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %8, align 4
  br label %119

119:                                              ; preds = %116, %115
  %120 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %121 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %120, i32 0, i32 0
  %122 = load i64, i64* %7, align 8
  %123 = call i32 @spin_unlock_irqrestore(i32* %121, i64 %122)
  %124 = load i32, i32* %8, align 4
  ret i32 %124
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i8* @be32_to_cpu(i32) #1

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
