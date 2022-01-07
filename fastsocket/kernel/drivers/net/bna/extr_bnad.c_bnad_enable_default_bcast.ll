; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad.c_bnad_enable_default_bcast.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad.c_bnad_enable_default_bcast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnad = type { %struct.TYPE_2__, i32, %struct.bnad_rx_info* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.bnad_rx_info = type { i32 }

@bnad_bcast_addr = common dso_local global i64 0, align 8
@bnad_cb_rx_mcast_add = common dso_local global i32 0, align 4
@BNA_CB_SUCCESS = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnad_enable_default_bcast(%struct.bnad* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnad*, align 8
  %4 = alloca %struct.bnad_rx_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.bnad* %0, %struct.bnad** %3, align 8
  %7 = load %struct.bnad*, %struct.bnad** %3, align 8
  %8 = getelementptr inbounds %struct.bnad, %struct.bnad* %7, i32 0, i32 2
  %9 = load %struct.bnad_rx_info*, %struct.bnad_rx_info** %8, align 8
  %10 = getelementptr inbounds %struct.bnad_rx_info, %struct.bnad_rx_info* %9, i64 0
  store %struct.bnad_rx_info* %10, %struct.bnad_rx_info** %4, align 8
  %11 = load %struct.bnad*, %struct.bnad** %3, align 8
  %12 = getelementptr inbounds %struct.bnad, %struct.bnad* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = call i32 @init_completion(i32* %13)
  %15 = load %struct.bnad*, %struct.bnad** %3, align 8
  %16 = getelementptr inbounds %struct.bnad, %struct.bnad* %15, i32 0, i32 1
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.bnad_rx_info*, %struct.bnad_rx_info** %4, align 8
  %20 = getelementptr inbounds %struct.bnad_rx_info, %struct.bnad_rx_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i64, i64* @bnad_bcast_addr, align 8
  %23 = inttoptr i64 %22 to i32*
  %24 = load i32, i32* @bnad_cb_rx_mcast_add, align 4
  %25 = call i32 @bna_rx_mcast_add(i32 %21, i32* %23, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load %struct.bnad*, %struct.bnad** %3, align 8
  %27 = getelementptr inbounds %struct.bnad, %struct.bnad* %26, i32 0, i32 1
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* %27, i64 %28)
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @BNA_CB_SUCCESS, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %1
  %34 = load %struct.bnad*, %struct.bnad** %3, align 8
  %35 = getelementptr inbounds %struct.bnad, %struct.bnad* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = call i32 @wait_for_completion(i32* %36)
  br label %41

38:                                               ; preds = %1
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %52

41:                                               ; preds = %33
  %42 = load %struct.bnad*, %struct.bnad** %3, align 8
  %43 = getelementptr inbounds %struct.bnad, %struct.bnad* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @BNA_CB_SUCCESS, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load i32, i32* @ENODEV, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %52

51:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %48, %38
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bna_rx_mcast_add(i32, i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
