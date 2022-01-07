; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_init.c_qlcnic_free_sw_resources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_init.c_qlcnic_free_sw_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, %struct.qlcnic_recv_context* }
%struct.qlcnic_recv_context = type { %struct.qlcnic_host_rds_ring* }
%struct.qlcnic_host_rds_ring = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qlcnic_free_sw_resources(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca %struct.qlcnic_adapter*, align 8
  %3 = alloca %struct.qlcnic_recv_context*, align 8
  %4 = alloca %struct.qlcnic_host_rds_ring*, align 8
  %5 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %2, align 8
  %6 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %6, i32 0, i32 1
  %8 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %7, align 8
  store %struct.qlcnic_recv_context* %8, %struct.qlcnic_recv_context** %3, align 8
  %9 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %3, align 8
  %10 = getelementptr inbounds %struct.qlcnic_recv_context, %struct.qlcnic_recv_context* %9, i32 0, i32 0
  %11 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %10, align 8
  %12 = icmp eq %struct.qlcnic_host_rds_ring* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %42

14:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %34, %14
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %15
  %22 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %3, align 8
  %23 = getelementptr inbounds %struct.qlcnic_recv_context, %struct.qlcnic_recv_context* %22, i32 0, i32 0
  %24 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.qlcnic_host_rds_ring, %struct.qlcnic_host_rds_ring* %24, i64 %26
  store %struct.qlcnic_host_rds_ring* %27, %struct.qlcnic_host_rds_ring** %4, align 8
  %28 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %4, align 8
  %29 = getelementptr inbounds %struct.qlcnic_host_rds_ring, %struct.qlcnic_host_rds_ring* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @vfree(i32* %30)
  %32 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %4, align 8
  %33 = getelementptr inbounds %struct.qlcnic_host_rds_ring, %struct.qlcnic_host_rds_ring* %32, i32 0, i32 0
  store i32* null, i32** %33, align 8
  br label %34

34:                                               ; preds = %21
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %15

37:                                               ; preds = %15
  %38 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %3, align 8
  %39 = getelementptr inbounds %struct.qlcnic_recv_context, %struct.qlcnic_recv_context* %38, i32 0, i32 0
  %40 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %39, align 8
  %41 = call i32 @kfree(%struct.qlcnic_host_rds_ring* %40)
  br label %42

42:                                               ; preds = %37, %13
  ret void
}

declare dso_local i32 @vfree(i32*) #1

declare dso_local i32 @kfree(%struct.qlcnic_host_rds_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
