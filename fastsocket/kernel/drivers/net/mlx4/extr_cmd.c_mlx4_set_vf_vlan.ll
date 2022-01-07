; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_cmd.c_mlx4_set_vf_vlan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_cmd.c_mlx4_set_vf_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.mlx4_priv = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__*, %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_9__ = type { %struct.mlx4_vport_oper_state* }
%struct.mlx4_vport_oper_state = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { %struct.mlx4_vport_state* }
%struct.mlx4_vport_state = type { i32, i32 }

@MLX4_DEV_CAP_FLAG2_VLAN_CONTROL = common dso_local global i32 0, align 4
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MLX4_VGT = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_UPDATE_QP = common dso_local global i32 0, align 4
@MLX4_VLAN_TRANSITION_VST_VST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"updating vf %d port %d config params immediately\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_set_vf_vlan(%struct.mlx4_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx4_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mlx4_priv*, align 8
  %13 = alloca %struct.mlx4_vport_oper_state*, align 8
  %14 = alloca %struct.mlx4_vport_state*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %18 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %17)
  store %struct.mlx4_priv* %18, %struct.mlx4_priv** %12, align 8
  %19 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %20 = call i32 @mlx4_is_master(%struct.mlx4_dev* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %5
  %23 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %24 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @MLX4_DEV_CAP_FLAG2_VLAN_CONTROL, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %22, %5
  %31 = load i32, i32* @EPROTONOSUPPORT, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %136

33:                                               ; preds = %22
  %34 = load i32, i32* %10, align 4
  %35 = icmp sgt i32 %34, 4095
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %11, align 4
  %38 = icmp sgt i32 %37, 7
  br i1 %38, label %39, label %42

39:                                               ; preds = %36, %33
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  br label %136

42:                                               ; preds = %36
  %43 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @mlx4_get_slave_indx(%struct.mlx4_dev* %43, i32 %44)
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* %15, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %6, align 4
  br label %136

51:                                               ; preds = %42
  %52 = load %struct.mlx4_priv*, %struct.mlx4_priv** %12, align 8
  %53 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = load i32, i32* %15, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %61, i64 %63
  store %struct.mlx4_vport_state* %64, %struct.mlx4_vport_state** %14, align 8
  %65 = load %struct.mlx4_priv*, %struct.mlx4_priv** %12, align 8
  %66 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = load i32, i32* %15, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %74, i64 %76
  store %struct.mlx4_vport_oper_state* %77, %struct.mlx4_vport_oper_state** %13, align 8
  %78 = load i32, i32* %10, align 4
  %79 = icmp eq i32 0, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %51
  %81 = load i32, i32* %11, align 4
  %82 = icmp eq i32 0, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  %84 = load i32, i32* @MLX4_VGT, align 4
  %85 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %14, align 8
  %86 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 4
  br label %91

87:                                               ; preds = %80, %51
  %88 = load i32, i32* %10, align 4
  %89 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %14, align 8
  %90 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 4
  br label %91

91:                                               ; preds = %87, %83
  %92 = load i32, i32* %11, align 4
  %93 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %14, align 8
  %94 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %13, align 8
  %96 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %14, align 8
  %100 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @calculate_transition(i32 %98, i32 %101)
  store i32 %102, i32* %16, align 4
  %103 = load %struct.mlx4_priv*, %struct.mlx4_priv** %12, align 8
  %104 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %106, align 8
  %108 = load i32, i32* %15, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %135

114:                                              ; preds = %91
  %115 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %116 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @MLX4_DEV_CAP_FLAG2_UPDATE_QP, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %135

122:                                              ; preds = %114
  %123 = load i32, i32* %16, align 4
  %124 = load i32, i32* @MLX4_VLAN_TRANSITION_VST_VST, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %135

126:                                              ; preds = %122
  %127 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* %8, align 4
  %130 = call i32 @mlx4_info(%struct.mlx4_dev* %127, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %128, i32 %129)
  %131 = load %struct.mlx4_priv*, %struct.mlx4_priv** %12, align 8
  %132 = load i32, i32* %15, align 4
  %133 = load i32, i32* %8, align 4
  %134 = call i32 @mlx4_master_immediate_activate_vlan_qos(%struct.mlx4_priv* %131, i32 %132, i32 %133)
  br label %135

135:                                              ; preds = %126, %122, %114, %91
  store i32 0, i32* %6, align 4
  br label %136

136:                                              ; preds = %135, %48, %39, %30
  %137 = load i32, i32* %6, align 4
  ret i32 %137
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_is_master(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_get_slave_indx(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @calculate_transition(i32, i32) #1

declare dso_local i32 @mlx4_info(%struct.mlx4_dev*, i8*, i32, i32) #1

declare dso_local i32 @mlx4_master_immediate_activate_vlan_qos(%struct.mlx4_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
