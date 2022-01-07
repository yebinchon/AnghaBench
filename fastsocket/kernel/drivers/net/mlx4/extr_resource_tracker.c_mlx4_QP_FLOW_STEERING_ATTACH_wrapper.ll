; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_resource_tracker.c_mlx4_QP_FLOW_STEERING_ATTACH_wrapper.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_resource_tracker.c_mlx4_QP_FLOW_STEERING_ATTACH_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.mlx4_vhcr = type { i32, i32 }
%struct.mlx4_cmd_mailbox = type { i32, i64 }
%struct.mlx4_cmd_info = type { i32 }
%struct.mlx4_priv = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.mlx4_resource_tracker }
%struct.mlx4_resource_tracker = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.list_head* }
%struct.list_head = type { i32 }
%struct.res_qp = type { i32 }
%struct.mlx4_net_trans_rule_hw_ctrl = type { i32 }
%struct._rule_hw = type { i32 }

@RES_MAC = common dso_local global i64 0, align 8
@MLX4_STEERING_MODE_DEVICE_MANAGED = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@RES_QP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Steering rule with qpn 0x%x rejected.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"Can't attach FS rule without L2 headers, adding L2 header.\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Corrupted mailbox.\0A\00", align 1
@MLX4_QP_FLOW_STEERING_ATTACH = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_A = common dso_local global i32 0, align 4
@MLX4_CMD_NATIVE = common dso_local global i32 0, align 4
@RES_FS_RULE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"Fail to add flow steering resources.\0A \00", align 1
@MLX4_QP_FLOW_STEERING_DETACH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_QP_FLOW_STEERING_ATTACH_wrapper(%struct.mlx4_dev* %0, i32 %1, %struct.mlx4_vhcr* %2, %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx4_vhcr*, align 8
  %11 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %12 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %13 = alloca %struct.mlx4_cmd_info*, align 8
  %14 = alloca %struct.mlx4_priv*, align 8
  %15 = alloca %struct.mlx4_resource_tracker*, align 8
  %16 = alloca %struct.list_head*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.res_qp*, align 8
  %20 = alloca %struct.mlx4_net_trans_rule_hw_ctrl*, align 8
  %21 = alloca %struct._rule_hw*, align 8
  %22 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.mlx4_vhcr* %2, %struct.mlx4_vhcr** %10, align 8
  store %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox** %11, align 8
  store %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_mailbox** %12, align 8
  store %struct.mlx4_cmd_info* %5, %struct.mlx4_cmd_info** %13, align 8
  %23 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %24 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %23)
  store %struct.mlx4_priv* %24, %struct.mlx4_priv** %14, align 8
  %25 = load %struct.mlx4_priv*, %struct.mlx4_priv** %14, align 8
  %26 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  store %struct.mlx4_resource_tracker* %28, %struct.mlx4_resource_tracker** %15, align 8
  %29 = load %struct.mlx4_resource_tracker*, %struct.mlx4_resource_tracker** %15, align 8
  %30 = getelementptr inbounds %struct.mlx4_resource_tracker, %struct.mlx4_resource_tracker* %29, i32 0, i32 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load %struct.list_head*, %struct.list_head** %35, align 8
  %37 = load i64, i64* @RES_MAC, align 8
  %38 = getelementptr inbounds %struct.list_head, %struct.list_head* %36, i64 %37
  store %struct.list_head* %38, %struct.list_head** %16, align 8
  %39 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %40 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @MLX4_STEERING_MODE_DEVICE_MANAGED, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %6
  %46 = load i32, i32* @EOPNOTSUPP, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %7, align 4
  br label %163

48:                                               ; preds = %6
  %49 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %50 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to %struct.mlx4_net_trans_rule_hw_ctrl*
  store %struct.mlx4_net_trans_rule_hw_ctrl* %52, %struct.mlx4_net_trans_rule_hw_ctrl** %20, align 8
  %53 = load %struct.mlx4_net_trans_rule_hw_ctrl*, %struct.mlx4_net_trans_rule_hw_ctrl** %20, align 8
  %54 = getelementptr inbounds %struct.mlx4_net_trans_rule_hw_ctrl, %struct.mlx4_net_trans_rule_hw_ctrl* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @be32_to_cpu(i32 %55)
  %57 = and i32 %56, 16777215
  store i32 %57, i32* %18, align 4
  %58 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %18, align 4
  %61 = load i32, i32* @RES_QP, align 4
  %62 = call i32 @get_res(%struct.mlx4_dev* %58, i32 %59, i32 %60, i32 %61, %struct.res_qp** %19)
  store i32 %62, i32* %17, align 4
  %63 = load i32, i32* %17, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %48
  %66 = load i32, i32* %18, align 4
  %67 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* %17, align 4
  store i32 %68, i32* %7, align 4
  br label %163

69:                                               ; preds = %48
  %70 = load %struct.mlx4_net_trans_rule_hw_ctrl*, %struct.mlx4_net_trans_rule_hw_ctrl** %20, align 8
  %71 = getelementptr inbounds %struct.mlx4_net_trans_rule_hw_ctrl, %struct.mlx4_net_trans_rule_hw_ctrl* %70, i64 1
  %72 = bitcast %struct.mlx4_net_trans_rule_hw_ctrl* %71 to %struct._rule_hw*
  store %struct._rule_hw* %72, %struct._rule_hw** %21, align 8
  %73 = load %struct._rule_hw*, %struct._rule_hw** %21, align 8
  %74 = getelementptr inbounds %struct._rule_hw, %struct._rule_hw* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @be16_to_cpu(i32 %75)
  %77 = call i32 @map_hw_to_sw_id(i32 %76)
  store i32 %77, i32* %22, align 4
  %78 = load i32, i32* %22, align 4
  switch i32 %78, label %109 [
    i32 132, label %79
    i32 131, label %89
    i32 130, label %90
    i32 129, label %90
    i32 128, label %90
  ]

79:                                               ; preds = %69
  %80 = load i32, i32* %9, align 4
  %81 = load %struct._rule_hw*, %struct._rule_hw** %21, align 8
  %82 = load %struct.list_head*, %struct.list_head** %16, align 8
  %83 = call i32 @validate_eth_header_mac(i32 %80, %struct._rule_hw* %81, %struct.list_head* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %79
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %17, align 4
  br label %156

88:                                               ; preds = %79
  br label %113

89:                                               ; preds = %69
  br label %113

90:                                               ; preds = %69, %69, %69
  %91 = call i32 @pr_warn(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  %92 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %93 = load i32, i32* %9, align 4
  %94 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %95 = load %struct.list_head*, %struct.list_head** %16, align 8
  %96 = load i32, i32* %22, align 4
  %97 = call i32 @add_eth_header(%struct.mlx4_dev* %92, i32 %93, %struct.mlx4_cmd_mailbox* %94, %struct.list_head* %95, i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %90
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %17, align 4
  br label %156

102:                                              ; preds = %90
  %103 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %104 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = add i64 %106, 1
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %104, align 4
  br label %113

109:                                              ; preds = %69
  %110 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %17, align 4
  br label %156

113:                                              ; preds = %102, %89, %88
  %114 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %115 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %116 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %119 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %118, i32 0, i32 1
  %120 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %121 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @MLX4_QP_FLOW_STEERING_ATTACH, align 4
  %124 = load i32, i32* @MLX4_CMD_TIME_CLASS_A, align 4
  %125 = load i32, i32* @MLX4_CMD_NATIVE, align 4
  %126 = call i32 @mlx4_cmd_imm(%struct.mlx4_dev* %114, i32 %117, i32* %119, i32 %122, i32 0, i32 %123, i32 %124, i32 %125)
  store i32 %126, i32* %17, align 4
  %127 = load i32, i32* %17, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %113
  br label %156

130:                                              ; preds = %113
  %131 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %132 = load i32, i32* %9, align 4
  %133 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %134 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @RES_FS_RULE, align 4
  %137 = load i32, i32* %18, align 4
  %138 = call i32 @add_res_range(%struct.mlx4_dev* %131, i32 %132, i32 %135, i32 1, i32 %136, i32 %137)
  store i32 %138, i32* %17, align 4
  %139 = load i32, i32* %17, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %152

141:                                              ; preds = %130
  %142 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %143 = call i32 @mlx4_err(%struct.mlx4_dev* %142, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %144 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %145 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %146 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @MLX4_QP_FLOW_STEERING_DETACH, align 4
  %149 = load i32, i32* @MLX4_CMD_TIME_CLASS_A, align 4
  %150 = load i32, i32* @MLX4_CMD_NATIVE, align 4
  %151 = call i32 @mlx4_cmd(%struct.mlx4_dev* %144, i32 %147, i32 0, i32 0, i32 %148, i32 %149, i32 %150)
  br label %156

152:                                              ; preds = %130
  %153 = load %struct.res_qp*, %struct.res_qp** %19, align 8
  %154 = getelementptr inbounds %struct.res_qp, %struct.res_qp* %153, i32 0, i32 0
  %155 = call i32 @atomic_inc(i32* %154)
  br label %156

156:                                              ; preds = %152, %141, %129, %109, %99, %85
  %157 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %158 = load i32, i32* %9, align 4
  %159 = load i32, i32* %18, align 4
  %160 = load i32, i32* @RES_QP, align 4
  %161 = call i32 @put_res(%struct.mlx4_dev* %157, i32 %158, i32 %159, i32 %160)
  %162 = load i32, i32* %17, align 4
  store i32 %162, i32* %7, align 4
  br label %163

163:                                              ; preds = %156, %65, %45
  %164 = load i32, i32* %7, align 4
  ret i32 %164
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @get_res(%struct.mlx4_dev*, i32, i32, i32, %struct.res_qp**) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @map_hw_to_sw_id(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @validate_eth_header_mac(i32, %struct._rule_hw*, %struct.list_head*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @add_eth_header(%struct.mlx4_dev*, i32, %struct.mlx4_cmd_mailbox*, %struct.list_head*, i32) #1

declare dso_local i32 @mlx4_cmd_imm(%struct.mlx4_dev*, i32, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @add_res_range(%struct.mlx4_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mlx4_err(%struct.mlx4_dev*, i8*) #1

declare dso_local i32 @mlx4_cmd(%struct.mlx4_dev*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @put_res(%struct.mlx4_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
