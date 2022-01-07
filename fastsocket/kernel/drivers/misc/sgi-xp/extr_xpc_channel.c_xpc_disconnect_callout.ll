; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_channel.c_xpc_disconnect_callout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_channel.c_xpc_disconnect_callout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_channel = type { i32, i32, i32, i32 (i32, i32, i32, i32*, i32)* }

@xpc_chan = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"ch->func() called, reason=%d, partid=%d, channel=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"ch->func() returned, reason=%d, partid=%d, channel=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xpc_disconnect_callout(%struct.xpc_channel* %0, i32 %1) #0 {
  %3 = alloca %struct.xpc_channel*, align 8
  %4 = alloca i32, align 4
  store %struct.xpc_channel* %0, %struct.xpc_channel** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %6 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %5, i32 0, i32 3
  %7 = load i32 (i32, i32, i32, i32*, i32)*, i32 (i32, i32, i32, i32*, i32)** %6, align 8
  %8 = icmp ne i32 (i32, i32, i32, i32*, i32)* %7, null
  br i1 %8, label %9, label %42

9:                                                ; preds = %2
  %10 = load i32, i32* @xpc_chan, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %13 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %16 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @dev_dbg(i32 %10, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %14, i32 %17)
  %19 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %20 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %19, i32 0, i32 3
  %21 = load i32 (i32, i32, i32, i32*, i32)*, i32 (i32, i32, i32, i32*, i32)** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %24 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %27 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %30 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 %21(i32 %22, i32 %25, i32 %28, i32* null, i32 %31)
  %33 = load i32, i32* @xpc_chan, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %36 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %39 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @dev_dbg(i32 %33, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %37, i32 %40)
  br label %42

42:                                               ; preds = %9, %2
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
