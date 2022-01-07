; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_sn2.c_xpc_allocate_msg_sn2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_sn2.c_xpc_allocate_msg_sn2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_channel = type { i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.xpc_channel_sn2 }
%struct.xpc_channel_sn2 = type { i64, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.xpc_msg_sn2 = type { i64, i32 }

@xpTimeout = common dso_local global i32 0, align 4
@XPC_NOWAIT = common dso_local global i32 0, align 4
@xpNoWait = common dso_local global i32 0, align 4
@xpInterrupted = common dso_local global i32 0, align 4
@xpc_chan = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [82 x i8] c"w_local_GP.put changed to %lld; msg=0x%p, msg_number=%lld, partid=%d, channel=%d\0A\00", align 1
@xpSuccess = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xpc_channel*, i32, %struct.xpc_msg_sn2**)* @xpc_allocate_msg_sn2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xpc_allocate_msg_sn2(%struct.xpc_channel* %0, i32 %1, %struct.xpc_msg_sn2** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xpc_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.xpc_msg_sn2**, align 8
  %8 = alloca %struct.xpc_channel_sn2*, align 8
  %9 = alloca %struct.xpc_msg_sn2*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.xpc_channel* %0, %struct.xpc_channel** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.xpc_msg_sn2** %2, %struct.xpc_msg_sn2*** %7, align 8
  %12 = load %struct.xpc_channel*, %struct.xpc_channel** %5, align 8
  %13 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %12, i32 0, i32 4
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store %struct.xpc_channel_sn2* %14, %struct.xpc_channel_sn2** %8, align 8
  %15 = load i32, i32* @xpTimeout, align 4
  store i32 %15, i32* %10, align 4
  br label %16

16:                                               ; preds = %3, %43, %70
  %17 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %8, align 8
  %18 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %11, align 4
  %21 = call i32 (...) @smp_rmb()
  %22 = load i32, i32* %11, align 4
  %23 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %8, align 8
  %24 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %22, %26
  %28 = load %struct.xpc_channel*, %struct.xpc_channel** %5, align 8
  %29 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %16
  %33 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %8, align 8
  %34 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = add nsw i32 %37, 1
  %39 = call i32 @cmpxchg(i32* %35, i32 %36, i32 %38)
  %40 = load i32, i32* %11, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  br label %71

43:                                               ; preds = %32
  br label %16

44:                                               ; preds = %16
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @xpTimeout, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load %struct.xpc_channel*, %struct.xpc_channel** %5, align 8
  %50 = call i32 @xpc_send_chctl_local_msgrequest_sn2(%struct.xpc_channel* %49)
  br label %51

51:                                               ; preds = %48, %44
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @XPC_NOWAIT, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* @xpNoWait, align 4
  store i32 %57, i32* %4, align 4
  br label %114

58:                                               ; preds = %51
  %59 = load %struct.xpc_channel*, %struct.xpc_channel** %5, align 8
  %60 = call i32 @xpc_allocate_msg_wait(%struct.xpc_channel* %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @xpInterrupted, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %58
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @xpTimeout, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* %4, align 4
  br label %114

70:                                               ; preds = %64, %58
  br label %16

71:                                               ; preds = %42
  %72 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %8, align 8
  %73 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* %11, align 4
  %76 = load %struct.xpc_channel*, %struct.xpc_channel** %5, align 8
  %77 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = srem i32 %75, %78
  %80 = load %struct.xpc_channel*, %struct.xpc_channel** %5, align 8
  %81 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = mul nsw i32 %79, %82
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %74, %84
  %86 = inttoptr i64 %85 to %struct.xpc_msg_sn2*
  store %struct.xpc_msg_sn2* %86, %struct.xpc_msg_sn2** %9, align 8
  %87 = load %struct.xpc_msg_sn2*, %struct.xpc_msg_sn2** %9, align 8
  %88 = getelementptr inbounds %struct.xpc_msg_sn2, %struct.xpc_msg_sn2* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  %91 = zext i1 %90 to i32
  %92 = call i32 @DBUG_ON(i32 %91)
  %93 = load i32, i32* %11, align 4
  %94 = load %struct.xpc_msg_sn2*, %struct.xpc_msg_sn2** %9, align 8
  %95 = getelementptr inbounds %struct.xpc_msg_sn2, %struct.xpc_msg_sn2* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 8
  %96 = load i32, i32* @xpc_chan, align 4
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 %97, 1
  %99 = load %struct.xpc_msg_sn2*, %struct.xpc_msg_sn2** %9, align 8
  %100 = bitcast %struct.xpc_msg_sn2* %99 to i8*
  %101 = load %struct.xpc_msg_sn2*, %struct.xpc_msg_sn2** %9, align 8
  %102 = getelementptr inbounds %struct.xpc_msg_sn2, %struct.xpc_msg_sn2* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.xpc_channel*, %struct.xpc_channel** %5, align 8
  %105 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.xpc_channel*, %struct.xpc_channel** %5, align 8
  %108 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @dev_dbg(i32 %96, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0), i32 %98, i8* %100, i32 %103, i32 %106, i32 %109)
  %111 = load %struct.xpc_msg_sn2*, %struct.xpc_msg_sn2** %9, align 8
  %112 = load %struct.xpc_msg_sn2**, %struct.xpc_msg_sn2*** %7, align 8
  store %struct.xpc_msg_sn2* %111, %struct.xpc_msg_sn2** %112, align 8
  %113 = load i32, i32* @xpSuccess, align 4
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %71, %68, %56
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @cmpxchg(i32*, i32, i32) #1

declare dso_local i32 @xpc_send_chctl_local_msgrequest_sn2(%struct.xpc_channel*) #1

declare dso_local i32 @xpc_allocate_msg_wait(%struct.xpc_channel*) #1

declare dso_local i32 @DBUG_ON(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
