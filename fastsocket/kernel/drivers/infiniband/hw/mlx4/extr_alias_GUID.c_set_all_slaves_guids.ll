; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_alias_GUID.c_set_all_slaves_guids.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_alias_GUID.c_set_all_slaves_guids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_dev = type { i32 }
%struct.mlx4_sriov_alias_guid_info_rec_det = type { i32, i32, i32 }

@NUM_ALIAS_GUID_REC_IN_PORT = common dso_local global i32 0, align 4
@NUM_ALIAS_GUID_IN_REC = common dso_local global i32 0, align 4
@GUID_REC_SIZE = common dso_local global i32 0, align 4
@IB_SA_GUIDINFO_REC_GID0 = common dso_local global i32 0, align 4
@IB_SA_GUIDINFO_REC_GID1 = common dso_local global i32 0, align 4
@IB_SA_GUIDINFO_REC_GID2 = common dso_local global i32 0, align 4
@IB_SA_GUIDINFO_REC_GID3 = common dso_local global i32 0, align 4
@IB_SA_GUIDINFO_REC_GID4 = common dso_local global i32 0, align 4
@IB_SA_GUIDINFO_REC_GID5 = common dso_local global i32 0, align 4
@IB_SA_GUIDINFO_REC_GID6 = common dso_local global i32 0, align 4
@IB_SA_GUIDINFO_REC_GID7 = common dso_local global i32 0, align 4
@MLX4_GUID_INFO_STATUS_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_ib_dev*, i32)* @set_all_slaves_guids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_all_slaves_guids(%struct.mlx4_ib_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx4_ib_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_sriov_alias_guid_info_rec_det, align 4
  store %struct.mlx4_ib_dev* %0, %struct.mlx4_ib_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %46, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @NUM_ALIAS_GUID_REC_IN_PORT, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %49

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.mlx4_sriov_alias_guid_info_rec_det, %struct.mlx4_sriov_alias_guid_info_rec_det* %6, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @NUM_ALIAS_GUID_IN_REC, align 4
  %15 = load i32, i32* @GUID_REC_SIZE, align 4
  %16 = mul nsw i32 %14, %15
  %17 = call i32 @memset(i32 %13, i32 0, i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %11
  br label %23

21:                                               ; preds = %11
  %22 = load i32, i32* @IB_SA_GUIDINFO_REC_GID0, align 4
  br label %23

23:                                               ; preds = %21, %20
  %24 = phi i32 [ 0, %20 ], [ %22, %21 ]
  %25 = load i32, i32* @IB_SA_GUIDINFO_REC_GID1, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @IB_SA_GUIDINFO_REC_GID2, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @IB_SA_GUIDINFO_REC_GID3, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @IB_SA_GUIDINFO_REC_GID4, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @IB_SA_GUIDINFO_REC_GID5, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @IB_SA_GUIDINFO_REC_GID6, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @IB_SA_GUIDINFO_REC_GID7, align 4
  %38 = or i32 %36, %37
  %39 = getelementptr inbounds %struct.mlx4_sriov_alias_guid_info_rec_det, %struct.mlx4_sriov_alias_guid_info_rec_det* %6, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* @MLX4_GUID_INFO_STATUS_IDLE, align 4
  %41 = getelementptr inbounds %struct.mlx4_sriov_alias_guid_info_rec_det, %struct.mlx4_sriov_alias_guid_info_rec_det* %6, i32 0, i32 1
  store i32 %40, i32* %41, align 4
  %42 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @set_administratively_guid_record(%struct.mlx4_ib_dev* %42, i32 %43, i32 %44, %struct.mlx4_sriov_alias_guid_info_rec_det* %6)
  br label %46

46:                                               ; preds = %23
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %7

49:                                               ; preds = %7
  ret void
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @set_administratively_guid_record(%struct.mlx4_ib_dev*, i32, i32, %struct.mlx4_sriov_alias_guid_info_rec_det*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
