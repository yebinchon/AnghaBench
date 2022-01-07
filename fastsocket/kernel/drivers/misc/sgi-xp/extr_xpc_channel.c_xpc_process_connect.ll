; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_channel.c_xpc_process_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_channel.c_xpc_process_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.xpc_channel*)*, i32 (%struct.xpc_channel*, i64*)*, i32 (%struct.xpc_channel*, i64*)* }
%struct.xpc_channel = type { i32, i32, i32, i32 }

@XPC_C_OPENREQUEST = common dso_local global i32 0, align 4
@XPC_C_ROPENREQUEST = common dso_local global i32 0, align 4
@XPC_C_CONNECTING = common dso_local global i32 0, align 4
@XPC_C_SETUP = common dso_local global i32 0, align 4
@xpc_arch_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@xpSuccess = common dso_local global i32 0, align 4
@XPC_C_DISCONNECTING = common dso_local global i32 0, align 4
@XPC_C_OPENREPLY = common dso_local global i32 0, align 4
@XPC_C_ROPENREPLY = common dso_local global i32 0, align 4
@XPC_C_OPENCOMPLETE = common dso_local global i32 0, align 4
@XPC_C_CONNECTED = common dso_local global i32 0, align 4
@XPC_C_ROPENCOMPLETE = common dso_local global i32 0, align 4
@xpc_chan = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"channel %d to partition %d connected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xpc_channel*, i64*)* @xpc_process_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xpc_process_connect(%struct.xpc_channel* %0, i64* %1) #0 {
  %3 = alloca %struct.xpc_channel*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  store %struct.xpc_channel* %0, %struct.xpc_channel** %3, align 8
  store i64* %1, i64** %4, align 8
  %6 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %7 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %6, i32 0, i32 3
  %8 = call i32 @spin_is_locked(i32* %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @DBUG_ON(i32 %11)
  %13 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %14 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @XPC_C_OPENREQUEST, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %21 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @XPC_C_ROPENREQUEST, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %19, %2
  br label %146

27:                                               ; preds = %19
  %28 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %29 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @XPC_C_CONNECTING, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i32 @DBUG_ON(i32 %35)
  %37 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %38 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @XPC_C_SETUP, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %80, label %43

43:                                               ; preds = %27
  %44 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %45 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %44, i32 0, i32 3
  %46 = load i64*, i64** %4, align 8
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %47)
  %49 = load i32 (%struct.xpc_channel*)*, i32 (%struct.xpc_channel*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xpc_arch_ops, i32 0, i32 0), align 8
  %50 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %51 = call i32 %49(%struct.xpc_channel* %50)
  store i32 %51, i32* %5, align 4
  %52 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %53 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %52, i32 0, i32 3
  %54 = load i64*, i64** %4, align 8
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @spin_lock_irqsave(i32* %53, i64 %55)
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @xpSuccess, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %43
  %61 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %62 = load i32, i32* %5, align 4
  %63 = load i64*, i64** %4, align 8
  %64 = call i32 @XPC_DISCONNECT_CHANNEL(%struct.xpc_channel* %61, i32 %62, i64* %63)
  br label %71

65:                                               ; preds = %43
  %66 = load i32, i32* @XPC_C_SETUP, align 4
  %67 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %68 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %65, %60
  %72 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %73 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @XPC_C_DISCONNECTING, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  br label %146

79:                                               ; preds = %71
  br label %80

80:                                               ; preds = %79, %27
  %81 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %82 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @XPC_C_OPENREPLY, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %97, label %87

87:                                               ; preds = %80
  %88 = load i32, i32* @XPC_C_OPENREPLY, align 4
  %89 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %90 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 4
  %93 = load i32 (%struct.xpc_channel*, i64*)*, i32 (%struct.xpc_channel*, i64*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xpc_arch_ops, i32 0, i32 2), align 8
  %94 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %95 = load i64*, i64** %4, align 8
  %96 = call i32 %93(%struct.xpc_channel* %94, i64* %95)
  br label %97

97:                                               ; preds = %87, %80
  %98 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %99 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @XPC_C_ROPENREPLY, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %97
  br label %146

105:                                              ; preds = %97
  %106 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %107 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @XPC_C_OPENCOMPLETE, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %124, label %112

112:                                              ; preds = %105
  %113 = load i32, i32* @XPC_C_OPENCOMPLETE, align 4
  %114 = load i32, i32* @XPC_C_CONNECTED, align 4
  %115 = or i32 %113, %114
  %116 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %117 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 4
  %120 = load i32 (%struct.xpc_channel*, i64*)*, i32 (%struct.xpc_channel*, i64*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xpc_arch_ops, i32 0, i32 1), align 8
  %121 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %122 = load i64*, i64** %4, align 8
  %123 = call i32 %120(%struct.xpc_channel* %121, i64* %122)
  br label %124

124:                                              ; preds = %112, %105
  %125 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %126 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @XPC_C_ROPENCOMPLETE, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %124
  br label %146

132:                                              ; preds = %124
  %133 = load i32, i32* @xpc_chan, align 4
  %134 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %135 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %138 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @dev_info(i32 %133, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %136, i32 %139)
  %141 = load i32, i32* @XPC_C_CONNECTED, align 4
  %142 = load i32, i32* @XPC_C_SETUP, align 4
  %143 = or i32 %141, %142
  %144 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %145 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 4
  br label %146

146:                                              ; preds = %132, %131, %104, %78, %26
  ret void
}

declare dso_local i32 @DBUG_ON(i32) #1

declare dso_local i32 @spin_is_locked(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @XPC_DISCONNECT_CHANNEL(%struct.xpc_channel*, i32, i64*) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
