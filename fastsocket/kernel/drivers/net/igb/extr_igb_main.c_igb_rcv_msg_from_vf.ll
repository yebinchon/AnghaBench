; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_rcv_msg_from_vf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_rcv_msg_from_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { %struct.vf_data_storage*, %struct.e1000_hw, %struct.pci_dev* }
%struct.vf_data_storage = type { i32, i32, i64 }
%struct.e1000_hw = type { i32 }
%struct.pci_dev = type { i32 }

@E1000_VFMAILBOX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Error receiving message from VF\0A\00", align 1
@IGB_VF_FLAG_CTS = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@E1000_VT_MSGTYPE_ACK = common dso_local global i64 0, align 8
@E1000_VT_MSGTYPE_NACK = common dso_local global i64 0, align 8
@E1000_VF_RESET = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IGB_VF_FLAG_PF_SET_MAC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [104 x i8] c"VF %d attempted to override administratively set MAC address\0AReload the VF driver to resume operations\0A\00", align 1
@.str.2 = private unnamed_addr constant [101 x i8] c"VF %d attempted to override administratively set VLAN tag\0AReload the VF driver to resume operations\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Unhandled Msg %08x\0A\00", align 1
@E1000_VT_MSGTYPE_CTS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igb_adapter*, i64)* @igb_rcv_msg_from_vf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igb_rcv_msg_from_vf(%struct.igb_adapter* %0, i64 %1) #0 {
  %3 = alloca %struct.igb_adapter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.e1000_hw*, align 8
  %9 = alloca %struct.vf_data_storage*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.igb_adapter* %0, %struct.igb_adapter** %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %12, i32 0, i32 2
  %14 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  store %struct.pci_dev* %14, %struct.pci_dev** %5, align 8
  %15 = load i32, i32* @E1000_VFMAILBOX_SIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %6, align 8
  %18 = alloca i64, i64 %16, align 16
  store i64 %16, i64* %7, align 8
  %19 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %20 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %19, i32 0, i32 1
  store %struct.e1000_hw* %20, %struct.e1000_hw** %8, align 8
  %21 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %22 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %21, i32 0, i32 0
  %23 = load %struct.vf_data_storage*, %struct.vf_data_storage** %22, align 8
  %24 = load i64, i64* %4, align 8
  %25 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %23, i64 %24
  store %struct.vf_data_storage* %25, %struct.vf_data_storage** %9, align 8
  %26 = load %struct.e1000_hw*, %struct.e1000_hw** %8, align 8
  %27 = load i32, i32* @E1000_VFMAILBOX_SIZE, align 4
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @igb_read_mbx(%struct.e1000_hw* %26, i64* %18, i32 %27, i64 %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %54

32:                                               ; preds = %2
  %33 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %34 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %33, i32 0, i32 0
  %35 = call i32 (i32*, i8*, ...) @dev_err(i32* %34, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @IGB_VF_FLAG_CTS, align 4
  %37 = xor i32 %36, -1
  %38 = load %struct.vf_data_storage*, %struct.vf_data_storage** %9, align 8
  %39 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = and i32 %40, %37
  store i32 %41, i32* %39, align 8
  %42 = load i32, i32* @jiffies, align 4
  %43 = load %struct.vf_data_storage*, %struct.vf_data_storage** %9, align 8
  %44 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* @HZ, align 4
  %47 = mul nsw i32 2, %46
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %45, %48
  %50 = call i32 @time_after(i32 %42, i64 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %32
  store i32 1, i32* %11, align 4
  br label %172

53:                                               ; preds = %32
  br label %155

54:                                               ; preds = %2
  %55 = getelementptr inbounds i64, i64* %18, i64 0
  %56 = load i64, i64* %55, align 16
  %57 = load i64, i64* @E1000_VT_MSGTYPE_ACK, align 8
  %58 = load i64, i64* @E1000_VT_MSGTYPE_NACK, align 8
  %59 = or i64 %57, %58
  %60 = and i64 %56, %59
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  store i32 1, i32* %11, align 4
  br label %172

63:                                               ; preds = %54
  %64 = getelementptr inbounds i64, i64* %18, i64 0
  %65 = load i64, i64* %64, align 16
  %66 = load i64, i64* @E1000_VF_RESET, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %70 = load i64, i64* %4, align 8
  %71 = call i32 @igb_vf_reset_msg(%struct.igb_adapter* %69, i64 %70)
  store i32 1, i32* %11, align 4
  br label %172

72:                                               ; preds = %63
  %73 = load %struct.vf_data_storage*, %struct.vf_data_storage** %9, align 8
  %74 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @IGB_VF_FLAG_CTS, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %92, label %79

79:                                               ; preds = %72
  %80 = load i32, i32* @jiffies, align 4
  %81 = load %struct.vf_data_storage*, %struct.vf_data_storage** %9, align 8
  %82 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* @HZ, align 4
  %85 = mul nsw i32 2, %84
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %83, %86
  %88 = call i32 @time_after(i32 %80, i64 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %79
  store i32 1, i32* %11, align 4
  br label %172

91:                                               ; preds = %79
  store i32 -1, i32* %10, align 4
  br label %155

92:                                               ; preds = %72
  %93 = getelementptr inbounds i64, i64* %18, i64 0
  %94 = load i64, i64* %93, align 16
  %95 = and i64 %94, 65535
  switch i64 %95, label %144 [
    i64 131, label %96
    i64 129, label %115
    i64 130, label %119
    i64 132, label %123
    i64 128, label %129
  ]

96:                                               ; preds = %92
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %10, align 4
  %99 = load %struct.vf_data_storage*, %struct.vf_data_storage** %9, align 8
  %100 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @IGB_VF_FLAG_PF_SET_MAC, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %96
  %106 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %107 = load i64, i64* %4, align 8
  %108 = call i32 @igb_set_vf_mac_addr(%struct.igb_adapter* %106, i64* %18, i64 %107)
  store i32 %108, i32* %10, align 4
  br label %114

109:                                              ; preds = %96
  %110 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %111 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %110, i32 0, i32 0
  %112 = load i64, i64* %4, align 8
  %113 = call i32 @dev_warn(i32* %111, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.1, i64 0, i64 0), i64 %112)
  br label %114

114:                                              ; preds = %109, %105
  br label %150

115:                                              ; preds = %92
  %116 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %117 = load i64, i64* %4, align 8
  %118 = call i32 @igb_set_vf_promisc(%struct.igb_adapter* %116, i64* %18, i64 %117)
  store i32 %118, i32* %10, align 4
  br label %150

119:                                              ; preds = %92
  %120 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %121 = load i64, i64* %4, align 8
  %122 = call i32 @igb_set_vf_multicasts(%struct.igb_adapter* %120, i64* %18, i64 %121)
  store i32 %122, i32* %10, align 4
  br label %150

123:                                              ; preds = %92
  %124 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %125 = getelementptr inbounds i64, i64* %18, i64 1
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* %4, align 8
  %128 = call i32 @igb_set_vf_rlpml(%struct.igb_adapter* %124, i64 %126, i64 %127)
  store i32 %128, i32* %10, align 4
  br label %150

129:                                              ; preds = %92
  store i32 -1, i32* %10, align 4
  %130 = load %struct.vf_data_storage*, %struct.vf_data_storage** %9, align 8
  %131 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %129
  %135 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %136 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %135, i32 0, i32 0
  %137 = load i64, i64* %4, align 8
  %138 = call i32 @dev_warn(i32* %136, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.2, i64 0, i64 0), i64 %137)
  br label %143

139:                                              ; preds = %129
  %140 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %141 = load i64, i64* %4, align 8
  %142 = call i32 @igb_set_vf_vlan(%struct.igb_adapter* %140, i64* %18, i64 %141)
  store i32 %142, i32* %10, align 4
  br label %143

143:                                              ; preds = %139, %134
  br label %150

144:                                              ; preds = %92
  %145 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %146 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %145, i32 0, i32 0
  %147 = getelementptr inbounds i64, i64* %18, i64 0
  %148 = load i64, i64* %147, align 16
  %149 = call i32 (i32*, i8*, ...) @dev_err(i32* %146, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i64 %148)
  store i32 -1, i32* %10, align 4
  br label %150

150:                                              ; preds = %144, %143, %123, %119, %115, %114
  %151 = load i64, i64* @E1000_VT_MSGTYPE_CTS, align 8
  %152 = getelementptr inbounds i64, i64* %18, i64 0
  %153 = load i64, i64* %152, align 16
  %154 = or i64 %153, %151
  store i64 %154, i64* %152, align 16
  br label %155

155:                                              ; preds = %150, %91, %53
  %156 = load i32, i32* %10, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %155
  %159 = load i64, i64* @E1000_VT_MSGTYPE_NACK, align 8
  %160 = getelementptr inbounds i64, i64* %18, i64 0
  %161 = load i64, i64* %160, align 16
  %162 = or i64 %161, %159
  store i64 %162, i64* %160, align 16
  br label %168

163:                                              ; preds = %155
  %164 = load i64, i64* @E1000_VT_MSGTYPE_ACK, align 8
  %165 = getelementptr inbounds i64, i64* %18, i64 0
  %166 = load i64, i64* %165, align 16
  %167 = or i64 %166, %164
  store i64 %167, i64* %165, align 16
  br label %168

168:                                              ; preds = %163, %158
  %169 = load %struct.e1000_hw*, %struct.e1000_hw** %8, align 8
  %170 = load i64, i64* %4, align 8
  %171 = call i32 @igb_write_mbx(%struct.e1000_hw* %169, i64* %18, i32 1, i64 %170)
  store i32 0, i32* %11, align 4
  br label %172

172:                                              ; preds = %168, %90, %68, %62, %52
  %173 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %173)
  %174 = load i32, i32* %11, align 4
  switch i32 %174, label %176 [
    i32 0, label %175
    i32 1, label %175
  ]

175:                                              ; preds = %172, %172
  ret void

176:                                              ; preds = %172
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @igb_read_mbx(%struct.e1000_hw*, i64*, i32, i64) #2

declare dso_local i32 @dev_err(i32*, i8*, ...) #2

declare dso_local i32 @time_after(i32, i64) #2

declare dso_local i32 @igb_vf_reset_msg(%struct.igb_adapter*, i64) #2

declare dso_local i32 @igb_set_vf_mac_addr(%struct.igb_adapter*, i64*, i64) #2

declare dso_local i32 @dev_warn(i32*, i8*, i64) #2

declare dso_local i32 @igb_set_vf_promisc(%struct.igb_adapter*, i64*, i64) #2

declare dso_local i32 @igb_set_vf_multicasts(%struct.igb_adapter*, i64*, i64) #2

declare dso_local i32 @igb_set_vf_rlpml(%struct.igb_adapter*, i64, i64) #2

declare dso_local i32 @igb_set_vf_vlan(%struct.igb_adapter*, i64*, i64) #2

declare dso_local i32 @igb_write_mbx(%struct.e1000_hw*, i64*, i32, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
