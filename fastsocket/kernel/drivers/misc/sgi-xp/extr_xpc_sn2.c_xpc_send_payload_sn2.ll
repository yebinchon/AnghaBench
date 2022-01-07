; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_sn2.c_xpc_send_payload_sn2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_sn2.c_xpc_send_payload_sn2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_msg_sn2 = type { i64, i32, i32 }
%struct.xpc_notify_sn2 = type { i32, i8*, i32* }
%struct.xpc_channel = type { i64, i32, i32, i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.xpc_channel_sn2 }
%struct.xpc_channel_sn2 = type { %struct.TYPE_4__*, %struct.xpc_notify_sn2* }
%struct.TYPE_4__ = type { i64 }

@xpSuccess = common dso_local global i32 0, align 4
@XPC_N_CALL = common dso_local global i32 0, align 4
@xpPayloadTooBig = common dso_local global i32 0, align 4
@XPC_C_DISCONNECTING = common dso_local global i32 0, align 4
@XPC_C_CONNECTED = common dso_local global i32 0, align 4
@xpNotConnected = common dso_local global i32 0, align 4
@XPC_M_SN2_INTERRUPT = common dso_local global i32 0, align 4
@XPC_M_SN2_READY = common dso_local global i32 0, align 4
@msg = common dso_local global %struct.xpc_msg_sn2* null, align 8
@notify = common dso_local global %struct.xpc_notify_sn2* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xpc_channel*, i32, i8*, i32, i32, i32*, i8*)* @xpc_send_payload_sn2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xpc_send_payload_sn2(%struct.xpc_channel* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.xpc_channel*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.xpc_channel_sn2*, align 8
  %18 = alloca %struct.xpc_msg_sn2*, align 8
  %19 = alloca %struct.xpc_notify_sn2*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store %struct.xpc_channel* %0, %struct.xpc_channel** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i8* %6, i8** %15, align 8
  %22 = load i32, i32* @xpSuccess, align 4
  store i32 %22, i32* %16, align 4
  %23 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %24 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %23, i32 0, i32 5
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store %struct.xpc_channel_sn2* %25, %struct.xpc_channel_sn2** %17, align 8
  %26 = load %struct.xpc_msg_sn2*, %struct.xpc_msg_sn2** %18, align 8
  store %struct.xpc_msg_sn2* %26, %struct.xpc_msg_sn2** %18, align 8
  %27 = load %struct.xpc_notify_sn2*, %struct.xpc_notify_sn2** %19, align 8
  store %struct.xpc_notify_sn2* %27, %struct.xpc_notify_sn2** %19, align 8
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* @XPC_N_CALL, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %7
  %32 = load i32*, i32** %14, align 8
  %33 = icmp eq i32* %32, null
  br label %34

34:                                               ; preds = %31, %7
  %35 = phi i1 [ false, %7 ], [ %33, %31 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 @DBUG_ON(i32 %36)
  %38 = load i32, i32* %12, align 4
  %39 = call i64 @XPC_MSG_SIZE(i32 %38)
  %40 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %41 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %39, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = load i32, i32* @xpPayloadTooBig, align 4
  store i32 %45, i32* %8, align 4
  br label %160

46:                                               ; preds = %34
  %47 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %48 = call i32 @xpc_msgqueue_ref(%struct.xpc_channel* %47)
  %49 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %50 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @XPC_C_DISCONNECTING, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %46
  %56 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %57 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %16, align 4
  br label %156

59:                                               ; preds = %46
  %60 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %61 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @XPC_C_CONNECTED, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %59
  %67 = load i32, i32* @xpNotConnected, align 4
  store i32 %67, i32* %16, align 4
  br label %156

68:                                               ; preds = %59
  %69 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @xpc_allocate_msg_sn2(%struct.xpc_channel* %69, i32 %70, %struct.xpc_msg_sn2** %18)
  store i32 %71, i32* %16, align 4
  %72 = load i32, i32* %16, align 4
  %73 = load i32, i32* @xpSuccess, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %156

76:                                               ; preds = %68
  %77 = load %struct.xpc_msg_sn2*, %struct.xpc_msg_sn2** %18, align 8
  %78 = getelementptr inbounds %struct.xpc_msg_sn2, %struct.xpc_msg_sn2* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %20, align 8
  %80 = load i32, i32* %13, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %131

82:                                               ; preds = %76
  %83 = load i32, i32* @XPC_M_SN2_INTERRUPT, align 4
  %84 = load %struct.xpc_msg_sn2*, %struct.xpc_msg_sn2** %18, align 8
  %85 = getelementptr inbounds %struct.xpc_msg_sn2, %struct.xpc_msg_sn2* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 8
  %88 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %89 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %88, i32 0, i32 4
  %90 = call i32 @atomic_inc(i32* %89)
  %91 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %17, align 8
  %92 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %91, i32 0, i32 1
  %93 = load %struct.xpc_notify_sn2*, %struct.xpc_notify_sn2** %92, align 8
  %94 = load i64, i64* %20, align 8
  %95 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %96 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = urem i64 %94, %97
  %99 = getelementptr inbounds %struct.xpc_notify_sn2, %struct.xpc_notify_sn2* %93, i64 %98
  store %struct.xpc_notify_sn2* %99, %struct.xpc_notify_sn2** %19, align 8
  %100 = load i32*, i32** %14, align 8
  %101 = load %struct.xpc_notify_sn2*, %struct.xpc_notify_sn2** %19, align 8
  %102 = getelementptr inbounds %struct.xpc_notify_sn2, %struct.xpc_notify_sn2* %101, i32 0, i32 2
  store i32* %100, i32** %102, align 8
  %103 = load i8*, i8** %15, align 8
  %104 = load %struct.xpc_notify_sn2*, %struct.xpc_notify_sn2** %19, align 8
  %105 = getelementptr inbounds %struct.xpc_notify_sn2, %struct.xpc_notify_sn2* %104, i32 0, i32 1
  store i8* %103, i8** %105, align 8
  %106 = load i32, i32* %13, align 4
  %107 = load %struct.xpc_notify_sn2*, %struct.xpc_notify_sn2** %19, align 8
  %108 = getelementptr inbounds %struct.xpc_notify_sn2, %struct.xpc_notify_sn2* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %110 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @XPC_C_DISCONNECTING, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %130

115:                                              ; preds = %82
  %116 = load %struct.xpc_notify_sn2*, %struct.xpc_notify_sn2** %19, align 8
  %117 = getelementptr inbounds %struct.xpc_notify_sn2, %struct.xpc_notify_sn2* %116, i32 0, i32 0
  %118 = load i32, i32* %13, align 4
  %119 = call i32 @cmpxchg(i32* %117, i32 %118, i32 0)
  %120 = load i32, i32* %13, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %129

122:                                              ; preds = %115
  %123 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %124 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %123, i32 0, i32 4
  %125 = call i32 @atomic_dec(i32* %124)
  %126 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %127 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %16, align 4
  br label %129

129:                                              ; preds = %122, %115
  br label %156

130:                                              ; preds = %82
  br label %131

131:                                              ; preds = %130, %76
  %132 = load %struct.xpc_msg_sn2*, %struct.xpc_msg_sn2** %18, align 8
  %133 = getelementptr inbounds %struct.xpc_msg_sn2, %struct.xpc_msg_sn2* %132, i32 0, i32 2
  %134 = load i8*, i8** %11, align 8
  %135 = load i32, i32* %12, align 4
  %136 = call i32 @memcpy(i32* %133, i8* %134, i32 %135)
  %137 = load i32, i32* @XPC_M_SN2_READY, align 4
  %138 = load %struct.xpc_msg_sn2*, %struct.xpc_msg_sn2** %18, align 8
  %139 = getelementptr inbounds %struct.xpc_msg_sn2, %struct.xpc_msg_sn2* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = or i32 %140, %137
  store i32 %141, i32* %139, align 8
  %142 = call i32 (...) @smp_mb()
  %143 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %17, align 8
  %144 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %143, i32 0, i32 0
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  store i64 %147, i64* %21, align 8
  %148 = load i64, i64* %21, align 8
  %149 = load i64, i64* %20, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %155

151:                                              ; preds = %131
  %152 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %153 = load i64, i64* %21, align 8
  %154 = call i32 @xpc_send_msgs_sn2(%struct.xpc_channel* %152, i64 %153)
  br label %155

155:                                              ; preds = %151, %131
  br label %156

156:                                              ; preds = %155, %129, %75, %66, %55
  %157 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %158 = call i32 @xpc_msgqueue_deref(%struct.xpc_channel* %157)
  %159 = load i32, i32* %16, align 4
  store i32 %159, i32* %8, align 4
  br label %160

160:                                              ; preds = %156, %44
  %161 = load i32, i32* %8, align 4
  ret i32 %161
}

declare dso_local i32 @DBUG_ON(i32) #1

declare dso_local i64 @XPC_MSG_SIZE(i32) #1

declare dso_local i32 @xpc_msgqueue_ref(%struct.xpc_channel*) #1

declare dso_local i32 @xpc_allocate_msg_sn2(%struct.xpc_channel*, i32, %struct.xpc_msg_sn2**) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @cmpxchg(i32*, i32, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @xpc_send_msgs_sn2(%struct.xpc_channel*, i64) #1

declare dso_local i32 @xpc_msgqueue_deref(%struct.xpc_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
