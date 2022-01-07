; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_ehea_restart_qps.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_ehea_restart_qps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ehea_port = type { i32, %struct.ehea_port_res*, %struct.ehea_adapter* }
%struct.ehea_port_res = type { %struct.TYPE_2__, %struct.ehea_qp* }
%struct.TYPE_2__ = type { i32 }
%struct.ehea_qp = type { i32 }
%struct.ehea_adapter = type { i32 }
%struct.hcp_modify_qp_cb0 = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"creation of shared memory regions failed\00", align 1
@H_QPCB0_ALL = common dso_local global i32 0, align 4
@H_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"query_ehea_qp failed (1)\00", align 1
@H_QP_CR_RES_STATE = common dso_local global i32 0, align 4
@H_QP_CR_ENABLED = common dso_local global i32 0, align 4
@H_QPCB0_QP_CTL_REG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"modify_ehea_qp failed (1)\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"query_ehea_qp failed (2)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ehea_restart_qps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehea_restart_qps(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ehea_port*, align 8
  %4 = alloca %struct.ehea_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hcp_modify_qp_cb0*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ehea_port_res*, align 8
  %12 = alloca %struct.ehea_qp*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = call %struct.ehea_port* @netdev_priv(%struct.net_device* %13)
  store %struct.ehea_port* %14, %struct.ehea_port** %3, align 8
  %15 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %16 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %15, i32 0, i32 2
  %17 = load %struct.ehea_adapter*, %struct.ehea_adapter** %16, align 8
  store %struct.ehea_adapter* %17, %struct.ehea_adapter** %4, align 8
  store i32 0, i32* %5, align 4
  store i64 0, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i64 @get_zeroed_page(i32 %18)
  %20 = inttoptr i64 %19 to i8*
  %21 = bitcast i8* %20 to %struct.hcp_modify_qp_cb0*
  store %struct.hcp_modify_qp_cb0* %21, %struct.hcp_modify_qp_cb0** %7, align 8
  %22 = load %struct.hcp_modify_qp_cb0*, %struct.hcp_modify_qp_cb0** %7, align 8
  %23 = icmp ne %struct.hcp_modify_qp_cb0* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %129

27:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %125, %27
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %31 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %128

34:                                               ; preds = %28
  %35 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %36 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %35, i32 0, i32 1
  %37 = load %struct.ehea_port_res*, %struct.ehea_port_res** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %37, i64 %39
  store %struct.ehea_port_res* %40, %struct.ehea_port_res** %11, align 8
  %41 = load %struct.ehea_port_res*, %struct.ehea_port_res** %11, align 8
  %42 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %41, i32 0, i32 1
  %43 = load %struct.ehea_qp*, %struct.ehea_qp** %42, align 8
  store %struct.ehea_qp* %43, %struct.ehea_qp** %12, align 8
  %44 = load %struct.ehea_port_res*, %struct.ehea_port_res** %11, align 8
  %45 = call i32 @ehea_gen_smrs(%struct.ehea_port_res* %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %34
  %49 = call i32 @ehea_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %129

50:                                               ; preds = %34
  %51 = load %struct.ehea_qp*, %struct.ehea_qp** %12, align 8
  %52 = load %struct.ehea_port_res*, %struct.ehea_port_res** %11, align 8
  %53 = call i32 @ehea_update_rqs(%struct.ehea_qp* %51, %struct.ehea_port_res* %52)
  %54 = load %struct.ehea_adapter*, %struct.ehea_adapter** %4, align 8
  %55 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ehea_qp*, %struct.ehea_qp** %12, align 8
  %58 = getelementptr inbounds %struct.ehea_qp, %struct.ehea_qp* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @H_QPCB0_ALL, align 4
  %61 = call i32 @EHEA_BMASK_SET(i32 %60, i32 65535)
  %62 = load %struct.hcp_modify_qp_cb0*, %struct.hcp_modify_qp_cb0** %7, align 8
  %63 = call i64 @ehea_h_query_ehea_qp(i32 %56, i32 0, i32 %59, i32 %61, %struct.hcp_modify_qp_cb0* %62)
  store i64 %63, i64* %8, align 8
  %64 = load i64, i64* %8, align 8
  %65 = load i64, i64* @H_SUCCESS, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %50
  %68 = call i32 @ehea_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %129

69:                                               ; preds = %50
  %70 = load %struct.hcp_modify_qp_cb0*, %struct.hcp_modify_qp_cb0** %7, align 8
  %71 = getelementptr inbounds %struct.hcp_modify_qp_cb0, %struct.hcp_modify_qp_cb0* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @H_QP_CR_RES_STATE, align 4
  %74 = and i32 %72, %73
  %75 = shl i32 %74, 8
  %76 = load %struct.hcp_modify_qp_cb0*, %struct.hcp_modify_qp_cb0** %7, align 8
  %77 = getelementptr inbounds %struct.hcp_modify_qp_cb0, %struct.hcp_modify_qp_cb0* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* @H_QP_CR_ENABLED, align 4
  %79 = load %struct.hcp_modify_qp_cb0*, %struct.hcp_modify_qp_cb0** %7, align 8
  %80 = getelementptr inbounds %struct.hcp_modify_qp_cb0, %struct.hcp_modify_qp_cb0* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 4
  %83 = load %struct.ehea_adapter*, %struct.ehea_adapter** %4, align 8
  %84 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.ehea_qp*, %struct.ehea_qp** %12, align 8
  %87 = getelementptr inbounds %struct.ehea_qp, %struct.ehea_qp* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @H_QPCB0_QP_CTL_REG, align 4
  %90 = call i32 @EHEA_BMASK_SET(i32 %89, i32 1)
  %91 = load %struct.hcp_modify_qp_cb0*, %struct.hcp_modify_qp_cb0** %7, align 8
  %92 = call i64 @ehea_h_modify_ehea_qp(i32 %85, i32 0, i32 %88, i32 %90, %struct.hcp_modify_qp_cb0* %91, i64* %9, i64* %9, i32* %10, i32* %10)
  store i64 %92, i64* %8, align 8
  %93 = load i64, i64* %8, align 8
  %94 = load i64, i64* @H_SUCCESS, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %69
  %97 = call i32 @ehea_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %129

98:                                               ; preds = %69
  %99 = load %struct.ehea_adapter*, %struct.ehea_adapter** %4, align 8
  %100 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.ehea_qp*, %struct.ehea_qp** %12, align 8
  %103 = getelementptr inbounds %struct.ehea_qp, %struct.ehea_qp* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @H_QPCB0_ALL, align 4
  %106 = call i32 @EHEA_BMASK_SET(i32 %105, i32 65535)
  %107 = load %struct.hcp_modify_qp_cb0*, %struct.hcp_modify_qp_cb0** %7, align 8
  %108 = call i64 @ehea_h_query_ehea_qp(i32 %101, i32 0, i32 %104, i32 %106, %struct.hcp_modify_qp_cb0* %107)
  store i64 %108, i64* %8, align 8
  %109 = load i64, i64* %8, align 8
  %110 = load i64, i64* @H_SUCCESS, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %98
  %113 = call i32 @ehea_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %129

114:                                              ; preds = %98
  %115 = load %struct.ehea_port_res*, %struct.ehea_port_res** %11, align 8
  %116 = load %struct.ehea_port_res*, %struct.ehea_port_res** %11, align 8
  %117 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @ehea_refill_rq1(%struct.ehea_port_res* %115, i32 %119, i32 0)
  %121 = load %struct.ehea_port_res*, %struct.ehea_port_res** %11, align 8
  %122 = call i32 @ehea_refill_rq2(%struct.ehea_port_res* %121, i32 0)
  %123 = load %struct.ehea_port_res*, %struct.ehea_port_res** %11, align 8
  %124 = call i32 @ehea_refill_rq3(%struct.ehea_port_res* %123, i32 0)
  br label %125

125:                                              ; preds = %114
  %126 = load i32, i32* %6, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %6, align 4
  br label %28

128:                                              ; preds = %28
  br label %129

129:                                              ; preds = %128, %112, %96, %67, %48, %24
  %130 = load %struct.hcp_modify_qp_cb0*, %struct.hcp_modify_qp_cb0** %7, align 8
  %131 = ptrtoint %struct.hcp_modify_qp_cb0* %130 to i64
  %132 = call i32 @free_page(i64 %131)
  %133 = load i32, i32* %5, align 4
  ret i32 %133
}

declare dso_local %struct.ehea_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @ehea_gen_smrs(%struct.ehea_port_res*) #1

declare dso_local i32 @ehea_error(i8*) #1

declare dso_local i32 @ehea_update_rqs(%struct.ehea_qp*, %struct.ehea_port_res*) #1

declare dso_local i64 @ehea_h_query_ehea_qp(i32, i32, i32, i32, %struct.hcp_modify_qp_cb0*) #1

declare dso_local i32 @EHEA_BMASK_SET(i32, i32) #1

declare dso_local i64 @ehea_h_modify_ehea_qp(i32, i32, i32, i32, %struct.hcp_modify_qp_cb0*, i64*, i64*, i32*, i32*) #1

declare dso_local i32 @ehea_refill_rq1(%struct.ehea_port_res*, i32, i32) #1

declare dso_local i32 @ehea_refill_rq2(%struct.ehea_port_res*, i32) #1

declare dso_local i32 @ehea_refill_rq3(%struct.ehea_port_res*, i32) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
