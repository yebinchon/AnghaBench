; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_sn2.c_xpc_allocate_remote_msgqueue_sn2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_sn2.c_xpc_allocate_remote_msgqueue_sn2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_channel = type { i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.xpc_channel_sn2 }
%struct.xpc_channel_sn2 = type { i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@xpc_chan = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"nentries=%d remote_nentries=%d, partid=%d, channel=%d\0A\00", align 1
@xpSuccess = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [73 x i8] c"can't get memory for cached remote message queue, partid=%d, channel=%d\0A\00", align 1
@xpNoMemory = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xpc_channel*)* @xpc_allocate_remote_msgqueue_sn2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xpc_allocate_remote_msgqueue_sn2(%struct.xpc_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xpc_channel*, align 8
  %4 = alloca %struct.xpc_channel_sn2*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.xpc_channel* %0, %struct.xpc_channel** %3, align 8
  %8 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %9 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %8, i32 0, i32 5
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.xpc_channel_sn2* %10, %struct.xpc_channel_sn2** %4, align 8
  %11 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %12 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sle i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @DBUG_ON(i32 %15)
  %17 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %18 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %74, %1
  %21 = load i32, i32* %6, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %77

23:                                               ; preds = %20
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %26 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %24, %27
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %7, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %4, align 8
  %33 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %32, i32 0, i32 1
  %34 = call i32* @xpc_kzalloc_cacheline_aligned(i64 %30, i32 %31, i32* %33)
  %35 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %4, align 8
  %36 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %35, i32 0, i32 0
  store i32* %34, i32** %36, align 8
  %37 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %4, align 8
  %38 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %23
  br label %74

42:                                               ; preds = %23
  %43 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %44 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %43, i32 0, i32 4
  %45 = load i64, i64* %5, align 8
  %46 = call i32 @spin_lock_irqsave(i32* %44, i64 %45)
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %49 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %68

52:                                               ; preds = %42
  %53 = load i32, i32* @xpc_chan, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %56 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %59 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %62 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %53, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %57, i32 %60, i32 %63)
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %67 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  br label %68

68:                                               ; preds = %52, %42
  %69 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %70 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %69, i32 0, i32 4
  %71 = load i64, i64* %5, align 8
  %72 = call i32 @spin_unlock_irqrestore(i32* %70, i64 %71)
  %73 = load i32, i32* @xpSuccess, align 4
  store i32 %73, i32* %2, align 4
  br label %87

74:                                               ; preds = %41
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %6, align 4
  br label %20

77:                                               ; preds = %20
  %78 = load i32, i32* @xpc_chan, align 4
  %79 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %80 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %83 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %78, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i32 %81, i32 %84)
  %86 = load i32, i32* @xpNoMemory, align 4
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %77, %68
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32 @DBUG_ON(i32) #1

declare dso_local i32* @xpc_kzalloc_cacheline_aligned(i64, i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
