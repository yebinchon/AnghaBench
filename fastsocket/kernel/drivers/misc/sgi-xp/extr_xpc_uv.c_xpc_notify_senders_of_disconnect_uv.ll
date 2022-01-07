; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_uv.c_xpc_notify_senders_of_disconnect_uv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_uv.c_xpc_notify_senders_of_disconnect_uv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_channel = type { i32, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.xpc_send_msg_slot_uv* }
%struct.xpc_send_msg_slot_uv = type { i32* }

@XPC_C_DISCONNECTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xpc_channel*)* @xpc_notify_senders_of_disconnect_uv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xpc_notify_senders_of_disconnect_uv(%struct.xpc_channel* %0) #0 {
  %2 = alloca %struct.xpc_channel*, align 8
  %3 = alloca %struct.xpc_send_msg_slot_uv*, align 8
  %4 = alloca i32, align 4
  store %struct.xpc_channel* %0, %struct.xpc_channel** %2, align 8
  %5 = load %struct.xpc_channel*, %struct.xpc_channel** %2, align 8
  %6 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @XPC_C_DISCONNECTING, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @DBUG_ON(i32 %12)
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %47, %1
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.xpc_channel*, %struct.xpc_channel** %2, align 8
  %17 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %50

20:                                               ; preds = %14
  %21 = load %struct.xpc_channel*, %struct.xpc_channel** %2, align 8
  %22 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %21, i32 0, i32 4
  %23 = call i64 @atomic_read(i32* %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %50

26:                                               ; preds = %20
  %27 = load %struct.xpc_channel*, %struct.xpc_channel** %2, align 8
  %28 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load %struct.xpc_send_msg_slot_uv*, %struct.xpc_send_msg_slot_uv** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.xpc_send_msg_slot_uv, %struct.xpc_send_msg_slot_uv* %31, i64 %33
  store %struct.xpc_send_msg_slot_uv* %34, %struct.xpc_send_msg_slot_uv** %3, align 8
  %35 = load %struct.xpc_send_msg_slot_uv*, %struct.xpc_send_msg_slot_uv** %3, align 8
  %36 = getelementptr inbounds %struct.xpc_send_msg_slot_uv, %struct.xpc_send_msg_slot_uv* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %26
  %40 = load %struct.xpc_channel*, %struct.xpc_channel** %2, align 8
  %41 = load %struct.xpc_send_msg_slot_uv*, %struct.xpc_send_msg_slot_uv** %3, align 8
  %42 = load %struct.xpc_channel*, %struct.xpc_channel** %2, align 8
  %43 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @xpc_notify_sender_uv(%struct.xpc_channel* %40, %struct.xpc_send_msg_slot_uv* %41, i32 %44)
  br label %46

46:                                               ; preds = %39, %26
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %14

50:                                               ; preds = %25, %14
  ret void
}

declare dso_local i32 @DBUG_ON(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @xpc_notify_sender_uv(%struct.xpc_channel*, %struct.xpc_send_msg_slot_uv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
