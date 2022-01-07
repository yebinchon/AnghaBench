; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_cmd.c_mlx4_master_immediate_activate_vlan_qos.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_cmd.c_mlx4_master_immediate_activate_vlan_qos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_priv = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { %struct.mlx4_vport_state* }
%struct.mlx4_vport_state = type { i64, i64 }
%struct.TYPE_6__ = type { %struct.mlx4_vport_oper_state* }
%struct.mlx4_vport_oper_state = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64 }
%struct.mlx4_vf_immed_vlan_work = type { i32, i64, i32, i32, i32, i64, i64, i32, i32, %struct.mlx4_priv* }

@NO_INDX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"No vlan resources slave %d, port %d\0A\00", align 1
@MLX4_VF_IMMED_VLAN_FLAG_VLAN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"alloc vlan %d idx  %d slave %d port %d\0A\00", align 1
@MLX4_VF_IMMED_VLAN_FLAG_QOS = common dso_local global i32 0, align 4
@mlx4_vf_immed_vlan_work_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_master_immediate_activate_vlan_qos(%struct.mlx4_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_vport_oper_state*, align 8
  %9 = alloca %struct.mlx4_vport_state*, align 8
  %10 = alloca %struct.mlx4_vf_immed_vlan_work*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mlx4_priv* %0, %struct.mlx4_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @NO_INDX, align 4
  store i32 %13, i32* %12, align 4
  %14 = load %struct.mlx4_priv*, %struct.mlx4_priv** %5, align 8
  %15 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %23, i64 %25
  store %struct.mlx4_vport_oper_state* %26, %struct.mlx4_vport_oper_state** %8, align 8
  %27 = load %struct.mlx4_priv*, %struct.mlx4_priv** %5, align 8
  %28 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %36, i64 %38
  store %struct.mlx4_vport_state* %39, %struct.mlx4_vport_state** %9, align 8
  %40 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %8, align 8
  %41 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %9, align 8
  %45 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %43, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %3
  %49 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %8, align 8
  %50 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %9, align 8
  %54 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %52, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %198

58:                                               ; preds = %48, %3
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call %struct.mlx4_vf_immed_vlan_work* @kzalloc(i32 64, i32 %59)
  store %struct.mlx4_vf_immed_vlan_work* %60, %struct.mlx4_vf_immed_vlan_work** %10, align 8
  %61 = load %struct.mlx4_vf_immed_vlan_work*, %struct.mlx4_vf_immed_vlan_work** %10, align 8
  %62 = icmp ne %struct.mlx4_vf_immed_vlan_work* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %58
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %198

66:                                               ; preds = %58
  %67 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %8, align 8
  %68 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %9, align 8
  %72 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %70, %73
  br i1 %74, label %75, label %110

75:                                               ; preds = %66
  %76 = load %struct.mlx4_priv*, %struct.mlx4_priv** %5, align 8
  %77 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %76, i32 0, i32 1
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %9, align 8
  %80 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @__mlx4_register_vlan(i32* %77, i32 %78, i64 %81, i32* %12)
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %75
  %86 = load %struct.mlx4_vf_immed_vlan_work*, %struct.mlx4_vf_immed_vlan_work** %10, align 8
  %87 = call i32 @kfree(%struct.mlx4_vf_immed_vlan_work* %86)
  %88 = load %struct.mlx4_priv*, %struct.mlx4_priv** %5, align 8
  %89 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %88, i32 0, i32 1
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @mlx4_warn(i32* %89, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %90, i32 %91)
  %93 = load i32, i32* %11, align 4
  store i32 %93, i32* %4, align 4
  br label %198

94:                                               ; preds = %75
  %95 = load i32, i32* @MLX4_VF_IMMED_VLAN_FLAG_VLAN, align 4
  %96 = load %struct.mlx4_vf_immed_vlan_work*, %struct.mlx4_vf_immed_vlan_work** %10, align 8
  %97 = getelementptr inbounds %struct.mlx4_vf_immed_vlan_work, %struct.mlx4_vf_immed_vlan_work* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 8
  %100 = load %struct.mlx4_priv*, %struct.mlx4_priv** %5, align 8
  %101 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %100, i32 0, i32 1
  %102 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %9, align 8
  %103 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = trunc i64 %104 to i32
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @mlx4_dbg(i32* %101, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %105, i32 %106, i32 %107, i32 %108)
  br label %110

110:                                              ; preds = %94, %66
  %111 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %8, align 8
  %112 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.mlx4_vf_immed_vlan_work*, %struct.mlx4_vf_immed_vlan_work** %10, align 8
  %116 = getelementptr inbounds %struct.mlx4_vf_immed_vlan_work, %struct.mlx4_vf_immed_vlan_work* %115, i32 0, i32 1
  store i64 %114, i64* %116, align 8
  %117 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %8, align 8
  %118 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.mlx4_vf_immed_vlan_work*, %struct.mlx4_vf_immed_vlan_work** %10, align 8
  %121 = getelementptr inbounds %struct.mlx4_vf_immed_vlan_work, %struct.mlx4_vf_immed_vlan_work* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 8
  %122 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %8, align 8
  %123 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %9, align 8
  %127 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %125, %128
  br i1 %129, label %130, label %136

130:                                              ; preds = %110
  %131 = load i32, i32* @MLX4_VF_IMMED_VLAN_FLAG_QOS, align 4
  %132 = load %struct.mlx4_vf_immed_vlan_work*, %struct.mlx4_vf_immed_vlan_work** %10, align 8
  %133 = getelementptr inbounds %struct.mlx4_vf_immed_vlan_work, %struct.mlx4_vf_immed_vlan_work* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = or i32 %134, %131
  store i32 %135, i32* %133, align 8
  br label %136

136:                                              ; preds = %130, %110
  %137 = load %struct.mlx4_vf_immed_vlan_work*, %struct.mlx4_vf_immed_vlan_work** %10, align 8
  %138 = getelementptr inbounds %struct.mlx4_vf_immed_vlan_work, %struct.mlx4_vf_immed_vlan_work* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @MLX4_VF_IMMED_VLAN_FLAG_VLAN, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %136
  %144 = load i32, i32* %12, align 4
  %145 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %8, align 8
  %146 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 8
  br label %147

147:                                              ; preds = %143, %136
  %148 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %9, align 8
  %149 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %8, align 8
  %152 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 0
  store i64 %150, i64* %153, align 8
  %154 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %9, align 8
  %155 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %8, align 8
  %158 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 1
  store i64 %156, i64* %159, align 8
  %160 = load i32, i32* %7, align 4
  %161 = load %struct.mlx4_vf_immed_vlan_work*, %struct.mlx4_vf_immed_vlan_work** %10, align 8
  %162 = getelementptr inbounds %struct.mlx4_vf_immed_vlan_work, %struct.mlx4_vf_immed_vlan_work* %161, i32 0, i32 3
  store i32 %160, i32* %162, align 4
  %163 = load i32, i32* %6, align 4
  %164 = load %struct.mlx4_vf_immed_vlan_work*, %struct.mlx4_vf_immed_vlan_work** %10, align 8
  %165 = getelementptr inbounds %struct.mlx4_vf_immed_vlan_work, %struct.mlx4_vf_immed_vlan_work* %164, i32 0, i32 4
  store i32 %163, i32* %165, align 8
  %166 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %8, align 8
  %167 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.mlx4_vf_immed_vlan_work*, %struct.mlx4_vf_immed_vlan_work** %10, align 8
  %171 = getelementptr inbounds %struct.mlx4_vf_immed_vlan_work, %struct.mlx4_vf_immed_vlan_work* %170, i32 0, i32 5
  store i64 %169, i64* %171, align 8
  %172 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %8, align 8
  %173 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.mlx4_vf_immed_vlan_work*, %struct.mlx4_vf_immed_vlan_work** %10, align 8
  %177 = getelementptr inbounds %struct.mlx4_vf_immed_vlan_work, %struct.mlx4_vf_immed_vlan_work* %176, i32 0, i32 6
  store i64 %175, i64* %177, align 8
  %178 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %8, align 8
  %179 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.mlx4_vf_immed_vlan_work*, %struct.mlx4_vf_immed_vlan_work** %10, align 8
  %182 = getelementptr inbounds %struct.mlx4_vf_immed_vlan_work, %struct.mlx4_vf_immed_vlan_work* %181, i32 0, i32 7
  store i32 %180, i32* %182, align 8
  %183 = load %struct.mlx4_priv*, %struct.mlx4_priv** %5, align 8
  %184 = load %struct.mlx4_vf_immed_vlan_work*, %struct.mlx4_vf_immed_vlan_work** %10, align 8
  %185 = getelementptr inbounds %struct.mlx4_vf_immed_vlan_work, %struct.mlx4_vf_immed_vlan_work* %184, i32 0, i32 9
  store %struct.mlx4_priv* %183, %struct.mlx4_priv** %185, align 8
  %186 = load %struct.mlx4_vf_immed_vlan_work*, %struct.mlx4_vf_immed_vlan_work** %10, align 8
  %187 = getelementptr inbounds %struct.mlx4_vf_immed_vlan_work, %struct.mlx4_vf_immed_vlan_work* %186, i32 0, i32 8
  %188 = load i32, i32* @mlx4_vf_immed_vlan_work_handler, align 4
  %189 = call i32 @INIT_WORK(i32* %187, i32 %188)
  %190 = load %struct.mlx4_priv*, %struct.mlx4_priv** %5, align 8
  %191 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.mlx4_vf_immed_vlan_work*, %struct.mlx4_vf_immed_vlan_work** %10, align 8
  %196 = getelementptr inbounds %struct.mlx4_vf_immed_vlan_work, %struct.mlx4_vf_immed_vlan_work* %195, i32 0, i32 8
  %197 = call i32 @queue_work(i32 %194, i32* %196)
  store i32 0, i32* %4, align 4
  br label %198

198:                                              ; preds = %147, %85, %63, %57
  %199 = load i32, i32* %4, align 4
  ret i32 %199
}

declare dso_local %struct.mlx4_vf_immed_vlan_work* @kzalloc(i32, i32) #1

declare dso_local i32 @__mlx4_register_vlan(i32*, i32, i64, i32*) #1

declare dso_local i32 @kfree(%struct.mlx4_vf_immed_vlan_work*) #1

declare dso_local i32 @mlx4_warn(i32*, i8*, i32, i32) #1

declare dso_local i32 @mlx4_dbg(i32*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
