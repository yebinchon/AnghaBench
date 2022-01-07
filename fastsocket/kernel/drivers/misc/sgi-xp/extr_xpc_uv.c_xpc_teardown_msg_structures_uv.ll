; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_uv.c_xpc_teardown_msg_structures_uv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_uv.c_xpc_teardown_msg_structures_uv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_channel = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.xpc_channel_uv }
%struct.xpc_channel_uv = type { i32*, i32, i32*, i32, i32* }

@XPC_C_SETUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xpc_channel*)* @xpc_teardown_msg_structures_uv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xpc_teardown_msg_structures_uv(%struct.xpc_channel* %0) #0 {
  %2 = alloca %struct.xpc_channel*, align 8
  %3 = alloca %struct.xpc_channel_uv*, align 8
  store %struct.xpc_channel* %0, %struct.xpc_channel** %2, align 8
  %4 = load %struct.xpc_channel*, %struct.xpc_channel** %2, align 8
  %5 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  store %struct.xpc_channel_uv* %6, %struct.xpc_channel_uv** %3, align 8
  %7 = load %struct.xpc_channel*, %struct.xpc_channel** %2, align 8
  %8 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %7, i32 0, i32 1
  %9 = call i32 @spin_is_locked(i32* %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @DBUG_ON(i32 %12)
  %14 = load %struct.xpc_channel_uv*, %struct.xpc_channel_uv** %3, align 8
  %15 = getelementptr inbounds %struct.xpc_channel_uv, %struct.xpc_channel_uv* %14, i32 0, i32 4
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @kfree(i32* %16)
  %18 = load %struct.xpc_channel_uv*, %struct.xpc_channel_uv** %3, align 8
  %19 = getelementptr inbounds %struct.xpc_channel_uv, %struct.xpc_channel_uv* %18, i32 0, i32 4
  store i32* null, i32** %19, align 8
  %20 = load %struct.xpc_channel*, %struct.xpc_channel** %2, align 8
  %21 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @XPC_C_SETUP, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %1
  %27 = load %struct.xpc_channel_uv*, %struct.xpc_channel_uv** %3, align 8
  %28 = getelementptr inbounds %struct.xpc_channel_uv, %struct.xpc_channel_uv* %27, i32 0, i32 3
  %29 = call i32 @xpc_init_fifo_uv(i32* %28)
  %30 = load %struct.xpc_channel_uv*, %struct.xpc_channel_uv** %3, align 8
  %31 = getelementptr inbounds %struct.xpc_channel_uv, %struct.xpc_channel_uv* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @kfree(i32* %32)
  %34 = load %struct.xpc_channel_uv*, %struct.xpc_channel_uv** %3, align 8
  %35 = getelementptr inbounds %struct.xpc_channel_uv, %struct.xpc_channel_uv* %34, i32 0, i32 1
  %36 = call i32 @xpc_init_fifo_uv(i32* %35)
  %37 = load %struct.xpc_channel_uv*, %struct.xpc_channel_uv** %3, align 8
  %38 = getelementptr inbounds %struct.xpc_channel_uv, %struct.xpc_channel_uv* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @kfree(i32* %39)
  br label %41

41:                                               ; preds = %26, %1
  ret void
}

declare dso_local i32 @DBUG_ON(i32) #1

declare dso_local i32 @spin_is_locked(i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @xpc_init_fifo_uv(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
