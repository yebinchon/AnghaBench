; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_cfg_vf_def_mac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_cfg_vf_def_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.qlcnic_vport = type { i32* }
%struct.qlcnic_cmd_args = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.qlcnic_macvlan_mbx = type { i32, i32, i32, i32, i32, i32, i64 }

@QLCNIC_CMD_CONFIG_MAC_VLAN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@QLCNIC_MAC_ADD = common dso_local global i32 0, align 4
@QLCNIC_MAC_VLAN_ADD = common dso_local global i32 0, align 4
@QLCNIC_MAC_VLAN_DEL = common dso_local global i32 0, align 4
@BIT_31 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"MAC-VLAN %s to CAM failed, err=%d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"add \00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"delete \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*, %struct.qlcnic_vport*, i64, i64, i32)* @qlcnic_sriov_cfg_vf_def_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_sriov_cfg_vf_def_mac(%struct.qlcnic_adapter* %0, %struct.qlcnic_vport* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.qlcnic_adapter*, align 8
  %8 = alloca %struct.qlcnic_vport*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.qlcnic_cmd_args, align 8
  %13 = alloca %struct.qlcnic_macvlan_mbx, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %7, align 8
  store %struct.qlcnic_vport* %1, %struct.qlcnic_vport** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %19 = load i32, i32* @QLCNIC_CMD_CONFIG_MAC_VLAN, align 4
  %20 = call i64 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args* %12, %struct.qlcnic_adapter* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %124

25:                                               ; preds = %5
  %26 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %27 = load i64, i64* %9, align 8
  %28 = call i32 @qlcnic_sriov_pf_get_vport_handle(%struct.qlcnic_adapter* %26, i64 %27)
  store i32 %28, i32* %17, align 4
  %29 = load i32, i32* %17, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %15, align 4
  br label %121

34:                                               ; preds = %25
  %35 = load i64, i64* %10, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %34
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @QLCNIC_MAC_ADD, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @QLCNIC_MAC_VLAN_ADD, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41, %37
  %46 = load i32, i32* @QLCNIC_MAC_VLAN_ADD, align 4
  br label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @QLCNIC_MAC_VLAN_DEL, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  store i32 %50, i32* %11, align 4
  br label %51

51:                                               ; preds = %49, %34
  %52 = load i32, i32* %11, align 4
  %53 = or i32 %52, 256
  %54 = or i32 %53, 192
  %55 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %12, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  store i32 %54, i32* %58, align 4
  %59 = load i32, i32* %17, align 4
  %60 = and i32 %59, 65535
  %61 = shl i32 %60, 16
  %62 = load i32, i32* @BIT_31, align 4
  %63 = or i32 %61, %62
  %64 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %12, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %63
  store i32 %69, i32* %67, align 4
  %70 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %8, align 8
  %71 = getelementptr inbounds %struct.qlcnic_vport, %struct.qlcnic_vport* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  store i32* %72, i32** %14, align 8
  %73 = load i64, i64* %10, align 8
  %74 = getelementptr inbounds %struct.qlcnic_macvlan_mbx, %struct.qlcnic_macvlan_mbx* %13, i32 0, i32 6
  store i64 %73, i64* %74, align 8
  %75 = load i32*, i32** %14, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.qlcnic_macvlan_mbx, %struct.qlcnic_macvlan_mbx* %13, i32 0, i32 0
  store i32 %77, i32* %78, align 8
  %79 = load i32*, i32** %14, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.qlcnic_macvlan_mbx, %struct.qlcnic_macvlan_mbx* %13, i32 0, i32 1
  store i32 %81, i32* %82, align 4
  %83 = load i32*, i32** %14, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 2
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.qlcnic_macvlan_mbx, %struct.qlcnic_macvlan_mbx* %13, i32 0, i32 2
  store i32 %85, i32* %86, align 8
  %87 = load i32*, i32** %14, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 3
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.qlcnic_macvlan_mbx, %struct.qlcnic_macvlan_mbx* %13, i32 0, i32 3
  store i32 %89, i32* %90, align 4
  %91 = load i32*, i32** %14, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 4
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.qlcnic_macvlan_mbx, %struct.qlcnic_macvlan_mbx* %13, i32 0, i32 4
  store i32 %93, i32* %94, align 8
  %95 = load i32*, i32** %14, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 5
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.qlcnic_macvlan_mbx, %struct.qlcnic_macvlan_mbx* %13, i32 0, i32 5
  store i32 %97, i32* %98, align 4
  %99 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %12, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 2
  store i32* %102, i32** %16, align 8
  %103 = load i32*, i32** %16, align 8
  %104 = call i32 @memcpy(i32* %103, %struct.qlcnic_macvlan_mbx* %13, i32 32)
  %105 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %106 = call i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter* %105, %struct.qlcnic_cmd_args* %12)
  store i32 %106, i32* %15, align 4
  %107 = load i32, i32* %15, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %120

109:                                              ; preds = %51
  %110 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %111 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %110, i32 0, i32 0
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32, i32* %11, align 4
  %115 = icmp eq i32 %114, 1
  %116 = zext i1 %115 to i64
  %117 = select i1 %115, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %118 = load i32, i32* %15, align 4
  %119 = call i32 @dev_err(i32* %113, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %117, i32 %118)
  br label %120

120:                                              ; preds = %109, %51
  br label %121

121:                                              ; preds = %120, %31
  %122 = call i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args* %12)
  %123 = load i32, i32* %15, align 4
  store i32 %123, i32* %6, align 4
  br label %124

124:                                              ; preds = %121, %22
  %125 = load i32, i32* %6, align 4
  ret i32 %125
}

declare dso_local i64 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args*, %struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @qlcnic_sriov_pf_get_vport_handle(%struct.qlcnic_adapter*, i64) #1

declare dso_local i32 @memcpy(i32*, %struct.qlcnic_macvlan_mbx*, i32) #1

declare dso_local i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter*, %struct.qlcnic_cmd_args*) #1

declare dso_local i32 @dev_err(i32*, i8*, i8*, i32) #1

declare dso_local i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
