; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_sn2.c_xpc_setup_msg_structures_sn2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_sn2.c_xpc_setup_msg_structures_sn2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_channel = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.xpc_channel_sn2 }
%struct.xpc_channel_sn2 = type { i32*, i32*, i32* }

@XPC_C_SETUP = common dso_local global i32 0, align 4
@xpSuccess = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xpc_channel*)* @xpc_setup_msg_structures_sn2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xpc_setup_msg_structures_sn2(%struct.xpc_channel* %0) #0 {
  %2 = alloca %struct.xpc_channel*, align 8
  %3 = alloca %struct.xpc_channel_sn2*, align 8
  %4 = alloca i32, align 4
  store %struct.xpc_channel* %0, %struct.xpc_channel** %2, align 8
  %5 = load %struct.xpc_channel*, %struct.xpc_channel** %2, align 8
  %6 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store %struct.xpc_channel_sn2* %7, %struct.xpc_channel_sn2** %3, align 8
  %8 = load %struct.xpc_channel*, %struct.xpc_channel** %2, align 8
  %9 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @XPC_C_SETUP, align 4
  %12 = and i32 %10, %11
  %13 = call i32 @DBUG_ON(i32 %12)
  %14 = load %struct.xpc_channel*, %struct.xpc_channel** %2, align 8
  %15 = call i32 @xpc_allocate_local_msgqueue_sn2(%struct.xpc_channel* %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @xpSuccess, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %39

19:                                               ; preds = %1
  %20 = load %struct.xpc_channel*, %struct.xpc_channel** %2, align 8
  %21 = call i32 @xpc_allocate_remote_msgqueue_sn2(%struct.xpc_channel* %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @xpSuccess, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %19
  %26 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %3, align 8
  %27 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @kfree(i32* %28)
  %30 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %3, align 8
  %31 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %30, i32 0, i32 1
  store i32* null, i32** %31, align 8
  %32 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %3, align 8
  %33 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @kfree(i32* %34)
  %36 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %3, align 8
  %37 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %36, i32 0, i32 0
  store i32* null, i32** %37, align 8
  br label %38

38:                                               ; preds = %25, %19
  br label %39

39:                                               ; preds = %38, %1
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @DBUG_ON(i32) #1

declare dso_local i32 @xpc_allocate_local_msgqueue_sn2(%struct.xpc_channel*) #1

declare dso_local i32 @xpc_allocate_remote_msgqueue_sn2(%struct.xpc_channel*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
