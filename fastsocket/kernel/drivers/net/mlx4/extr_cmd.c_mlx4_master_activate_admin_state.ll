; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_cmd.c_mlx4_master_activate_admin_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_cmd.c_mlx4_master_activate_admin_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_priv = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { %struct.mlx4_vport_state* }
%struct.mlx4_vport_state = type { i64 }
%struct.TYPE_5__ = type { %struct.mlx4_vport_oper_state* }
%struct.mlx4_vport_oper_state = type { i32, %struct.mlx4_vport_state }

@MLX4_MAX_PORTS = common dso_local global i32 0, align 4
@MLX4_VGT = common dso_local global i64 0, align 8
@NO_INDX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"No vlan resorces slave %d, port %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"alloc vlan %d idx  %d slave %d port %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_priv*, i32)* @mlx4_master_activate_admin_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_master_activate_admin_state(%struct.mlx4_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx4_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_vport_state*, align 8
  %9 = alloca %struct.mlx4_vport_oper_state*, align 8
  store %struct.mlx4_priv* %0, %struct.mlx4_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 1, i32* %6, align 4
  br label %10

10:                                               ; preds = %88, %2
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @MLX4_MAX_PORTS, align 4
  %13 = icmp sle i32 %11, %12
  br i1 %13, label %14, label %91

14:                                               ; preds = %10
  %15 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %16 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %24, i64 %26
  store %struct.mlx4_vport_oper_state* %27, %struct.mlx4_vport_oper_state** %9, align 8
  %28 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %29 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %37, i64 %39
  store %struct.mlx4_vport_state* %40, %struct.mlx4_vport_state** %8, align 8
  %41 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %9, align 8
  %42 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %41, i32 0, i32 1
  %43 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %8, align 8
  %44 = bitcast %struct.mlx4_vport_state* %42 to i8*
  %45 = bitcast %struct.mlx4_vport_state* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %44, i8* align 8 %45, i64 8, i1 false)
  %46 = load i64, i64* @MLX4_VGT, align 8
  %47 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %8, align 8
  %48 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %46, %49
  br i1 %50, label %51, label %87

51:                                               ; preds = %14
  %52 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %53 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %52, i32 0, i32 0
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %8, align 8
  %56 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %9, align 8
  %59 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %58, i32 0, i32 0
  %60 = call i32 @__mlx4_register_vlan(i32* %53, i32 %54, i64 %57, i32* %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %51
  %64 = load i32, i32* @NO_INDX, align 4
  %65 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %9, align 8
  %66 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %68 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %67, i32 0, i32 0
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @mlx4_warn(i32* %68, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %69, i32 %70)
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %3, align 4
  br label %92

73:                                               ; preds = %51
  %74 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %75 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %74, i32 0, i32 0
  %76 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %9, align 8
  %77 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i32
  %81 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %9, align 8
  %82 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @mlx4_dbg(i32* %75, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %80, i32 %83, i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %73, %14
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %6, align 4
  br label %10

91:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %91, %63
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @__mlx4_register_vlan(i32*, i32, i64, i32*) #2

declare dso_local i32 @mlx4_warn(i32*, i8*, i32, i32) #2

declare dso_local i32 @mlx4_dbg(i32*, i8*, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
