; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_sn2.c_xpc_process_msg_chctl_flags_sn2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_sn2.c_xpc_process_msg_chctl_flags_sn2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_partition = type { %struct.TYPE_8__, %struct.xpc_channel* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i64 }
%struct.xpc_channel = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.xpc_channel_sn2 }
%struct.xpc_channel_sn2 = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i64, i64 }

@XPC_C_CONNECTED = common dso_local global i32 0, align 4
@xpMsgDelivered = common dso_local global i32 0, align 4
@xpc_chan = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"w_remote_GP.get changed to %lld, partid=%d, channel=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"w_remote_GP.put changed to %lld, partid=%d, channel=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [67 x i8] c"msgs waiting to be copied and delivered=%d, partid=%d, channel=%d\0A\00", align 1
@XPC_C_CONNECTEDCALLOUT_MADE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xpc_partition*, i32)* @xpc_process_msg_chctl_flags_sn2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xpc_process_msg_chctl_flags_sn2(%struct.xpc_partition* %0, i32 %1) #0 {
  %3 = alloca %struct.xpc_partition*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xpc_channel*, align 8
  %6 = alloca %struct.xpc_channel_sn2*, align 8
  %7 = alloca i32, align 4
  store %struct.xpc_partition* %0, %struct.xpc_partition** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %9 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %8, i32 0, i32 1
  %10 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %10, i64 %12
  store %struct.xpc_channel* %13, %struct.xpc_channel** %5, align 8
  %14 = load %struct.xpc_channel*, %struct.xpc_channel** %5, align 8
  %15 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %14, i32 0, i32 6
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  store %struct.xpc_channel_sn2* %16, %struct.xpc_channel_sn2** %6, align 8
  %17 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %6, align 8
  %18 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %17, i32 0, i32 1
  %19 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %20 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i64 %25
  %27 = bitcast %struct.TYPE_9__* %18 to i8*
  %28 = bitcast %struct.TYPE_9__* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 %28, i64 16, i1 false)
  %29 = load %struct.xpc_channel*, %struct.xpc_channel** %5, align 8
  %30 = call i32 @xpc_msgqueue_ref(%struct.xpc_channel* %29)
  %31 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %6, align 8
  %32 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %6, align 8
  %36 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %34, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %2
  %41 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %6, align 8
  %42 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %6, align 8
  %46 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %44, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %40
  %51 = load %struct.xpc_channel*, %struct.xpc_channel** %5, align 8
  %52 = call i32 @xpc_msgqueue_deref(%struct.xpc_channel* %51)
  br label %181

53:                                               ; preds = %40, %2
  %54 = load %struct.xpc_channel*, %struct.xpc_channel** %5, align 8
  %55 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @XPC_C_CONNECTED, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %53
  %61 = load %struct.xpc_channel*, %struct.xpc_channel** %5, align 8
  %62 = call i32 @xpc_msgqueue_deref(%struct.xpc_channel* %61)
  br label %181

63:                                               ; preds = %53
  %64 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %6, align 8
  %65 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %6, align 8
  %69 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %67, %71
  br i1 %72, label %73, label %118

73:                                               ; preds = %63
  %74 = load %struct.xpc_channel*, %struct.xpc_channel** %5, align 8
  %75 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %74, i32 0, i32 5
  %76 = call i64 @atomic_read(i32* %75)
  %77 = icmp sgt i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %73
  %79 = load %struct.xpc_channel*, %struct.xpc_channel** %5, align 8
  %80 = load i32, i32* @xpMsgDelivered, align 4
  %81 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %6, align 8
  %82 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @xpc_notify_senders_sn2(%struct.xpc_channel* %79, i32 %80, i64 %84)
  br label %86

86:                                               ; preds = %78, %73
  %87 = load %struct.xpc_channel*, %struct.xpc_channel** %5, align 8
  %88 = call i32 @xpc_clear_local_msgqueue_flags_sn2(%struct.xpc_channel* %87)
  %89 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %6, align 8
  %90 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %6, align 8
  %94 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  store i64 %92, i64* %95, align 8
  %96 = load i32, i32* @xpc_chan, align 4
  %97 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %6, align 8
  %98 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = trunc i64 %100 to i32
  %102 = load %struct.xpc_channel*, %struct.xpc_channel** %5, align 8
  %103 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.xpc_channel*, %struct.xpc_channel** %5, align 8
  %106 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @dev_dbg(i32 %96, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %101, i32 %104, i32 %107)
  %109 = load %struct.xpc_channel*, %struct.xpc_channel** %5, align 8
  %110 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %109, i32 0, i32 4
  %111 = call i64 @atomic_read(i32* %110)
  %112 = icmp sgt i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %86
  %114 = load %struct.xpc_channel*, %struct.xpc_channel** %5, align 8
  %115 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %114, i32 0, i32 3
  %116 = call i32 @wake_up(i32* %115)
  br label %117

117:                                              ; preds = %113, %86
  br label %118

118:                                              ; preds = %117, %63
  %119 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %6, align 8
  %120 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %6, align 8
  %124 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %122, %126
  br i1 %127, label %128, label %178

128:                                              ; preds = %118
  %129 = load %struct.xpc_channel*, %struct.xpc_channel** %5, align 8
  %130 = call i32 @xpc_clear_remote_msgqueue_flags_sn2(%struct.xpc_channel* %129)
  %131 = call i32 (...) @smp_wmb()
  %132 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %6, align 8
  %133 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %6, align 8
  %137 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 1
  store i64 %135, i64* %138, align 8
  %139 = load i32, i32* @xpc_chan, align 4
  %140 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %6, align 8
  %141 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = trunc i64 %143 to i32
  %145 = load %struct.xpc_channel*, %struct.xpc_channel** %5, align 8
  %146 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.xpc_channel*, %struct.xpc_channel** %5, align 8
  %149 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @dev_dbg(i32 %139, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %144, i32 %147, i32 %150)
  %152 = load %struct.xpc_channel*, %struct.xpc_channel** %5, align 8
  %153 = call i32 @xpc_n_of_deliverable_payloads_sn2(%struct.xpc_channel* %152)
  store i32 %153, i32* %7, align 4
  %154 = load i32, i32* %7, align 4
  %155 = icmp sgt i32 %154, 0
  br i1 %155, label %156, label %177

156:                                              ; preds = %128
  %157 = load i32, i32* @xpc_chan, align 4
  %158 = load i32, i32* %7, align 4
  %159 = load %struct.xpc_channel*, %struct.xpc_channel** %5, align 8
  %160 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.xpc_channel*, %struct.xpc_channel** %5, align 8
  %163 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @dev_dbg(i32 %157, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i32 %158, i32 %161, i32 %164)
  %166 = load %struct.xpc_channel*, %struct.xpc_channel** %5, align 8
  %167 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @XPC_C_CONNECTEDCALLOUT_MADE, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %156
  %173 = load %struct.xpc_channel*, %struct.xpc_channel** %5, align 8
  %174 = load i32, i32* %7, align 4
  %175 = call i32 @xpc_activate_kthreads(%struct.xpc_channel* %173, i32 %174)
  br label %176

176:                                              ; preds = %172, %156
  br label %177

177:                                              ; preds = %176, %128
  br label %178

178:                                              ; preds = %177, %118
  %179 = load %struct.xpc_channel*, %struct.xpc_channel** %5, align 8
  %180 = call i32 @xpc_msgqueue_deref(%struct.xpc_channel* %179)
  br label %181

181:                                              ; preds = %178, %60, %50
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @xpc_msgqueue_ref(%struct.xpc_channel*) #2

declare dso_local i32 @xpc_msgqueue_deref(%struct.xpc_channel*) #2

declare dso_local i64 @atomic_read(i32*) #2

declare dso_local i32 @xpc_notify_senders_sn2(%struct.xpc_channel*, i32, i64) #2

declare dso_local i32 @xpc_clear_local_msgqueue_flags_sn2(%struct.xpc_channel*) #2

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #2

declare dso_local i32 @wake_up(i32*) #2

declare dso_local i32 @xpc_clear_remote_msgqueue_flags_sn2(%struct.xpc_channel*) #2

declare dso_local i32 @smp_wmb(...) #2

declare dso_local i32 @xpc_n_of_deliverable_payloads_sn2(%struct.xpc_channel*) #2

declare dso_local i32 @xpc_activate_kthreads(%struct.xpc_channel*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
