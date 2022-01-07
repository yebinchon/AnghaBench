; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_rx_stats_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_rx_stats_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_rx_obj = type { i32 }
%struct.be_rx_compl_info = type { i64, i64, i64 }
%struct.be_rx_stats = type { i32, i32, i32, i32, i32 }

@BE_MULTICAST_PACKET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.be_rx_obj*, %struct.be_rx_compl_info*)* @be_rx_stats_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_rx_stats_update(%struct.be_rx_obj* %0, %struct.be_rx_compl_info* %1) #0 {
  %3 = alloca %struct.be_rx_obj*, align 8
  %4 = alloca %struct.be_rx_compl_info*, align 8
  %5 = alloca %struct.be_rx_stats*, align 8
  store %struct.be_rx_obj* %0, %struct.be_rx_obj** %3, align 8
  store %struct.be_rx_compl_info* %1, %struct.be_rx_compl_info** %4, align 8
  %6 = load %struct.be_rx_obj*, %struct.be_rx_obj** %3, align 8
  %7 = call %struct.be_rx_stats* @rx_stats(%struct.be_rx_obj* %6)
  store %struct.be_rx_stats* %7, %struct.be_rx_stats** %5, align 8
  %8 = load %struct.be_rx_stats*, %struct.be_rx_stats** %5, align 8
  %9 = getelementptr inbounds %struct.be_rx_stats, %struct.be_rx_stats* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %9, align 4
  %12 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %4, align 8
  %13 = getelementptr inbounds %struct.be_rx_compl_info, %struct.be_rx_compl_info* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.be_rx_stats*, %struct.be_rx_stats** %5, align 8
  %16 = getelementptr inbounds %struct.be_rx_stats, %struct.be_rx_stats* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %18, %14
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %16, align 4
  %21 = load %struct.be_rx_stats*, %struct.be_rx_stats** %5, align 8
  %22 = getelementptr inbounds %struct.be_rx_stats, %struct.be_rx_stats* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  %25 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %4, align 8
  %26 = getelementptr inbounds %struct.be_rx_compl_info, %struct.be_rx_compl_info* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @BE_MULTICAST_PACKET, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %2
  %31 = load %struct.be_rx_stats*, %struct.be_rx_stats** %5, align 8
  %32 = getelementptr inbounds %struct.be_rx_stats, %struct.be_rx_stats* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %30, %2
  %36 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %4, align 8
  %37 = getelementptr inbounds %struct.be_rx_compl_info, %struct.be_rx_compl_info* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.be_rx_stats*, %struct.be_rx_stats** %5, align 8
  %42 = getelementptr inbounds %struct.be_rx_stats, %struct.be_rx_stats* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %40, %35
  ret void
}

declare dso_local %struct.be_rx_stats* @rx_stats(%struct.be_rx_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
