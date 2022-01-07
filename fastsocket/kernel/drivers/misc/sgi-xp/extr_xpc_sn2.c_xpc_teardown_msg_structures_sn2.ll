; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_sn2.c_xpc_teardown_msg_structures_sn2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_sn2.c_xpc_teardown_msg_structures_sn2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_channel = type { i32, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.xpc_channel_sn2 }
%struct.xpc_channel_sn2 = type { i32*, i32*, i32*, i32*, i32*, i64, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__*, i64 }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_7__ = type { i64, i64 }

@XPC_C_SETUP = common dso_local global i32 0, align 4
@xpc_chan = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"ch->flags=0x%x, partid=%d, channel=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xpc_channel*)* @xpc_teardown_msg_structures_sn2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xpc_teardown_msg_structures_sn2(%struct.xpc_channel* %0) #0 {
  %2 = alloca %struct.xpc_channel*, align 8
  %3 = alloca %struct.xpc_channel_sn2*, align 8
  store %struct.xpc_channel* %0, %struct.xpc_channel** %2, align 8
  %4 = load %struct.xpc_channel*, %struct.xpc_channel** %2, align 8
  %5 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %4, i32 0, i32 4
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  store %struct.xpc_channel_sn2* %6, %struct.xpc_channel_sn2** %3, align 8
  %7 = load %struct.xpc_channel*, %struct.xpc_channel** %2, align 8
  %8 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %7, i32 0, i32 3
  %9 = call i32 @spin_is_locked(i32* %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @DBUG_ON(i32 %12)
  %14 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %3, align 8
  %15 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %14, i32 0, i32 10
  store i64 0, i64* %15, align 8
  %16 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %3, align 8
  %17 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %16, i32 0, i32 9
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %3, align 8
  %21 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %20, i32 0, i32 9
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  %24 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %3, align 8
  %25 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %24, i32 0, i32 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %3, align 8
  %28 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %27, i32 0, i32 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %3, align 8
  %31 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %30, i32 0, i32 7
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %3, align 8
  %34 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %33, i32 0, i32 7
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %3, align 8
  %37 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %36, i32 0, i32 6
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %3, align 8
  %40 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %39, i32 0, i32 6
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  %42 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %3, align 8
  %43 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %42, i32 0, i32 5
  store i64 0, i64* %43, align 8
  %44 = load %struct.xpc_channel*, %struct.xpc_channel** %2, align 8
  %45 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @XPC_C_SETUP, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %80

50:                                               ; preds = %1
  %51 = load i32, i32* @xpc_chan, align 4
  %52 = load %struct.xpc_channel*, %struct.xpc_channel** %2, align 8
  %53 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.xpc_channel*, %struct.xpc_channel** %2, align 8
  %56 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.xpc_channel*, %struct.xpc_channel** %2, align 8
  %59 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @dev_dbg(i32 %51, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %57, i32 %60)
  %62 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %3, align 8
  %63 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %62, i32 0, i32 4
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @kfree(i32* %64)
  %66 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %3, align 8
  %67 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %66, i32 0, i32 3
  store i32* null, i32** %67, align 8
  %68 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %3, align 8
  %69 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @kfree(i32* %70)
  %72 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %3, align 8
  %73 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %72, i32 0, i32 1
  store i32* null, i32** %73, align 8
  %74 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %3, align 8
  %75 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @kfree(i32* %76)
  %78 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %3, align 8
  %79 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %78, i32 0, i32 0
  store i32* null, i32** %79, align 8
  br label %80

80:                                               ; preds = %50, %1
  ret void
}

declare dso_local i32 @DBUG_ON(i32) #1

declare dso_local i32 @spin_is_locked(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
