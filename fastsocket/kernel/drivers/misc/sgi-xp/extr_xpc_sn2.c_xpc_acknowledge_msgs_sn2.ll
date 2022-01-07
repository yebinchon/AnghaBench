; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_sn2.c_xpc_acknowledge_msgs_sn2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_sn2.c_xpc_acknowledge_msgs_sn2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_channel = type { i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.xpc_channel_sn2 }
%struct.xpc_channel_sn2 = type { %struct.TYPE_6__*, i64, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.xpc_msg_sn2 = type { i32 }

@XPC_M_SN2_DONE = common dso_local global i32 0, align 4
@xpc_chan = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"local_GP->get changed to %lld, partid=%d, channel=%d\0A\00", align 1
@XPC_M_SN2_INTERRUPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xpc_channel*, i32, i32)* @xpc_acknowledge_msgs_sn2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xpc_acknowledge_msgs_sn2(%struct.xpc_channel* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.xpc_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.xpc_channel_sn2*, align 8
  %8 = alloca %struct.xpc_msg_sn2*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.xpc_channel* %0, %struct.xpc_channel** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.xpc_channel*, %struct.xpc_channel** %4, align 8
  %12 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store %struct.xpc_channel_sn2* %13, %struct.xpc_channel_sn2** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %3, %81
  br label %17

17:                                               ; preds = %16, %48
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %7, align 8
  %20 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %18, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %56

25:                                               ; preds = %17
  %26 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %7, align 8
  %27 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.xpc_channel*, %struct.xpc_channel** %4, align 8
  %31 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = srem i32 %29, %32
  %34 = load %struct.xpc_channel*, %struct.xpc_channel** %4, align 8
  %35 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %33, %36
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %28, %38
  %40 = inttoptr i64 %39 to %struct.xpc_msg_sn2*
  store %struct.xpc_msg_sn2* %40, %struct.xpc_msg_sn2** %8, align 8
  %41 = load %struct.xpc_msg_sn2*, %struct.xpc_msg_sn2** %8, align 8
  %42 = getelementptr inbounds %struct.xpc_msg_sn2, %struct.xpc_msg_sn2* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @XPC_M_SN2_DONE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %25
  br label %56

48:                                               ; preds = %25
  %49 = load %struct.xpc_msg_sn2*, %struct.xpc_msg_sn2** %8, align 8
  %50 = getelementptr inbounds %struct.xpc_msg_sn2, %struct.xpc_msg_sn2* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %6, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %9, align 4
  br label %17

56:                                               ; preds = %47, %24
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  br label %95

61:                                               ; preds = %56
  %62 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %7, align 8
  %63 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %62, i32 0, i32 0
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @cmpxchg_rel(i32* %65, i32 %66, i32 %67)
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %81

71:                                               ; preds = %61
  %72 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %7, align 8
  %73 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %72, i32 0, i32 0
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp sle i32 %76, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 @DBUG_ON(i32 %79)
  br label %95

81:                                               ; preds = %61
  %82 = load i32, i32* @xpc_chan, align 4
  %83 = load i32, i32* %9, align 4
  %84 = load %struct.xpc_channel*, %struct.xpc_channel** %4, align 8
  %85 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.xpc_channel*, %struct.xpc_channel** %4, align 8
  %88 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @dev_dbg(i32 %82, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %83, i32 %86, i32 %89)
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @XPC_M_SN2_INTERRUPT, align 4
  %93 = and i32 %91, %92
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %9, align 4
  store i32 %94, i32* %5, align 4
  br label %16

95:                                               ; preds = %71, %60
  %96 = load i32, i32* %10, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load %struct.xpc_channel*, %struct.xpc_channel** %4, align 8
  %100 = call i32 @xpc_send_chctl_msgrequest_sn2(%struct.xpc_channel* %99)
  br label %101

101:                                              ; preds = %98, %95
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
