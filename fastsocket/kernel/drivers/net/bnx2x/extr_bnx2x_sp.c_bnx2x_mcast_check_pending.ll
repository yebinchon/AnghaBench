; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_mcast_check_pending.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_mcast_check_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_mcast_obj = type { i64 (%struct.bnx2x_mcast_obj*)*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 (%struct.TYPE_2__*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x_mcast_obj*)* @bnx2x_mcast_check_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_mcast_check_pending(%struct.bnx2x_mcast_obj* %0) #0 {
  %2 = alloca %struct.bnx2x_mcast_obj*, align 8
  store %struct.bnx2x_mcast_obj* %0, %struct.bnx2x_mcast_obj** %2, align 8
  %3 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %2, align 8
  %4 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i64 (%struct.TYPE_2__*)*, i64 (%struct.TYPE_2__*)** %5, align 8
  %7 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %2, align 8
  %8 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %7, i32 0, i32 1
  %9 = call i64 %6(%struct.TYPE_2__* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %1
  %12 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %2, align 8
  %13 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %12, i32 0, i32 0
  %14 = load i64 (%struct.bnx2x_mcast_obj*)*, i64 (%struct.bnx2x_mcast_obj*)** %13, align 8
  %15 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %2, align 8
  %16 = call i64 %14(%struct.bnx2x_mcast_obj* %15)
  %17 = icmp ne i64 %16, 0
  br label %18

18:                                               ; preds = %11, %1
  %19 = phi i1 [ true, %1 ], [ %17, %11 ]
  %20 = zext i1 %19 to i32
  ret i32 %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
