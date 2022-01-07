; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_main.c_xpc_kthread_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_main.c_xpc_kthread_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_partition = type { i32, %struct.xpc_channel* }
%struct.xpc_channel = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.xpc_channel*)*, i32 (%struct.xpc_partition*)* }

@xpc_partitions = common dso_local global %struct.xpc_partition* null, align 8
@xpc_arch_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@xpc_chan = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"kthread starting, partid=%d, channel=%d\0A\00", align 1
@XPC_C_DISCONNECTING = common dso_local global i32 0, align 4
@XPC_C_CONNECTEDCALLOUT = common dso_local global i32 0, align 4
@XPC_C_CONNECTEDCALLOUT_MADE = common dso_local global i32 0, align 4
@XPC_C_DISCONNECTINGCALLOUT = common dso_local global i32 0, align 4
@xpDisconnecting = common dso_local global i32 0, align 4
@XPC_C_DISCONNECTINGCALLOUT_MADE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"kthread exiting, partid=%d, channel=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @xpc_kthread_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xpc_kthread_start(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i64, align 8
  %5 = alloca %struct.xpc_partition*, align 8
  %6 = alloca %struct.xpc_channel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32 (%struct.xpc_channel*)*, align 8
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = call signext i16 @XPC_UNPACK_ARG1(i8* %10)
  store i16 %11, i16* %3, align 2
  %12 = load i8*, i8** %2, align 8
  %13 = call i64 @XPC_UNPACK_ARG2(i8* %12)
  store i64 %13, i64* %4, align 8
  %14 = load %struct.xpc_partition*, %struct.xpc_partition** @xpc_partitions, align 8
  %15 = load i16, i16* %3, align 2
  %16 = sext i16 %15 to i64
  %17 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %14, i64 %16
  store %struct.xpc_partition* %17, %struct.xpc_partition** %5, align 8
  %18 = load i32 (%struct.xpc_channel*)*, i32 (%struct.xpc_channel*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xpc_arch_ops, i32 0, i32 0), align 8
  store i32 (%struct.xpc_channel*)* %18, i32 (%struct.xpc_channel*)** %9, align 8
  %19 = load i32, i32* @xpc_chan, align 4
  %20 = load i16, i16* %3, align 2
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @dev_dbg(i32 %19, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i16 signext %20, i64 %21)
  %23 = load %struct.xpc_partition*, %struct.xpc_partition** %5, align 8
  %24 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %23, i32 0, i32 1
  %25 = load %struct.xpc_channel*, %struct.xpc_channel** %24, align 8
  %26 = load i64, i64* %4, align 8
  %27 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %25, i64 %26
  store %struct.xpc_channel* %27, %struct.xpc_channel** %6, align 8
  %28 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %29 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @XPC_C_DISCONNECTING, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %97, label %34

34:                                               ; preds = %1
  %35 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %36 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %35, i32 0, i32 2
  %37 = load i64, i64* %8, align 8
  %38 = call i32 @spin_lock_irqsave(i32* %36, i64 %37)
  %39 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %40 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @XPC_C_CONNECTEDCALLOUT, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %88, label %45

45:                                               ; preds = %34
  %46 = load i32, i32* @XPC_C_CONNECTEDCALLOUT, align 4
  %47 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %48 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %52 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %51, i32 0, i32 2
  %53 = load i64, i64* %8, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  %55 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %56 = call i32 @xpc_connected_callout(%struct.xpc_channel* %55)
  %57 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %58 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %57, i32 0, i32 2
  %59 = load i64, i64* %8, align 8
  %60 = call i32 @spin_lock_irqsave(i32* %58, i64 %59)
  %61 = load i32, i32* @XPC_C_CONNECTEDCALLOUT_MADE, align 4
  %62 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %63 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  %66 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %67 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %66, i32 0, i32 2
  %68 = load i64, i64* %8, align 8
  %69 = call i32 @spin_unlock_irqrestore(i32* %67, i64 %68)
  %70 = load i32 (%struct.xpc_channel*)*, i32 (%struct.xpc_channel*)** %9, align 8
  %71 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %72 = call i32 %70(%struct.xpc_channel* %71)
  %73 = sub nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %45
  %77 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %78 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @XPC_C_DISCONNECTING, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %76
  %84 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @xpc_activate_kthreads(%struct.xpc_channel* %84, i32 %85)
  br label %87

87:                                               ; preds = %83, %76, %45
  br label %93

88:                                               ; preds = %34
  %89 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %90 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %89, i32 0, i32 2
  %91 = load i64, i64* %8, align 8
  %92 = call i32 @spin_unlock_irqrestore(i32* %90, i64 %91)
  br label %93

93:                                               ; preds = %88, %87
  %94 = load %struct.xpc_partition*, %struct.xpc_partition** %5, align 8
  %95 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %96 = call i32 @xpc_kthread_waitmsgs(%struct.xpc_partition* %94, %struct.xpc_channel* %95)
  br label %97

97:                                               ; preds = %93, %1
  %98 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %99 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %98, i32 0, i32 2
  %100 = load i64, i64* %8, align 8
  %101 = call i32 @spin_lock_irqsave(i32* %99, i64 %100)
  %102 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %103 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @XPC_C_CONNECTEDCALLOUT_MADE, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %137

108:                                              ; preds = %97
  %109 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %110 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @XPC_C_DISCONNECTINGCALLOUT, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %137, label %115

115:                                              ; preds = %108
  %116 = load i32, i32* @XPC_C_DISCONNECTINGCALLOUT, align 4
  %117 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %118 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %116
  store i32 %120, i32* %118, align 4
  %121 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %122 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %121, i32 0, i32 2
  %123 = load i64, i64* %8, align 8
  %124 = call i32 @spin_unlock_irqrestore(i32* %122, i64 %123)
  %125 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %126 = load i32, i32* @xpDisconnecting, align 4
  %127 = call i32 @xpc_disconnect_callout(%struct.xpc_channel* %125, i32 %126)
  %128 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %129 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %128, i32 0, i32 2
  %130 = load i64, i64* %8, align 8
  %131 = call i32 @spin_lock_irqsave(i32* %129, i64 %130)
  %132 = load i32, i32* @XPC_C_DISCONNECTINGCALLOUT_MADE, align 4
  %133 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %134 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 4
  br label %137

137:                                              ; preds = %115, %108, %97
  %138 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %139 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %138, i32 0, i32 2
  %140 = load i64, i64* %8, align 8
  %141 = call i32 @spin_unlock_irqrestore(i32* %139, i64 %140)
  %142 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %143 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %142, i32 0, i32 1
  %144 = call i64 @atomic_dec_return(i32* %143)
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %155

146:                                              ; preds = %137
  %147 = load %struct.xpc_partition*, %struct.xpc_partition** %5, align 8
  %148 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %147, i32 0, i32 0
  %149 = call i64 @atomic_dec_return(i32* %148)
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %146
  %152 = load i32 (%struct.xpc_partition*)*, i32 (%struct.xpc_partition*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xpc_arch_ops, i32 0, i32 1), align 8
  %153 = load %struct.xpc_partition*, %struct.xpc_partition** %5, align 8
  %154 = call i32 %152(%struct.xpc_partition* %153)
  br label %155

155:                                              ; preds = %151, %146, %137
  %156 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %157 = call i32 @xpc_msgqueue_deref(%struct.xpc_channel* %156)
  %158 = load i32, i32* @xpc_chan, align 4
  %159 = load i16, i16* %3, align 2
  %160 = load i64, i64* %4, align 8
  %161 = call i32 @dev_dbg(i32 %158, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i16 signext %159, i64 %160)
  %162 = load %struct.xpc_partition*, %struct.xpc_partition** %5, align 8
  %163 = call i32 @xpc_part_deref(%struct.xpc_partition* %162)
  ret i32 0
}

declare dso_local signext i16 @XPC_UNPACK_ARG1(i8*) #1

declare dso_local i64 @XPC_UNPACK_ARG2(i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i16 signext, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @xpc_connected_callout(%struct.xpc_channel*) #1

declare dso_local i32 @xpc_activate_kthreads(%struct.xpc_channel*, i32) #1

declare dso_local i32 @xpc_kthread_waitmsgs(%struct.xpc_partition*, %struct.xpc_channel*) #1

declare dso_local i32 @xpc_disconnect_callout(%struct.xpc_channel*, i32) #1

declare dso_local i64 @atomic_dec_return(i32*) #1

declare dso_local i32 @xpc_msgqueue_deref(%struct.xpc_channel*) #1

declare dso_local i32 @xpc_part_deref(%struct.xpc_partition*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
