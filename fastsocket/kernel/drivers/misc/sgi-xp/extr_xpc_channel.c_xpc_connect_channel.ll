; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_channel.c_xpc_connect_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_channel.c_xpc_connect_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_registration = type { i64, i32, i32, i32, i32*, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 (%struct.xpc_channel*, i64*)* }
%struct.xpc_channel = type { i64, i32, i32, i64, i64, i32, i32, i32, i32*, i32, i32, i32, i32, i32 }

@xpc_registrations = common dso_local global %struct.xpc_registration* null, align 8
@xpRetry = common dso_local global i32 0, align 4
@xpUnregistered = common dso_local global i32 0, align 4
@XPC_C_CONNECTED = common dso_local global i32 0, align 4
@XPC_C_OPENREQUEST = common dso_local global i32 0, align 4
@XPC_C_DISCONNECTING = common dso_local global i32 0, align 4
@XPC_C_ROPENREQUEST = common dso_local global i32 0, align 4
@xpUnequalMsgSizes = common dso_local global i32 0, align 4
@XPC_C_DISCONNECTED = common dso_local global i32 0, align 4
@xpc_partitions = common dso_local global %struct.TYPE_3__* null, align 8
@XPC_C_CONNECTING = common dso_local global i32 0, align 4
@xpc_arch_ops = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@xpSuccess = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xpc_channel*)* @xpc_connect_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xpc_connect_channel(%struct.xpc_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xpc_channel*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.xpc_registration*, align 8
  store %struct.xpc_channel* %0, %struct.xpc_channel** %3, align 8
  %6 = load %struct.xpc_registration*, %struct.xpc_registration** @xpc_registrations, align 8
  %7 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %8 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds %struct.xpc_registration, %struct.xpc_registration* %6, i64 %9
  store %struct.xpc_registration* %10, %struct.xpc_registration** %5, align 8
  %11 = load %struct.xpc_registration*, %struct.xpc_registration** %5, align 8
  %12 = getelementptr inbounds %struct.xpc_registration, %struct.xpc_registration* %11, i32 0, i32 1
  %13 = call i64 @mutex_trylock(i32* %12)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @xpRetry, align 4
  store i32 %16, i32* %2, align 4
  br label %181

17:                                               ; preds = %1
  %18 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %19 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @XPC_CHANNEL_REGISTERED(i64 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %17
  %24 = load %struct.xpc_registration*, %struct.xpc_registration** %5, align 8
  %25 = getelementptr inbounds %struct.xpc_registration, %struct.xpc_registration* %24, i32 0, i32 1
  %26 = call i32 @mutex_unlock(i32* %25)
  %27 = load i32, i32* @xpUnregistered, align 4
  store i32 %27, i32* %2, align 4
  br label %181

28:                                               ; preds = %17
  %29 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %30 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %29, i32 0, i32 5
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %34 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @XPC_C_CONNECTED, align 4
  %37 = and i32 %35, %36
  %38 = call i32 @DBUG_ON(i32 %37)
  %39 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %40 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @XPC_C_OPENREQUEST, align 4
  %43 = and i32 %41, %42
  %44 = call i32 @DBUG_ON(i32 %43)
  %45 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %46 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @XPC_C_DISCONNECTING, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %28
  %52 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %53 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %52, i32 0, i32 5
  %54 = load i64, i64* %4, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* %53, i64 %54)
  %56 = load %struct.xpc_registration*, %struct.xpc_registration** %5, align 8
  %57 = getelementptr inbounds %struct.xpc_registration, %struct.xpc_registration* %56, i32 0, i32 1
  %58 = call i32 @mutex_unlock(i32* %57)
  %59 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %60 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %2, align 4
  br label %181

62:                                               ; preds = %28
  %63 = load %struct.xpc_registration*, %struct.xpc_registration** %5, align 8
  %64 = getelementptr inbounds %struct.xpc_registration, %struct.xpc_registration* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %67 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %66, i32 0, i32 13
  store i32 %65, i32* %67, align 8
  %68 = load %struct.xpc_registration*, %struct.xpc_registration** %5, align 8
  %69 = getelementptr inbounds %struct.xpc_registration, %struct.xpc_registration* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %72 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %71, i32 0, i32 12
  store i32 %70, i32* %72, align 4
  %73 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %74 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %73, i32 0, i32 11
  %75 = call i64 @atomic_read(i32* %74)
  %76 = icmp ne i64 %75, 0
  %77 = zext i1 %76 to i32
  %78 = call i32 @DBUG_ON(i32 %77)
  %79 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %80 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %79, i32 0, i32 10
  %81 = call i64 @atomic_read(i32* %80)
  %82 = icmp ne i64 %81, 0
  %83 = zext i1 %82 to i32
  %84 = call i32 @DBUG_ON(i32 %83)
  %85 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %86 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %85, i32 0, i32 9
  %87 = call i64 @atomic_read(i32* %86)
  %88 = icmp ne i64 %87, 0
  %89 = zext i1 %88 to i32
  %90 = call i32 @DBUG_ON(i32 %89)
  %91 = load %struct.xpc_registration*, %struct.xpc_registration** %5, align 8
  %92 = getelementptr inbounds %struct.xpc_registration, %struct.xpc_registration* %91, i32 0, i32 4
  %93 = load i32*, i32** %92, align 8
  %94 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %95 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %94, i32 0, i32 8
  store i32* %93, i32** %95, align 8
  %96 = load %struct.xpc_registration*, %struct.xpc_registration** %5, align 8
  %97 = getelementptr inbounds %struct.xpc_registration, %struct.xpc_registration* %96, i32 0, i32 4
  %98 = load i32*, i32** %97, align 8
  %99 = icmp eq i32* %98, null
  %100 = zext i1 %99 to i32
  %101 = call i32 @DBUG_ON(i32 %100)
  %102 = load %struct.xpc_registration*, %struct.xpc_registration** %5, align 8
  %103 = getelementptr inbounds %struct.xpc_registration, %struct.xpc_registration* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %106 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %105, i32 0, i32 7
  store i32 %104, i32* %106, align 8
  %107 = load %struct.xpc_registration*, %struct.xpc_registration** %5, align 8
  %108 = getelementptr inbounds %struct.xpc_registration, %struct.xpc_registration* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %111 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %110, i32 0, i32 6
  store i32 %109, i32* %111, align 4
  %112 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %113 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @XPC_C_ROPENREQUEST, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %139

118:                                              ; preds = %62
  %119 = load %struct.xpc_registration*, %struct.xpc_registration** %5, align 8
  %120 = getelementptr inbounds %struct.xpc_registration, %struct.xpc_registration* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %123 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %121, %124
  br i1 %125, label %126, label %138

126:                                              ; preds = %118
  %127 = load %struct.xpc_registration*, %struct.xpc_registration** %5, align 8
  %128 = getelementptr inbounds %struct.xpc_registration, %struct.xpc_registration* %127, i32 0, i32 1
  %129 = call i32 @mutex_unlock(i32* %128)
  %130 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %131 = load i32, i32* @xpUnequalMsgSizes, align 4
  %132 = call i32 @XPC_DISCONNECT_CHANNEL(%struct.xpc_channel* %130, i32 %131, i64* %4)
  %133 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %134 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %133, i32 0, i32 5
  %135 = load i64, i64* %4, align 8
  %136 = call i32 @spin_unlock_irqrestore(i32* %134, i64 %135)
  %137 = load i32, i32* @xpUnequalMsgSizes, align 4
  store i32 %137, i32* %2, align 4
  br label %181

138:                                              ; preds = %118
  br label %160

139:                                              ; preds = %62
  %140 = load %struct.xpc_registration*, %struct.xpc_registration** %5, align 8
  %141 = getelementptr inbounds %struct.xpc_registration, %struct.xpc_registration* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %144 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %143, i32 0, i32 3
  store i64 %142, i64* %144, align 8
  %145 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %146 = call i32 @XPC_SET_REASON(%struct.xpc_channel* %145, i32 0, i32 0)
  %147 = load i32, i32* @XPC_C_DISCONNECTED, align 4
  %148 = xor i32 %147, -1
  %149 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %150 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = and i32 %151, %148
  store i32 %152, i32* %150, align 8
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** @xpc_partitions, align 8
  %154 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %155 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %154, i32 0, i32 4
  %156 = load i64, i64* %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 0
  %159 = call i32 @atomic_inc(i32* %158)
  br label %160

160:                                              ; preds = %139, %138
  %161 = load %struct.xpc_registration*, %struct.xpc_registration** %5, align 8
  %162 = getelementptr inbounds %struct.xpc_registration, %struct.xpc_registration* %161, i32 0, i32 1
  %163 = call i32 @mutex_unlock(i32* %162)
  %164 = load i32, i32* @XPC_C_OPENREQUEST, align 4
  %165 = load i32, i32* @XPC_C_CONNECTING, align 4
  %166 = or i32 %164, %165
  %167 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %168 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = or i32 %169, %166
  store i32 %170, i32* %168, align 8
  %171 = load i32 (%struct.xpc_channel*, i64*)*, i32 (%struct.xpc_channel*, i64*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @xpc_arch_ops, i32 0, i32 0), align 8
  %172 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %173 = call i32 %171(%struct.xpc_channel* %172, i64* %4)
  %174 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %175 = call i32 @xpc_process_connect(%struct.xpc_channel* %174, i64* %4)
  %176 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %177 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %176, i32 0, i32 5
  %178 = load i64, i64* %4, align 8
  %179 = call i32 @spin_unlock_irqrestore(i32* %177, i64 %178)
  %180 = load i32, i32* @xpSuccess, align 4
  store i32 %180, i32* %2, align 4
  br label %181

181:                                              ; preds = %160, %126, %51, %23, %15
  %182 = load i32, i32* %2, align 4
  ret i32 %182
}

declare dso_local i64 @mutex_trylock(i32*) #1

declare dso_local i32 @XPC_CHANNEL_REGISTERED(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @DBUG_ON(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @XPC_DISCONNECT_CHANNEL(%struct.xpc_channel*, i32, i64*) #1

declare dso_local i32 @XPC_SET_REASON(%struct.xpc_channel*, i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @xpc_process_connect(%struct.xpc_channel*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
