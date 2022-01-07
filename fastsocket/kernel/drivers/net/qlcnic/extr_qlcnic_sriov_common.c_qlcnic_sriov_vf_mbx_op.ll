; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_vf_mbx_op.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_vf_mbx_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, %struct.qlcnic_hardware_context*, %struct.TYPE_8__* }
%struct.qlcnic_hardware_context = type { i32, %struct.TYPE_14__, i32, %struct.TYPE_10__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.device }
%struct.device = type { i32 }
%struct.qlcnic_cmd_args = type { %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_12__ = type { i32* }
%struct.qlcnic_bc_trans = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }

@QLC_BC_COMMAND = common dso_local global i32 0, align 4
@QLC_83XX_MBX_READY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@DRV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"MBX not Ready!(cmd 0x%x) for VF 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"MBX command 0x%x timed out for VF %d\0A\00", align 1
@QLCNIC_RCODE_TIMEOUT = common dso_local global i32 0, align 4
@QLCNIC_BC_CMD_CHANNEL_INIT = common dso_local global i64 0, align 8
@QLCNIC_MBX_RSP_OK = common dso_local global i32 0, align 4
@QLCNIC_MBX_PORT_RSP_OK = common dso_local global i32 0, align 4
@QLCNIC_RCODE_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"MBX command 0x%x failed with err:0x%x for VF %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*, %struct.qlcnic_cmd_args*)* @qlcnic_sriov_vf_mbx_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_sriov_vf_mbx_op(%struct.qlcnic_adapter* %0, %struct.qlcnic_cmd_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qlcnic_adapter*, align 8
  %5 = alloca %struct.qlcnic_cmd_args*, align 8
  %6 = alloca %struct.qlcnic_hardware_context*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.qlcnic_bc_trans*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %4, align 8
  store %struct.qlcnic_cmd_args* %1, %struct.qlcnic_cmd_args** %5, align 8
  %16 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %17 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %16, i32 0, i32 1
  %18 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %17, align 8
  store %struct.qlcnic_hardware_context* %18, %struct.qlcnic_hardware_context** %6, align 8
  %19 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %20 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %19, i32 0, i32 2
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  store %struct.device* %22, %struct.device** %7, align 8
  %23 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %24 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %23, i32 0, i32 1
  %25 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %24, align 8
  %26 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %25, i32 0, i32 3
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  store i32 %31, i32* %14, align 4
  %32 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %33 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %15, align 4
  %35 = call i32 @qlcnic_sriov_alloc_bc_trans(%struct.qlcnic_bc_trans** %8)
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %2
  %39 = load i32, i32* %13, align 4
  store i32 %39, i32* %3, align 4
  br label %162

40:                                               ; preds = %2
  %41 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %8, align 8
  %42 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* @QLC_BC_COMMAND, align 4
  %45 = call i32 @qlcnic_sriov_prepare_bc_hdr(%struct.qlcnic_bc_trans* %41, %struct.qlcnic_cmd_args* %42, i32 %43, i32 %44)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %158

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %104, %49
  %51 = load i32, i32* @QLC_83XX_MBX_READY, align 4
  %52 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %53 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %52, i32 0, i32 1
  %54 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %53, align 8
  %55 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = call i32 @test_bit(i32 %51, i32* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %73, label %59

59:                                               ; preds = %50
  %60 = load i32, i32* @EIO, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %13, align 4
  %62 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %63 = load i32, i32* @DRV, align 4
  %64 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %65 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @QLCNIC_MBX_RSP(i32 %69)
  %71 = load i32, i32* %15, align 4
  %72 = call i32 @QLCDB(%struct.qlcnic_adapter* %62, i32 %63, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %70, i32 %71)
  br label %143

73:                                               ; preds = %50
  %74 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %75 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %8, align 8
  %76 = load i32, i32* %15, align 4
  %77 = call i32 @qlcnic_sriov_send_bc_cmd(%struct.qlcnic_adapter* %74, %struct.qlcnic_bc_trans* %75, i32 %76)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %106

80:                                               ; preds = %73
  %81 = load %struct.device*, %struct.device** %7, align 8
  %82 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %83 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, 65535
  %89 = load i32, i32* %15, align 4
  %90 = call i32 (%struct.device*, i8*, i32, i32, ...) @dev_err(%struct.device* %81, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %88, i32 %89)
  %91 = load i32, i32* @QLCNIC_RCODE_TIMEOUT, align 4
  store i32 %91, i32* %13, align 4
  %92 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %8, align 8
  %93 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %92, i32 0, i32 0
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @QLCNIC_BC_CMD_CHANNEL_INIT, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %80
  %100 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %101 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %8, align 8
  %102 = call i32 @qlcnic_sriov_retry_bc_cmd(%struct.qlcnic_adapter* %100, %struct.qlcnic_bc_trans* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %99
  br label %50

105:                                              ; preds = %99, %80
  br label %143

106:                                              ; preds = %73
  %107 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %108 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %10, align 4
  %114 = call i32 @QLCNIC_MBX_STATUS(i32 %113)
  store i32 %114, i32* %12, align 4
  %115 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %116 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @QLCNIC_MBX_RSP(i32 %120)
  store i32 %121, i32* %11, align 4
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* @QLCNIC_MBX_RSP_OK, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %129, label %125

125:                                              ; preds = %106
  %126 = load i32, i32* %12, align 4
  %127 = load i32, i32* @QLCNIC_MBX_PORT_RSP_OK, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %125, %106
  %130 = load i32, i32* @QLCNIC_RCODE_SUCCESS, align 4
  store i32 %130, i32* %13, align 4
  br label %142

131:                                              ; preds = %125
  %132 = load i32, i32* %12, align 4
  store i32 %132, i32* %13, align 4
  %133 = load i32, i32* %13, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %131
  store i32 1, i32* %13, align 4
  br label %136

136:                                              ; preds = %135, %131
  %137 = load %struct.device*, %struct.device** %7, align 8
  %138 = load i32, i32* %11, align 4
  %139 = load i32, i32* %12, align 4
  %140 = load i32, i32* %15, align 4
  %141 = call i32 (%struct.device*, i8*, i32, i32, ...) @dev_err(%struct.device* %137, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %138, i32 %139, i32 %140)
  br label %142

142:                                              ; preds = %136, %129
  br label %143

143:                                              ; preds = %142, %105, %59
  %144 = load i32, i32* %13, align 4
  %145 = load i32, i32* @QLCNIC_RCODE_TIMEOUT, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %157

147:                                              ; preds = %143
  %148 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %149 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %148, i32 0, i32 0
  store i32 1, i32* %149, align 8
  %150 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %151 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %150, i32 0, i32 0
  store i32 1, i32* %151, align 8
  %152 = load i32, i32* @QLC_83XX_MBX_READY, align 4
  %153 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %154 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 0
  %156 = call i32 @clear_bit(i32 %152, i32* %155)
  br label %157

157:                                              ; preds = %147, %143
  br label %158

158:                                              ; preds = %157, %48
  %159 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %8, align 8
  %160 = call i32 @qlcnic_sriov_cleanup_transaction(%struct.qlcnic_bc_trans* %159)
  %161 = load i32, i32* %13, align 4
  store i32 %161, i32* %3, align 4
  br label %162

162:                                              ; preds = %158, %38
  %163 = load i32, i32* %3, align 4
  ret i32 %163
}

declare dso_local i32 @qlcnic_sriov_alloc_bc_trans(%struct.qlcnic_bc_trans**) #1

declare dso_local i32 @qlcnic_sriov_prepare_bc_hdr(%struct.qlcnic_bc_trans*, %struct.qlcnic_cmd_args*, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @QLCDB(%struct.qlcnic_adapter*, i32, i8*, i32, i32) #1

declare dso_local i32 @QLCNIC_MBX_RSP(i32) #1

declare dso_local i32 @qlcnic_sriov_send_bc_cmd(%struct.qlcnic_adapter*, %struct.qlcnic_bc_trans*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32, ...) #1

declare dso_local i32 @qlcnic_sriov_retry_bc_cmd(%struct.qlcnic_adapter*, %struct.qlcnic_bc_trans*) #1

declare dso_local i32 @QLCNIC_MBX_STATUS(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @qlcnic_sriov_cleanup_transaction(%struct.qlcnic_bc_trans*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
