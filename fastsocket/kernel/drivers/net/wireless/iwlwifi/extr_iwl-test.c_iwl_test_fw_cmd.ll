; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-test.c_iwl_test_fw_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-test.c_iwl_test_fw_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_test = type { i32 }
%struct.nlattr = type { i32 }
%struct.iwl_host_cmd = type { i32, %struct.iwl_rx_packet*, i32*, i32, i32*, i32* }
%struct.iwl_rx_packet = type { i32, i32 }
%struct.sk_buff = type { i32 }

@IWL_TM_ATTR_UCODE_CMD_ID = common dso_local global i64 0, align 8
@IWL_TM_ATTR_UCODE_CMD_DATA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"Missing fw command mandatory fields\0A\00", align 1
@ENOMSG = common dso_local global i32 0, align 4
@CMD_ON_DEMAND = common dso_local global i32 0, align 4
@CMD_SYNC = common dso_local global i32 0, align 4
@IWL_TM_ATTR_UCODE_CMD_SKB = common dso_local global i64 0, align 8
@CMD_WANT_SKB = common dso_local global i32 0, align 4
@IWL_HCMD_DFL_NOCOPY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"test fw cmd=0x%x, flags 0x%x, len %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Failed to send hcmd\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"HCMD received a null response packet\0A\00", align 1
@FH_RSCSR_FRAME_SIZE_MSK = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IWL_TM_ATTR_COMMAND = common dso_local global i32 0, align 4
@IWL_TM_CMD_DEV2APP_UCODE_RX_PKT = common dso_local global i32 0, align 4
@IWL_TM_ATTR_UCODE_RX_PKT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"Failed creating NL attributes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_test*, %struct.nlattr**)* @iwl_test_fw_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_test_fw_cmd(%struct.iwl_test* %0, %struct.nlattr** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_test*, align 8
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca %struct.iwl_host_cmd, align 8
  %7 = alloca %struct.iwl_rx_packet*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.iwl_test* %0, %struct.iwl_test** %4, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %5, align 8
  %13 = call i32 @memset(%struct.iwl_host_cmd* %6, i32 0, i32 48)
  %14 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %15 = load i64, i64* @IWL_TM_ATTR_UCODE_CMD_ID, align 8
  %16 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %14, i64 %15
  %17 = load %struct.nlattr*, %struct.nlattr** %16, align 8
  %18 = icmp ne %struct.nlattr* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %21 = load i64, i64* @IWL_TM_ATTR_UCODE_CMD_DATA, align 8
  %22 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %21
  %23 = load %struct.nlattr*, %struct.nlattr** %22, align 8
  %24 = icmp ne %struct.nlattr* %23, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %19, %2
  %26 = load %struct.iwl_test*, %struct.iwl_test** %4, align 8
  %27 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @IWL_ERR(i32 %28, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ENOMSG, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %172

32:                                               ; preds = %19
  %33 = load i32, i32* @CMD_ON_DEMAND, align 4
  %34 = load i32, i32* @CMD_SYNC, align 4
  %35 = or i32 %33, %34
  %36 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %6, i32 0, i32 0
  store i32 %35, i32* %36, align 8
  %37 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %38 = load i64, i64* @IWL_TM_ATTR_UCODE_CMD_SKB, align 8
  %39 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %37, i64 %38
  %40 = load %struct.nlattr*, %struct.nlattr** %39, align 8
  %41 = call i32 @nla_get_flag(%struct.nlattr* %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %32
  %45 = load i32, i32* @CMD_WANT_SKB, align 4
  %46 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %6, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %45
  store i32 %48, i32* %46, align 8
  br label %49

49:                                               ; preds = %44, %32
  %50 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %51 = load i64, i64* @IWL_TM_ATTR_UCODE_CMD_ID, align 8
  %52 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %50, i64 %51
  %53 = load %struct.nlattr*, %struct.nlattr** %52, align 8
  %54 = call i32 @nla_get_u8(%struct.nlattr* %53)
  %55 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %6, i32 0, i32 3
  store i32 %54, i32* %55, align 8
  %56 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %57 = load i64, i64* @IWL_TM_ATTR_UCODE_CMD_DATA, align 8
  %58 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %56, i64 %57
  %59 = load %struct.nlattr*, %struct.nlattr** %58, align 8
  %60 = call i32 @nla_data(%struct.nlattr* %59)
  %61 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %6, i32 0, i32 5
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  store i32 %60, i32* %63, align 4
  %64 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %65 = load i64, i64* @IWL_TM_ATTR_UCODE_CMD_DATA, align 8
  %66 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %64, i64 %65
  %67 = load %struct.nlattr*, %struct.nlattr** %66, align 8
  %68 = call i32 @nla_len(%struct.nlattr* %67)
  %69 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %6, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  store i32 %68, i32* %71, align 4
  %72 = load i32, i32* @IWL_HCMD_DFL_NOCOPY, align 4
  %73 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %6, i32 0, i32 4
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  store i32 %72, i32* %75, align 4
  %76 = load %struct.iwl_test*, %struct.iwl_test** %4, align 8
  %77 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %6, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %6, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %6, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (i32, i8*, ...) @IWL_DEBUG_INFO(i32 %78, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %80, i32 %82, i32 %86)
  %88 = load %struct.iwl_test*, %struct.iwl_test** %4, align 8
  %89 = call i32 @iwl_test_send_cmd(%struct.iwl_test* %88, %struct.iwl_host_cmd* %6)
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %11, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %49
  %93 = load %struct.iwl_test*, %struct.iwl_test** %4, align 8
  %94 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @IWL_ERR(i32 %95, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %97 = load i32, i32* %11, align 4
  store i32 %97, i32* %3, align 4
  br label %172

98:                                               ; preds = %49
  %99 = load i32, i32* %12, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %98
  %102 = load i32, i32* %11, align 4
  store i32 %102, i32* %3, align 4
  br label %172

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %6, i32 0, i32 1
  %105 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %104, align 8
  store %struct.iwl_rx_packet* %105, %struct.iwl_rx_packet** %7, align 8
  %106 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %7, align 8
  %107 = icmp ne %struct.iwl_rx_packet* %106, null
  br i1 %107, label %114, label %108

108:                                              ; preds = %103
  %109 = load %struct.iwl_test*, %struct.iwl_test** %4, align 8
  %110 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @IWL_ERR(i32 %111, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %113 = load i32, i32* %11, align 4
  store i32 %113, i32* %3, align 4
  br label %172

114:                                              ; preds = %103
  %115 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %7, align 8
  %116 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @le32_to_cpu(i32 %117)
  %119 = load i32, i32* @FH_RSCSR_FRAME_SIZE_MSK, align 4
  %120 = and i32 %118, %119
  store i32 %120, i32* %10, align 4
  %121 = load %struct.iwl_test*, %struct.iwl_test** %4, align 8
  %122 = load i32, i32* %10, align 4
  %123 = add nsw i32 %122, 20
  %124 = call %struct.sk_buff* @iwl_test_alloc_reply(%struct.iwl_test* %121, i32 %123)
  store %struct.sk_buff* %124, %struct.sk_buff** %8, align 8
  %125 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %7, align 8
  %126 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %125, i32 0, i32 0
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* @GFP_KERNEL, align 4
  %129 = call i8* @kmemdup(i32* %126, i32 %127, i32 %128)
  store i8* %129, i8** %9, align 8
  %130 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %131 = icmp ne %struct.sk_buff* %130, null
  br i1 %131, label %132, label %135

132:                                              ; preds = %114
  %133 = load i8*, i8** %9, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %142, label %135

135:                                              ; preds = %132, %114
  %136 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %137 = call i32 @kfree_skb(%struct.sk_buff* %136)
  %138 = load i8*, i8** %9, align 8
  %139 = call i32 @kfree(i8* %138)
  %140 = load i32, i32* @ENOMEM, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %3, align 4
  br label %172

142:                                              ; preds = %132
  %143 = call i32 @iwl_free_resp(%struct.iwl_host_cmd* %6)
  %144 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %145 = load i32, i32* @IWL_TM_ATTR_COMMAND, align 4
  %146 = load i32, i32* @IWL_TM_CMD_DEV2APP_UCODE_RX_PKT, align 4
  %147 = call i64 @nla_put_u32(%struct.sk_buff* %144, i32 %145, i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %156, label %149

149:                                              ; preds = %142
  %150 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %151 = load i32, i32* @IWL_TM_ATTR_UCODE_RX_PKT, align 4
  %152 = load i32, i32* %10, align 4
  %153 = load i8*, i8** %9, align 8
  %154 = call i64 @nla_put(%struct.sk_buff* %150, i32 %151, i32 %152, i8* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %149, %142
  br label %161

157:                                              ; preds = %149
  %158 = load %struct.iwl_test*, %struct.iwl_test** %4, align 8
  %159 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %160 = call i32 @iwl_test_reply(%struct.iwl_test* %158, %struct.sk_buff* %159)
  store i32 %160, i32* %3, align 4
  br label %172

161:                                              ; preds = %156
  %162 = load %struct.iwl_test*, %struct.iwl_test** %4, align 8
  %163 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i32 (i32, i8*, ...) @IWL_DEBUG_INFO(i32 %164, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %166 = load i8*, i8** %9, align 8
  %167 = call i32 @kfree(i8* %166)
  %168 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %169 = call i32 @kfree_skb(%struct.sk_buff* %168)
  %170 = load i32, i32* @ENOMSG, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %3, align 4
  br label %172

172:                                              ; preds = %161, %157, %135, %108, %101, %92, %25
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local i32 @memset(%struct.iwl_host_cmd*, i32, i32) #1

declare dso_local i32 @IWL_ERR(i32, i8*) #1

declare dso_local i32 @nla_get_flag(%struct.nlattr*) #1

declare dso_local i32 @nla_get_u8(%struct.nlattr*) #1

declare dso_local i32 @nla_data(%struct.nlattr*) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local i32 @IWL_DEBUG_INFO(i32, i8*, ...) #1

declare dso_local i32 @iwl_test_send_cmd(%struct.iwl_test*, %struct.iwl_host_cmd*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.sk_buff* @iwl_test_alloc_reply(%struct.iwl_test*, i32) #1

declare dso_local i8* @kmemdup(i32*, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @iwl_free_resp(%struct.iwl_host_cmd*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, i8*) #1

declare dso_local i32 @iwl_test_reply(%struct.iwl_test*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
