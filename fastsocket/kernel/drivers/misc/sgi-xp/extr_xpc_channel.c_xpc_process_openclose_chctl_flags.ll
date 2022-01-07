; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_channel.c_xpc_process_openclose_chctl_flags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_channel.c_xpc_process_openclose_chctl_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.xpc_channel*, i64)* }
%struct.xpc_channel = type { i32, i32, i64, i64, i64, i32, i32, i32 }
%struct.xpc_partition = type { i64, i32, i32, %struct.TYPE_3__, %struct.xpc_channel*, %struct.xpc_openclose_args* }
%struct.TYPE_3__ = type { i32* }
%struct.xpc_openclose_args = type { i32, i64, i64, i64, i64 }

@XPC_C_DISCONNECTED = common dso_local global i32 0, align 4
@XPC_C_WDISCONNECT = common dso_local global i32 0, align 4
@XPC_CHCTL_CLOSEREQUEST = common dso_local global i32 0, align 4
@xpc_chan = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"XPC_CHCTL_CLOSEREQUEST (reason=%d) received from partid=%d, channel=%d\0A\00", align 1
@XPC_C_RCLOSEREQUEST = common dso_local global i32 0, align 4
@XPC_C_DISCONNECTING = common dso_local global i32 0, align 4
@XPC_C_CLOSEREQUEST = common dso_local global i32 0, align 4
@XPC_C_CLOSEREPLY = common dso_local global i32 0, align 4
@XPC_C_RCLOSEREPLY = common dso_local global i32 0, align 4
@XPC_CHCTL_CLOSEREPLY = common dso_local global i32 0, align 4
@XPC_CHCTL_OPENREQUEST = common dso_local global i32 0, align 4
@XPC_C_CONNECTING = common dso_local global i32 0, align 4
@XPC_C_ROPENREQUEST = common dso_local global i32 0, align 4
@XPC_CHCTL_OPENREPLY = common dso_local global i32 0, align 4
@XPC_CHCTL_OPENCOMPLETE = common dso_local global i32 0, align 4
@xpSuccess = common dso_local global i32 0, align 4
@xpUnknownReason = common dso_local global i32 0, align 4
@xpUnregistering = common dso_local global i32 0, align 4
@xpOtherUnregistering = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"XPC_CHCTL_CLOSEREPLY received from partid=%d, channel=%d\0A\00", align 1
@XPC_P_AS_DEACTIVATING = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [94 x i8] c"XPC_CHCTL_OPENREQUEST (entry_size=%d, local_nentries=%d) received from partid=%d, channel=%d\0A\00", align 1
@XPC_C_OPENREQUEST = common dso_local global i32 0, align 4
@XPC_C_ROPENREPLY = common dso_local global i32 0, align 4
@XPC_C_OPENREPLY = common dso_local global i32 0, align 4
@XPC_C_CONNECTED = common dso_local global i32 0, align 4
@xpUnequalMsgSizes = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [122 x i8] c"XPC_CHCTL_OPENREPLY (local_msgqueue_pa=0x%lx, local_nentries=%d, remote_nentries=%d) received from partid=%d, channel=%d\0A\00", align 1
@xpOpenCloseError = common dso_local global i32 0, align 4
@xpc_arch_ops = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [92 x i8] c"XPC_CHCTL_OPENREPLY: new remote_nentries=%d, old remote_nentries=%d, partid=%d, channel=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [90 x i8] c"XPC_CHCTL_OPENREPLY: new local_nentries=%d, old local_nentries=%d, partid=%d, channel=%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [60 x i8] c"XPC_CHCTL_OPENCOMPLETE received from partid=%d, channel=%d\0A\00", align 1
@XPC_C_ROPENCOMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xpc_partition*, i32, i32)* @xpc_process_openclose_chctl_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xpc_process_openclose_chctl_flags(%struct.xpc_partition* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.xpc_partition*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.xpc_openclose_args*, align 8
  %9 = alloca %struct.xpc_channel*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.xpc_partition* %0, %struct.xpc_partition** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.xpc_partition*, %struct.xpc_partition** %4, align 8
  %14 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %13, i32 0, i32 5
  %15 = load %struct.xpc_openclose_args*, %struct.xpc_openclose_args** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.xpc_openclose_args, %struct.xpc_openclose_args* %15, i64 %17
  store %struct.xpc_openclose_args* %18, %struct.xpc_openclose_args** %8, align 8
  %19 = load %struct.xpc_partition*, %struct.xpc_partition** %4, align 8
  %20 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %19, i32 0, i32 4
  %21 = load %struct.xpc_channel*, %struct.xpc_channel** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %21, i64 %23
  store %struct.xpc_channel* %24, %struct.xpc_channel** %9, align 8
  store i32 0, i32* %12, align 4
  %25 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %26 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %25, i32 0, i32 5
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  br label %29

29:                                               ; preds = %73, %3
  %30 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %31 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @XPC_C_DISCONNECTED, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %29
  %37 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %38 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @XPC_C_WDISCONNECT, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %36
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %46 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %719

49:                                               ; preds = %36, %29
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @XPC_CHCTL_CLOSEREQUEST, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %252

54:                                               ; preds = %49
  %55 = load i32, i32* @xpc_chan, align 4
  %56 = load %struct.xpc_openclose_args*, %struct.xpc_openclose_args** %8, align 8
  %57 = getelementptr inbounds %struct.xpc_openclose_args, %struct.xpc_openclose_args* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %60 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %59, i32 0, i32 7
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %64 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (i32, i8*, i32, i64, ...) @dev_dbg(i32 %55, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %58, i64 %62, i32 %65)
  %67 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %68 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @XPC_C_RCLOSEREQUEST, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %134

73:                                               ; preds = %54
  %74 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %75 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @XPC_C_DISCONNECTING, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = call i32 @DBUG_ON(i32 %81)
  %83 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %84 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @XPC_C_CLOSEREQUEST, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  %91 = call i32 @DBUG_ON(i32 %90)
  %92 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %93 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @XPC_C_CLOSEREPLY, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  %98 = xor i1 %97, true
  %99 = zext i1 %98 to i32
  %100 = call i32 @DBUG_ON(i32 %99)
  %101 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %102 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @XPC_C_RCLOSEREPLY, align 4
  %105 = and i32 %103, %104
  %106 = call i32 @DBUG_ON(i32 %105)
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @XPC_CHCTL_CLOSEREPLY, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  %111 = xor i1 %110, true
  %112 = zext i1 %111 to i32
  %113 = call i32 @DBUG_ON(i32 %112)
  %114 = load i32, i32* @XPC_CHCTL_CLOSEREPLY, align 4
  %115 = xor i32 %114, -1
  %116 = load i32, i32* %6, align 4
  %117 = and i32 %116, %115
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* @XPC_C_RCLOSEREPLY, align 4
  %119 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %120 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = or i32 %121, %118
  store i32 %122, i32* %120, align 8
  %123 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %124 = call i32 @xpc_process_disconnect(%struct.xpc_channel* %123, i64* %7)
  %125 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %126 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @XPC_C_DISCONNECTED, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  %131 = xor i1 %130, true
  %132 = zext i1 %131 to i32
  %133 = call i32 @DBUG_ON(i32 %132)
  br label %29

134:                                              ; preds = %54
  %135 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %136 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @XPC_C_DISCONNECTED, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %201

141:                                              ; preds = %134
  %142 = load i32, i32* %6, align 4
  %143 = load i32, i32* @XPC_CHCTL_OPENREQUEST, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %182, label %146

146:                                              ; preds = %141
  %147 = load %struct.xpc_partition*, %struct.xpc_partition** %4, align 8
  %148 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %147, i32 0, i32 3
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %5, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @XPC_CHCTL_OPENREQUEST, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %181

158:                                              ; preds = %146
  %159 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %160 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = icmp ne i32 %161, 0
  %163 = zext i1 %162 to i32
  %164 = call i32 @DBUG_ON(i32 %163)
  %165 = load %struct.xpc_partition*, %struct.xpc_partition** %4, align 8
  %166 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %165, i32 0, i32 2
  %167 = call i32 @spin_lock(i32* %166)
  %168 = load i32, i32* @XPC_CHCTL_CLOSEREQUEST, align 4
  %169 = load %struct.xpc_partition*, %struct.xpc_partition** %4, align 8
  %170 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %169, i32 0, i32 3
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  %173 = load i32, i32* %5, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = or i32 %176, %168
  store i32 %177, i32* %175, align 4
  %178 = load %struct.xpc_partition*, %struct.xpc_partition** %4, align 8
  %179 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %178, i32 0, i32 2
  %180 = call i32 @spin_unlock(i32* %179)
  br label %181

181:                                              ; preds = %158, %146
  br label %719

182:                                              ; preds = %141
  %183 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %184 = call i32 @XPC_SET_REASON(%struct.xpc_channel* %183, i32 0, i32 0)
  %185 = load i32, i32* @XPC_C_DISCONNECTED, align 4
  %186 = xor i32 %185, -1
  %187 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %188 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = and i32 %189, %186
  store i32 %190, i32* %188, align 8
  %191 = load %struct.xpc_partition*, %struct.xpc_partition** %4, align 8
  %192 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %191, i32 0, i32 1
  %193 = call i32 @atomic_inc(i32* %192)
  %194 = load i32, i32* @XPC_C_CONNECTING, align 4
  %195 = load i32, i32* @XPC_C_ROPENREQUEST, align 4
  %196 = or i32 %194, %195
  %197 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %198 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = or i32 %199, %196
  store i32 %200, i32* %198, align 8
  br label %201

201:                                              ; preds = %182, %134
  %202 = load i32, i32* @XPC_CHCTL_OPENREQUEST, align 4
  %203 = load i32, i32* @XPC_CHCTL_OPENREPLY, align 4
  %204 = or i32 %202, %203
  %205 = load i32, i32* @XPC_CHCTL_OPENCOMPLETE, align 4
  %206 = or i32 %204, %205
  %207 = xor i32 %206, -1
  %208 = load i32, i32* %6, align 4
  %209 = and i32 %208, %207
  store i32 %209, i32* %6, align 4
  %210 = load i32, i32* @XPC_C_RCLOSEREQUEST, align 4
  %211 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %212 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = or i32 %213, %210
  store i32 %214, i32* %212, align 8
  %215 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %216 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* @XPC_C_DISCONNECTING, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %249, label %221

221:                                              ; preds = %201
  %222 = load %struct.xpc_openclose_args*, %struct.xpc_openclose_args** %8, align 8
  %223 = getelementptr inbounds %struct.xpc_openclose_args, %struct.xpc_openclose_args* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  store i32 %224, i32* %10, align 4
  %225 = load i32, i32* %10, align 4
  %226 = load i32, i32* @xpSuccess, align 4
  %227 = icmp ule i32 %225, %226
  br i1 %227, label %232, label %228

228:                                              ; preds = %221
  %229 = load i32, i32* %10, align 4
  %230 = load i32, i32* @xpUnknownReason, align 4
  %231 = icmp ugt i32 %229, %230
  br i1 %231, label %232, label %234

232:                                              ; preds = %228, %221
  %233 = load i32, i32* @xpUnknownReason, align 4
  store i32 %233, i32* %10, align 4
  br label %241

234:                                              ; preds = %228
  %235 = load i32, i32* %10, align 4
  %236 = load i32, i32* @xpUnregistering, align 4
  %237 = icmp eq i32 %235, %236
  br i1 %237, label %238, label %240

238:                                              ; preds = %234
  %239 = load i32, i32* @xpOtherUnregistering, align 4
  store i32 %239, i32* %10, align 4
  br label %240

240:                                              ; preds = %238, %234
  br label %241

241:                                              ; preds = %240, %232
  %242 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %243 = load i32, i32* %10, align 4
  %244 = call i32 @XPC_DISCONNECT_CHANNEL(%struct.xpc_channel* %242, i32 %243, i64* %7)
  %245 = load i32, i32* %6, align 4
  %246 = load i32, i32* @XPC_CHCTL_CLOSEREPLY, align 4
  %247 = and i32 %245, %246
  %248 = call i32 @DBUG_ON(i32 %247)
  br label %719

249:                                              ; preds = %201
  %250 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %251 = call i32 @xpc_process_disconnect(%struct.xpc_channel* %250, i64* %7)
  br label %252

252:                                              ; preds = %249, %49
  %253 = load i32, i32* %6, align 4
  %254 = load i32, i32* @XPC_CHCTL_CLOSEREPLY, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %349

257:                                              ; preds = %252
  %258 = load i32, i32* @xpc_chan, align 4
  %259 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %260 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %259, i32 0, i32 7
  %261 = load i32, i32* %260, align 8
  %262 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %263 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %262, i32 0, i32 6
  %264 = load i32, i32* %263, align 4
  %265 = sext i32 %264 to i64
  %266 = call i32 (i32, i8*, i32, i64, ...) @dev_dbg(i32 %258, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %261, i64 %265)
  %267 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %268 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = load i32, i32* @XPC_C_DISCONNECTED, align 4
  %271 = and i32 %269, %270
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %281

273:                                              ; preds = %257
  %274 = load %struct.xpc_partition*, %struct.xpc_partition** %4, align 8
  %275 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = load i64, i64* @XPC_P_AS_DEACTIVATING, align 8
  %278 = icmp ne i64 %276, %277
  %279 = zext i1 %278 to i32
  %280 = call i32 @DBUG_ON(i32 %279)
  br label %719

281:                                              ; preds = %257
  %282 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %283 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = load i32, i32* @XPC_C_CLOSEREQUEST, align 4
  %286 = and i32 %284, %285
  %287 = icmp ne i32 %286, 0
  %288 = xor i1 %287, true
  %289 = zext i1 %288 to i32
  %290 = call i32 @DBUG_ON(i32 %289)
  %291 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %292 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = load i32, i32* @XPC_C_RCLOSEREQUEST, align 4
  %295 = and i32 %293, %294
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %333, label %297

297:                                              ; preds = %281
  %298 = load %struct.xpc_partition*, %struct.xpc_partition** %4, align 8
  %299 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %298, i32 0, i32 3
  %300 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %299, i32 0, i32 0
  %301 = load i32*, i32** %300, align 8
  %302 = load i32, i32* %5, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i32, i32* %301, i64 %303
  %305 = load i32, i32* %304, align 4
  %306 = load i32, i32* @XPC_CHCTL_CLOSEREQUEST, align 4
  %307 = and i32 %305, %306
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %332

309:                                              ; preds = %297
  %310 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %311 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 4
  %313 = icmp ne i32 %312, 0
  %314 = zext i1 %313 to i32
  %315 = call i32 @DBUG_ON(i32 %314)
  %316 = load %struct.xpc_partition*, %struct.xpc_partition** %4, align 8
  %317 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %316, i32 0, i32 2
  %318 = call i32 @spin_lock(i32* %317)
  %319 = load i32, i32* @XPC_CHCTL_CLOSEREPLY, align 4
  %320 = load %struct.xpc_partition*, %struct.xpc_partition** %4, align 8
  %321 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %320, i32 0, i32 3
  %322 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %321, i32 0, i32 0
  %323 = load i32*, i32** %322, align 8
  %324 = load i32, i32* %5, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i32, i32* %323, i64 %325
  %327 = load i32, i32* %326, align 4
  %328 = or i32 %327, %319
  store i32 %328, i32* %326, align 4
  %329 = load %struct.xpc_partition*, %struct.xpc_partition** %4, align 8
  %330 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %329, i32 0, i32 2
  %331 = call i32 @spin_unlock(i32* %330)
  br label %332

332:                                              ; preds = %309, %297
  br label %719

333:                                              ; preds = %281
  %334 = load i32, i32* @XPC_C_RCLOSEREPLY, align 4
  %335 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %336 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 8
  %338 = or i32 %337, %334
  store i32 %338, i32* %336, align 8
  %339 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %340 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 8
  %342 = load i32, i32* @XPC_C_CLOSEREPLY, align 4
  %343 = and i32 %341, %342
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %348

345:                                              ; preds = %333
  %346 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %347 = call i32 @xpc_process_disconnect(%struct.xpc_channel* %346, i64* %7)
  br label %348

348:                                              ; preds = %345, %333
  br label %349

349:                                              ; preds = %348, %252
  %350 = load i32, i32* %6, align 4
  %351 = load i32, i32* @XPC_CHCTL_OPENREQUEST, align 4
  %352 = and i32 %350, %351
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %484

354:                                              ; preds = %349
  %355 = load i32, i32* @xpc_chan, align 4
  %356 = load %struct.xpc_openclose_args*, %struct.xpc_openclose_args** %8, align 8
  %357 = getelementptr inbounds %struct.xpc_openclose_args, %struct.xpc_openclose_args* %356, i32 0, i32 1
  %358 = load i64, i64* %357, align 8
  %359 = trunc i64 %358 to i32
  %360 = load %struct.xpc_openclose_args*, %struct.xpc_openclose_args** %8, align 8
  %361 = getelementptr inbounds %struct.xpc_openclose_args, %struct.xpc_openclose_args* %360, i32 0, i32 2
  %362 = load i64, i64* %361, align 8
  %363 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %364 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %363, i32 0, i32 7
  %365 = load i32, i32* %364, align 8
  %366 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %367 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %366, i32 0, i32 6
  %368 = load i32, i32* %367, align 4
  %369 = call i32 (i32, i8*, i32, i64, ...) @dev_dbg(i32 %355, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.2, i64 0, i64 0), i32 %359, i64 %362, i32 %365, i32 %368)
  %370 = load %struct.xpc_partition*, %struct.xpc_partition** %4, align 8
  %371 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %370, i32 0, i32 0
  %372 = load i64, i64* %371, align 8
  %373 = load i64, i64* @XPC_P_AS_DEACTIVATING, align 8
  %374 = icmp eq i64 %372, %373
  br i1 %374, label %382, label %375

375:                                              ; preds = %354
  %376 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %377 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 8
  %379 = load i32, i32* @XPC_C_ROPENREQUEST, align 4
  %380 = and i32 %378, %379
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %383

382:                                              ; preds = %375, %354
  br label %719

383:                                              ; preds = %375
  %384 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %385 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %384, i32 0, i32 0
  %386 = load i32, i32* %385, align 8
  %387 = load i32, i32* @XPC_C_DISCONNECTING, align 4
  %388 = load i32, i32* @XPC_C_WDISCONNECT, align 4
  %389 = or i32 %387, %388
  %390 = and i32 %386, %389
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %398

392:                                              ; preds = %383
  %393 = load i32, i32* @XPC_CHCTL_OPENREQUEST, align 4
  %394 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %395 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %394, i32 0, i32 1
  %396 = load i32, i32* %395, align 4
  %397 = or i32 %396, %393
  store i32 %397, i32* %395, align 4
  br label %719

398:                                              ; preds = %383
  %399 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %400 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %399, i32 0, i32 0
  %401 = load i32, i32* %400, align 8
  %402 = load i32, i32* @XPC_C_DISCONNECTED, align 4
  %403 = load i32, i32* @XPC_C_OPENREQUEST, align 4
  %404 = or i32 %402, %403
  %405 = and i32 %401, %404
  %406 = icmp ne i32 %405, 0
  %407 = xor i1 %406, true
  %408 = zext i1 %407 to i32
  %409 = call i32 @DBUG_ON(i32 %408)
  %410 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %411 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %410, i32 0, i32 0
  %412 = load i32, i32* %411, align 8
  %413 = load i32, i32* @XPC_C_ROPENREQUEST, align 4
  %414 = load i32, i32* @XPC_C_ROPENREPLY, align 4
  %415 = or i32 %413, %414
  %416 = load i32, i32* @XPC_C_OPENREPLY, align 4
  %417 = or i32 %415, %416
  %418 = load i32, i32* @XPC_C_CONNECTED, align 4
  %419 = or i32 %417, %418
  %420 = and i32 %412, %419
  %421 = call i32 @DBUG_ON(i32 %420)
  %422 = load %struct.xpc_openclose_args*, %struct.xpc_openclose_args** %8, align 8
  %423 = getelementptr inbounds %struct.xpc_openclose_args, %struct.xpc_openclose_args* %422, i32 0, i32 1
  %424 = load i64, i64* %423, align 8
  %425 = icmp eq i64 %424, 0
  br i1 %425, label %431, label %426

426:                                              ; preds = %398
  %427 = load %struct.xpc_openclose_args*, %struct.xpc_openclose_args** %8, align 8
  %428 = getelementptr inbounds %struct.xpc_openclose_args, %struct.xpc_openclose_args* %427, i32 0, i32 2
  %429 = load i64, i64* %428, align 8
  %430 = icmp eq i64 %429, 0
  br i1 %430, label %431, label %432

431:                                              ; preds = %426, %398
  br label %719

432:                                              ; preds = %426
  %433 = load i32, i32* @XPC_C_ROPENREQUEST, align 4
  %434 = load i32, i32* @XPC_C_CONNECTING, align 4
  %435 = or i32 %433, %434
  %436 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %437 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %436, i32 0, i32 0
  %438 = load i32, i32* %437, align 8
  %439 = or i32 %438, %435
  store i32 %439, i32* %437, align 8
  %440 = load %struct.xpc_openclose_args*, %struct.xpc_openclose_args** %8, align 8
  %441 = getelementptr inbounds %struct.xpc_openclose_args, %struct.xpc_openclose_args* %440, i32 0, i32 2
  %442 = load i64, i64* %441, align 8
  %443 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %444 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %443, i32 0, i32 2
  store i64 %442, i64* %444, align 8
  %445 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %446 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %445, i32 0, i32 0
  %447 = load i32, i32* %446, align 8
  %448 = load i32, i32* @XPC_C_OPENREQUEST, align 4
  %449 = and i32 %447, %448
  %450 = icmp ne i32 %449, 0
  br i1 %450, label %451, label %464

451:                                              ; preds = %432
  %452 = load %struct.xpc_openclose_args*, %struct.xpc_openclose_args** %8, align 8
  %453 = getelementptr inbounds %struct.xpc_openclose_args, %struct.xpc_openclose_args* %452, i32 0, i32 1
  %454 = load i64, i64* %453, align 8
  %455 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %456 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %455, i32 0, i32 3
  %457 = load i64, i64* %456, align 8
  %458 = icmp ne i64 %454, %457
  br i1 %458, label %459, label %463

459:                                              ; preds = %451
  %460 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %461 = load i32, i32* @xpUnequalMsgSizes, align 4
  %462 = call i32 @XPC_DISCONNECT_CHANNEL(%struct.xpc_channel* %460, i32 %461, i64* %7)
  br label %719

463:                                              ; preds = %451
  br label %481

464:                                              ; preds = %432
  %465 = load %struct.xpc_openclose_args*, %struct.xpc_openclose_args** %8, align 8
  %466 = getelementptr inbounds %struct.xpc_openclose_args, %struct.xpc_openclose_args* %465, i32 0, i32 1
  %467 = load i64, i64* %466, align 8
  %468 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %469 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %468, i32 0, i32 3
  store i64 %467, i64* %469, align 8
  %470 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %471 = call i32 @XPC_SET_REASON(%struct.xpc_channel* %470, i32 0, i32 0)
  %472 = load i32, i32* @XPC_C_DISCONNECTED, align 4
  %473 = xor i32 %472, -1
  %474 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %475 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %474, i32 0, i32 0
  %476 = load i32, i32* %475, align 8
  %477 = and i32 %476, %473
  store i32 %477, i32* %475, align 8
  %478 = load %struct.xpc_partition*, %struct.xpc_partition** %4, align 8
  %479 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %478, i32 0, i32 1
  %480 = call i32 @atomic_inc(i32* %479)
  br label %481

481:                                              ; preds = %464, %463
  %482 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %483 = call i32 @xpc_process_connect(%struct.xpc_channel* %482, i64* %7)
  br label %484

484:                                              ; preds = %481, %349
  %485 = load i32, i32* %6, align 4
  %486 = load i32, i32* @XPC_CHCTL_OPENREPLY, align 4
  %487 = and i32 %485, %486
  %488 = icmp ne i32 %487, 0
  br i1 %488, label %489, label %641

489:                                              ; preds = %484
  %490 = load i32, i32* @xpc_chan, align 4
  %491 = load %struct.xpc_openclose_args*, %struct.xpc_openclose_args** %8, align 8
  %492 = getelementptr inbounds %struct.xpc_openclose_args, %struct.xpc_openclose_args* %491, i32 0, i32 3
  %493 = load i64, i64* %492, align 8
  %494 = trunc i64 %493 to i32
  %495 = load %struct.xpc_openclose_args*, %struct.xpc_openclose_args** %8, align 8
  %496 = getelementptr inbounds %struct.xpc_openclose_args, %struct.xpc_openclose_args* %495, i32 0, i32 2
  %497 = load i64, i64* %496, align 8
  %498 = load %struct.xpc_openclose_args*, %struct.xpc_openclose_args** %8, align 8
  %499 = getelementptr inbounds %struct.xpc_openclose_args, %struct.xpc_openclose_args* %498, i32 0, i32 4
  %500 = load i64, i64* %499, align 8
  %501 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %502 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %501, i32 0, i32 7
  %503 = load i32, i32* %502, align 8
  %504 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %505 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %504, i32 0, i32 6
  %506 = load i32, i32* %505, align 4
  %507 = call i32 (i32, i8*, i32, i64, ...) @dev_dbg(i32 %490, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.3, i64 0, i64 0), i32 %494, i64 %497, i64 %500, i32 %503, i32 %506)
  %508 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %509 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %508, i32 0, i32 0
  %510 = load i32, i32* %509, align 8
  %511 = load i32, i32* @XPC_C_DISCONNECTING, align 4
  %512 = load i32, i32* @XPC_C_DISCONNECTED, align 4
  %513 = or i32 %511, %512
  %514 = and i32 %510, %513
  %515 = icmp ne i32 %514, 0
  br i1 %515, label %516, label %517

516:                                              ; preds = %489
  br label %719

517:                                              ; preds = %489
  %518 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %519 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %518, i32 0, i32 0
  %520 = load i32, i32* %519, align 8
  %521 = load i32, i32* @XPC_C_OPENREQUEST, align 4
  %522 = and i32 %520, %521
  %523 = icmp ne i32 %522, 0
  br i1 %523, label %528, label %524

524:                                              ; preds = %517
  %525 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %526 = load i32, i32* @xpOpenCloseError, align 4
  %527 = call i32 @XPC_DISCONNECT_CHANNEL(%struct.xpc_channel* %525, i32 %526, i64* %7)
  br label %719

528:                                              ; preds = %517
  %529 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %530 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %529, i32 0, i32 0
  %531 = load i32, i32* %530, align 8
  %532 = load i32, i32* @XPC_C_ROPENREQUEST, align 4
  %533 = and i32 %531, %532
  %534 = icmp ne i32 %533, 0
  %535 = xor i1 %534, true
  %536 = zext i1 %535 to i32
  %537 = call i32 @DBUG_ON(i32 %536)
  %538 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %539 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %538, i32 0, i32 0
  %540 = load i32, i32* %539, align 8
  %541 = load i32, i32* @XPC_C_CONNECTED, align 4
  %542 = and i32 %540, %541
  %543 = call i32 @DBUG_ON(i32 %542)
  %544 = load %struct.xpc_openclose_args*, %struct.xpc_openclose_args** %8, align 8
  %545 = getelementptr inbounds %struct.xpc_openclose_args, %struct.xpc_openclose_args* %544, i32 0, i32 3
  %546 = load i64, i64* %545, align 8
  %547 = icmp eq i64 %546, 0
  %548 = zext i1 %547 to i32
  %549 = call i32 @DBUG_ON(i32 %548)
  %550 = load %struct.xpc_openclose_args*, %struct.xpc_openclose_args** %8, align 8
  %551 = getelementptr inbounds %struct.xpc_openclose_args, %struct.xpc_openclose_args* %550, i32 0, i32 2
  %552 = load i64, i64* %551, align 8
  %553 = icmp eq i64 %552, 0
  %554 = zext i1 %553 to i32
  %555 = call i32 @DBUG_ON(i32 %554)
  %556 = load %struct.xpc_openclose_args*, %struct.xpc_openclose_args** %8, align 8
  %557 = getelementptr inbounds %struct.xpc_openclose_args, %struct.xpc_openclose_args* %556, i32 0, i32 4
  %558 = load i64, i64* %557, align 8
  %559 = icmp eq i64 %558, 0
  %560 = zext i1 %559 to i32
  %561 = call i32 @DBUG_ON(i32 %560)
  %562 = load i32 (%struct.xpc_channel*, i64)*, i32 (%struct.xpc_channel*, i64)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @xpc_arch_ops, i32 0, i32 0), align 8
  %563 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %564 = load %struct.xpc_openclose_args*, %struct.xpc_openclose_args** %8, align 8
  %565 = getelementptr inbounds %struct.xpc_openclose_args, %struct.xpc_openclose_args* %564, i32 0, i32 3
  %566 = load i64, i64* %565, align 8
  %567 = call i32 %562(%struct.xpc_channel* %563, i64 %566)
  store i32 %567, i32* %11, align 4
  %568 = load i32, i32* %11, align 4
  %569 = load i32, i32* @xpSuccess, align 4
  %570 = icmp ne i32 %568, %569
  br i1 %570, label %571, label %575

571:                                              ; preds = %528
  %572 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %573 = load i32, i32* %11, align 4
  %574 = call i32 @XPC_DISCONNECT_CHANNEL(%struct.xpc_channel* %572, i32 %573, i64* %7)
  br label %719

575:                                              ; preds = %528
  %576 = load i32, i32* @XPC_C_ROPENREPLY, align 4
  %577 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %578 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %577, i32 0, i32 0
  %579 = load i32, i32* %578, align 8
  %580 = or i32 %579, %576
  store i32 %580, i32* %578, align 8
  %581 = load %struct.xpc_openclose_args*, %struct.xpc_openclose_args** %8, align 8
  %582 = getelementptr inbounds %struct.xpc_openclose_args, %struct.xpc_openclose_args* %581, i32 0, i32 2
  %583 = load i64, i64* %582, align 8
  %584 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %585 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %584, i32 0, i32 2
  %586 = load i64, i64* %585, align 8
  %587 = icmp slt i64 %583, %586
  br i1 %587, label %588, label %609

588:                                              ; preds = %575
  %589 = load i32, i32* @xpc_chan, align 4
  %590 = load %struct.xpc_openclose_args*, %struct.xpc_openclose_args** %8, align 8
  %591 = getelementptr inbounds %struct.xpc_openclose_args, %struct.xpc_openclose_args* %590, i32 0, i32 2
  %592 = load i64, i64* %591, align 8
  %593 = trunc i64 %592 to i32
  %594 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %595 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %594, i32 0, i32 2
  %596 = load i64, i64* %595, align 8
  %597 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %598 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %597, i32 0, i32 7
  %599 = load i32, i32* %598, align 8
  %600 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %601 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %600, i32 0, i32 6
  %602 = load i32, i32* %601, align 4
  %603 = call i32 (i32, i8*, i32, i64, ...) @dev_dbg(i32 %589, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.4, i64 0, i64 0), i32 %593, i64 %596, i32 %599, i32 %602)
  %604 = load %struct.xpc_openclose_args*, %struct.xpc_openclose_args** %8, align 8
  %605 = getelementptr inbounds %struct.xpc_openclose_args, %struct.xpc_openclose_args* %604, i32 0, i32 2
  %606 = load i64, i64* %605, align 8
  %607 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %608 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %607, i32 0, i32 2
  store i64 %606, i64* %608, align 8
  br label %609

609:                                              ; preds = %588, %575
  %610 = load %struct.xpc_openclose_args*, %struct.xpc_openclose_args** %8, align 8
  %611 = getelementptr inbounds %struct.xpc_openclose_args, %struct.xpc_openclose_args* %610, i32 0, i32 4
  %612 = load i64, i64* %611, align 8
  %613 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %614 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %613, i32 0, i32 4
  %615 = load i64, i64* %614, align 8
  %616 = icmp slt i64 %612, %615
  br i1 %616, label %617, label %638

617:                                              ; preds = %609
  %618 = load i32, i32* @xpc_chan, align 4
  %619 = load %struct.xpc_openclose_args*, %struct.xpc_openclose_args** %8, align 8
  %620 = getelementptr inbounds %struct.xpc_openclose_args, %struct.xpc_openclose_args* %619, i32 0, i32 4
  %621 = load i64, i64* %620, align 8
  %622 = trunc i64 %621 to i32
  %623 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %624 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %623, i32 0, i32 4
  %625 = load i64, i64* %624, align 8
  %626 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %627 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %626, i32 0, i32 7
  %628 = load i32, i32* %627, align 8
  %629 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %630 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %629, i32 0, i32 6
  %631 = load i32, i32* %630, align 4
  %632 = call i32 (i32, i8*, i32, i64, ...) @dev_dbg(i32 %618, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.5, i64 0, i64 0), i32 %622, i64 %625, i32 %628, i32 %631)
  %633 = load %struct.xpc_openclose_args*, %struct.xpc_openclose_args** %8, align 8
  %634 = getelementptr inbounds %struct.xpc_openclose_args, %struct.xpc_openclose_args* %633, i32 0, i32 4
  %635 = load i64, i64* %634, align 8
  %636 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %637 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %636, i32 0, i32 4
  store i64 %635, i64* %637, align 8
  br label %638

638:                                              ; preds = %617, %609
  %639 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %640 = call i32 @xpc_process_connect(%struct.xpc_channel* %639, i64* %7)
  br label %641

641:                                              ; preds = %638, %484
  %642 = load i32, i32* %6, align 4
  %643 = load i32, i32* @XPC_CHCTL_OPENCOMPLETE, align 4
  %644 = and i32 %642, %643
  %645 = icmp ne i32 %644, 0
  br i1 %645, label %646, label %718

646:                                              ; preds = %641
  %647 = load i32, i32* @xpc_chan, align 4
  %648 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %649 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %648, i32 0, i32 7
  %650 = load i32, i32* %649, align 8
  %651 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %652 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %651, i32 0, i32 6
  %653 = load i32, i32* %652, align 4
  %654 = sext i32 %653 to i64
  %655 = call i32 (i32, i8*, i32, i64, ...) @dev_dbg(i32 %647, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.6, i64 0, i64 0), i32 %650, i64 %654)
  %656 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %657 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %656, i32 0, i32 0
  %658 = load i32, i32* %657, align 8
  %659 = load i32, i32* @XPC_C_DISCONNECTING, align 4
  %660 = load i32, i32* @XPC_C_DISCONNECTED, align 4
  %661 = or i32 %659, %660
  %662 = and i32 %658, %661
  %663 = icmp ne i32 %662, 0
  br i1 %663, label %664, label %665

664:                                              ; preds = %646
  br label %719

665:                                              ; preds = %646
  %666 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %667 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %666, i32 0, i32 0
  %668 = load i32, i32* %667, align 8
  %669 = load i32, i32* @XPC_C_OPENREQUEST, align 4
  %670 = and i32 %668, %669
  %671 = icmp ne i32 %670, 0
  br i1 %671, label %672, label %679

672:                                              ; preds = %665
  %673 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %674 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %673, i32 0, i32 0
  %675 = load i32, i32* %674, align 8
  %676 = load i32, i32* @XPC_C_OPENREPLY, align 4
  %677 = and i32 %675, %676
  %678 = icmp ne i32 %677, 0
  br i1 %678, label %683, label %679

679:                                              ; preds = %672, %665
  %680 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %681 = load i32, i32* @xpOpenCloseError, align 4
  %682 = call i32 @XPC_DISCONNECT_CHANNEL(%struct.xpc_channel* %680, i32 %681, i64* %7)
  br label %719

683:                                              ; preds = %672
  %684 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %685 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %684, i32 0, i32 0
  %686 = load i32, i32* %685, align 8
  %687 = load i32, i32* @XPC_C_ROPENREQUEST, align 4
  %688 = and i32 %686, %687
  %689 = icmp ne i32 %688, 0
  %690 = xor i1 %689, true
  %691 = zext i1 %690 to i32
  %692 = call i32 @DBUG_ON(i32 %691)
  %693 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %694 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %693, i32 0, i32 0
  %695 = load i32, i32* %694, align 8
  %696 = load i32, i32* @XPC_C_ROPENREPLY, align 4
  %697 = and i32 %695, %696
  %698 = icmp ne i32 %697, 0
  %699 = xor i1 %698, true
  %700 = zext i1 %699 to i32
  %701 = call i32 @DBUG_ON(i32 %700)
  %702 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %703 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %702, i32 0, i32 0
  %704 = load i32, i32* %703, align 8
  %705 = load i32, i32* @XPC_C_CONNECTED, align 4
  %706 = and i32 %704, %705
  %707 = icmp ne i32 %706, 0
  %708 = xor i1 %707, true
  %709 = zext i1 %708 to i32
  %710 = call i32 @DBUG_ON(i32 %709)
  %711 = load i32, i32* @XPC_C_ROPENCOMPLETE, align 4
  %712 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %713 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %712, i32 0, i32 0
  %714 = load i32, i32* %713, align 8
  %715 = or i32 %714, %711
  store i32 %715, i32* %713, align 8
  %716 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %717 = call i32 @xpc_process_connect(%struct.xpc_channel* %716, i64* %7)
  store i32 1, i32* %12, align 4
  br label %718

718:                                              ; preds = %683, %641
  br label %719

719:                                              ; preds = %718, %679, %664, %571, %524, %516, %459, %431, %392, %382, %332, %273, %241, %181, %43
  %720 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %721 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %720, i32 0, i32 5
  %722 = load i64, i64* %7, align 8
  %723 = call i32 @spin_unlock_irqrestore(i32* %721, i64 %722)
  %724 = load i32, i32* %12, align 4
  %725 = icmp ne i32 %724, 0
  br i1 %725, label %726, label %729

726:                                              ; preds = %719
  %727 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %728 = call i32 @xpc_create_kthreads(%struct.xpc_channel* %727, i32 1, i32 0)
  br label %729

729:                                              ; preds = %726, %719
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i64, ...) #1

declare dso_local i32 @DBUG_ON(i32) #1

declare dso_local i32 @xpc_process_disconnect(%struct.xpc_channel*, i64*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @XPC_SET_REASON(%struct.xpc_channel*, i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @XPC_DISCONNECT_CHANNEL(%struct.xpc_channel*, i32, i64*) #1

declare dso_local i32 @xpc_process_connect(%struct.xpc_channel*, i64*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @xpc_create_kthreads(%struct.xpc_channel*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
