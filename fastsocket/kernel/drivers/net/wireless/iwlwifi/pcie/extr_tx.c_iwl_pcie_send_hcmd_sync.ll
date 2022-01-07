; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_tx.c_iwl_pcie_send_hcmd_sync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_tx.c_iwl_pcie_send_hcmd_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.iwl_host_cmd = type { i32, i32*, i32 }
%struct.iwl_trans_pcie = type { i64, %struct.iwl_txq*, i32, i32 }
%struct.iwl_txq = type { %struct.TYPE_4__*, %struct.iwl_queue }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.iwl_queue = type { i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"Attempting to send sync command %s\0A\00", align 1
@STATUS_HCMD_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Command %s: a command is already active!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Setting HCMD_ACTIVE for command %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"Error sending %s: enqueue_hcmd failed: %d\0A\00", align 1
@HOST_COMPLETE_TIMEOUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"Error sending %s: time out after %dms.\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"Current CMD queue read_ptr %d write_ptr %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Clearing HCMD_ACTIVE for command %s\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@STATUS_FW_ERROR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"FW error in SYNC CMD %s\0A\00", align 1
@STATUS_RFKILL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [30 x i8] c"RFKILL in SYNC CMD... no rsp\0A\00", align 1
@ERFKILL = common dso_local global i32 0, align 4
@CMD_WANT_SKB = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [30 x i8] c"Error: Response NULL in '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_trans*, %struct.iwl_host_cmd*)* @iwl_pcie_send_hcmd_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_pcie_send_hcmd_sync(%struct.iwl_trans* %0, %struct.iwl_host_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_trans*, align 8
  %5 = alloca %struct.iwl_host_cmd*, align 8
  %6 = alloca %struct.iwl_trans_pcie*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.iwl_txq*, align 8
  %10 = alloca %struct.iwl_queue*, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %4, align 8
  store %struct.iwl_host_cmd* %1, %struct.iwl_host_cmd** %5, align 8
  %11 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %12 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %11)
  store %struct.iwl_trans_pcie* %12, %struct.iwl_trans_pcie** %6, align 8
  %13 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %14 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %6, align 8
  %15 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %5, align 8
  %16 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @get_cmd_string(%struct.iwl_trans_pcie* %14, i32 %17)
  %19 = call i32 @IWL_DEBUG_INFO(%struct.iwl_trans* %13, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @STATUS_HCMD_ACTIVE, align 4
  %21 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %6, align 8
  %22 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %21, i32 0, i32 2
  %23 = call i32 @test_and_set_bit(i32 %20, i32* %22)
  %24 = call i64 @WARN_ON(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %2
  %27 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %28 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %6, align 8
  %29 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %5, align 8
  %30 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @get_cmd_string(%struct.iwl_trans_pcie* %28, i32 %31)
  %33 = call i32 (%struct.iwl_trans*, i8*, i32, ...) @IWL_ERR(%struct.iwl_trans* %27, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @EIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %214

36:                                               ; preds = %2
  %37 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %38 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %6, align 8
  %39 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %5, align 8
  %40 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @get_cmd_string(%struct.iwl_trans_pcie* %38, i32 %41)
  %43 = call i32 @IWL_DEBUG_INFO(%struct.iwl_trans* %37, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  %44 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %45 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %5, align 8
  %46 = call i32 @iwl_pcie_enqueue_hcmd(%struct.iwl_trans* %44, %struct.iwl_host_cmd* %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %64

49:                                               ; preds = %36
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* @STATUS_HCMD_ACTIVE, align 4
  %52 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %6, align 8
  %53 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %52, i32 0, i32 2
  %54 = call i32 @clear_bit(i32 %51, i32* %53)
  %55 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %56 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %6, align 8
  %57 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %5, align 8
  %58 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @get_cmd_string(%struct.iwl_trans_pcie* %56, i32 %59)
  %61 = load i32, i32* %8, align 4
  %62 = call i32 (%struct.iwl_trans*, i8*, i32, ...) @IWL_ERR(%struct.iwl_trans* %55, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %60, i32 %61)
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %3, align 4
  br label %214

64:                                               ; preds = %36
  %65 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %6, align 8
  %66 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @STATUS_HCMD_ACTIVE, align 4
  %69 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %6, align 8
  %70 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %69, i32 0, i32 2
  %71 = call i64 @test_bit(i32 %68, i32* %70)
  %72 = icmp ne i64 %71, 0
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = load i32, i32* @HOST_COMPLETE_TIMEOUT, align 4
  %76 = call i32 @wait_event_timeout(i32 %67, i32 %74, i32 %75)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %126, label %79

79:                                               ; preds = %64
  %80 = load i32, i32* @STATUS_HCMD_ACTIVE, align 4
  %81 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %6, align 8
  %82 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %81, i32 0, i32 2
  %83 = call i64 @test_bit(i32 %80, i32* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %125

85:                                               ; preds = %79
  %86 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %6, align 8
  %87 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %86, i32 0, i32 1
  %88 = load %struct.iwl_txq*, %struct.iwl_txq** %87, align 8
  %89 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %6, align 8
  %90 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %88, i64 %91
  store %struct.iwl_txq* %92, %struct.iwl_txq** %9, align 8
  %93 = load %struct.iwl_txq*, %struct.iwl_txq** %9, align 8
  %94 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %93, i32 0, i32 1
  store %struct.iwl_queue* %94, %struct.iwl_queue** %10, align 8
  %95 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %96 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %6, align 8
  %97 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %5, align 8
  %98 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @get_cmd_string(%struct.iwl_trans_pcie* %96, i32 %99)
  %101 = load i32, i32* @HOST_COMPLETE_TIMEOUT, align 4
  %102 = call i32 @jiffies_to_msecs(i32 %101)
  %103 = call i32 (%struct.iwl_trans*, i8*, i32, ...) @IWL_ERR(%struct.iwl_trans* %95, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %100, i32 %102)
  %104 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %105 = load %struct.iwl_queue*, %struct.iwl_queue** %10, align 8
  %106 = getelementptr inbounds %struct.iwl_queue, %struct.iwl_queue* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.iwl_queue*, %struct.iwl_queue** %10, align 8
  %109 = getelementptr inbounds %struct.iwl_queue, %struct.iwl_queue* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 (%struct.iwl_trans*, i8*, i32, ...) @IWL_ERR(%struct.iwl_trans* %104, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %107, i32 %110)
  %112 = load i32, i32* @STATUS_HCMD_ACTIVE, align 4
  %113 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %6, align 8
  %114 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %113, i32 0, i32 2
  %115 = call i32 @clear_bit(i32 %112, i32* %114)
  %116 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %117 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %6, align 8
  %118 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %5, align 8
  %119 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @get_cmd_string(%struct.iwl_trans_pcie* %117, i32 %120)
  %122 = call i32 @IWL_DEBUG_INFO(%struct.iwl_trans* %116, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %121)
  %123 = load i32, i32* @ETIMEDOUT, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %8, align 4
  br label %176

125:                                              ; preds = %79
  br label %126

126:                                              ; preds = %125, %64
  %127 = load i32, i32* @STATUS_FW_ERROR, align 4
  %128 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %6, align 8
  %129 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %128, i32 0, i32 2
  %130 = call i64 @test_bit(i32 %127, i32* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %142

132:                                              ; preds = %126
  %133 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %134 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %6, align 8
  %135 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %5, align 8
  %136 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @get_cmd_string(%struct.iwl_trans_pcie* %134, i32 %137)
  %139 = call i32 (%struct.iwl_trans*, i8*, i32, ...) @IWL_ERR(%struct.iwl_trans* %133, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %138)
  %140 = load i32, i32* @EIO, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %8, align 4
  br label %176

142:                                              ; preds = %126
  %143 = load i32, i32* @STATUS_RFKILL, align 4
  %144 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %6, align 8
  %145 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %144, i32 0, i32 2
  %146 = call i64 @test_bit(i32 %143, i32* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %142
  %149 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %150 = call i32 @IWL_DEBUG_RF_KILL(%struct.iwl_trans* %149, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  %151 = load i32, i32* @ERFKILL, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %8, align 4
  br label %176

153:                                              ; preds = %142
  %154 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %5, align 8
  %155 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @CMD_WANT_SKB, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %175

160:                                              ; preds = %153
  %161 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %5, align 8
  %162 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %161, i32 0, i32 1
  %163 = load i32*, i32** %162, align 8
  %164 = icmp ne i32* %163, null
  br i1 %164, label %175, label %165

165:                                              ; preds = %160
  %166 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %167 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %6, align 8
  %168 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %5, align 8
  %169 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @get_cmd_string(%struct.iwl_trans_pcie* %167, i32 %170)
  %172 = call i32 (%struct.iwl_trans*, i8*, i32, ...) @IWL_ERR(%struct.iwl_trans* %166, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i32 %171)
  %173 = load i32, i32* @EIO, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %8, align 4
  br label %176

175:                                              ; preds = %160, %153
  store i32 0, i32* %3, align 4
  br label %214

176:                                              ; preds = %165, %148, %132, %85
  %177 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %5, align 8
  %178 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @CMD_WANT_SKB, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %202

183:                                              ; preds = %176
  %184 = load i32, i32* @CMD_WANT_SKB, align 4
  %185 = xor i32 %184, -1
  %186 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %6, align 8
  %187 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %186, i32 0, i32 1
  %188 = load %struct.iwl_txq*, %struct.iwl_txq** %187, align 8
  %189 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %6, align 8
  %190 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %188, i64 %191
  %193 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %192, i32 0, i32 0
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** %193, align 8
  %195 = load i32, i32* %7, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = and i32 %200, %185
  store i32 %201, i32* %199, align 4
  br label %202

202:                                              ; preds = %183, %176
  %203 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %5, align 8
  %204 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %203, i32 0, i32 1
  %205 = load i32*, i32** %204, align 8
  %206 = icmp ne i32* %205, null
  br i1 %206, label %207, label %212

207:                                              ; preds = %202
  %208 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %5, align 8
  %209 = call i32 @iwl_free_resp(%struct.iwl_host_cmd* %208)
  %210 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %5, align 8
  %211 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %210, i32 0, i32 1
  store i32* null, i32** %211, align 8
  br label %212

212:                                              ; preds = %207, %202
  %213 = load i32, i32* %8, align 4
  store i32 %213, i32* %3, align 4
  br label %214

214:                                              ; preds = %212, %175, %49, %26
  %215 = load i32, i32* %3, align 4
  ret i32 %215
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_trans*, i8*, i32) #1

declare dso_local i32 @get_cmd_string(%struct.iwl_trans_pcie*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_trans*, i8*, i32, ...) #1

declare dso_local i32 @iwl_pcie_enqueue_hcmd(%struct.iwl_trans*, %struct.iwl_host_cmd*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @jiffies_to_msecs(i32) #1

declare dso_local i32 @IWL_DEBUG_RF_KILL(%struct.iwl_trans*, i8*) #1

declare dso_local i32 @iwl_free_resp(%struct.iwl_host_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
