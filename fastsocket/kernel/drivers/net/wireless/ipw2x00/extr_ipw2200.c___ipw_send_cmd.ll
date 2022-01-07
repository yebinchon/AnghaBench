; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c___ipw_send_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c___ipw_send_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { i32, i64, i64, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i8* }
%struct.TYPE_3__ = type { i64, i32, i32 }
%struct.host_cmd = type { i64, i32, i64 }

@STATUS_HCMD_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Failed to send %s: Already sending a command.\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"%s command (#%d) %d bytes: 0x%08X\0A\00", align 1
@IPW_CMD_WEP_KEY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"WEP_KEY command masked out for secure.\0A\00", align 1
@IPW_DL_HOST_COMMAND = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Failed to send %s: Reason %d\0A\00", align 1
@HOST_COMPLETE_TIMEOUT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [39 x i8] c"Failed to send %s: Command timed out.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@STATUS_RF_KILL_HW = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [51 x i8] c"Failed to send %s: Aborted due to RF kill switch.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw_priv*, %struct.host_cmd*)* @__ipw_send_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ipw_send_cmd(%struct.ipw_priv* %0, %struct.host_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipw_priv*, align 8
  %5 = alloca %struct.host_cmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.ipw_priv* %0, %struct.ipw_priv** %4, align 8
  store %struct.host_cmd* %1, %struct.host_cmd** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %11 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %10, i32 0, i32 4
  %12 = load i64, i64* %7, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %15 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @STATUS_HCMD_ACTIVE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %2
  %21 = load %struct.host_cmd*, %struct.host_cmd** %5, align 8
  %22 = getelementptr inbounds %struct.host_cmd, %struct.host_cmd* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @get_cmd_string(i64 %23)
  %25 = call i32 (i8*, i32, ...) @IPW_ERROR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %27 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %26, i32 0, i32 4
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* %27, i64 %28)
  %30 = load i32, i32* @EAGAIN, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %280

32:                                               ; preds = %2
  %33 = load i32, i32* @STATUS_HCMD_ACTIVE, align 4
  %34 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %35 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 8
  %38 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %39 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %38, i32 0, i32 3
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = icmp ne %struct.TYPE_4__* %40, null
  br i1 %41, label %42, label %101

42:                                               ; preds = %32
  %43 = load i8*, i8** @jiffies, align 8
  %44 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %45 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %44, i32 0, i32 3
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %48 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  store i8* %43, i8** %51, align 8
  %52 = load %struct.host_cmd*, %struct.host_cmd** %5, align 8
  %53 = getelementptr inbounds %struct.host_cmd, %struct.host_cmd* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %56 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %55, i32 0, i32 3
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %59 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store i64 %54, i64* %63, align 8
  %64 = load %struct.host_cmd*, %struct.host_cmd** %5, align 8
  %65 = getelementptr inbounds %struct.host_cmd, %struct.host_cmd* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %68 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %67, i32 0, i32 3
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %71 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 2
  store i32 %66, i32* %75, align 4
  %76 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %77 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %76, i32 0, i32 3
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %80 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.host_cmd*, %struct.host_cmd** %5, align 8
  %87 = getelementptr inbounds %struct.host_cmd, %struct.host_cmd* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.host_cmd*, %struct.host_cmd** %5, align 8
  %90 = getelementptr inbounds %struct.host_cmd, %struct.host_cmd* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @memcpy(i32 %85, i64 %88, i32 %91)
  %93 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %94 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %93, i32 0, i32 3
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %97 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  store i32 -1, i32* %100, align 8
  br label %101

101:                                              ; preds = %42, %32
  %102 = load %struct.host_cmd*, %struct.host_cmd** %5, align 8
  %103 = getelementptr inbounds %struct.host_cmd, %struct.host_cmd* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @get_cmd_string(i64 %104)
  %106 = load %struct.host_cmd*, %struct.host_cmd** %5, align 8
  %107 = getelementptr inbounds %struct.host_cmd, %struct.host_cmd* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.host_cmd*, %struct.host_cmd** %5, align 8
  %110 = getelementptr inbounds %struct.host_cmd, %struct.host_cmd* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %113 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 (i8*, ...) @IPW_DEBUG_HC(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %105, i64 %108, i32 %111, i32 %114)
  %116 = load %struct.host_cmd*, %struct.host_cmd** %5, align 8
  %117 = getelementptr inbounds %struct.host_cmd, %struct.host_cmd* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @IPW_CMD_WEP_KEY, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %101
  %122 = call i32 (i8*, ...) @IPW_DEBUG_HC(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %133

123:                                              ; preds = %101
  %124 = load i32, i32* @IPW_DL_HOST_COMMAND, align 4
  %125 = load %struct.host_cmd*, %struct.host_cmd** %5, align 8
  %126 = getelementptr inbounds %struct.host_cmd, %struct.host_cmd* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = inttoptr i64 %127 to i32*
  %129 = load %struct.host_cmd*, %struct.host_cmd** %5, align 8
  %130 = getelementptr inbounds %struct.host_cmd, %struct.host_cmd* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @printk_buf(i32 %124, i32* %128, i32 %131)
  br label %133

133:                                              ; preds = %123, %121
  %134 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %135 = load %struct.host_cmd*, %struct.host_cmd** %5, align 8
  %136 = getelementptr inbounds %struct.host_cmd, %struct.host_cmd* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.host_cmd*, %struct.host_cmd** %5, align 8
  %139 = getelementptr inbounds %struct.host_cmd, %struct.host_cmd* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.host_cmd*, %struct.host_cmd** %5, align 8
  %142 = getelementptr inbounds %struct.host_cmd, %struct.host_cmd* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @ipw_queue_tx_hcmd(%struct.ipw_priv* %134, i64 %137, i64 %140, i32 %143, i32 0)
  store i32 %144, i32* %6, align 4
  %145 = load i32, i32* %6, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %164

147:                                              ; preds = %133
  %148 = load i32, i32* @STATUS_HCMD_ACTIVE, align 4
  %149 = xor i32 %148, -1
  %150 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %151 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = and i32 %152, %149
  store i32 %153, i32* %151, align 8
  %154 = load %struct.host_cmd*, %struct.host_cmd** %5, align 8
  %155 = getelementptr inbounds %struct.host_cmd, %struct.host_cmd* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = call i32 @get_cmd_string(i64 %156)
  %158 = load i32, i32* %6, align 4
  %159 = call i32 (i8*, i32, ...) @IPW_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %157, i32 %158)
  %160 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %161 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %160, i32 0, i32 4
  %162 = load i64, i64* %7, align 8
  %163 = call i32 @spin_unlock_irqrestore(i32* %161, i64 %162)
  br label %255

164:                                              ; preds = %133
  %165 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %166 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %165, i32 0, i32 4
  %167 = load i64, i64* %7, align 8
  %168 = call i32 @spin_unlock_irqrestore(i32* %166, i64 %167)
  %169 = load i8*, i8** @jiffies, align 8
  %170 = ptrtoint i8* %169 to i64
  store i64 %170, i64* %8, align 8
  %171 = load i64, i64* %8, align 8
  %172 = load i64, i64* @HOST_COMPLETE_TIMEOUT, align 8
  %173 = add i64 %171, %172
  store i64 %173, i64* %9, align 8
  br label %174

174:                                              ; preds = %199, %164
  %175 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %176 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %175, i32 0, i32 5
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %179 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @STATUS_HCMD_ACTIVE, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  %184 = xor i1 %183, true
  %185 = zext i1 %184 to i32
  %186 = load i64, i64* %9, align 8
  %187 = load i64, i64* %8, align 8
  %188 = sub i64 %186, %187
  %189 = call i32 @wait_event_interruptible_timeout(i32 %177, i32 %185, i64 %188)
  store i32 %189, i32* %6, align 4
  %190 = load i32, i32* %6, align 4
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %192, label %201

192:                                              ; preds = %174
  %193 = load i8*, i8** @jiffies, align 8
  %194 = ptrtoint i8* %193 to i64
  store i64 %194, i64* %8, align 8
  %195 = load i64, i64* %8, align 8
  %196 = load i64, i64* %9, align 8
  %197 = call i64 @time_before(i64 %195, i64 %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %192
  br label %174

200:                                              ; preds = %192
  store i32 0, i32* %6, align 4
  br label %201

201:                                              ; preds = %200, %174
  %202 = load i32, i32* %6, align 4
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %238

204:                                              ; preds = %201
  %205 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %206 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %205, i32 0, i32 4
  %207 = load i64, i64* %7, align 8
  %208 = call i32 @spin_lock_irqsave(i32* %206, i64 %207)
  %209 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %210 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* @STATUS_HCMD_ACTIVE, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %233

215:                                              ; preds = %204
  %216 = load %struct.host_cmd*, %struct.host_cmd** %5, align 8
  %217 = getelementptr inbounds %struct.host_cmd, %struct.host_cmd* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = call i32 @get_cmd_string(i64 %218)
  %220 = call i32 (i8*, i32, ...) @IPW_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %219)
  %221 = load i32, i32* @STATUS_HCMD_ACTIVE, align 4
  %222 = xor i32 %221, -1
  %223 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %224 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = and i32 %225, %222
  store i32 %226, i32* %224, align 8
  %227 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %228 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %227, i32 0, i32 4
  %229 = load i64, i64* %7, align 8
  %230 = call i32 @spin_unlock_irqrestore(i32* %228, i64 %229)
  %231 = load i32, i32* @EIO, align 4
  %232 = sub nsw i32 0, %231
  store i32 %232, i32* %6, align 4
  br label %255

233:                                              ; preds = %204
  %234 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %235 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %234, i32 0, i32 4
  %236 = load i64, i64* %7, align 8
  %237 = call i32 @spin_unlock_irqrestore(i32* %235, i64 %236)
  br label %239

238:                                              ; preds = %201
  store i32 0, i32* %6, align 4
  br label %239

239:                                              ; preds = %238, %233
  %240 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %241 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = load i32, i32* @STATUS_RF_KILL_HW, align 4
  %244 = and i32 %242, %243
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %254

246:                                              ; preds = %239
  %247 = load %struct.host_cmd*, %struct.host_cmd** %5, align 8
  %248 = getelementptr inbounds %struct.host_cmd, %struct.host_cmd* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = call i32 @get_cmd_string(i64 %249)
  %251 = call i32 (i8*, i32, ...) @IPW_ERROR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), i32 %250)
  %252 = load i32, i32* @EIO, align 4
  %253 = sub nsw i32 0, %252
  store i32 %253, i32* %6, align 4
  br label %255

254:                                              ; preds = %239
  br label %255

255:                                              ; preds = %254, %246, %215, %147
  %256 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %257 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %256, i32 0, i32 3
  %258 = load %struct.TYPE_4__*, %struct.TYPE_4__** %257, align 8
  %259 = icmp ne %struct.TYPE_4__* %258, null
  br i1 %259, label %260, label %278

260:                                              ; preds = %255
  %261 = load i32, i32* %6, align 4
  %262 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %263 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %262, i32 0, i32 3
  %264 = load %struct.TYPE_4__*, %struct.TYPE_4__** %263, align 8
  %265 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %266 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %265, i32 0, i32 1
  %267 = load i64, i64* %266, align 8
  %268 = add i64 %267, 1
  store i64 %268, i64* %266, align 8
  %269 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %264, i64 %267
  %270 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %269, i32 0, i32 0
  store i32 %261, i32* %270, align 8
  %271 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %272 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %271, i32 0, i32 2
  %273 = load i64, i64* %272, align 8
  %274 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %275 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %274, i32 0, i32 1
  %276 = load i64, i64* %275, align 8
  %277 = urem i64 %276, %273
  store i64 %277, i64* %275, align 8
  br label %278

278:                                              ; preds = %260, %255
  %279 = load i32, i32* %6, align 4
  store i32 %279, i32* %3, align 4
  br label %280

280:                                              ; preds = %278, %20
  %281 = load i32, i32* %3, align 4
  ret i32 %281
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @IPW_ERROR(i8*, i32, ...) #1

declare dso_local i32 @get_cmd_string(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @memcpy(i32, i64, i32) #1

declare dso_local i32 @IPW_DEBUG_HC(i8*, ...) #1

declare dso_local i32 @printk_buf(i32, i32*, i32) #1

declare dso_local i32 @ipw_queue_tx_hcmd(%struct.ipw_priv*, i64, i64, i32, i32) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i64) #1

declare dso_local i64 @time_before(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
