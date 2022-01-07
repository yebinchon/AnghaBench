; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_ehea_stop_qps.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_ehea_stop_qps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ehea_port = type { i32, %struct.ehea_port_res*, %struct.ehea_adapter* }
%struct.ehea_port_res = type { %struct.ehea_qp* }
%struct.ehea_qp = type { i32 }
%struct.ehea_adapter = type { i32 }
%struct.hcp_modify_qp_cb0 = type { i32 }

@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@H_QPCB0_ALL = common dso_local global i32 0, align 4
@H_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"query_ehea_qp failed (1)\00", align 1
@H_QP_CR_RES_STATE = common dso_local global i32 0, align 4
@H_QP_CR_ENABLED = common dso_local global i32 0, align 4
@H_QPCB0_QP_CTL_REG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"modify_ehea_qp failed (1)\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"query_ehea_qp failed (2)\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"unreg shared memory region failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ehea_stop_qps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehea_stop_qps(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ehea_port*, align 8
  %4 = alloca %struct.ehea_adapter*, align 8
  %5 = alloca %struct.hcp_modify_qp_cb0*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ehea_port_res*, align 8
  %13 = alloca %struct.ehea_qp*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = call %struct.ehea_port* @netdev_priv(%struct.net_device* %14)
  store %struct.ehea_port* %15, %struct.ehea_port** %3, align 8
  %16 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %17 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %16, i32 0, i32 2
  %18 = load %struct.ehea_adapter*, %struct.ehea_adapter** %17, align 8
  store %struct.ehea_adapter* %18, %struct.ehea_adapter** %4, align 8
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  store i64 0, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i64 @get_zeroed_page(i32 %21)
  %23 = inttoptr i64 %22 to i8*
  %24 = bitcast i8* %23 to %struct.hcp_modify_qp_cb0*
  store %struct.hcp_modify_qp_cb0* %24, %struct.hcp_modify_qp_cb0** %5, align 8
  %25 = load %struct.hcp_modify_qp_cb0*, %struct.hcp_modify_qp_cb0** %5, align 8
  %26 = icmp ne %struct.hcp_modify_qp_cb0* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %1
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %122

30:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %118, %30
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %34 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %121

37:                                               ; preds = %31
  %38 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %39 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %38, i32 0, i32 1
  %40 = load %struct.ehea_port_res*, %struct.ehea_port_res** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %40, i64 %42
  store %struct.ehea_port_res* %43, %struct.ehea_port_res** %12, align 8
  %44 = load %struct.ehea_port_res*, %struct.ehea_port_res** %12, align 8
  %45 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %44, i32 0, i32 0
  %46 = load %struct.ehea_qp*, %struct.ehea_qp** %45, align 8
  store %struct.ehea_qp* %46, %struct.ehea_qp** %13, align 8
  %47 = load %struct.ehea_qp*, %struct.ehea_qp** %13, align 8
  %48 = call i32 @ehea_purge_sq(%struct.ehea_qp* %47)
  %49 = load %struct.ehea_adapter*, %struct.ehea_adapter** %4, align 8
  %50 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ehea_qp*, %struct.ehea_qp** %13, align 8
  %53 = getelementptr inbounds %struct.ehea_qp, %struct.ehea_qp* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @H_QPCB0_ALL, align 4
  %56 = call i32 @EHEA_BMASK_SET(i32 %55, i32 65535)
  %57 = load %struct.hcp_modify_qp_cb0*, %struct.hcp_modify_qp_cb0** %5, align 8
  %58 = call i64 @ehea_h_query_ehea_qp(i32 %51, i32 0, i32 %54, i32 %56, %struct.hcp_modify_qp_cb0* %57)
  store i64 %58, i64* %9, align 8
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* @H_SUCCESS, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %37
  %63 = call i32 @ehea_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %122

64:                                               ; preds = %37
  %65 = load %struct.hcp_modify_qp_cb0*, %struct.hcp_modify_qp_cb0** %5, align 8
  %66 = getelementptr inbounds %struct.hcp_modify_qp_cb0, %struct.hcp_modify_qp_cb0* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @H_QP_CR_RES_STATE, align 4
  %69 = and i32 %67, %68
  %70 = shl i32 %69, 8
  %71 = load %struct.hcp_modify_qp_cb0*, %struct.hcp_modify_qp_cb0** %5, align 8
  %72 = getelementptr inbounds %struct.hcp_modify_qp_cb0, %struct.hcp_modify_qp_cb0* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* @H_QP_CR_ENABLED, align 4
  %74 = xor i32 %73, -1
  %75 = load %struct.hcp_modify_qp_cb0*, %struct.hcp_modify_qp_cb0** %5, align 8
  %76 = getelementptr inbounds %struct.hcp_modify_qp_cb0, %struct.hcp_modify_qp_cb0* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, %74
  store i32 %78, i32* %76, align 4
  %79 = load %struct.ehea_adapter*, %struct.ehea_adapter** %4, align 8
  %80 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.ehea_qp*, %struct.ehea_qp** %13, align 8
  %83 = getelementptr inbounds %struct.ehea_qp, %struct.ehea_qp* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @H_QPCB0_QP_CTL_REG, align 4
  %86 = call i32 @EHEA_BMASK_SET(i32 %85, i32 1)
  %87 = load %struct.hcp_modify_qp_cb0*, %struct.hcp_modify_qp_cb0** %5, align 8
  %88 = call i64 @ehea_h_modify_ehea_qp(i32 %81, i32 0, i32 %84, i32 %86, %struct.hcp_modify_qp_cb0* %87, i64* %10, i64* %10, i32* %11, i32* %11)
  store i64 %88, i64* %9, align 8
  %89 = load i64, i64* %9, align 8
  %90 = load i64, i64* @H_SUCCESS, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %64
  %93 = call i32 @ehea_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %122

94:                                               ; preds = %64
  %95 = load %struct.ehea_adapter*, %struct.ehea_adapter** %4, align 8
  %96 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.ehea_qp*, %struct.ehea_qp** %13, align 8
  %99 = getelementptr inbounds %struct.ehea_qp, %struct.ehea_qp* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @H_QPCB0_ALL, align 4
  %102 = call i32 @EHEA_BMASK_SET(i32 %101, i32 65535)
  %103 = load %struct.hcp_modify_qp_cb0*, %struct.hcp_modify_qp_cb0** %5, align 8
  %104 = call i64 @ehea_h_query_ehea_qp(i32 %97, i32 0, i32 %100, i32 %102, %struct.hcp_modify_qp_cb0* %103)
  store i64 %104, i64* %9, align 8
  %105 = load i64, i64* %9, align 8
  %106 = load i64, i64* @H_SUCCESS, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %94
  %109 = call i32 @ehea_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %122

110:                                              ; preds = %94
  %111 = load %struct.ehea_port_res*, %struct.ehea_port_res** %12, align 8
  %112 = call i32 @ehea_rem_smrs(%struct.ehea_port_res* %111)
  store i32 %112, i32* %7, align 4
  %113 = load i32, i32* %7, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  %116 = call i32 @ehea_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %122

117:                                              ; preds = %110
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %8, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %8, align 4
  br label %31

121:                                              ; preds = %31
  store i32 0, i32* %6, align 4
  br label %122

122:                                              ; preds = %121, %115, %108, %92, %62, %27
  %123 = load %struct.hcp_modify_qp_cb0*, %struct.hcp_modify_qp_cb0** %5, align 8
  %124 = ptrtoint %struct.hcp_modify_qp_cb0* %123 to i64
  %125 = call i32 @free_page(i64 %124)
  %126 = load i32, i32* %6, align 4
  ret i32 %126
}

declare dso_local %struct.ehea_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @ehea_purge_sq(%struct.ehea_qp*) #1

declare dso_local i64 @ehea_h_query_ehea_qp(i32, i32, i32, i32, %struct.hcp_modify_qp_cb0*) #1

declare dso_local i32 @EHEA_BMASK_SET(i32, i32) #1

declare dso_local i32 @ehea_error(i8*) #1

declare dso_local i64 @ehea_h_modify_ehea_qp(i32, i32, i32, i32, %struct.hcp_modify_qp_cb0*, i64*, i64*, i32*, i32*) #1

declare dso_local i32 @ehea_rem_smrs(%struct.ehea_port_res*) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
