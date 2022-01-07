; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_mcast_handle_restore_cmd_e2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_mcast_handle_restore_cmd_e2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_mcast_obj = type { i32, i32 (%struct.bnx2x.0*, %struct.bnx2x_mcast_obj*, i32, %union.bnx2x_mcast_config_data*, i32)* }
%struct.bnx2x.0 = type opaque
%union.bnx2x_mcast_config_data = type { i64 }

@BNX2X_MCAST_CMD_RESTORE = common dso_local global i32 0, align 4
@BNX2X_MSG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"About to configure a bin %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, %struct.bnx2x_mcast_obj*, i32, i32*)* @bnx2x_mcast_handle_restore_cmd_e2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_mcast_handle_restore_cmd_e2(%struct.bnx2x* %0, %struct.bnx2x_mcast_obj* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca %struct.bnx2x_mcast_obj*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %union.bnx2x_mcast_config_data, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %5, align 8
  store %struct.bnx2x_mcast_obj* %1, %struct.bnx2x_mcast_obj** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %10, align 4
  %14 = bitcast %union.bnx2x_mcast_config_data* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 8, i1 false)
  %15 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @bnx2x_mcast_get_next_bin(%struct.bnx2x_mcast_obj* %15, i32 %16)
  store i32 %17, i32* %9, align 4
  br label %18

18:                                               ; preds = %46, %4
  %19 = load i32, i32* %9, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %51

21:                                               ; preds = %18
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = bitcast %union.bnx2x_mcast_config_data* %11 to i64*
  store i64 %23, i64* %24, align 8
  %25 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %6, align 8
  %26 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %25, i32 0, i32 1
  %27 = load i32 (%struct.bnx2x.0*, %struct.bnx2x_mcast_obj*, i32, %union.bnx2x_mcast_config_data*, i32)*, i32 (%struct.bnx2x.0*, %struct.bnx2x_mcast_obj*, i32, %union.bnx2x_mcast_config_data*, i32)** %26, align 8
  %28 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %29 = bitcast %struct.bnx2x* %28 to %struct.bnx2x.0*
  %30 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %6, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @BNX2X_MCAST_CMD_RESTORE, align 4
  %33 = call i32 %27(%struct.bnx2x.0* %29, %struct.bnx2x_mcast_obj* %30, i32 %31, %union.bnx2x_mcast_config_data* %11, i32 %32)
  %34 = load i32, i32* %10, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* @BNX2X_MSG_SP, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @DP(i32 %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %6, align 8
  %41 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp sge i32 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %21
  br label %51

45:                                               ; preds = %21
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %6, align 8
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  %50 = call i32 @bnx2x_mcast_get_next_bin(%struct.bnx2x_mcast_obj* %47, i32 %49)
  store i32 %50, i32* %9, align 4
  br label %18

51:                                               ; preds = %44, %18
  %52 = load i32, i32* %10, align 4
  %53 = load i32*, i32** %8, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* %9, align 4
  ret i32 %54
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bnx2x_mcast_get_next_bin(%struct.bnx2x_mcast_obj*, i32) #2

declare dso_local i32 @DP(i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
