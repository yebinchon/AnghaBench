; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_sn2.c_xpc_notify_senders_sn2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_sn2.c_xpc_notify_senders_sn2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_channel = type { i64, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.xpc_notify_sn2*, %struct.TYPE_4__ }
%struct.xpc_notify_sn2 = type { i64, i32, i32 (i32, i32, i32, i32)* }
%struct.TYPE_4__ = type { i64 }

@XPC_N_CALL = common dso_local global i64 0, align 8
@xpc_chan = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"notify->func() called, notify=0x%p msg_number=%lld partid=%d channel=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [75 x i8] c"notify->func() returned, notify=0x%p msg_number=%lld partid=%d channel=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xpc_channel*, i32, i64)* @xpc_notify_senders_sn2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xpc_notify_senders_sn2(%struct.xpc_channel* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.xpc_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.xpc_notify_sn2*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.xpc_channel* %0, %struct.xpc_channel** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %10 = load %struct.xpc_channel*, %struct.xpc_channel** %4, align 8
  %11 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = sub nsw i64 %15, 1
  store i64 %16, i64* %9, align 8
  br label %17

17:                                               ; preds = %104, %53, %3
  %18 = load i64, i64* %9, align 8
  %19 = add nsw i64 %18, 1
  store i64 %19, i64* %9, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.xpc_channel*, %struct.xpc_channel** %4, align 8
  %24 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %23, i32 0, i32 3
  %25 = call i64 @atomic_read(i32* %24)
  %26 = icmp sgt i64 %25, 0
  br label %27

27:                                               ; preds = %22, %17
  %28 = phi i1 [ false, %17 ], [ %26, %22 ]
  br i1 %28, label %29, label %105

29:                                               ; preds = %27
  %30 = load %struct.xpc_channel*, %struct.xpc_channel** %4, align 8
  %31 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load %struct.xpc_notify_sn2*, %struct.xpc_notify_sn2** %33, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load %struct.xpc_channel*, %struct.xpc_channel** %4, align 8
  %37 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = srem i64 %35, %38
  %40 = getelementptr inbounds %struct.xpc_notify_sn2, %struct.xpc_notify_sn2* %34, i64 %39
  store %struct.xpc_notify_sn2* %40, %struct.xpc_notify_sn2** %7, align 8
  %41 = load %struct.xpc_notify_sn2*, %struct.xpc_notify_sn2** %7, align 8
  %42 = getelementptr inbounds %struct.xpc_notify_sn2, %struct.xpc_notify_sn2* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %8, align 8
  %44 = load i64, i64* %8, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %29
  %47 = load %struct.xpc_notify_sn2*, %struct.xpc_notify_sn2** %7, align 8
  %48 = getelementptr inbounds %struct.xpc_notify_sn2, %struct.xpc_notify_sn2* %47, i32 0, i32 0
  %49 = load i64, i64* %8, align 8
  %50 = call i64 @cmpxchg(i64* %48, i64 %49, i32 0)
  %51 = load i64, i64* %8, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %46, %29
  br label %17

54:                                               ; preds = %46
  %55 = load i64, i64* %8, align 8
  %56 = load i64, i64* @XPC_N_CALL, align 8
  %57 = icmp ne i64 %55, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @DBUG_ON(i32 %58)
  %60 = load %struct.xpc_channel*, %struct.xpc_channel** %4, align 8
  %61 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %60, i32 0, i32 3
  %62 = call i32 @atomic_dec(i32* %61)
  %63 = load %struct.xpc_notify_sn2*, %struct.xpc_notify_sn2** %7, align 8
  %64 = getelementptr inbounds %struct.xpc_notify_sn2, %struct.xpc_notify_sn2* %63, i32 0, i32 2
  %65 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %64, align 8
  %66 = icmp ne i32 (i32, i32, i32, i32)* %65, null
  br i1 %66, label %67, label %104

67:                                               ; preds = %54
  %68 = load i32, i32* @xpc_chan, align 4
  %69 = load %struct.xpc_notify_sn2*, %struct.xpc_notify_sn2** %7, align 8
  %70 = bitcast %struct.xpc_notify_sn2* %69 to i8*
  %71 = load i64, i64* %9, align 8
  %72 = load %struct.xpc_channel*, %struct.xpc_channel** %4, align 8
  %73 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.xpc_channel*, %struct.xpc_channel** %4, align 8
  %76 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @dev_dbg(i32 %68, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i8* %70, i64 %71, i32 %74, i32 %77)
  %79 = load %struct.xpc_notify_sn2*, %struct.xpc_notify_sn2** %7, align 8
  %80 = getelementptr inbounds %struct.xpc_notify_sn2, %struct.xpc_notify_sn2* %79, i32 0, i32 2
  %81 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = load %struct.xpc_channel*, %struct.xpc_channel** %4, align 8
  %84 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.xpc_channel*, %struct.xpc_channel** %4, align 8
  %87 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.xpc_notify_sn2*, %struct.xpc_notify_sn2** %7, align 8
  %90 = getelementptr inbounds %struct.xpc_notify_sn2, %struct.xpc_notify_sn2* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i32 %81(i32 %82, i32 %85, i32 %88, i32 %91)
  %93 = load i32, i32* @xpc_chan, align 4
  %94 = load %struct.xpc_notify_sn2*, %struct.xpc_notify_sn2** %7, align 8
  %95 = bitcast %struct.xpc_notify_sn2* %94 to i8*
  %96 = load i64, i64* %9, align 8
  %97 = load %struct.xpc_channel*, %struct.xpc_channel** %4, align 8
  %98 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.xpc_channel*, %struct.xpc_channel** %4, align 8
  %101 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @dev_dbg(i32 %93, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0), i8* %95, i64 %96, i32 %99, i32 %102)
  br label %104

104:                                              ; preds = %67, %54
  br label %17

105:                                              ; preds = %27
  ret void
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @cmpxchg(i64*, i64, i32) #1

declare dso_local i32 @DBUG_ON(i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
