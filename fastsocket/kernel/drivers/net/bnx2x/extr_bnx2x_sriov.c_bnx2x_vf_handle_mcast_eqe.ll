; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_vf_handle_mcast_eqe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_vf_handle_mcast_eqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_virtf = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.TYPE_3__*)*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*)* }
%struct.bnx2x_mcast_ramrod_params = type { %struct.TYPE_3__*, i32* }

@BNX2X_MCAST_CMD_CONT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Failed to send pending mcast commands: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_virtf*)* @bnx2x_vf_handle_mcast_eqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_vf_handle_mcast_eqe(%struct.bnx2x* %0, %struct.bnx2x_virtf* %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca %struct.bnx2x_virtf*, align 8
  %5 = alloca %struct.bnx2x_mcast_ramrod_params, align 8
  %6 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store %struct.bnx2x_virtf* %1, %struct.bnx2x_virtf** %4, align 8
  %7 = bitcast %struct.bnx2x_mcast_ramrod_params* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 16, i1 false)
  %8 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %9 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.bnx2x_mcast_ramrod_params, %struct.bnx2x_mcast_ramrod_params* %5, i32 0, i32 0
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %10, align 8
  %11 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %12 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %14, align 8
  %16 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %17 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = call i32 %15(%struct.TYPE_4__* %18)
  %20 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %21 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64 (%struct.TYPE_3__*)*, i64 (%struct.TYPE_3__*)** %22, align 8
  %24 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %25 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %24, i32 0, i32 0
  %26 = call i64 %23(%struct.TYPE_3__* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %2
  %29 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %30 = load i32, i32* @BNX2X_MCAST_CMD_CONT, align 4
  %31 = call i32 @bnx2x_config_mcast(%struct.bnx2x* %29, %struct.bnx2x_mcast_ramrod_params* %5, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %34, %28
  br label %38

38:                                               ; preds = %37, %2
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bnx2x_config_mcast(%struct.bnx2x*, %struct.bnx2x_mcast_ramrod_params*, i32) #2

declare dso_local i32 @BNX2X_ERR(i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
