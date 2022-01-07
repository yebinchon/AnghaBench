; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mbx_create_eq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mbx_create_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { %struct.TYPE_6__, %struct.ocrdma_create_eq_rsp* }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ocrdma_create_eq_rsp = type { i32, i32, i32, i32*, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.ocrdma_eq = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.ocrdma_create_eq_req = type { i32, i32, i32, i32*, i32, %struct.TYPE_8__ }

@OCRDMA_CMD_CREATE_EQ = common dso_local global i32 0, align 4
@OCRDMA_SUBSYS_COMMON = common dso_local global i32 0, align 4
@OCRDMA_GEN2_FAMILY = common dso_local global i64 0, align 8
@OCRDMA_CREATE_EQ_VALID = common dso_local global i32 0, align 4
@OCRDMA_CREATE_EQ_CNT_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE_4K = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocrdma_dev*, %struct.ocrdma_eq*)* @ocrdma_mbx_create_eq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocrdma_mbx_create_eq(%struct.ocrdma_dev* %0, %struct.ocrdma_eq* %1) #0 {
  %3 = alloca %struct.ocrdma_dev*, align 8
  %4 = alloca %struct.ocrdma_eq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ocrdma_create_eq_req*, align 8
  %7 = alloca %struct.ocrdma_create_eq_rsp*, align 8
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %3, align 8
  store %struct.ocrdma_eq* %1, %struct.ocrdma_eq** %4, align 8
  %8 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %9 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %8, i32 0, i32 1
  %10 = load %struct.ocrdma_create_eq_rsp*, %struct.ocrdma_create_eq_rsp** %9, align 8
  %11 = bitcast %struct.ocrdma_create_eq_rsp* %10 to %struct.ocrdma_create_eq_req*
  store %struct.ocrdma_create_eq_req* %11, %struct.ocrdma_create_eq_req** %6, align 8
  %12 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %13 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %12, i32 0, i32 1
  %14 = load %struct.ocrdma_create_eq_rsp*, %struct.ocrdma_create_eq_rsp** %13, align 8
  store %struct.ocrdma_create_eq_rsp* %14, %struct.ocrdma_create_eq_rsp** %7, align 8
  %15 = load %struct.ocrdma_create_eq_req*, %struct.ocrdma_create_eq_req** %6, align 8
  %16 = bitcast %struct.ocrdma_create_eq_req* %15 to %struct.ocrdma_create_eq_rsp*
  %17 = call i32 @memset(%struct.ocrdma_create_eq_rsp* %16, i32 0, i32 32)
  %18 = load %struct.ocrdma_create_eq_req*, %struct.ocrdma_create_eq_req** %6, align 8
  %19 = getelementptr inbounds %struct.ocrdma_create_eq_req, %struct.ocrdma_create_eq_req* %18, i32 0, i32 5
  %20 = load i32, i32* @OCRDMA_CMD_CREATE_EQ, align 4
  %21 = load i32, i32* @OCRDMA_SUBSYS_COMMON, align 4
  %22 = call i32 @ocrdma_init_mch(%struct.TYPE_8__* %19, i32 %20, i32 %21, i32 32)
  %23 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %24 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @OCRDMA_GEN2_FAMILY, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %2
  %30 = load %struct.ocrdma_create_eq_req*, %struct.ocrdma_create_eq_req** %6, align 8
  %31 = getelementptr inbounds %struct.ocrdma_create_eq_req, %struct.ocrdma_create_eq_req* %30, i32 0, i32 5
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  store i32 0, i32* %32, align 4
  br label %37

33:                                               ; preds = %2
  %34 = load %struct.ocrdma_create_eq_req*, %struct.ocrdma_create_eq_req** %6, align 8
  %35 = getelementptr inbounds %struct.ocrdma_create_eq_req, %struct.ocrdma_create_eq_req* %34, i32 0, i32 5
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  store i32 2, i32* %36, align 4
  br label %37

37:                                               ; preds = %33, %29
  %38 = load %struct.ocrdma_create_eq_req*, %struct.ocrdma_create_eq_req** %6, align 8
  %39 = getelementptr inbounds %struct.ocrdma_create_eq_req, %struct.ocrdma_create_eq_req* %38, i32 0, i32 0
  store i32 4, i32* %39, align 8
  %40 = load i32, i32* @OCRDMA_CREATE_EQ_VALID, align 4
  %41 = load %struct.ocrdma_create_eq_req*, %struct.ocrdma_create_eq_req** %6, align 8
  %42 = getelementptr inbounds %struct.ocrdma_create_eq_req, %struct.ocrdma_create_eq_req* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @OCRDMA_CREATE_EQ_CNT_SHIFT, align 4
  %44 = shl i32 4, %43
  %45 = load %struct.ocrdma_create_eq_req*, %struct.ocrdma_create_eq_req** %6, align 8
  %46 = getelementptr inbounds %struct.ocrdma_create_eq_req, %struct.ocrdma_create_eq_req* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.ocrdma_create_eq_req*, %struct.ocrdma_create_eq_req** %6, align 8
  %48 = getelementptr inbounds %struct.ocrdma_create_eq_req, %struct.ocrdma_create_eq_req* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load %struct.ocrdma_create_eq_req*, %struct.ocrdma_create_eq_req** %6, align 8
  %52 = getelementptr inbounds %struct.ocrdma_create_eq_req, %struct.ocrdma_create_eq_req* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.ocrdma_eq*, %struct.ocrdma_eq** %4, align 8
  %55 = getelementptr inbounds %struct.ocrdma_eq, %struct.ocrdma_eq* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @PAGE_SIZE_4K, align 4
  %59 = call i32 @ocrdma_build_q_pages(i32* %50, i32 %53, i32 %57, i32 %58)
  %60 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %61 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ocrdma_create_eq_req*, %struct.ocrdma_create_eq_req** %6, align 8
  %65 = bitcast %struct.ocrdma_create_eq_req* %64 to %struct.ocrdma_create_eq_rsp*
  %66 = call i32 @be_roce_mcc_cmd(i32 %63, %struct.ocrdma_create_eq_rsp* %65, i32 32, i32* null, i32* null)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %105, label %69

69:                                               ; preds = %37
  %70 = load %struct.ocrdma_create_eq_rsp*, %struct.ocrdma_create_eq_rsp** %7, align 8
  %71 = getelementptr inbounds %struct.ocrdma_create_eq_rsp, %struct.ocrdma_create_eq_rsp* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = and i32 %72, 65535
  %74 = load %struct.ocrdma_eq*, %struct.ocrdma_eq** %4, align 8
  %75 = getelementptr inbounds %struct.ocrdma_eq, %struct.ocrdma_eq* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 4
  %77 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %78 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @OCRDMA_GEN2_FAMILY, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %69
  %84 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %85 = load %struct.ocrdma_eq*, %struct.ocrdma_eq** %4, align 8
  %86 = call i32 @ocrdma_assign_eq_vect_gen2(%struct.ocrdma_dev* %84, %struct.ocrdma_eq* %85)
  br label %101

87:                                               ; preds = %69
  %88 = load %struct.ocrdma_create_eq_rsp*, %struct.ocrdma_create_eq_rsp** %7, align 8
  %89 = getelementptr inbounds %struct.ocrdma_create_eq_rsp, %struct.ocrdma_create_eq_rsp* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = ashr i32 %90, 16
  %92 = and i32 %91, 65535
  %93 = load %struct.ocrdma_eq*, %struct.ocrdma_eq** %4, align 8
  %94 = getelementptr inbounds %struct.ocrdma_eq, %struct.ocrdma_eq* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 4
  %95 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %96 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 8
  br label %101

101:                                              ; preds = %87, %83
  %102 = load %struct.ocrdma_eq*, %struct.ocrdma_eq** %4, align 8
  %103 = getelementptr inbounds %struct.ocrdma_eq, %struct.ocrdma_eq* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  store i32 1, i32* %104, align 4
  br label %105

105:                                              ; preds = %101, %37
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local i32 @memset(%struct.ocrdma_create_eq_rsp*, i32, i32) #1

declare dso_local i32 @ocrdma_init_mch(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @ocrdma_build_q_pages(i32*, i32, i32, i32) #1

declare dso_local i32 @be_roce_mcc_cmd(i32, %struct.ocrdma_create_eq_rsp*, i32, i32*, i32*) #1

declare dso_local i32 @ocrdma_assign_eq_vect_gen2(%struct.ocrdma_dev*, %struct.ocrdma_eq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
