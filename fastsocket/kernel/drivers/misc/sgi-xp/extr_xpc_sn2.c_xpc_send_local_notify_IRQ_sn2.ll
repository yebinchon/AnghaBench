; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_sn2.c_xpc_send_local_notify_IRQ_sn2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_sn2.c_xpc_send_local_notify_IRQ_sn2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_partition = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.xpc_channel = type { i64, i64 }
%union.xpc_channel_ctl_flags = type { i32* }

@xpc_partitions = common dso_local global %struct.xpc_partition* null, align 8
@__const.xpc_send_local_notify_IRQ_sn2.chctl = private unnamed_addr constant { i32, [4 x i8] } { i32 0, [4 x i8] undef }, align 8
@FETCHOP_OR = common dso_local global i32 0, align 4
@xpc_chan = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"%s sent local from partid=%d, channel=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xpc_channel*, i32, i8*)* @xpc_send_local_notify_IRQ_sn2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xpc_send_local_notify_IRQ_sn2(%struct.xpc_channel* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.xpc_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.xpc_partition*, align 8
  %8 = alloca %union.xpc_channel_ctl_flags, align 8
  store %struct.xpc_channel* %0, %struct.xpc_channel** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load %struct.xpc_partition*, %struct.xpc_partition** @xpc_partitions, align 8
  %10 = load %struct.xpc_channel*, %struct.xpc_channel** %4, align 8
  %11 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %9, i64 %12
  store %struct.xpc_partition* %13, %struct.xpc_partition** %7, align 8
  %14 = bitcast %union.xpc_channel_ctl_flags* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 bitcast ({ i32, [4 x i8] }* @__const.xpc_send_local_notify_IRQ_sn2.chctl to i8*), i64 8, i1 false)
  %15 = load i32, i32* %5, align 4
  %16 = bitcast %union.xpc_channel_ctl_flags* %8 to i32**
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.xpc_channel*, %struct.xpc_channel** %4, align 8
  %19 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i32, i32* %17, i64 %20
  store i32 %15, i32* %21, align 4
  %22 = load %struct.xpc_partition*, %struct.xpc_partition** %7, align 8
  %23 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = ptrtoint i32* %27 to i32
  %29 = call i32 @TO_AMO(i32 %28)
  %30 = load i32, i32* @FETCHOP_OR, align 4
  %31 = bitcast %union.xpc_channel_ctl_flags* %8 to i32*
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @FETCHOP_STORE_OP(i32 %29, i32 %30, i32 %32)
  %34 = load i32, i32* @xpc_chan, align 4
  %35 = load i8*, i8** %6, align 8
  %36 = load %struct.xpc_channel*, %struct.xpc_channel** %4, align 8
  %37 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.xpc_channel*, %struct.xpc_channel** %4, align 8
  %40 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @dev_dbg(i32 %34, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %35, i64 %38, i64 %41)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @FETCHOP_STORE_OP(i32, i32, i32) #2

declare dso_local i32 @TO_AMO(i32) #2

declare dso_local i32 @dev_dbg(i32, i8*, i8*, i64, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
