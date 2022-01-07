; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_sn2.c_xpc_allocate_local_msgqueue_sn2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_sn2.c_xpc_allocate_local_msgqueue_sn2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_channel = type { i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.xpc_channel_sn2 }
%struct.xpc_channel_sn2 = type { i32*, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@xpc_chan = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"nentries=%d local_nentries=%d, partid=%d, channel=%d\0A\00", align 1
@xpSuccess = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [82 x i8] c"can't get memory for local message queue and notify queue, partid=%d, channel=%d\0A\00", align 1
@xpNoMemory = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xpc_channel*)* @xpc_allocate_local_msgqueue_sn2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xpc_allocate_local_msgqueue_sn2(%struct.xpc_channel* %0) #0 {
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
  store i32 %13, i32* %6, align 4
  br label %14

14:                                               ; preds = %88, %1
  %15 = load i32, i32* %6, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %91

17:                                               ; preds = %14
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %20 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 %18, %21
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %4, align 8
  %27 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %26, i32 0, i32 1
  %28 = call i32* @xpc_kzalloc_cacheline_aligned(i64 %24, i32 %25, i32* %27)
  %29 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %4, align 8
  %30 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %29, i32 0, i32 0
  store i32* %28, i32** %30, align 8
  %31 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %4, align 8
  %32 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %17
  br label %88

36:                                               ; preds = %17
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 %38, 4
  store i64 %39, i64* %7, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call i32* @kzalloc(i64 %40, i32 %41)
  %43 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %4, align 8
  %44 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %43, i32 0, i32 2
  store i32* %42, i32** %44, align 8
  %45 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %4, align 8
  %46 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %56

49:                                               ; preds = %36
  %50 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %4, align 8
  %51 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @kfree(i32 %52)
  %54 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %4, align 8
  %55 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %54, i32 0, i32 0
  store i32* null, i32** %55, align 8
  br label %88

56:                                               ; preds = %36
  %57 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %58 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %57, i32 0, i32 4
  %59 = load i64, i64* %5, align 8
  %60 = call i32 @spin_lock_irqsave(i32* %58, i64 %59)
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %63 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %82

66:                                               ; preds = %56
  %67 = load i32, i32* @xpc_chan, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %70 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %73 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %76 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %67, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %68, i32 %71, i32 %74, i32 %77)
  %79 = load i32, i32* %6, align 4
  %80 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %81 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  br label %82

82:                                               ; preds = %66, %56
  %83 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %84 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %83, i32 0, i32 4
  %85 = load i64, i64* %5, align 8
  %86 = call i32 @spin_unlock_irqrestore(i32* %84, i64 %85)
  %87 = load i32, i32* @xpSuccess, align 4
  store i32 %87, i32* %2, align 4
  br label %101

88:                                               ; preds = %49, %35
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %6, align 4
  br label %14

91:                                               ; preds = %14
  %92 = load i32, i32* @xpc_chan, align 4
  %93 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %94 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %97 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %92, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 %95, i32 %98)
  %100 = load i32, i32* @xpNoMemory, align 4
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %91, %82
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32* @xpc_kzalloc_cacheline_aligned(i64, i32, i32*) #1

declare dso_local i32* @kzalloc(i64, i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
