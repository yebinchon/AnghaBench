; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_verbs_mcast.c_ipath_mcast_qp_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_verbs_mcast.c_ipath_mcast_qp_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_mcast_qp = type { %struct.ipath_qp* }
%struct.ipath_qp = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipath_mcast_qp*)* @ipath_mcast_qp_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipath_mcast_qp_free(%struct.ipath_mcast_qp* %0) #0 {
  %2 = alloca %struct.ipath_mcast_qp*, align 8
  %3 = alloca %struct.ipath_qp*, align 8
  store %struct.ipath_mcast_qp* %0, %struct.ipath_mcast_qp** %2, align 8
  %4 = load %struct.ipath_mcast_qp*, %struct.ipath_mcast_qp** %2, align 8
  %5 = getelementptr inbounds %struct.ipath_mcast_qp, %struct.ipath_mcast_qp* %4, i32 0, i32 0
  %6 = load %struct.ipath_qp*, %struct.ipath_qp** %5, align 8
  store %struct.ipath_qp* %6, %struct.ipath_qp** %3, align 8
  %7 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %8 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %7, i32 0, i32 1
  %9 = call i64 @atomic_dec_and_test(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %13 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %12, i32 0, i32 0
  %14 = call i32 @wake_up(i32* %13)
  br label %15

15:                                               ; preds = %11, %1
  %16 = load %struct.ipath_mcast_qp*, %struct.ipath_mcast_qp** %2, align 8
  %17 = call i32 @kfree(%struct.ipath_mcast_qp* %16)
  ret void
}

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @kfree(%struct.ipath_mcast_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
