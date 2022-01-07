; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_main.c_ehca_create_aqp1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_main.c_ehca_create_aqp1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehca_shca = type { i32, %struct.TYPE_4__*, %struct.ehca_sport* }
%struct.TYPE_4__ = type { i32 }
%struct.ehca_sport = type { %struct.ib_qp*, %struct.ib_qp** }
%struct.ib_qp = type { i32 }
%struct.ib_cq = type opaque
%struct.ib_qp_init_attr = type { i64, i32, i32*, i32*, i32*, %struct.TYPE_3__, i32, %struct.ib_qp*, %struct.ib_qp* }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"AQP1 CQ is already created.\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Cannot create AQP1 CQ.\00", align 1
@IB_QPT_GSI = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"AQP1 QP is already created.\00", align 1
@IB_SIGNAL_ALL_WR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Cannot create AQP1 QP.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ehca_shca*, i32)* @ehca_create_aqp1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehca_create_aqp1(%struct.ehca_shca* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ehca_shca*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ehca_sport*, align 8
  %7 = alloca %struct.ib_cq*, align 8
  %8 = alloca %struct.ib_qp*, align 8
  %9 = alloca %struct.ib_qp_init_attr, align 8
  %10 = alloca i32, align 4
  store %struct.ehca_shca* %0, %struct.ehca_shca** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.ehca_shca*, %struct.ehca_shca** %4, align 8
  %12 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %11, i32 0, i32 2
  %13 = load %struct.ehca_sport*, %struct.ehca_sport** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sub nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.ehca_sport, %struct.ehca_sport* %13, i64 %16
  store %struct.ehca_sport* %17, %struct.ehca_sport** %6, align 8
  %18 = load %struct.ehca_sport*, %struct.ehca_sport** %6, align 8
  %19 = getelementptr inbounds %struct.ehca_sport, %struct.ehca_sport* %18, i32 0, i32 0
  %20 = load %struct.ib_qp*, %struct.ib_qp** %19, align 8
  %21 = icmp ne %struct.ib_qp* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load %struct.ehca_shca*, %struct.ehca_shca** %4, align 8
  %24 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %23, i32 0, i32 0
  %25 = call i32 @ehca_err(i32* %24, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EPERM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %114

28:                                               ; preds = %2
  %29 = load %struct.ehca_shca*, %struct.ehca_shca** %4, align 8
  %30 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %29, i32 0, i32 0
  %31 = call %struct.ib_qp* @ib_create_cq(i32* %30, i32* null, i32* null, i8* inttoptr (i64 -1 to i8*), i32 10, i32 0)
  %32 = bitcast %struct.ib_qp* %31 to %struct.ib_cq*
  store %struct.ib_cq* %32, %struct.ib_cq** %7, align 8
  %33 = load %struct.ib_cq*, %struct.ib_cq** %7, align 8
  %34 = bitcast %struct.ib_cq* %33 to %struct.ib_qp*
  %35 = call i64 @IS_ERR(%struct.ib_qp* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %28
  %38 = load %struct.ehca_shca*, %struct.ehca_shca** %4, align 8
  %39 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %38, i32 0, i32 0
  %40 = call i32 @ehca_err(i32* %39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %41 = load %struct.ib_cq*, %struct.ib_cq** %7, align 8
  %42 = bitcast %struct.ib_cq* %41 to %struct.ib_qp*
  %43 = call i32 @PTR_ERR(%struct.ib_qp* %42)
  store i32 %43, i32* %3, align 4
  br label %114

44:                                               ; preds = %28
  %45 = load %struct.ib_cq*, %struct.ib_cq** %7, align 8
  %46 = bitcast %struct.ib_cq* %45 to %struct.ib_qp*
  %47 = load %struct.ehca_sport*, %struct.ehca_sport** %6, align 8
  %48 = getelementptr inbounds %struct.ehca_sport, %struct.ehca_sport* %47, i32 0, i32 0
  store %struct.ib_qp* %46, %struct.ib_qp** %48, align 8
  %49 = load %struct.ehca_sport*, %struct.ehca_sport** %6, align 8
  %50 = getelementptr inbounds %struct.ehca_sport, %struct.ehca_sport* %49, i32 0, i32 1
  %51 = load %struct.ib_qp**, %struct.ib_qp*** %50, align 8
  %52 = load i64, i64* @IB_QPT_GSI, align 8
  %53 = getelementptr inbounds %struct.ib_qp*, %struct.ib_qp** %51, i64 %52
  %54 = load %struct.ib_qp*, %struct.ib_qp** %53, align 8
  %55 = icmp ne %struct.ib_qp* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %44
  %57 = load %struct.ehca_shca*, %struct.ehca_shca** %4, align 8
  %58 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %57, i32 0, i32 0
  %59 = call i32 @ehca_err(i32* %58, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %60 = load i32, i32* @EPERM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %10, align 4
  br label %108

62:                                               ; preds = %44
  %63 = call i32 @memset(%struct.ib_qp_init_attr* %9, i32 0, i32 80)
  %64 = load %struct.ib_cq*, %struct.ib_cq** %7, align 8
  %65 = bitcast %struct.ib_cq* %64 to %struct.ib_qp*
  %66 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %9, i32 0, i32 8
  store %struct.ib_qp* %65, %struct.ib_qp** %66, align 8
  %67 = load %struct.ib_cq*, %struct.ib_cq** %7, align 8
  %68 = bitcast %struct.ib_cq* %67 to %struct.ib_qp*
  %69 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %9, i32 0, i32 7
  store %struct.ib_qp* %68, %struct.ib_qp** %69, align 8
  %70 = load i32, i32* @IB_SIGNAL_ALL_WR, align 4
  %71 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %9, i32 0, i32 6
  store i32 %70, i32* %71, align 8
  %72 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %9, i32 0, i32 5
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  store i32 100, i32* %73, align 8
  %74 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %9, i32 0, i32 5
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  store i32 100, i32* %75, align 4
  %76 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %9, i32 0, i32 5
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 2
  store i32 2, i32* %77, align 8
  %78 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %9, i32 0, i32 5
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 3
  store i32 1, i32* %79, align 4
  %80 = load i64, i64* @IB_QPT_GSI, align 8
  %81 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %9, i32 0, i32 0
  store i64 %80, i64* %81, align 8
  %82 = load i32, i32* %5, align 4
  %83 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %9, i32 0, i32 1
  store i32 %82, i32* %83, align 8
  %84 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %9, i32 0, i32 4
  store i32* null, i32** %84, align 8
  %85 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %9, i32 0, i32 3
  store i32* null, i32** %85, align 8
  %86 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %9, i32 0, i32 2
  store i32* null, i32** %86, align 8
  %87 = load %struct.ehca_shca*, %struct.ehca_shca** %4, align 8
  %88 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %87, i32 0, i32 1
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = call %struct.ib_qp* @ib_create_qp(i32* %90, %struct.ib_qp_init_attr* %9)
  store %struct.ib_qp* %91, %struct.ib_qp** %8, align 8
  %92 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %93 = call i64 @IS_ERR(%struct.ib_qp* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %62
  %96 = load %struct.ehca_shca*, %struct.ehca_shca** %4, align 8
  %97 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %96, i32 0, i32 0
  %98 = call i32 @ehca_err(i32* %97, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %99 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %100 = call i32 @PTR_ERR(%struct.ib_qp* %99)
  store i32 %100, i32* %10, align 4
  br label %108

101:                                              ; preds = %62
  %102 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %103 = load %struct.ehca_sport*, %struct.ehca_sport** %6, align 8
  %104 = getelementptr inbounds %struct.ehca_sport, %struct.ehca_sport* %103, i32 0, i32 1
  %105 = load %struct.ib_qp**, %struct.ib_qp*** %104, align 8
  %106 = load i64, i64* @IB_QPT_GSI, align 8
  %107 = getelementptr inbounds %struct.ib_qp*, %struct.ib_qp** %105, i64 %106
  store %struct.ib_qp* %102, %struct.ib_qp** %107, align 8
  store i32 0, i32* %3, align 4
  br label %114

108:                                              ; preds = %95, %56
  %109 = load %struct.ehca_sport*, %struct.ehca_sport** %6, align 8
  %110 = getelementptr inbounds %struct.ehca_sport, %struct.ehca_sport* %109, i32 0, i32 0
  %111 = load %struct.ib_qp*, %struct.ib_qp** %110, align 8
  %112 = call i32 @ib_destroy_cq(%struct.ib_qp* %111)
  %113 = load i32, i32* %10, align 4
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %108, %101, %37, %22
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @ehca_err(i32*, i8*) #1

declare dso_local %struct.ib_qp* @ib_create_cq(i32*, i32*, i32*, i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.ib_qp*) #1

declare dso_local i32 @PTR_ERR(%struct.ib_qp*) #1

declare dso_local i32 @memset(%struct.ib_qp_init_attr*, i32, i32) #1

declare dso_local %struct.ib_qp* @ib_create_qp(i32*, %struct.ib_qp_init_attr*) #1

declare dso_local i32 @ib_destroy_cq(%struct.ib_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
