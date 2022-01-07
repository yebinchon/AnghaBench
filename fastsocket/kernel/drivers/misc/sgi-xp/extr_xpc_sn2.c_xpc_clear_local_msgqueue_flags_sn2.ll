; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_sn2.c_xpc_clear_local_msgqueue_flags_sn2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_sn2.c_xpc_clear_local_msgqueue_flags_sn2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_channel = type { i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.xpc_channel_sn2 }
%struct.xpc_channel_sn2 = type { i64, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.xpc_msg_sn2 = type { i32 }

@XPC_M_SN2_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xpc_channel*)* @xpc_clear_local_msgqueue_flags_sn2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xpc_clear_local_msgqueue_flags_sn2(%struct.xpc_channel* %0) #0 {
  %2 = alloca %struct.xpc_channel*, align 8
  %3 = alloca %struct.xpc_channel_sn2*, align 8
  %4 = alloca %struct.xpc_msg_sn2*, align 8
  %5 = alloca i64, align 8
  store %struct.xpc_channel* %0, %struct.xpc_channel** %2, align 8
  %6 = load %struct.xpc_channel*, %struct.xpc_channel** %2, align 8
  %7 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store %struct.xpc_channel_sn2* %8, %struct.xpc_channel_sn2** %3, align 8
  %9 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %3, align 8
  %10 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %5, align 8
  br label %13

13:                                               ; preds = %39, %1
  %14 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %3, align 8
  %15 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load %struct.xpc_channel*, %struct.xpc_channel** %2, align 8
  %19 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = srem i64 %17, %20
  %22 = load %struct.xpc_channel*, %struct.xpc_channel** %2, align 8
  %23 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = mul nsw i64 %21, %24
  %26 = add nsw i64 %16, %25
  %27 = inttoptr i64 %26 to %struct.xpc_msg_sn2*
  store %struct.xpc_msg_sn2* %27, %struct.xpc_msg_sn2** %4, align 8
  %28 = load %struct.xpc_msg_sn2*, %struct.xpc_msg_sn2** %4, align 8
  %29 = getelementptr inbounds %struct.xpc_msg_sn2, %struct.xpc_msg_sn2* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @XPC_M_SN2_READY, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i32 @DBUG_ON(i32 %35)
  %37 = load %struct.xpc_msg_sn2*, %struct.xpc_msg_sn2** %4, align 8
  %38 = getelementptr inbounds %struct.xpc_msg_sn2, %struct.xpc_msg_sn2* %37, i32 0, i32 0
  store i32 0, i32* %38, align 4
  br label %39

39:                                               ; preds = %13
  %40 = load i64, i64* %5, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %5, align 8
  %42 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %3, align 8
  %43 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp slt i64 %41, %45
  br i1 %46, label %13, label %47

47:                                               ; preds = %39
  ret void
}

declare dso_local i32 @DBUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
