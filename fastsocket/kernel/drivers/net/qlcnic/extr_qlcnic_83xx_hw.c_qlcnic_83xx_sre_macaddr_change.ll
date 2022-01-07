; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_sre_macaddr_change.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_sre_macaddr_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.qlcnic_cmd_args = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.qlcnic_macvlan_mbx = type { i32, i32, i32, i32, i32, i32, i64 }

@QLCNIC_HOST_CTX_STATE_FREED = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@QLCNIC_CMD_CONFIG_MAC_VLAN = common dso_local global i32 0, align 4
@QLCNIC_MAC_ADD = common dso_local global i32 0, align 4
@QLCNIC_MAC_VLAN_ADD = common dso_local global i32 0, align 4
@QLCNIC_MAC_VLAN_DEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"MAC-VLAN %s to CAM failed, err=%d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"add \00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"delete \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_83xx_sre_macaddr_change(%struct.qlcnic_adapter* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qlcnic_adapter*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.qlcnic_cmd_args, align 8
  %14 = alloca %struct.qlcnic_macvlan_mbx, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %15 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %16 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @QLCNIC_HOST_CTX_STATE_FREED, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %116

25:                                               ; preds = %4
  %26 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %27 = load i32, i32* @QLCNIC_CMD_CONFIG_MAC_VLAN, align 4
  %28 = call i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args* %13, %struct.qlcnic_adapter* %26, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %5, align 4
  br label %116

33:                                               ; preds = %25
  %34 = load i64, i64* %8, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %33
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @QLCNIC_MAC_ADD, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @QLCNIC_MAC_VLAN_ADD, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40, %36
  %45 = load i32, i32* @QLCNIC_MAC_VLAN_ADD, align 4
  br label %48

46:                                               ; preds = %40
  %47 = load i32, i32* @QLCNIC_MAC_VLAN_DEL, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %48, %33
  %51 = load i32, i32* %9, align 4
  %52 = or i32 %51, 256
  %53 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %13, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  store i32 %52, i32* %56, align 4
  %57 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %58 = call i32 @qlcnic_83xx_set_interface_id_macaddr(%struct.qlcnic_adapter* %57, i32* %12)
  %59 = load i32, i32* %12, align 4
  %60 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %13, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %59
  store i32 %65, i32* %63, align 4
  %66 = load i64, i64* %8, align 8
  %67 = getelementptr inbounds %struct.qlcnic_macvlan_mbx, %struct.qlcnic_macvlan_mbx* %14, i32 0, i32 6
  store i64 %66, i64* %67, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.qlcnic_macvlan_mbx, %struct.qlcnic_macvlan_mbx* %14, i32 0, i32 0
  store i32 %70, i32* %71, align 8
  %72 = load i32*, i32** %7, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.qlcnic_macvlan_mbx, %struct.qlcnic_macvlan_mbx* %14, i32 0, i32 1
  store i32 %74, i32* %75, align 4
  %76 = load i32*, i32** %7, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 2
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.qlcnic_macvlan_mbx, %struct.qlcnic_macvlan_mbx* %14, i32 0, i32 2
  store i32 %78, i32* %79, align 8
  %80 = load i32*, i32** %7, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 3
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.qlcnic_macvlan_mbx, %struct.qlcnic_macvlan_mbx* %14, i32 0, i32 3
  store i32 %82, i32* %83, align 4
  %84 = load i32*, i32** %7, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 4
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.qlcnic_macvlan_mbx, %struct.qlcnic_macvlan_mbx* %14, i32 0, i32 4
  store i32 %86, i32* %87, align 8
  %88 = load i32*, i32** %7, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 5
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.qlcnic_macvlan_mbx, %struct.qlcnic_macvlan_mbx* %14, i32 0, i32 5
  store i32 %90, i32* %91, align 4
  %92 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %13, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 2
  store i32* %95, i32** %11, align 8
  %96 = load i32*, i32** %11, align 8
  %97 = call i32 @memcpy(i32* %96, %struct.qlcnic_macvlan_mbx* %14, i32 32)
  %98 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %99 = call i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter* %98, %struct.qlcnic_cmd_args* %13)
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* %10, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %113

102:                                              ; preds = %50
  %103 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %104 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %103, i32 0, i32 0
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32, i32* %9, align 4
  %108 = icmp eq i32 %107, 1
  %109 = zext i1 %108 to i64
  %110 = select i1 %108, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @dev_err(i32* %106, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %110, i32 %111)
  br label %113

113:                                              ; preds = %102, %50
  %114 = call i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args* %13)
  %115 = load i32, i32* %10, align 4
  store i32 %115, i32* %5, align 4
  br label %116

116:                                              ; preds = %113, %31, %22
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args*, %struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @qlcnic_83xx_set_interface_id_macaddr(%struct.qlcnic_adapter*, i32*) #1

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
