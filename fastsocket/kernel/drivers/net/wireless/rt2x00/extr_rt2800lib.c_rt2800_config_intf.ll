; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_config_intf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_config_intf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }
%struct.rt2x00_intf = type { i32 }
%struct.rt2x00intf_conf = type { i32, i8**, i8** }

@CONFIG_UPDATE_TYPE = common dso_local global i32 0, align 4
@BCN_TIME_CFG = common dso_local global i32 0, align 4
@BCN_TIME_CFG_TSF_SYNC = common dso_local global i32 0, align 4
@TSF_SYNC_AP_NONE = common dso_local global i64 0, align 8
@TBTT_SYNC_CFG = common dso_local global i32 0, align 4
@TBTT_SYNC_CFG_BCN_CWMIN = common dso_local global i32 0, align 4
@TBTT_SYNC_CFG_BCN_AIFSN = common dso_local global i32 0, align 4
@TBTT_SYNC_CFG_BCN_EXP_WIN = common dso_local global i32 0, align 4
@TBTT_SYNC_CFG_TBTT_ADJUST = common dso_local global i32 0, align 4
@CONFIG_UPDATE_MAC = common dso_local global i32 0, align 4
@MAC_ADDR_DW1_UNICAST_TO_ME_MASK = common dso_local global i32 0, align 4
@MAC_ADDR_DW0 = common dso_local global i32 0, align 4
@CONFIG_UPDATE_BSSID = common dso_local global i32 0, align 4
@MAC_BSSID_DW1_BSS_ID_MASK = common dso_local global i32 0, align 4
@MAC_BSSID_DW1_BSS_BCN_NUM = common dso_local global i32 0, align 4
@MAC_BSSID_DW0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2800_config_intf(%struct.rt2x00_dev* %0, %struct.rt2x00_intf* %1, %struct.rt2x00intf_conf* %2, i32 %3) #0 {
  %5 = alloca %struct.rt2x00_dev*, align 8
  %6 = alloca %struct.rt2x00_intf*, align 8
  %7 = alloca %struct.rt2x00intf_conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %5, align 8
  store %struct.rt2x00_intf* %1, %struct.rt2x00_intf** %6, align 8
  store %struct.rt2x00intf_conf* %2, %struct.rt2x00intf_conf** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @CONFIG_UPDATE_TYPE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %67

15:                                               ; preds = %4
  %16 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %17 = load i32, i32* @BCN_TIME_CFG, align 4
  %18 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %16, i32 %17, i32* %9)
  %19 = load i32, i32* @BCN_TIME_CFG_TSF_SYNC, align 4
  %20 = load %struct.rt2x00intf_conf*, %struct.rt2x00intf_conf** %7, align 8
  %21 = getelementptr inbounds %struct.rt2x00intf_conf, %struct.rt2x00intf_conf* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @rt2x00_set_field32(i32* %9, i32 %19, i32 %22)
  %24 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %25 = load i32, i32* @BCN_TIME_CFG, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %24, i32 %25, i32 %26)
  %28 = load %struct.rt2x00intf_conf*, %struct.rt2x00intf_conf** %7, align 8
  %29 = getelementptr inbounds %struct.rt2x00intf_conf, %struct.rt2x00intf_conf* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* @TSF_SYNC_AP_NONE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %50

34:                                               ; preds = %15
  %35 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %36 = load i32, i32* @TBTT_SYNC_CFG, align 4
  %37 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %35, i32 %36, i32* %9)
  %38 = load i32, i32* @TBTT_SYNC_CFG_BCN_CWMIN, align 4
  %39 = call i32 @rt2x00_set_field32(i32* %9, i32 %38, i32 0)
  %40 = load i32, i32* @TBTT_SYNC_CFG_BCN_AIFSN, align 4
  %41 = call i32 @rt2x00_set_field32(i32* %9, i32 %40, i32 1)
  %42 = load i32, i32* @TBTT_SYNC_CFG_BCN_EXP_WIN, align 4
  %43 = call i32 @rt2x00_set_field32(i32* %9, i32 %42, i32 32)
  %44 = load i32, i32* @TBTT_SYNC_CFG_TBTT_ADJUST, align 4
  %45 = call i32 @rt2x00_set_field32(i32* %9, i32 %44, i32 0)
  %46 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %47 = load i32, i32* @TBTT_SYNC_CFG, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %46, i32 %47, i32 %48)
  br label %66

50:                                               ; preds = %15
  %51 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %52 = load i32, i32* @TBTT_SYNC_CFG, align 4
  %53 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %51, i32 %52, i32* %9)
  %54 = load i32, i32* @TBTT_SYNC_CFG_BCN_CWMIN, align 4
  %55 = call i32 @rt2x00_set_field32(i32* %9, i32 %54, i32 4)
  %56 = load i32, i32* @TBTT_SYNC_CFG_BCN_AIFSN, align 4
  %57 = call i32 @rt2x00_set_field32(i32* %9, i32 %56, i32 2)
  %58 = load i32, i32* @TBTT_SYNC_CFG_BCN_EXP_WIN, align 4
  %59 = call i32 @rt2x00_set_field32(i32* %9, i32 %58, i32 32)
  %60 = load i32, i32* @TBTT_SYNC_CFG_TBTT_ADJUST, align 4
  %61 = call i32 @rt2x00_set_field32(i32* %9, i32 %60, i32 16)
  %62 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %63 = load i32, i32* @TBTT_SYNC_CFG, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %62, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %50, %34
  br label %67

67:                                               ; preds = %66, %4
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @CONFIG_UPDATE_MAC, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %121

72:                                               ; preds = %67
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @CONFIG_UPDATE_TYPE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %92

77:                                               ; preds = %72
  %78 = load %struct.rt2x00intf_conf*, %struct.rt2x00intf_conf** %7, align 8
  %79 = getelementptr inbounds %struct.rt2x00intf_conf, %struct.rt2x00intf_conf* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = load i64, i64* @TSF_SYNC_AP_NONE, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %92

84:                                               ; preds = %77
  %85 = load %struct.rt2x00intf_conf*, %struct.rt2x00intf_conf** %7, align 8
  %86 = getelementptr inbounds %struct.rt2x00intf_conf, %struct.rt2x00intf_conf* %85, i32 0, i32 1
  %87 = load i8**, i8*** %86, align 8
  %88 = load %struct.rt2x00intf_conf*, %struct.rt2x00intf_conf** %7, align 8
  %89 = getelementptr inbounds %struct.rt2x00intf_conf, %struct.rt2x00intf_conf* %88, i32 0, i32 2
  %90 = load i8**, i8*** %89, align 8
  %91 = call i32 @memcpy(i8** %87, i8** %90, i32 8)
  store i32 1, i32* %10, align 4
  br label %92

92:                                               ; preds = %84, %77, %72
  %93 = load %struct.rt2x00intf_conf*, %struct.rt2x00intf_conf** %7, align 8
  %94 = getelementptr inbounds %struct.rt2x00intf_conf, %struct.rt2x00intf_conf* %93, i32 0, i32 2
  %95 = load i8**, i8*** %94, align 8
  %96 = bitcast i8** %95 to i32*
  %97 = call i32 @is_zero_ether_addr(i32* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %114, label %99

99:                                               ; preds = %92
  %100 = load %struct.rt2x00intf_conf*, %struct.rt2x00intf_conf** %7, align 8
  %101 = getelementptr inbounds %struct.rt2x00intf_conf, %struct.rt2x00intf_conf* %100, i32 0, i32 2
  %102 = load i8**, i8*** %101, align 8
  %103 = getelementptr inbounds i8*, i8** %102, i64 1
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @le32_to_cpu(i8* %104)
  store i32 %105, i32* %9, align 4
  %106 = load i32, i32* @MAC_ADDR_DW1_UNICAST_TO_ME_MASK, align 4
  %107 = call i32 @rt2x00_set_field32(i32* %9, i32 %106, i32 255)
  %108 = load i32, i32* %9, align 4
  %109 = call i8* @cpu_to_le32(i32 %108)
  %110 = load %struct.rt2x00intf_conf*, %struct.rt2x00intf_conf** %7, align 8
  %111 = getelementptr inbounds %struct.rt2x00intf_conf, %struct.rt2x00intf_conf* %110, i32 0, i32 2
  %112 = load i8**, i8*** %111, align 8
  %113 = getelementptr inbounds i8*, i8** %112, i64 1
  store i8* %109, i8** %113, align 8
  br label %114

114:                                              ; preds = %99, %92
  %115 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %116 = load i32, i32* @MAC_ADDR_DW0, align 4
  %117 = load %struct.rt2x00intf_conf*, %struct.rt2x00intf_conf** %7, align 8
  %118 = getelementptr inbounds %struct.rt2x00intf_conf, %struct.rt2x00intf_conf* %117, i32 0, i32 2
  %119 = load i8**, i8*** %118, align 8
  %120 = call i32 @rt2800_register_multiwrite(%struct.rt2x00_dev* %115, i32 %116, i8** %119, i32 8)
  br label %121

121:                                              ; preds = %114, %67
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* @CONFIG_UPDATE_BSSID, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %121
  %127 = load i32, i32* %10, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %160

129:                                              ; preds = %126, %121
  %130 = load %struct.rt2x00intf_conf*, %struct.rt2x00intf_conf** %7, align 8
  %131 = getelementptr inbounds %struct.rt2x00intf_conf, %struct.rt2x00intf_conf* %130, i32 0, i32 1
  %132 = load i8**, i8*** %131, align 8
  %133 = bitcast i8** %132 to i32*
  %134 = call i32 @is_zero_ether_addr(i32* %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %153, label %136

136:                                              ; preds = %129
  %137 = load %struct.rt2x00intf_conf*, %struct.rt2x00intf_conf** %7, align 8
  %138 = getelementptr inbounds %struct.rt2x00intf_conf, %struct.rt2x00intf_conf* %137, i32 0, i32 1
  %139 = load i8**, i8*** %138, align 8
  %140 = getelementptr inbounds i8*, i8** %139, i64 1
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 @le32_to_cpu(i8* %141)
  store i32 %142, i32* %9, align 4
  %143 = load i32, i32* @MAC_BSSID_DW1_BSS_ID_MASK, align 4
  %144 = call i32 @rt2x00_set_field32(i32* %9, i32 %143, i32 3)
  %145 = load i32, i32* @MAC_BSSID_DW1_BSS_BCN_NUM, align 4
  %146 = call i32 @rt2x00_set_field32(i32* %9, i32 %145, i32 7)
  %147 = load i32, i32* %9, align 4
  %148 = call i8* @cpu_to_le32(i32 %147)
  %149 = load %struct.rt2x00intf_conf*, %struct.rt2x00intf_conf** %7, align 8
  %150 = getelementptr inbounds %struct.rt2x00intf_conf, %struct.rt2x00intf_conf* %149, i32 0, i32 1
  %151 = load i8**, i8*** %150, align 8
  %152 = getelementptr inbounds i8*, i8** %151, i64 1
  store i8* %148, i8** %152, align 8
  br label %153

153:                                              ; preds = %136, %129
  %154 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %155 = load i32, i32* @MAC_BSSID_DW0, align 4
  %156 = load %struct.rt2x00intf_conf*, %struct.rt2x00intf_conf** %7, align 8
  %157 = getelementptr inbounds %struct.rt2x00intf_conf, %struct.rt2x00intf_conf* %156, i32 0, i32 1
  %158 = load i8**, i8*** %157, align 8
  %159 = call i32 @rt2800_register_multiwrite(%struct.rt2x00_dev* %154, i32 %155, i8** %158, i32 8)
  br label %160

160:                                              ; preds = %153, %126
  ret void
}

declare dso_local i32 @rt2800_register_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @rt2800_register_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @memcpy(i8**, i8**, i32) #1

declare dso_local i32 @is_zero_ether_addr(i32*) #1

declare dso_local i32 @le32_to_cpu(i8*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @rt2800_register_multiwrite(%struct.rt2x00_dev*, i32, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
