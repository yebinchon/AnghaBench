; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_pf_config_vport.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_pf_config_vport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.qlcnic_cmd_args = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_4__ = type { i32* }

@QLCNIC_CMD_CONFIG_VPORT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed %s vport, err %d for func 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*, i64, i32)* @qlcnic_sriov_pf_config_vport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_sriov_pf_config_vport(%struct.qlcnic_adapter* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_adapter*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.qlcnic_cmd_args, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %12 = load i32, i32* @QLCNIC_CMD_CONFIG_VPORT, align 4
  %13 = call i64 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args* %8, %struct.qlcnic_adapter* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %85

18:                                               ; preds = %3
  %19 = load i64, i64* %6, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load i32, i32* %7, align 4
  %23 = shl i32 %22, 8
  %24 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %8, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 3
  store i32 %23, i32* %27, align 4
  br label %46

28:                                               ; preds = %18
  %29 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @qlcnic_sriov_pf_get_vport_handle(%struct.qlcnic_adapter* %29, i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %9, align 4
  br label %82

37:                                               ; preds = %28
  %38 = load i32, i32* %10, align 4
  %39 = and i32 %38, 65535
  %40 = shl i32 %39, 8
  %41 = or i32 %40, 1
  %42 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %8, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 3
  store i32 %41, i32* %45, align 4
  br label %46

46:                                               ; preds = %37, %21
  %47 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %48 = call i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter* %47, %struct.qlcnic_cmd_args* %8)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %46
  %52 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %53 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %52, i32 0, i32 0
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i64, i64* %6, align 8
  %57 = icmp ne i64 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @dev_err(i32* %55, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %59, i32 %60, i32 %61)
  br label %82

63:                                               ; preds = %46
  %64 = load i64, i64* %6, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %8, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 2
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, 65535
  store i32 %72, i32* %10, align 4
  %73 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @qlcnic_sriov_pf_set_vport_handle(%struct.qlcnic_adapter* %73, i32 %74, i32 %75)
  br label %81

77:                                               ; preds = %63
  %78 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @qlcnic_sriov_pf_reset_vport_handle(%struct.qlcnic_adapter* %78, i32 %79)
  br label %81

81:                                               ; preds = %77, %66
  br label %82

82:                                               ; preds = %81, %51, %34
  %83 = call i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args* %8)
  %84 = load i32, i32* %9, align 4
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %82, %15
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i64 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args*, %struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @qlcnic_sriov_pf_get_vport_handle(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter*, %struct.qlcnic_cmd_args*) #1

declare dso_local i32 @dev_err(i32*, i8*, i8*, i32, i32) #1

declare dso_local i32 @qlcnic_sriov_pf_set_vport_handle(%struct.qlcnic_adapter*, i32, i32) #1

declare dso_local i32 @qlcnic_sriov_pf_reset_vport_handle(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
