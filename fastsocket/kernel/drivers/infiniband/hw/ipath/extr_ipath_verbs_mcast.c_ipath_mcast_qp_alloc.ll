; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_verbs_mcast.c_ipath_mcast_qp_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_verbs_mcast.c_ipath_mcast_qp_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_mcast_qp = type { %struct.ipath_qp* }
%struct.ipath_qp = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ipath_mcast_qp* (%struct.ipath_qp*)* @ipath_mcast_qp_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ipath_mcast_qp* @ipath_mcast_qp_alloc(%struct.ipath_qp* %0) #0 {
  %2 = alloca %struct.ipath_qp*, align 8
  %3 = alloca %struct.ipath_mcast_qp*, align 8
  store %struct.ipath_qp* %0, %struct.ipath_qp** %2, align 8
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.ipath_mcast_qp* @kmalloc(i32 8, i32 %4)
  store %struct.ipath_mcast_qp* %5, %struct.ipath_mcast_qp** %3, align 8
  %6 = load %struct.ipath_mcast_qp*, %struct.ipath_mcast_qp** %3, align 8
  %7 = icmp ne %struct.ipath_mcast_qp* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %16

9:                                                ; preds = %1
  %10 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %11 = load %struct.ipath_mcast_qp*, %struct.ipath_mcast_qp** %3, align 8
  %12 = getelementptr inbounds %struct.ipath_mcast_qp, %struct.ipath_mcast_qp* %11, i32 0, i32 0
  store %struct.ipath_qp* %10, %struct.ipath_qp** %12, align 8
  %13 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %14 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %13, i32 0, i32 0
  %15 = call i32 @atomic_inc(i32* %14)
  br label %16

16:                                               ; preds = %9, %8
  %17 = load %struct.ipath_mcast_qp*, %struct.ipath_mcast_qp** %3, align 8
  ret %struct.ipath_mcast_qp* %17
}

declare dso_local %struct.ipath_mcast_qp* @kmalloc(i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
