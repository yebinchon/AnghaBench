; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_main.c_xpc_kthread_waitmsgs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_main.c_xpc_kthread_waitmsgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.xpc_channel*)* }
%struct.xpc_channel = type { i32, i64, i32, i32 }
%struct.xpc_partition = type { i32 }

@xpc_arch_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@XPC_C_DISCONNECTING = common dso_local global i32 0, align 4
@xpc_chan = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"idle kthread calling wait_event_interruptible_exclusive()\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xpc_partition*, %struct.xpc_channel*)* @xpc_kthread_waitmsgs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xpc_kthread_waitmsgs(%struct.xpc_partition* %0, %struct.xpc_channel* %1) #0 {
  %3 = alloca %struct.xpc_partition*, align 8
  %4 = alloca %struct.xpc_channel*, align 8
  %5 = alloca i32 (%struct.xpc_channel*)*, align 8
  store %struct.xpc_partition* %0, %struct.xpc_partition** %3, align 8
  store %struct.xpc_channel* %1, %struct.xpc_channel** %4, align 8
  %6 = load i32 (%struct.xpc_channel*)*, i32 (%struct.xpc_channel*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xpc_arch_ops, i32 0, i32 0), align 8
  store i32 (%struct.xpc_channel*)* %6, i32 (%struct.xpc_channel*)** %5, align 8
  br label %7

7:                                                ; preds = %62, %2
  br label %8

8:                                                ; preds = %23, %7
  %9 = load i32 (%struct.xpc_channel*)*, i32 (%struct.xpc_channel*)** %5, align 8
  %10 = load %struct.xpc_channel*, %struct.xpc_channel** %4, align 8
  %11 = call i32 %9(%struct.xpc_channel* %10)
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %8
  %14 = load %struct.xpc_channel*, %struct.xpc_channel** %4, align 8
  %15 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @XPC_C_DISCONNECTING, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br label %21

21:                                               ; preds = %13, %8
  %22 = phi i1 [ false, %8 ], [ %20, %13 ]
  br i1 %22, label %23, label %26

23:                                               ; preds = %21
  %24 = load %struct.xpc_channel*, %struct.xpc_channel** %4, align 8
  %25 = call i32 @xpc_deliver_payload(%struct.xpc_channel* %24)
  br label %8

26:                                               ; preds = %21
  %27 = load %struct.xpc_channel*, %struct.xpc_channel** %4, align 8
  %28 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %27, i32 0, i32 2
  %29 = call i64 @atomic_inc_return(i32* %28)
  %30 = load %struct.xpc_channel*, %struct.xpc_channel** %4, align 8
  %31 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %29, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %26
  %35 = load %struct.xpc_channel*, %struct.xpc_channel** %4, align 8
  %36 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %35, i32 0, i32 2
  %37 = call i32 @atomic_dec(i32* %36)
  br label %70

38:                                               ; preds = %26
  %39 = load i32, i32* @xpc_chan, align 4
  %40 = call i32 @dev_dbg(i32 %39, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.xpc_channel*, %struct.xpc_channel** %4, align 8
  %42 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load i32 (%struct.xpc_channel*)*, i32 (%struct.xpc_channel*)** %5, align 8
  %45 = load %struct.xpc_channel*, %struct.xpc_channel** %4, align 8
  %46 = call i32 %44(%struct.xpc_channel* %45)
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %38
  %49 = load %struct.xpc_channel*, %struct.xpc_channel** %4, align 8
  %50 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @XPC_C_DISCONNECTING, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br label %55

55:                                               ; preds = %48, %38
  %56 = phi i1 [ true, %38 ], [ %54, %48 ]
  %57 = zext i1 %56 to i32
  %58 = call i32 @wait_event_interruptible_exclusive(i32 %43, i32 %57)
  %59 = load %struct.xpc_channel*, %struct.xpc_channel** %4, align 8
  %60 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %59, i32 0, i32 2
  %61 = call i32 @atomic_dec(i32* %60)
  br label %62

62:                                               ; preds = %55
  %63 = load %struct.xpc_channel*, %struct.xpc_channel** %4, align 8
  %64 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @XPC_C_DISCONNECTING, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  br i1 %69, label %7, label %70

70:                                               ; preds = %62, %34
  ret void
}

declare dso_local i32 @xpc_deliver_payload(%struct.xpc_channel*) #1

declare dso_local i64 @atomic_inc_return(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @wait_event_interruptible_exclusive(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
