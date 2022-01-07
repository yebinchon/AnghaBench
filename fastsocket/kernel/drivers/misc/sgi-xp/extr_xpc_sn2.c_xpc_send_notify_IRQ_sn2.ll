; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_sn2.c_xpc_send_notify_IRQ_sn2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_sn2.c_xpc_send_notify_IRQ_sn2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_partition = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.xpc_partition_sn2 }
%struct.xpc_partition_sn2 = type { i32, i32, i32 }
%struct.xpc_channel = type { i64, i64, i32 }
%union.xpc_channel_ctl_flags = type { i32* }

@xpc_partitions = common dso_local global %struct.xpc_partition* null, align 8
@__const.xpc_send_notify_IRQ_sn2.chctl = private unnamed_addr constant { i32, [4 x i8] } { i32 0, [4 x i8] undef }, align 8
@XPC_P_AS_DEACTIVATING = common dso_local global i64 0, align 8
@SGI_XPC_NOTIFY = common dso_local global i32 0, align 4
@xpc_chan = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"%s sent to partid=%d, channel=%d, ret=%d\0A\00", align 1
@xpSuccess = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xpc_channel*, i32, i8*, i64*)* @xpc_send_notify_IRQ_sn2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xpc_send_notify_IRQ_sn2(%struct.xpc_channel* %0, i32 %1, i8* %2, i64* %3) #0 {
  %5 = alloca %struct.xpc_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.xpc_partition*, align 8
  %10 = alloca %struct.xpc_partition_sn2*, align 8
  %11 = alloca %union.xpc_channel_ctl_flags, align 8
  %12 = alloca i32, align 4
  store %struct.xpc_channel* %0, %struct.xpc_channel** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64* %3, i64** %8, align 8
  %13 = load %struct.xpc_partition*, %struct.xpc_partition** @xpc_partitions, align 8
  %14 = load %struct.xpc_channel*, %struct.xpc_channel** %5, align 8
  %15 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %13, i64 %16
  store %struct.xpc_partition* %17, %struct.xpc_partition** %9, align 8
  %18 = load %struct.xpc_partition*, %struct.xpc_partition** %9, align 8
  %19 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store %struct.xpc_partition_sn2* %20, %struct.xpc_partition_sn2** %10, align 8
  %21 = bitcast %union.xpc_channel_ctl_flags* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 bitcast ({ i32, [4 x i8] }* @__const.xpc_send_notify_IRQ_sn2.chctl to i8*), i64 8, i1 false)
  %22 = load %struct.xpc_partition*, %struct.xpc_partition** %9, align 8
  %23 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @XPC_P_AS_DEACTIVATING, align 8
  %26 = icmp ne i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i64 @likely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %90

30:                                               ; preds = %4
  %31 = load i32, i32* %6, align 4
  %32 = bitcast %union.xpc_channel_ctl_flags* %11 to i32**
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.xpc_channel*, %struct.xpc_channel** %5, align 8
  %35 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  store i32 %31, i32* %37, align 4
  %38 = load %struct.xpc_partition_sn2*, %struct.xpc_partition_sn2** %10, align 8
  %39 = getelementptr inbounds %struct.xpc_partition_sn2, %struct.xpc_partition_sn2* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = bitcast %union.xpc_channel_ctl_flags* %11 to i32*
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.xpc_partition_sn2*, %struct.xpc_partition_sn2** %10, align 8
  %44 = getelementptr inbounds %struct.xpc_partition_sn2, %struct.xpc_partition_sn2* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.xpc_partition_sn2*, %struct.xpc_partition_sn2** %10, align 8
  %47 = getelementptr inbounds %struct.xpc_partition_sn2, %struct.xpc_partition_sn2* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @SGI_XPC_NOTIFY, align 4
  %50 = call i32 @xpc_send_IRQ_sn2(i32 %40, i32 %42, i32 %45, i32 %48, i32 %49)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* @xpc_chan, align 4
  %52 = load i8*, i8** %7, align 8
  %53 = load %struct.xpc_channel*, %struct.xpc_channel** %5, align 8
  %54 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.xpc_channel*, %struct.xpc_channel** %5, align 8
  %57 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @dev_dbg(i32 %51, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %52, i64 %55, i64 %58, i32 %59)
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* @xpSuccess, align 4
  %63 = icmp ne i32 %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i64 @unlikely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %89

67:                                               ; preds = %30
  %68 = load i64*, i64** %8, align 8
  %69 = icmp ne i64* %68, null
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = load %struct.xpc_channel*, %struct.xpc_channel** %5, align 8
  %72 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %71, i32 0, i32 2
  %73 = load i64*, i64** %8, align 8
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* %72, i64 %74)
  br label %76

76:                                               ; preds = %70, %67
  %77 = load %struct.xpc_partition*, %struct.xpc_partition** %9, align 8
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @XPC_DEACTIVATE_PARTITION(%struct.xpc_partition* %77, i32 %78)
  %80 = load i64*, i64** %8, align 8
  %81 = icmp ne i64* %80, null
  br i1 %81, label %82, label %88

82:                                               ; preds = %76
  %83 = load %struct.xpc_channel*, %struct.xpc_channel** %5, align 8
  %84 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %83, i32 0, i32 2
  %85 = load i64*, i64** %8, align 8
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @spin_lock_irqsave(i32* %84, i64 %86)
  br label %88

88:                                               ; preds = %82, %76
  br label %89

89:                                               ; preds = %88, %30
  br label %90

90:                                               ; preds = %89, %4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @likely(i32) #2

declare dso_local i32 @xpc_send_IRQ_sn2(i32, i32, i32, i32, i32) #2

declare dso_local i32 @dev_dbg(i32, i8*, i8*, i64, i64, i32) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #2

declare dso_local i32 @XPC_DEACTIVATE_PARTITION(%struct.xpc_partition*, i32) #2

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
