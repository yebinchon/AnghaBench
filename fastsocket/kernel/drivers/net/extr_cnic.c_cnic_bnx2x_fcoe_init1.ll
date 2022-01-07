; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_bnx2x_fcoe_init1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_bnx2x_fcoe_init1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { i32, %struct.cnic_local* }
%struct.cnic_local = type { i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.kwqe = type { i32 }
%struct.fcoe_init_ramrod_params = type { i32, i32, i32, i32, %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.fcoe_kwqe_init1 = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.fcoe_kwqe_init2 = type { %struct.TYPE_5__ }
%struct.fcoe_kwqe_init3 = type { %struct.TYPE_5__ }
%union.l5cm_specific_data = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@FCOE_KWQE_OPCODE_INIT2 = common dso_local global i64 0, align 8
@FCOE_KWQE_OPCODE_INIT3 = common dso_local global i64 0, align 8
@CNIC_KWQ16_DATA_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"fcoe_init size too big\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@BNX2X_FCOE_L5_CID_BASE = common dso_local global i32 0, align 4
@MAX_KCQ_IDX = common dso_local global i32 0, align 4
@HC_INDEX_FCOE_EQ_CONS = common dso_local global i32 0, align 4
@FCOE_RAMROD_CMD_ID_INIT_FUNC = common dso_local global i32 0, align 4
@FCOE_CONNECTION_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cnic_dev*, %struct.kwqe**, i32, i32*)* @cnic_bnx2x_fcoe_init1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnic_bnx2x_fcoe_init1(%struct.cnic_dev* %0, %struct.kwqe** %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cnic_dev*, align 8
  %7 = alloca %struct.kwqe**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.cnic_local*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.fcoe_init_ramrod_params*, align 8
  %14 = alloca %struct.fcoe_kwqe_init1*, align 8
  %15 = alloca %struct.fcoe_kwqe_init2*, align 8
  %16 = alloca %struct.fcoe_kwqe_init3*, align 8
  %17 = alloca %union.l5cm_specific_data, align 4
  store %struct.cnic_dev* %0, %struct.cnic_dev** %6, align 8
  store %struct.kwqe** %1, %struct.kwqe*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %18 = load %struct.cnic_dev*, %struct.cnic_dev** %6, align 8
  %19 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %18, i32 0, i32 1
  %20 = load %struct.cnic_local*, %struct.cnic_local** %19, align 8
  store %struct.cnic_local* %20, %struct.cnic_local** %11, align 8
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 3
  br i1 %22, label %23, label %28

23:                                               ; preds = %4
  %24 = load i32, i32* %8, align 4
  %25 = load i32*, i32** %9, align 8
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %149

28:                                               ; preds = %4
  %29 = load %struct.kwqe**, %struct.kwqe*** %7, align 8
  %30 = getelementptr inbounds %struct.kwqe*, %struct.kwqe** %29, i64 0
  %31 = load %struct.kwqe*, %struct.kwqe** %30, align 8
  %32 = bitcast %struct.kwqe* %31 to %struct.fcoe_kwqe_init1*
  store %struct.fcoe_kwqe_init1* %32, %struct.fcoe_kwqe_init1** %14, align 8
  %33 = load %struct.kwqe**, %struct.kwqe*** %7, align 8
  %34 = getelementptr inbounds %struct.kwqe*, %struct.kwqe** %33, i64 1
  %35 = load %struct.kwqe*, %struct.kwqe** %34, align 8
  %36 = bitcast %struct.kwqe* %35 to %struct.fcoe_kwqe_init2*
  store %struct.fcoe_kwqe_init2* %36, %struct.fcoe_kwqe_init2** %15, align 8
  %37 = load %struct.kwqe**, %struct.kwqe*** %7, align 8
  %38 = getelementptr inbounds %struct.kwqe*, %struct.kwqe** %37, i64 2
  %39 = load %struct.kwqe*, %struct.kwqe** %38, align 8
  %40 = bitcast %struct.kwqe* %39 to %struct.fcoe_kwqe_init3*
  store %struct.fcoe_kwqe_init3* %40, %struct.fcoe_kwqe_init3** %16, align 8
  %41 = load %struct.fcoe_kwqe_init2*, %struct.fcoe_kwqe_init2** %15, align 8
  %42 = getelementptr inbounds %struct.fcoe_kwqe_init2, %struct.fcoe_kwqe_init2* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @FCOE_KWQE_OPCODE_INIT2, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %28
  %48 = load i32*, i32** %9, align 8
  store i32 1, i32* %48, align 4
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %149

51:                                               ; preds = %28
  %52 = load %struct.fcoe_kwqe_init3*, %struct.fcoe_kwqe_init3** %16, align 8
  %53 = getelementptr inbounds %struct.fcoe_kwqe_init3, %struct.fcoe_kwqe_init3* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @FCOE_KWQE_OPCODE_INIT3, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load i32*, i32** %9, align 8
  store i32 2, i32* %59, align 4
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %149

62:                                               ; preds = %51
  %63 = load i32, i32* @CNIC_KWQ16_DATA_SIZE, align 4
  %64 = sext i32 %63 to i64
  %65 = icmp ugt i64 36, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %62
  %67 = load %struct.cnic_dev*, %struct.cnic_dev** %6, align 8
  %68 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @netdev_err(i32 %69, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %5, align 4
  br label %149

73:                                               ; preds = %62
  %74 = load %struct.cnic_local*, %struct.cnic_local** %11, align 8
  %75 = load i32, i32* @BNX2X_FCOE_L5_CID_BASE, align 4
  %76 = call %struct.fcoe_init_ramrod_params* @cnic_get_kwqe_16_data(%struct.cnic_local* %74, i32 %75, %union.l5cm_specific_data* %17)
  store %struct.fcoe_init_ramrod_params* %76, %struct.fcoe_init_ramrod_params** %13, align 8
  %77 = load %struct.fcoe_init_ramrod_params*, %struct.fcoe_init_ramrod_params** %13, align 8
  %78 = icmp ne %struct.fcoe_init_ramrod_params* %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %73
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %5, align 4
  br label %149

82:                                               ; preds = %73
  %83 = load %struct.fcoe_init_ramrod_params*, %struct.fcoe_init_ramrod_params** %13, align 8
  %84 = call i32 @memset(%struct.fcoe_init_ramrod_params* %83, i32 0, i32 36)
  %85 = load %struct.fcoe_init_ramrod_params*, %struct.fcoe_init_ramrod_params** %13, align 8
  %86 = getelementptr inbounds %struct.fcoe_init_ramrod_params, %struct.fcoe_init_ramrod_params* %85, i32 0, i32 7
  %87 = load %struct.fcoe_kwqe_init1*, %struct.fcoe_kwqe_init1** %14, align 8
  %88 = bitcast %struct.fcoe_kwqe_init1* %87 to %struct.fcoe_kwqe_init3*
  %89 = call i32 @memcpy(i32* %86, %struct.fcoe_kwqe_init3* %88, i32 8)
  %90 = load %struct.fcoe_init_ramrod_params*, %struct.fcoe_init_ramrod_params** %13, align 8
  %91 = getelementptr inbounds %struct.fcoe_init_ramrod_params, %struct.fcoe_init_ramrod_params* %90, i32 0, i32 6
  %92 = load %struct.fcoe_kwqe_init2*, %struct.fcoe_kwqe_init2** %15, align 8
  %93 = bitcast %struct.fcoe_kwqe_init2* %92 to %struct.fcoe_kwqe_init3*
  %94 = call i32 @memcpy(i32* %91, %struct.fcoe_kwqe_init3* %93, i32 8)
  %95 = load %struct.fcoe_init_ramrod_params*, %struct.fcoe_init_ramrod_params** %13, align 8
  %96 = getelementptr inbounds %struct.fcoe_init_ramrod_params, %struct.fcoe_init_ramrod_params* %95, i32 0, i32 5
  %97 = load %struct.fcoe_kwqe_init3*, %struct.fcoe_kwqe_init3** %16, align 8
  %98 = call i32 @memcpy(i32* %96, %struct.fcoe_kwqe_init3* %97, i32 8)
  %99 = load %struct.cnic_local*, %struct.cnic_local** %11, align 8
  %100 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.fcoe_init_ramrod_params*, %struct.fcoe_init_ramrod_params** %13, align 8
  %105 = getelementptr inbounds %struct.fcoe_init_ramrod_params, %struct.fcoe_init_ramrod_params* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  store i32 %103, i32* %106, align 4
  %107 = load %struct.cnic_local*, %struct.cnic_local** %11, align 8
  %108 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = ashr i32 %111, 32
  %113 = load %struct.fcoe_init_ramrod_params*, %struct.fcoe_init_ramrod_params** %13, align 8
  %114 = getelementptr inbounds %struct.fcoe_init_ramrod_params, %struct.fcoe_init_ramrod_params* %113, i32 0, i32 4
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  store i32 %112, i32* %115, align 4
  %116 = load %struct.cnic_local*, %struct.cnic_local** %11, align 8
  %117 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.fcoe_init_ramrod_params*, %struct.fcoe_init_ramrod_params** %13, align 8
  %122 = getelementptr inbounds %struct.fcoe_init_ramrod_params, %struct.fcoe_init_ramrod_params* %121, i32 0, i32 3
  store i32 %120, i32* %122, align 4
  %123 = load %struct.cnic_local*, %struct.cnic_local** %11, align 8
  %124 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.fcoe_init_ramrod_params*, %struct.fcoe_init_ramrod_params** %13, align 8
  %127 = getelementptr inbounds %struct.fcoe_init_ramrod_params, %struct.fcoe_init_ramrod_params* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 4
  %128 = load i32, i32* @MAX_KCQ_IDX, align 4
  %129 = load %struct.fcoe_init_ramrod_params*, %struct.fcoe_init_ramrod_params** %13, align 8
  %130 = getelementptr inbounds %struct.fcoe_init_ramrod_params, %struct.fcoe_init_ramrod_params* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  %131 = load i32, i32* @HC_INDEX_FCOE_EQ_CONS, align 4
  %132 = load %struct.fcoe_init_ramrod_params*, %struct.fcoe_init_ramrod_params** %13, align 8
  %133 = getelementptr inbounds %struct.fcoe_init_ramrod_params, %struct.fcoe_init_ramrod_params* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 4
  %134 = load %struct.cnic_local*, %struct.cnic_local** %11, align 8
  %135 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  store i64 0, i64* %136, align 8
  %137 = load %struct.cnic_local*, %struct.cnic_local** %11, align 8
  %138 = load %struct.cnic_local*, %struct.cnic_local** %11, align 8
  %139 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @BNX2X_HW_CID(%struct.cnic_local* %137, i32 %140)
  store i32 %141, i32* %12, align 4
  %142 = load %struct.cnic_dev*, %struct.cnic_dev** %6, align 8
  %143 = load i32, i32* @FCOE_RAMROD_CMD_ID_INIT_FUNC, align 4
  %144 = load i32, i32* %12, align 4
  %145 = load i32, i32* @FCOE_CONNECTION_TYPE, align 4
  %146 = call i32 @cnic_submit_kwqe_16(%struct.cnic_dev* %142, i32 %143, i32 %144, i32 %145, %union.l5cm_specific_data* %17)
  store i32 %146, i32* %10, align 4
  %147 = load i32*, i32** %9, align 8
  store i32 3, i32* %147, align 4
  %148 = load i32, i32* %10, align 4
  store i32 %148, i32* %5, align 4
  br label %149

149:                                              ; preds = %82, %79, %66, %58, %47, %23
  %150 = load i32, i32* %5, align 4
  ret i32 %150
}

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local %struct.fcoe_init_ramrod_params* @cnic_get_kwqe_16_data(%struct.cnic_local*, i32, %union.l5cm_specific_data*) #1

declare dso_local i32 @memset(%struct.fcoe_init_ramrod_params*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.fcoe_kwqe_init3*, i32) #1

declare dso_local i32 @BNX2X_HW_CID(%struct.cnic_local*, i32) #1

declare dso_local i32 @cnic_submit_kwqe_16(%struct.cnic_dev*, i32, i32, i32, %union.l5cm_specific_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
