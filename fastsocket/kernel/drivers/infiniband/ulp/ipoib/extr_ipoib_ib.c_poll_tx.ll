; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_poll_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_poll_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipoib_dev_priv = type { i64, i32, i32 }

@MAX_SEND_CQE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipoib_dev_priv*)* @poll_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @poll_tx(%struct.ipoib_dev_priv* %0) #0 {
  %2 = alloca %struct.ipoib_dev_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ipoib_dev_priv* %0, %struct.ipoib_dev_priv** %2, align 8
  %5 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %2, align 8
  %6 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @MAX_SEND_CQE, align 4
  %9 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %2, align 8
  %10 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @ib_poll_cq(i32 %7, i32 %8, i64 %11)
  store i32 %12, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %28, %1
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %31

17:                                               ; preds = %13
  %18 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %2, align 8
  %19 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %2, align 8
  %22 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %23, %25
  %27 = call i32 @ipoib_ib_handle_tx_wc(i32 %20, i64 %26)
  br label %28

28:                                               ; preds = %17
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %13

31:                                               ; preds = %13
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @MAX_SEND_CQE, align 4
  %34 = icmp eq i32 %32, %33
  %35 = zext i1 %34 to i32
  ret i32 %35
}

declare dso_local i32 @ib_poll_cq(i32, i32, i64) #1

declare dso_local i32 @ipoib_ib_handle_tx_wc(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
