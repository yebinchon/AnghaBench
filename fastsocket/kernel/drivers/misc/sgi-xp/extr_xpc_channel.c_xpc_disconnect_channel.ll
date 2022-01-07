; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_channel.c_xpc_disconnect_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_channel.c_xpc_disconnect_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.xpc_channel*, i64*)* }
%struct.xpc_channel = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@XPC_C_CONNECTED = common dso_local global i32 0, align 4
@XPC_C_DISCONNECTING = common dso_local global i32 0, align 4
@XPC_C_DISCONNECTED = common dso_local global i32 0, align 4
@XPC_C_CONNECTING = common dso_local global i32 0, align 4
@xpc_chan = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"reason=%d, line=%d, partid=%d, channel=%d\0A\00", align 1
@XPC_C_CLOSEREQUEST = common dso_local global i32 0, align 4
@XPC_C_OPENREQUEST = common dso_local global i32 0, align 4
@XPC_C_OPENREPLY = common dso_local global i32 0, align 4
@XPC_C_ROPENREQUEST = common dso_local global i32 0, align 4
@XPC_C_ROPENREPLY = common dso_local global i32 0, align 4
@xpc_arch_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@XPC_C_WASCONNECTED = common dso_local global i32 0, align 4
@XPC_C_CONNECTEDCALLOUT_MADE = common dso_local global i32 0, align 4
@XPC_C_DISCONNECTINGCALLOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xpc_disconnect_channel(i32 %0, %struct.xpc_channel* %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xpc_channel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.xpc_channel* %1, %struct.xpc_channel** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64* %3, i64** %8, align 8
  %10 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %11 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @XPC_C_CONNECTED, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* %9, align 4
  %15 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %16 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %15, i32 0, i32 1
  %17 = call i32 @spin_is_locked(i32* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @DBUG_ON(i32 %20)
  %22 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %23 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @XPC_C_DISCONNECTING, align 4
  %26 = load i32, i32* @XPC_C_DISCONNECTED, align 4
  %27 = or i32 %25, %26
  %28 = and i32 %24, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %4
  br label %139

31:                                               ; preds = %4
  %32 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %33 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @XPC_C_CONNECTING, align 4
  %36 = load i32, i32* @XPC_C_CONNECTED, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %34, %37
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i32 @DBUG_ON(i32 %41)
  %43 = load i32, i32* @xpc_chan, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %47 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %46, i32 0, i32 7
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %50 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @dev_dbg(i32 %43, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45, i32 %48, i32 %51)
  %53 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @XPC_SET_REASON(%struct.xpc_channel* %53, i32 %54, i32 %55)
  %57 = load i32, i32* @XPC_C_CLOSEREQUEST, align 4
  %58 = load i32, i32* @XPC_C_DISCONNECTING, align 4
  %59 = or i32 %57, %58
  %60 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %61 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  %64 = load i32, i32* @XPC_C_OPENREQUEST, align 4
  %65 = load i32, i32* @XPC_C_OPENREPLY, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @XPC_C_ROPENREQUEST, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @XPC_C_ROPENREPLY, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @XPC_C_CONNECTING, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @XPC_C_CONNECTED, align 4
  %74 = or i32 %72, %73
  %75 = xor i32 %74, -1
  %76 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %77 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, %75
  store i32 %79, i32* %77, align 4
  %80 = load i32 (%struct.xpc_channel*, i64*)*, i32 (%struct.xpc_channel*, i64*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xpc_arch_ops, i32 0, i32 0), align 8
  %81 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %82 = load i64*, i64** %8, align 8
  %83 = call i32 %80(%struct.xpc_channel* %81, i64* %82)
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %31
  %87 = load i32, i32* @XPC_C_WASCONNECTED, align 4
  %88 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %89 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %86, %31
  %93 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %94 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %93, i32 0, i32 1
  %95 = load i64*, i64** %8, align 8
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @spin_unlock_irqrestore(i32* %94, i64 %96)
  %98 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %99 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %98, i32 0, i32 5
  %100 = call i64 @atomic_read(i32* %99)
  %101 = icmp sgt i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %92
  %103 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %104 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %103, i32 0, i32 4
  %105 = call i32 @wake_up_all(i32* %104)
  br label %124

106:                                              ; preds = %92
  %107 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %108 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @XPC_C_CONNECTEDCALLOUT_MADE, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %106
  %114 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %115 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @XPC_C_DISCONNECTINGCALLOUT, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %113
  %121 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %122 = call i32 @xpc_create_kthreads(%struct.xpc_channel* %121, i32 1, i32 1)
  br label %123

123:                                              ; preds = %120, %113, %106
  br label %124

124:                                              ; preds = %123, %102
  %125 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %126 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %125, i32 0, i32 3
  %127 = call i64 @atomic_read(i32* %126)
  %128 = icmp sgt i64 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %124
  %130 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %131 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %130, i32 0, i32 2
  %132 = call i32 @wake_up(i32* %131)
  br label %133

133:                                              ; preds = %129, %124
  %134 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %135 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %134, i32 0, i32 1
  %136 = load i64*, i64** %8, align 8
  %137 = load i64, i64* %136, align 8
  %138 = call i32 @spin_lock_irqsave(i32* %135, i64 %137)
  br label %139

139:                                              ; preds = %133, %30
  ret void
}

declare dso_local i32 @DBUG_ON(i32) #1

declare dso_local i32 @spin_is_locked(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @XPC_SET_REASON(%struct.xpc_channel*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @wake_up_all(i32*) #1

declare dso_local i32 @xpc_create_kthreads(%struct.xpc_channel*, i32, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
