; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_sn2.c_xpc_get_deliverable_payload_sn2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_sn2.c_xpc_get_deliverable_payload_sn2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_channel = type { i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.xpc_channel_sn2 }
%struct.xpc_channel_sn2 = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.xpc_msg_sn2 = type { i64, i32, i32 }

@XPC_C_DISCONNECTING = common dso_local global i32 0, align 4
@xpc_chan = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"w_local_GP.get changed to %lld, partid=%d, channel=%d\0A\00", align 1
@XPC_M_SN2_DONE = common dso_local global i32 0, align 4
@XPC_M_SN2_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.xpc_channel*)* @xpc_get_deliverable_payload_sn2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @xpc_get_deliverable_payload_sn2(%struct.xpc_channel* %0) #0 {
  %2 = alloca %struct.xpc_channel*, align 8
  %3 = alloca %struct.xpc_channel_sn2*, align 8
  %4 = alloca %struct.xpc_msg_sn2*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.xpc_channel* %0, %struct.xpc_channel** %2, align 8
  %7 = load %struct.xpc_channel*, %struct.xpc_channel** %2, align 8
  %8 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store %struct.xpc_channel_sn2* %9, %struct.xpc_channel_sn2** %3, align 8
  store i8* null, i8** %5, align 8
  br label %10

10:                                               ; preds = %85, %1
  %11 = load %struct.xpc_channel*, %struct.xpc_channel** %2, align 8
  %12 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @XPC_C_DISCONNECTING, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  br label %86

18:                                               ; preds = %10
  %19 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %3, align 8
  %20 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %6, align 8
  %23 = call i32 (...) @smp_rmb()
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %3, align 8
  %26 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %24, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  br label %86

31:                                               ; preds = %18
  %32 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %3, align 8
  %33 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* %6, align 8
  %37 = add nsw i64 %36, 1
  %38 = call i64 @cmpxchg(i64* %34, i64 %35, i64 %37)
  %39 = load i64, i64* %6, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %84

41:                                               ; preds = %31
  %42 = load i32, i32* @xpc_chan, align 4
  %43 = load i64, i64* %6, align 8
  %44 = add nsw i64 %43, 1
  %45 = load %struct.xpc_channel*, %struct.xpc_channel** %2, align 8
  %46 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.xpc_channel*, %struct.xpc_channel** %2, align 8
  %49 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @dev_dbg(i32 %42, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64 %44, i32 %47, i32 %50)
  %52 = load %struct.xpc_channel*, %struct.xpc_channel** %2, align 8
  %53 = load i64, i64* %6, align 8
  %54 = call %struct.xpc_msg_sn2* @xpc_pull_remote_msg_sn2(%struct.xpc_channel* %52, i64 %53)
  store %struct.xpc_msg_sn2* %54, %struct.xpc_msg_sn2** %4, align 8
  %55 = load %struct.xpc_msg_sn2*, %struct.xpc_msg_sn2** %4, align 8
  %56 = icmp ne %struct.xpc_msg_sn2* %55, null
  br i1 %56, label %57, label %83

57:                                               ; preds = %41
  %58 = load %struct.xpc_msg_sn2*, %struct.xpc_msg_sn2** %4, align 8
  %59 = getelementptr inbounds %struct.xpc_msg_sn2, %struct.xpc_msg_sn2* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %6, align 8
  %62 = icmp ne i64 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @DBUG_ON(i32 %63)
  %65 = load %struct.xpc_msg_sn2*, %struct.xpc_msg_sn2** %4, align 8
  %66 = getelementptr inbounds %struct.xpc_msg_sn2, %struct.xpc_msg_sn2* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @XPC_M_SN2_DONE, align 4
  %69 = and i32 %67, %68
  %70 = call i32 @DBUG_ON(i32 %69)
  %71 = load %struct.xpc_msg_sn2*, %struct.xpc_msg_sn2** %4, align 8
  %72 = getelementptr inbounds %struct.xpc_msg_sn2, %struct.xpc_msg_sn2* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @XPC_M_SN2_READY, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  %79 = call i32 @DBUG_ON(i32 %78)
  %80 = load %struct.xpc_msg_sn2*, %struct.xpc_msg_sn2** %4, align 8
  %81 = getelementptr inbounds %struct.xpc_msg_sn2, %struct.xpc_msg_sn2* %80, i32 0, i32 2
  %82 = bitcast i32* %81 to i8*
  store i8* %82, i8** %5, align 8
  br label %83

83:                                               ; preds = %57, %41
  br label %86

84:                                               ; preds = %31
  br label %85

85:                                               ; preds = %84
  br i1 true, label %10, label %86

86:                                               ; preds = %85, %83, %30, %17
  %87 = load i8*, i8** %5, align 8
  ret i8* %87
}

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i64 @cmpxchg(i64*, i64, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i32, i32) #1

declare dso_local %struct.xpc_msg_sn2* @xpc_pull_remote_msg_sn2(%struct.xpc_channel*, i64) #1

declare dso_local i32 @DBUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
