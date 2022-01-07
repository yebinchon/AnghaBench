; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_sriov.c_ixgbe_rcv_msg_from_vf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_sriov.c_ixgbe_rcv_msg_from_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { %struct.TYPE_2__*, %struct.ixgbe_hw }
%struct.TYPE_2__ = type { i32 }
%struct.ixgbe_hw = type { i32 }

@IXGBE_VFMAILBOX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Error receiving message from VF\0A\00", align 1
@IXGBE_VT_MSGTYPE_ACK = common dso_local global i32 0, align 4
@IXGBE_VT_MSGTYPE_NACK = common dso_local global i32 0, align 4
@IXGBE_VF_RESET = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Unhandled Msg %8.8x\0A\00", align 1
@IXGBE_ERR_MBX = common dso_local global i32 0, align 4
@IXGBE_VT_MSGTYPE_CTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_adapter*, i32)* @ixgbe_rcv_msg_from_vf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_rcv_msg_from_vf(%struct.ixgbe_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ixgbe_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ixgbe_hw*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* @IXGBE_VFMAILBOX_SIZE, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @IXGBE_VFMAILBOX_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %18 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %17, i32 0, i32 1
  store %struct.ixgbe_hw* %18, %struct.ixgbe_hw** %9, align 8
  %19 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @ixgbe_read_mbx(%struct.ixgbe_hw* %19, i32* %16, i32 %20, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %129

28:                                               ; preds = %2
  %29 = getelementptr inbounds i32, i32* %16, i64 0
  %30 = load i32, i32* %29, align 16
  %31 = load i32, i32* @IXGBE_VT_MSGTYPE_ACK, align 4
  %32 = load i32, i32* @IXGBE_VT_MSGTYPE_NACK, align 4
  %33 = or i32 %31, %32
  %34 = and i32 %30, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %129

38:                                               ; preds = %28
  %39 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %40 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %39)
  %41 = getelementptr inbounds i32, i32* %16, i64 0
  %42 = load i32, i32* %41, align 16
  %43 = load i32, i32* @IXGBE_VF_RESET, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @ixgbe_vf_reset_msg(%struct.ixgbe_adapter* %46, i32 %47)
  store i32 %48, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %129

49:                                               ; preds = %38
  %50 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %51 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %49
  %60 = load i32, i32* @IXGBE_VT_MSGTYPE_NACK, align 4
  %61 = getelementptr inbounds i32, i32* %16, i64 0
  %62 = load i32, i32* %61, align 16
  %63 = or i32 %62, %60
  store i32 %63, i32* %61, align 16
  %64 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @ixgbe_write_mbx(%struct.ixgbe_hw* %64, i32* %16, i32 1, i32 %65)
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %129

68:                                               ; preds = %49
  %69 = getelementptr inbounds i32, i32* %16, i64 0
  %70 = load i32, i32* %69, align 16
  %71 = and i32 %70, 65535
  switch i32 %71, label %100 [
    i32 130, label %72
    i32 129, label %76
    i32 128, label %80
    i32 132, label %84
    i32 131, label %88
    i32 134, label %92
    i32 133, label %96
  ]

72:                                               ; preds = %68
  %73 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @ixgbe_set_vf_mac_addr(%struct.ixgbe_adapter* %73, i32* %16, i32 %74)
  store i32 %75, i32* %10, align 4
  br label %106

76:                                               ; preds = %68
  %77 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @ixgbe_set_vf_multicasts(%struct.ixgbe_adapter* %77, i32* %16, i32 %78)
  store i32 %79, i32* %10, align 4
  br label %106

80:                                               ; preds = %68
  %81 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @ixgbe_set_vf_vlan_msg(%struct.ixgbe_adapter* %81, i32* %16, i32 %82)
  store i32 %83, i32* %10, align 4
  br label %106

84:                                               ; preds = %68
  %85 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @ixgbe_set_vf_lpe(%struct.ixgbe_adapter* %85, i32* %16, i32 %86)
  store i32 %87, i32* %10, align 4
  br label %106

88:                                               ; preds = %68
  %89 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @ixgbe_set_vf_macvlan_msg(%struct.ixgbe_adapter* %89, i32* %16, i32 %90)
  store i32 %91, i32* %10, align 4
  br label %106

92:                                               ; preds = %68
  %93 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @ixgbe_negotiate_vf_api(%struct.ixgbe_adapter* %93, i32* %16, i32 %94)
  store i32 %95, i32* %10, align 4
  br label %106

96:                                               ; preds = %68
  %97 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @ixgbe_get_vf_queues(%struct.ixgbe_adapter* %97, i32* %16, i32 %98)
  store i32 %99, i32* %10, align 4
  br label %106

100:                                              ; preds = %68
  %101 = load i32, i32* @drv, align 4
  %102 = getelementptr inbounds i32, i32* %16, i64 0
  %103 = load i32, i32* %102, align 16
  %104 = call i32 @e_err(i32 %101, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* @IXGBE_ERR_MBX, align 4
  store i32 %105, i32* %10, align 4
  br label %106

106:                                              ; preds = %100, %96, %92, %88, %84, %80, %76, %72
  %107 = load i32, i32* %10, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %106
  %110 = load i32, i32* @IXGBE_VT_MSGTYPE_NACK, align 4
  %111 = getelementptr inbounds i32, i32* %16, i64 0
  %112 = load i32, i32* %111, align 16
  %113 = or i32 %112, %110
  store i32 %113, i32* %111, align 16
  br label %119

114:                                              ; preds = %106
  %115 = load i32, i32* @IXGBE_VT_MSGTYPE_ACK, align 4
  %116 = getelementptr inbounds i32, i32* %16, i64 0
  %117 = load i32, i32* %116, align 16
  %118 = or i32 %117, %115
  store i32 %118, i32* %116, align 16
  br label %119

119:                                              ; preds = %114, %109
  %120 = load i32, i32* @IXGBE_VT_MSGTYPE_CTS, align 4
  %121 = getelementptr inbounds i32, i32* %16, i64 0
  %122 = load i32, i32* %121, align 16
  %123 = or i32 %122, %120
  store i32 %123, i32* %121, align 16
  %124 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* %5, align 4
  %127 = call i32 @ixgbe_write_mbx(%struct.ixgbe_hw* %124, i32* %16, i32 %125, i32 %126)
  %128 = load i32, i32* %10, align 4
  store i32 %128, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %129

129:                                              ; preds = %119, %59, %45, %36, %25
  %130 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %130)
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ixgbe_read_mbx(%struct.ixgbe_hw*, i32*, i32, i32) #2

declare dso_local i32 @pr_err(i8*) #2

declare dso_local i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw*) #2

declare dso_local i32 @ixgbe_vf_reset_msg(%struct.ixgbe_adapter*, i32) #2

declare dso_local i32 @ixgbe_write_mbx(%struct.ixgbe_hw*, i32*, i32, i32) #2

declare dso_local i32 @ixgbe_set_vf_mac_addr(%struct.ixgbe_adapter*, i32*, i32) #2

declare dso_local i32 @ixgbe_set_vf_multicasts(%struct.ixgbe_adapter*, i32*, i32) #2

declare dso_local i32 @ixgbe_set_vf_vlan_msg(%struct.ixgbe_adapter*, i32*, i32) #2

declare dso_local i32 @ixgbe_set_vf_lpe(%struct.ixgbe_adapter*, i32*, i32) #2

declare dso_local i32 @ixgbe_set_vf_macvlan_msg(%struct.ixgbe_adapter*, i32*, i32) #2

declare dso_local i32 @ixgbe_negotiate_vf_api(%struct.ixgbe_adapter*, i32*, i32) #2

declare dso_local i32 @ixgbe_get_vf_queues(%struct.ixgbe_adapter*, i32*, i32) #2

declare dso_local i32 @e_err(i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
