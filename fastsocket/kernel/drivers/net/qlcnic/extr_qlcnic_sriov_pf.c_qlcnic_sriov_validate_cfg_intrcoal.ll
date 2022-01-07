; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_validate_cfg_intrcoal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_validate_cfg_intrcoal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.qlcnic_nic_intr_coalesce }
%struct.qlcnic_nic_intr_coalesce = type { i32, i32 }
%struct.qlcnic_vf_info = type { i32 }
%struct.qlcnic_cmd_args = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*, %struct.qlcnic_vf_info*, %struct.qlcnic_cmd_args*)* @qlcnic_sriov_validate_cfg_intrcoal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_sriov_validate_cfg_intrcoal(%struct.qlcnic_adapter* %0, %struct.qlcnic_vf_info* %1, %struct.qlcnic_cmd_args* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_adapter*, align 8
  %6 = alloca %struct.qlcnic_vf_info*, align 8
  %7 = alloca %struct.qlcnic_cmd_args*, align 8
  %8 = alloca %struct.qlcnic_nic_intr_coalesce*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %5, align 8
  store %struct.qlcnic_vf_info* %1, %struct.qlcnic_vf_info** %6, align 8
  store %struct.qlcnic_cmd_args* %2, %struct.qlcnic_cmd_args** %7, align 8
  %12 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %13 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store %struct.qlcnic_nic_intr_coalesce* %15, %struct.qlcnic_nic_intr_coalesce** %8, align 8
  %16 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %7, align 8
  %17 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = ashr i32 %21, 16
  store i32 %22, i32* %9, align 4
  %23 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %7, align 8
  %24 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 2
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 65535
  store i32 %29, i32* %10, align 4
  %30 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %7, align 8
  %31 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  %35 = load i32, i32* %34, align 4
  %36 = ashr i32 %35, 16
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %39 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %37, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %3
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %64

45:                                               ; preds = %3
  %46 = load i32, i32* %10, align 4
  %47 = load %struct.qlcnic_nic_intr_coalesce*, %struct.qlcnic_nic_intr_coalesce** %8, align 8
  %48 = getelementptr inbounds %struct.qlcnic_nic_intr_coalesce, %struct.qlcnic_nic_intr_coalesce* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp sgt i32 %46, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %64

54:                                               ; preds = %45
  %55 = load i32, i32* %11, align 4
  %56 = load %struct.qlcnic_nic_intr_coalesce*, %struct.qlcnic_nic_intr_coalesce** %8, align 8
  %57 = getelementptr inbounds %struct.qlcnic_nic_intr_coalesce, %struct.qlcnic_nic_intr_coalesce* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %64

63:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %60, %51, %42
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
