; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_sqp.c_ehca_define_sqp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_sqp.c_ehca_define_sqp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehca_shca = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.ehca_qp = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ib_qp_init_attr = type { i32, i32 }

@IB_PORT_DOWN = common dso_local global i64 0, align 8
@H_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Can't define AQP1 for port %x. h_ret=%lli\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"port=%x pma_qp_nr=%x\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"invalid qp_type=%x\00", align 1
@H_PARAMETER = common dso_local global i32 0, align 4
@ehca_nr_ports = common dso_local global i64 0, align 8
@IB_PORT_ACTIVE = common dso_local global i64 0, align 8
@ehca_port_act_time = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"... wait until port %x is active\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Port %x is not active.\00", align 1
@H_HARDWARE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ehca_define_sqp(%struct.ehca_shca* %0, %struct.ehca_qp* %1, %struct.ib_qp_init_attr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ehca_shca*, align 8
  %6 = alloca %struct.ehca_qp*, align 8
  %7 = alloca %struct.ib_qp_init_attr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ehca_shca* %0, %struct.ehca_shca** %5, align 8
  store %struct.ehca_qp* %1, %struct.ehca_qp** %6, align 8
  store %struct.ib_qp_init_attr* %2, %struct.ib_qp_init_attr** %7, align 8
  %13 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %7, align 8
  %14 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %11, align 4
  %16 = load i64, i64* @IB_PORT_DOWN, align 8
  %17 = load %struct.ehca_shca*, %struct.ehca_shca** %5, align 8
  %18 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = load i32, i32* %11, align 4
  %21 = sub nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i64 %16, i64* %24, align 8
  %25 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %7, align 8
  %26 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %69 [
    i32 128, label %28
    i32 129, label %29
  ]

28:                                               ; preds = %3
  br label %77

29:                                               ; preds = %3
  %30 = load %struct.ehca_shca*, %struct.ehca_shca** %5, align 8
  %31 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.ehca_qp*, %struct.ehca_qp** %6, align 8
  %34 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ehca_qp*, %struct.ehca_qp** %6, align 8
  %37 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %7, align 8
  %41 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @hipz_h_define_aqp1(i32 %32, i32 %35, i32 %39, i32 %42, i32* %8, i32* %9)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @H_SUCCESS, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %29
  %48 = load %struct.ehca_shca*, %struct.ehca_shca** %5, align 8
  %49 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %48, i32 0, i32 0
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 (i32*, i8*, i32, ...) @ehca_err(i32* %49, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %51)
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %4, align 4
  br label %122

54:                                               ; preds = %29
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.ehca_shca*, %struct.ehca_shca** %5, align 8
  %57 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  store i32 %55, i32* %63, align 8
  %64 = load %struct.ehca_shca*, %struct.ehca_shca** %5, align 8
  %65 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %64, i32 0, i32 0
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i32 (i32*, i8*, i32, ...) @ehca_dbg(i32* %65, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %67)
  br label %77

69:                                               ; preds = %3
  %70 = load %struct.ehca_shca*, %struct.ehca_shca** %5, align 8
  %71 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %70, i32 0, i32 0
  %72 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %7, align 8
  %73 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (i32*, i8*, i32, ...) @ehca_err(i32* %71, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* @H_PARAMETER, align 4
  store i32 %76, i32* %4, align 4
  br label %122

77:                                               ; preds = %54, %28
  %78 = load i64, i64* @ehca_nr_ports, align 8
  %79 = icmp slt i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load i32, i32* @H_SUCCESS, align 4
  store i32 %81, i32* %4, align 4
  br label %122

82:                                               ; preds = %77
  store i32 0, i32* %12, align 4
  br label %83

83:                                               ; preds = %107, %82
  %84 = load %struct.ehca_shca*, %struct.ehca_shca** %5, align 8
  %85 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %84, i32 0, i32 1
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = load i32, i32* %11, align 4
  %88 = sub nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @IB_PORT_ACTIVE, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %83
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* @ehca_port_act_time, align 4
  %98 = icmp slt i32 %96, %97
  br label %99

99:                                               ; preds = %95, %83
  %100 = phi i1 [ false, %83 ], [ %98, %95 ]
  br i1 %100, label %101, label %110

101:                                              ; preds = %99
  %102 = load %struct.ehca_shca*, %struct.ehca_shca** %5, align 8
  %103 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %102, i32 0, i32 0
  %104 = load i32, i32* %11, align 4
  %105 = call i32 (i32*, i8*, i32, ...) @ehca_dbg(i32* %103, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %104)
  %106 = call i32 @msleep_interruptible(i32 1000)
  br label %107

107:                                              ; preds = %101
  %108 = load i32, i32* %12, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %12, align 4
  br label %83

110:                                              ; preds = %99
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* @ehca_port_act_time, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %120

114:                                              ; preds = %110
  %115 = load %struct.ehca_shca*, %struct.ehca_shca** %5, align 8
  %116 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %115, i32 0, i32 0
  %117 = load i32, i32* %11, align 4
  %118 = call i32 (i32*, i8*, i32, ...) @ehca_err(i32* %116, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %117)
  %119 = load i32, i32* @H_HARDWARE, align 4
  store i32 %119, i32* %4, align 4
  br label %122

120:                                              ; preds = %110
  %121 = load i32, i32* @H_SUCCESS, align 4
  store i32 %121, i32* %4, align 4
  br label %122

122:                                              ; preds = %120, %114, %80, %69, %47
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local i32 @hipz_h_define_aqp1(i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @ehca_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @ehca_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @msleep_interruptible(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
