; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_sn2.c_xpc_clear_remote_msgqueue_flags_sn2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_sn2.c_xpc_clear_remote_msgqueue_flags_sn2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_channel = type { i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.xpc_channel_sn2 }
%struct.xpc_channel_sn2 = type { i64, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.xpc_msg_sn2 = type { i32, i64 }

@XPC_M_SN2_READY = common dso_local global i32 0, align 4
@XPC_M_SN2_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xpc_channel*)* @xpc_clear_remote_msgqueue_flags_sn2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xpc_clear_remote_msgqueue_flags_sn2(%struct.xpc_channel* %0) #0 {
  %2 = alloca %struct.xpc_channel*, align 8
  %3 = alloca %struct.xpc_channel_sn2*, align 8
  %4 = alloca %struct.xpc_msg_sn2*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.xpc_channel* %0, %struct.xpc_channel** %2, align 8
  %7 = load %struct.xpc_channel*, %struct.xpc_channel** %2, align 8
  %8 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store %struct.xpc_channel_sn2* %9, %struct.xpc_channel_sn2** %3, align 8
  %10 = load %struct.xpc_channel*, %struct.xpc_channel** %2, align 8
  %11 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %6, align 8
  %13 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %3, align 8
  %14 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %6, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %77

20:                                               ; preds = %1
  %21 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %3, align 8
  %22 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i64 @max(i32 %24, i64 %25)
  store i64 %26, i64* %5, align 8
  br label %27

27:                                               ; preds = %69, %20
  %28 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %3, align 8
  %29 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* %6, align 8
  %33 = srem i64 %31, %32
  %34 = load %struct.xpc_channel*, %struct.xpc_channel** %2, align 8
  %35 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = mul nsw i64 %33, %36
  %38 = add nsw i64 %30, %37
  %39 = inttoptr i64 %38 to %struct.xpc_msg_sn2*
  store %struct.xpc_msg_sn2* %39, %struct.xpc_msg_sn2** %4, align 8
  %40 = load %struct.xpc_msg_sn2*, %struct.xpc_msg_sn2** %4, align 8
  %41 = getelementptr inbounds %struct.xpc_msg_sn2, %struct.xpc_msg_sn2* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @XPC_M_SN2_READY, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i32 @DBUG_ON(i32 %47)
  %49 = load %struct.xpc_msg_sn2*, %struct.xpc_msg_sn2** %4, align 8
  %50 = getelementptr inbounds %struct.xpc_msg_sn2, %struct.xpc_msg_sn2* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @XPC_M_SN2_DONE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = call i32 @DBUG_ON(i32 %56)
  %58 = load %struct.xpc_msg_sn2*, %struct.xpc_msg_sn2** %4, align 8
  %59 = getelementptr inbounds %struct.xpc_msg_sn2, %struct.xpc_msg_sn2* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %5, align 8
  %62 = load i64, i64* %6, align 8
  %63 = sub nsw i64 %61, %62
  %64 = icmp ne i64 %60, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @DBUG_ON(i32 %65)
  %67 = load %struct.xpc_msg_sn2*, %struct.xpc_msg_sn2** %4, align 8
  %68 = getelementptr inbounds %struct.xpc_msg_sn2, %struct.xpc_msg_sn2* %67, i32 0, i32 0
  store i32 0, i32* %68, align 8
  br label %69

69:                                               ; preds = %27
  %70 = load i64, i64* %5, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %5, align 8
  %72 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %3, align 8
  %73 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp slt i64 %71, %75
  br i1 %76, label %27, label %77

77:                                               ; preds = %19, %69
  ret void
}

declare dso_local i64 @max(i32, i64) #1

declare dso_local i32 @DBUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
