; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_sn2.c_xpc_send_msgs_sn2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_sn2.c_xpc_send_msgs_sn2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_channel = type { i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.xpc_channel_sn2 }
%struct.xpc_channel_sn2 = type { %struct.TYPE_6__*, i64, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.xpc_msg_sn2 = type { i32 }

@XPC_M_SN2_READY = common dso_local global i32 0, align 4
@xpc_chan = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"local_GP->put changed to %lld, partid=%d, channel=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xpc_channel*, i32)* @xpc_send_msgs_sn2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xpc_send_msgs_sn2(%struct.xpc_channel* %0, i32 %1) #0 {
  %3 = alloca %struct.xpc_channel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xpc_channel_sn2*, align 8
  %6 = alloca %struct.xpc_msg_sn2*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.xpc_channel* %0, %struct.xpc_channel** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %10 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %9, i32 0, i32 4
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store %struct.xpc_channel_sn2* %11, %struct.xpc_channel_sn2** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %2, %74
  br label %15

15:                                               ; preds = %14, %46
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %5, align 8
  %18 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %16, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %49

23:                                               ; preds = %15
  %24 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %5, align 8
  %25 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %29 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = srem i32 %27, %30
  %32 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %33 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %31, %34
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %26, %36
  %38 = inttoptr i64 %37 to %struct.xpc_msg_sn2*
  store %struct.xpc_msg_sn2* %38, %struct.xpc_msg_sn2** %6, align 8
  %39 = load %struct.xpc_msg_sn2*, %struct.xpc_msg_sn2** %6, align 8
  %40 = getelementptr inbounds %struct.xpc_msg_sn2, %struct.xpc_msg_sn2* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @XPC_M_SN2_READY, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %23
  br label %49

46:                                               ; preds = %23
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %15

49:                                               ; preds = %45, %22
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  br label %85

54:                                               ; preds = %49
  %55 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %5, align 8
  %56 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %55, i32 0, i32 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @cmpxchg_rel(i32* %58, i32 %59, i32 %60)
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %54
  %65 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %5, align 8
  %66 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %4, align 4
  %71 = icmp slt i32 %69, %70
  %72 = zext i1 %71 to i32
  %73 = call i32 @DBUG_ON(i32 %72)
  br label %85

74:                                               ; preds = %54
  %75 = load i32, i32* @xpc_chan, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %78 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %81 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @dev_dbg(i32 %75, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %76, i32 %79, i32 %82)
  store i32 1, i32* %8, align 4
  %84 = load i32, i32* %7, align 4
  store i32 %84, i32* %4, align 4
  br label %14

85:                                               ; preds = %64, %53
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %90 = call i32 @xpc_send_chctl_msgrequest_sn2(%struct.xpc_channel* %89)
  br label %91

91:                                               ; preds = %88, %85
  ret void
}

declare dso_local i32 @cmpxchg_rel(i32*, i32, i32) #1

declare dso_local i32 @DBUG_ON(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @xpc_send_chctl_msgrequest_sn2(%struct.xpc_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
