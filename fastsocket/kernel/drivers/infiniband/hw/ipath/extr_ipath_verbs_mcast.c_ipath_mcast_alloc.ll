; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_verbs_mcast.c_ipath_mcast_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_verbs_mcast.c_ipath_mcast_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_mcast = type { i64, i32, i32, i32, %union.ib_gid }
%union.ib_gid = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ipath_mcast* (%union.ib_gid*)* @ipath_mcast_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ipath_mcast* @ipath_mcast_alloc(%union.ib_gid* %0) #0 {
  %2 = alloca %union.ib_gid*, align 8
  %3 = alloca %struct.ipath_mcast*, align 8
  store %union.ib_gid* %0, %union.ib_gid** %2, align 8
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.ipath_mcast* @kmalloc(i32 24, i32 %4)
  store %struct.ipath_mcast* %5, %struct.ipath_mcast** %3, align 8
  %6 = load %struct.ipath_mcast*, %struct.ipath_mcast** %3, align 8
  %7 = icmp ne %struct.ipath_mcast* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %26

9:                                                ; preds = %1
  %10 = load %struct.ipath_mcast*, %struct.ipath_mcast** %3, align 8
  %11 = getelementptr inbounds %struct.ipath_mcast, %struct.ipath_mcast* %10, i32 0, i32 4
  %12 = load %union.ib_gid*, %union.ib_gid** %2, align 8
  %13 = bitcast %union.ib_gid* %11 to i8*
  %14 = bitcast %union.ib_gid* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 4, i1 false)
  %15 = load %struct.ipath_mcast*, %struct.ipath_mcast** %3, align 8
  %16 = getelementptr inbounds %struct.ipath_mcast, %struct.ipath_mcast* %15, i32 0, i32 3
  %17 = call i32 @INIT_LIST_HEAD(i32* %16)
  %18 = load %struct.ipath_mcast*, %struct.ipath_mcast** %3, align 8
  %19 = getelementptr inbounds %struct.ipath_mcast, %struct.ipath_mcast* %18, i32 0, i32 2
  %20 = call i32 @init_waitqueue_head(i32* %19)
  %21 = load %struct.ipath_mcast*, %struct.ipath_mcast** %3, align 8
  %22 = getelementptr inbounds %struct.ipath_mcast, %struct.ipath_mcast* %21, i32 0, i32 1
  %23 = call i32 @atomic_set(i32* %22, i32 0)
  %24 = load %struct.ipath_mcast*, %struct.ipath_mcast** %3, align 8
  %25 = getelementptr inbounds %struct.ipath_mcast, %struct.ipath_mcast* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  br label %26

26:                                               ; preds = %9, %8
  %27 = load %struct.ipath_mcast*, %struct.ipath_mcast** %3, align 8
  ret %struct.ipath_mcast* %27
}

declare dso_local %struct.ipath_mcast* @kmalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
