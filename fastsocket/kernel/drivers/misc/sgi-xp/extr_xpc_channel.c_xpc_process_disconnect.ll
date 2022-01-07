; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_channel.c_xpc_process_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_channel.c_xpc_process_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_partition = type { i64, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32* }
%struct.TYPE_4__ = type { i32 (%struct.xpc_channel*)*, i32 (%struct.xpc_channel*)*, i32 (%struct.xpc_channel*, i64*)*, i64 (i64)* }
%struct.xpc_channel = type { i64, i32, i64, i32, i32, i32, i64, i64, i64, i64, i64, i32*, i32*, i32, i32, i32, i32 }

@xpc_partitions = common dso_local global %struct.xpc_partition* null, align 8
@XPC_C_WASCONNECTED = common dso_local global i32 0, align 4
@XPC_C_DISCONNECTING = common dso_local global i32 0, align 4
@XPC_C_CLOSEREQUEST = common dso_local global i32 0, align 4
@XPC_C_CONNECTEDCALLOUT_MADE = common dso_local global i32 0, align 4
@XPC_C_DISCONNECTINGCALLOUT_MADE = common dso_local global i32 0, align 4
@XPC_P_AS_DEACTIVATING = common dso_local global i64 0, align 8
@xpc_arch_ops = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@XPC_C_RCLOSEREQUEST = common dso_local global i32 0, align 4
@XPC_C_CLOSEREPLY = common dso_local global i32 0, align 4
@XPC_C_RCLOSEREPLY = common dso_local global i32 0, align 4
@xpDisconnected = common dso_local global i32 0, align 4
@XPC_C_DISCONNECTED = common dso_local global i32 0, align 4
@XPC_C_WDISCONNECT = common dso_local global i32 0, align 4
@xpc_chan = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"channel %d to partition %d disconnected, reason=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xpc_channel*, i64*)* @xpc_process_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xpc_process_disconnect(%struct.xpc_channel* %0, i64* %1) #0 {
  %3 = alloca %struct.xpc_channel*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.xpc_partition*, align 8
  %6 = alloca i32, align 4
  store %struct.xpc_channel* %0, %struct.xpc_channel** %3, align 8
  store i64* %1, i64** %4, align 8
  %7 = load %struct.xpc_partition*, %struct.xpc_partition** @xpc_partitions, align 8
  %8 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %9 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %7, i64 %10
  store %struct.xpc_partition* %11, %struct.xpc_partition** %5, align 8
  %12 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %13 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @XPC_C_WASCONNECTED, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %6, align 4
  %17 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %18 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %17, i32 0, i32 14
  %19 = call i32 @spin_is_locked(i32* %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @DBUG_ON(i32 %22)
  %24 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %25 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @XPC_C_DISCONNECTING, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %2
  br label %244

31:                                               ; preds = %2
  %32 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %33 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @XPC_C_CLOSEREQUEST, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i32 @DBUG_ON(i32 %39)
  %41 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %42 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %41, i32 0, i32 16
  %43 = call i64 @atomic_read(i32* %42)
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %31
  %46 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %47 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %46, i32 0, i32 15
  %48 = call i64 @atomic_read(i32* %47)
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45, %31
  br label %244

51:                                               ; preds = %45
  %52 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %53 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @XPC_C_CONNECTEDCALLOUT_MADE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %51
  %59 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %60 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @XPC_C_DISCONNECTINGCALLOUT_MADE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  br label %66

66:                                               ; preds = %58, %51
  %67 = phi i1 [ false, %51 ], [ %65, %58 ]
  %68 = zext i1 %67 to i32
  %69 = call i32 @DBUG_ON(i32 %68)
  %70 = load %struct.xpc_partition*, %struct.xpc_partition** %5, align 8
  %71 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @XPC_P_AS_DEACTIVATING, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %84

75:                                               ; preds = %66
  %76 = load i64 (i64)*, i64 (i64)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @xpc_arch_ops, i32 0, i32 3), align 8
  %77 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %78 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i64 %76(i64 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  br label %244

83:                                               ; preds = %75
  br label %118

84:                                               ; preds = %66
  %85 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %86 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @XPC_C_RCLOSEREQUEST, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %84
  br label %244

92:                                               ; preds = %84
  %93 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %94 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @XPC_C_CLOSEREPLY, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %109, label %99

99:                                               ; preds = %92
  %100 = load i32, i32* @XPC_C_CLOSEREPLY, align 4
  %101 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %102 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 8
  %105 = load i32 (%struct.xpc_channel*, i64*)*, i32 (%struct.xpc_channel*, i64*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @xpc_arch_ops, i32 0, i32 2), align 8
  %106 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %107 = load i64*, i64** %4, align 8
  %108 = call i32 %105(%struct.xpc_channel* %106, i64* %107)
  br label %109

109:                                              ; preds = %99, %92
  %110 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %111 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @XPC_C_RCLOSEREPLY, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %109
  br label %244

117:                                              ; preds = %109
  br label %118

118:                                              ; preds = %117, %83
  %119 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %120 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %119, i32 0, i32 13
  %121 = call i64 @atomic_read(i32* %120)
  %122 = icmp sgt i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %118
  %124 = load i32 (%struct.xpc_channel*)*, i32 (%struct.xpc_channel*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @xpc_arch_ops, i32 0, i32 1), align 8
  %125 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %126 = call i32 %124(%struct.xpc_channel* %125)
  br label %127

127:                                              ; preds = %123, %118
  %128 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %129 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @XPC_C_DISCONNECTINGCALLOUT_MADE, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %148

134:                                              ; preds = %127
  %135 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %136 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %135, i32 0, i32 14
  %137 = load i64*, i64** %4, align 8
  %138 = load i64, i64* %137, align 8
  %139 = call i32 @spin_unlock_irqrestore(i32* %136, i64 %138)
  %140 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %141 = load i32, i32* @xpDisconnected, align 4
  %142 = call i32 @xpc_disconnect_callout(%struct.xpc_channel* %140, i32 %141)
  %143 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %144 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %143, i32 0, i32 14
  %145 = load i64*, i64** %4, align 8
  %146 = load i64, i64* %145, align 8
  %147 = call i32 @spin_lock_irqsave(i32* %144, i64 %146)
  br label %148

148:                                              ; preds = %134, %127
  %149 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %150 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %149, i32 0, i32 13
  %151 = call i64 @atomic_read(i32* %150)
  %152 = icmp ne i64 %151, 0
  %153 = zext i1 %152 to i32
  %154 = call i32 @DBUG_ON(i32 %153)
  %155 = load i32 (%struct.xpc_channel*)*, i32 (%struct.xpc_channel*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @xpc_arch_ops, i32 0, i32 0), align 8
  %156 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %157 = call i32 %155(%struct.xpc_channel* %156)
  %158 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %159 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %158, i32 0, i32 12
  store i32* null, i32** %159, align 8
  %160 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %161 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %160, i32 0, i32 11
  store i32* null, i32** %161, align 8
  %162 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %163 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %162, i32 0, i32 10
  store i64 0, i64* %163, align 8
  %164 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %165 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %164, i32 0, i32 9
  store i64 0, i64* %165, align 8
  %166 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %167 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %166, i32 0, i32 8
  store i64 0, i64* %167, align 8
  %168 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %169 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %168, i32 0, i32 7
  store i64 0, i64* %169, align 8
  %170 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %171 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %170, i32 0, i32 6
  store i64 0, i64* %171, align 8
  %172 = load i32, i32* @XPC_C_DISCONNECTED, align 4
  %173 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %174 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @XPC_C_WDISCONNECT, align 4
  %177 = and i32 %175, %176
  %178 = or i32 %172, %177
  %179 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %180 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %179, i32 0, i32 1
  store i32 %178, i32* %180, align 8
  %181 = load %struct.xpc_partition*, %struct.xpc_partition** %5, align 8
  %182 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %181, i32 0, i32 3
  %183 = call i32 @atomic_dec(i32* %182)
  %184 = load i32, i32* %6, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %198

186:                                              ; preds = %148
  %187 = load i32, i32* @xpc_chan, align 4
  %188 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %189 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %188, i32 0, i32 2
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %192 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %195 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %194, i32 0, i32 5
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @dev_info(i32 %187, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %190, i64 %193, i32 %196)
  br label %198

198:                                              ; preds = %186, %148
  %199 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %200 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* @XPC_C_WDISCONNECT, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %198
  %206 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %207 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %206, i32 0, i32 4
  %208 = call i32 @complete(i32* %207)
  br label %244

209:                                              ; preds = %198
  %210 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %211 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 8
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %243

214:                                              ; preds = %209
  %215 = load %struct.xpc_partition*, %struct.xpc_partition** %5, align 8
  %216 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* @XPC_P_AS_DEACTIVATING, align 8
  %219 = icmp ne i64 %217, %218
  br i1 %219, label %220, label %240

220:                                              ; preds = %214
  %221 = load %struct.xpc_partition*, %struct.xpc_partition** %5, align 8
  %222 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %221, i32 0, i32 1
  %223 = call i32 @spin_lock(i32* %222)
  %224 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %225 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 8
  %227 = load %struct.xpc_partition*, %struct.xpc_partition** %5, align 8
  %228 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %227, i32 0, i32 2
  %229 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %228, i32 0, i32 0
  %230 = load i32*, i32** %229, align 8
  %231 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %232 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %231, i32 0, i32 2
  %233 = load i64, i64* %232, align 8
  %234 = getelementptr inbounds i32, i32* %230, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = or i32 %235, %226
  store i32 %236, i32* %234, align 4
  %237 = load %struct.xpc_partition*, %struct.xpc_partition** %5, align 8
  %238 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %237, i32 0, i32 1
  %239 = call i32 @spin_unlock(i32* %238)
  br label %240

240:                                              ; preds = %220, %214
  %241 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %242 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %241, i32 0, i32 3
  store i32 0, i32* %242, align 8
  br label %243

243:                                              ; preds = %240, %209
  br label %244

244:                                              ; preds = %30, %50, %82, %91, %116, %243, %205
  ret void
}

declare dso_local i32 @DBUG_ON(i32) #1

declare dso_local i32 @spin_is_locked(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @xpc_disconnect_callout(%struct.xpc_channel*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @dev_info(i32, i8*, i64, i64, i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
