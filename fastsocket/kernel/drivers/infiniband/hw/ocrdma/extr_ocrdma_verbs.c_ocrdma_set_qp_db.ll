; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_set_qp_db.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_set_qp_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i64 }
%struct.ocrdma_qp = type { i32, i64, i64 }
%struct.ocrdma_pd = type { i32 }

@OCRDMA_GEN2_FAMILY = common dso_local global i64 0, align 8
@OCRDMA_DB_GEN2_SQ_OFFSET = common dso_local global i64 0, align 8
@OCRDMA_DB_GEN2_RQ1_OFFSET = common dso_local global i64 0, align 8
@OCRDMA_DB_GEN2_RQ2_OFFSET = common dso_local global i64 0, align 8
@OCRDMA_DB_SQ_OFFSET = common dso_local global i64 0, align 8
@OCRDMA_DB_RQ_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocrdma_dev*, %struct.ocrdma_qp*, %struct.ocrdma_pd*)* @ocrdma_set_qp_db to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocrdma_set_qp_db(%struct.ocrdma_dev* %0, %struct.ocrdma_qp* %1, %struct.ocrdma_pd* %2) #0 {
  %4 = alloca %struct.ocrdma_dev*, align 8
  %5 = alloca %struct.ocrdma_qp*, align 8
  %6 = alloca %struct.ocrdma_pd*, align 8
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %4, align 8
  store %struct.ocrdma_qp* %1, %struct.ocrdma_qp** %5, align 8
  store %struct.ocrdma_pd* %2, %struct.ocrdma_pd** %6, align 8
  %7 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %4, align 8
  %8 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @OCRDMA_GEN2_FAMILY, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %59

13:                                               ; preds = %3
  %14 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %4, align 8
  %15 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %6, align 8
  %19 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %4, align 8
  %22 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = mul nsw i32 %20, %24
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %17, %26
  %28 = load i64, i64* @OCRDMA_DB_GEN2_SQ_OFFSET, align 8
  %29 = add nsw i64 %27, %28
  %30 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %31 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %30, i32 0, i32 2
  store i64 %29, i64* %31, align 8
  %32 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %4, align 8
  %33 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %6, align 8
  %37 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %4, align 8
  %40 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = mul nsw i32 %38, %42
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %35, %44
  %46 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %47 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %48, 128
  br i1 %49, label %50, label %52

50:                                               ; preds = %13
  %51 = load i64, i64* @OCRDMA_DB_GEN2_RQ1_OFFSET, align 8
  br label %54

52:                                               ; preds = %13
  %53 = load i64, i64* @OCRDMA_DB_GEN2_RQ2_OFFSET, align 8
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i64 [ %51, %50 ], [ %53, %52 ]
  %56 = add nsw i64 %45, %55
  %57 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %58 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %57, i32 0, i32 1
  store i64 %56, i64* %58, align 8
  br label %96

59:                                               ; preds = %3
  %60 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %4, align 8
  %61 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %6, align 8
  %65 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %4, align 8
  %68 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = mul nsw i32 %66, %70
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %63, %72
  %74 = load i64, i64* @OCRDMA_DB_SQ_OFFSET, align 8
  %75 = add nsw i64 %73, %74
  %76 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %77 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %76, i32 0, i32 2
  store i64 %75, i64* %77, align 8
  %78 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %4, align 8
  %79 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %6, align 8
  %83 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %4, align 8
  %86 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = mul nsw i32 %84, %88
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %81, %90
  %92 = load i64, i64* @OCRDMA_DB_RQ_OFFSET, align 8
  %93 = add nsw i64 %91, %92
  %94 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %95 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %94, i32 0, i32 1
  store i64 %93, i64* %95, align 8
  br label %96

96:                                               ; preds = %59, %54
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
