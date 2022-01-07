; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_set_vf_acl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_set_vf_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_10__*, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.qlcnic_vport* }
%struct.qlcnic_vport = type { i32, i32*, i64, i32 }
%struct.qlcnic_cmd_args = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32* }

@QLCNIC_CMD_SET_NIC_INFO = common dso_local global i32 0, align 4
@BIT_1 = common dso_local global i32 0, align 4
@BIT_3 = common dso_local global i32 0, align 4
@BIT_8 = common dso_local global i32 0, align 4
@QLC_PVID_MODE = common dso_local global i64 0, align 8
@BIT_6 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to set ACL, err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*, i32)* @qlcnic_sriov_set_vf_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_sriov_set_vf_acl(%struct.qlcnic_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qlcnic_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qlcnic_cmd_args, align 8
  %7 = alloca %struct.qlcnic_vport*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @qlcnic_sriov_func_to_index(%struct.qlcnic_adapter* %11, i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %9, align 4
  store i32 %17, i32* %3, align 4
  br label %138

18:                                               ; preds = %2
  %19 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %20 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %19, i32 0, i32 1
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %29, align 8
  store %struct.qlcnic_vport* %30, %struct.qlcnic_vport** %7, align 8
  %31 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %32 = load i32, i32* @QLCNIC_CMD_SET_NIC_INFO, align 4
  %33 = call i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args* %6, %struct.qlcnic_adapter* %31, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %18
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %3, align 4
  br label %138

38:                                               ; preds = %18
  %39 = load i32, i32* %5, align 4
  %40 = shl i32 %39, 16
  %41 = or i32 3, %40
  %42 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %6, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  store i32 %41, i32* %45, align 4
  %46 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %7, align 8
  %47 = getelementptr inbounds %struct.qlcnic_vport, %struct.qlcnic_vport* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %99

50:                                               ; preds = %38
  %51 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %7, align 8
  %52 = getelementptr inbounds %struct.qlcnic_vport, %struct.qlcnic_vport* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  store i32* %53, i32** %10, align 8
  %54 = load i32, i32* @BIT_1, align 4
  %55 = load i32, i32* @BIT_3, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @BIT_8, align 4
  %58 = or i32 %56, %57
  %59 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %6, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 2
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %58
  store i32 %64, i32* %62, align 4
  %65 = load i32*, i32** %10, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 5
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %10, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 4
  %70 = load i32, i32* %69, align 4
  %71 = shl i32 %70, 8
  %72 = or i32 %67, %71
  %73 = load i32*, i32** %10, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 3
  %75 = load i32, i32* %74, align 4
  %76 = shl i32 %75, 16
  %77 = or i32 %72, %76
  %78 = load i32*, i32** %10, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 2
  %80 = load i32, i32* %79, align 4
  %81 = shl i32 %80, 24
  %82 = or i32 %77, %81
  %83 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %6, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 4
  store i32 %82, i32* %86, align 4
  %87 = load i32*, i32** %10, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %10, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = shl i32 %92, 8
  %94 = or i32 %89, %93
  %95 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %6, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 5
  store i32 %94, i32* %98, align 4
  br label %99

99:                                               ; preds = %50, %38
  %100 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %7, align 8
  %101 = getelementptr inbounds %struct.qlcnic_vport, %struct.qlcnic_vport* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @QLC_PVID_MODE, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %123

105:                                              ; preds = %99
  %106 = load i32, i32* @BIT_6, align 4
  %107 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %6, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 2
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %111, %106
  store i32 %112, i32* %110, align 4
  %113 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %7, align 8
  %114 = getelementptr inbounds %struct.qlcnic_vport, %struct.qlcnic_vport* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = shl i32 %115, 8
  %117 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %6, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 3
  %121 = load i32, i32* %120, align 4
  %122 = or i32 %121, %116
  store i32 %122, i32* %120, align 4
  br label %123

123:                                              ; preds = %105, %99
  %124 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %125 = call i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter* %124, %struct.qlcnic_cmd_args* %6)
  store i32 %125, i32* %8, align 4
  %126 = load i32, i32* %8, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %123
  %129 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %130 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %129, i32 0, i32 0
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = load i32, i32* %8, align 4
  %134 = call i32 @dev_err(i32* %132, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %133)
  br label %135

135:                                              ; preds = %128, %123
  %136 = call i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args* %6)
  %137 = load i32, i32* %8, align 4
  store i32 %137, i32* %3, align 4
  br label %138

138:                                              ; preds = %135, %36, %16
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local i32 @qlcnic_sriov_func_to_index(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args*, %struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter*, %struct.qlcnic_cmd_args*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
