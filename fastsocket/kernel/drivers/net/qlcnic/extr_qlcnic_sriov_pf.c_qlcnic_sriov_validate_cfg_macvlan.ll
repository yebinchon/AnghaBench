; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_validate_cfg_macvlan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_validate_cfg_macvlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.qlcnic_vf_info = type { i32, %struct.qlcnic_vport* }
%struct.qlcnic_vport = type { i32, i64, i32 }
%struct.qlcnic_cmd_args = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.qlcnic_macvlan_mbx = type { i32 }

@BIT_8 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@BIT_31 = common dso_local global i32 0, align 4
@BIT_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"MAC address change is not allowed from VF %d\00", align 1
@QLC_PVID_MODE = common dso_local global i64 0, align 8
@QLCNIC_MAC_ADD = common dso_local global i32 0, align 4
@QLCNIC_MAC_VLAN_ADD = common dso_local global i32 0, align 4
@QLCNIC_MAC_VLAN_DEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*, %struct.qlcnic_vf_info*, %struct.qlcnic_cmd_args*)* @qlcnic_sriov_validate_cfg_macvlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_sriov_validate_cfg_macvlan(%struct.qlcnic_adapter* %0, %struct.qlcnic_vf_info* %1, %struct.qlcnic_cmd_args* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_adapter*, align 8
  %6 = alloca %struct.qlcnic_vf_info*, align 8
  %7 = alloca %struct.qlcnic_cmd_args*, align 8
  %8 = alloca %struct.qlcnic_macvlan_mbx*, align 8
  %9 = alloca %struct.qlcnic_vport*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %5, align 8
  store %struct.qlcnic_vf_info* %1, %struct.qlcnic_vf_info** %6, align 8
  store %struct.qlcnic_cmd_args* %2, %struct.qlcnic_cmd_args** %7, align 8
  %12 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %13 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %12, i32 0, i32 1
  %14 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %13, align 8
  store %struct.qlcnic_vport* %14, %struct.qlcnic_vport** %9, align 8
  %15 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %7, align 8
  %16 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @BIT_8, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %126

27:                                               ; preds = %3
  %28 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %29 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %28, i32 0, i32 1
  %30 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %29, align 8
  %31 = getelementptr inbounds %struct.qlcnic_vport, %struct.qlcnic_vport* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = shl i32 %32, 16
  %34 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %7, align 8
  %35 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %33
  store i32 %40, i32* %38, align 4
  %41 = load i32, i32* @BIT_31, align 4
  %42 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %7, align 8
  %43 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %41
  store i32 %48, i32* %46, align 4
  %49 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %7, align 8
  %50 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 2
  %54 = bitcast i32* %53 to %struct.qlcnic_macvlan_mbx*
  store %struct.qlcnic_macvlan_mbx* %54, %struct.qlcnic_macvlan_mbx** %8, align 8
  %55 = load %struct.qlcnic_macvlan_mbx*, %struct.qlcnic_macvlan_mbx** %8, align 8
  %56 = getelementptr inbounds %struct.qlcnic_macvlan_mbx, %struct.qlcnic_macvlan_mbx* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @BIT_0, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %72, label %61

61:                                               ; preds = %27
  %62 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %63 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %62, i32 0, i32 0
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %67 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @dev_err(i32* %65, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %126

72:                                               ; preds = %27
  %73 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %9, align 8
  %74 = getelementptr inbounds %struct.qlcnic_vport, %struct.qlcnic_vport* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @QLC_PVID_MODE, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %125

78:                                               ; preds = %72
  %79 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %7, align 8
  %80 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, 7
  store i32 %85, i32* %10, align 4
  %86 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %7, align 8
  %87 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, -8
  store i32 %92, i32* %90, align 4
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* @QLCNIC_MAC_ADD, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %100, label %96

96:                                               ; preds = %78
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* @QLCNIC_MAC_VLAN_ADD, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %96, %78
  %101 = load i32, i32* @QLCNIC_MAC_VLAN_ADD, align 4
  br label %104

102:                                              ; preds = %96
  %103 = load i32, i32* @QLCNIC_MAC_VLAN_DEL, align 4
  br label %104

104:                                              ; preds = %102, %100
  %105 = phi i32 [ %101, %100 ], [ %103, %102 ]
  store i32 %105, i32* %11, align 4
  %106 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %9, align 8
  %107 = getelementptr inbounds %struct.qlcnic_vport, %struct.qlcnic_vport* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = shl i32 %108, 16
  %110 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %7, align 8
  %111 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 3
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, %109
  store i32 %116, i32* %114, align 4
  %117 = load i32, i32* %11, align 4
  %118 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %7, align 8
  %119 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 1
  %123 = load i32, i32* %122, align 4
  %124 = or i32 %123, %117
  store i32 %124, i32* %122, align 4
  br label %125

125:                                              ; preds = %104, %72
  store i32 0, i32* %4, align 4
  br label %126

126:                                              ; preds = %125, %61, %24
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
