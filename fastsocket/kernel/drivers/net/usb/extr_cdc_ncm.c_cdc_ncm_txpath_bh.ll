; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_cdc_ncm.c_cdc_ncm_txpath_bh.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_cdc_ncm.c_cdc_ncm_txpath_bh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdc_ncm_ctx = type { i64, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @cdc_ncm_txpath_bh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdc_ncm_txpath_bh(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.cdc_ncm_ctx*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = inttoptr i64 %4 to %struct.cdc_ncm_ctx*
  store %struct.cdc_ncm_ctx* %5, %struct.cdc_ncm_ctx** %3, align 8
  %6 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %6, i32 0, i32 1
  %8 = call i32 @spin_lock_bh(i32* %7)
  %9 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %3, align 8
  %15 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, -1
  store i64 %17, i64* %15, align 8
  %18 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %3, align 8
  %19 = call i32 @cdc_ncm_tx_timeout_start(%struct.cdc_ncm_ctx* %18)
  %20 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %3, align 8
  %21 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %20, i32 0, i32 1
  %22 = call i32 @spin_unlock_bh(i32* %21)
  br label %49

23:                                               ; preds = %1
  %24 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %3, align 8
  %25 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %44

28:                                               ; preds = %23
  %29 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %3, align 8
  %30 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %29, i32 0, i32 1
  %31 = call i32 @spin_unlock_bh(i32* %30)
  %32 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %3, align 8
  %33 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @netif_tx_lock_bh(i32* %34)
  %36 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %3, align 8
  %37 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @usbnet_start_xmit(i32* null, i32* %38)
  %40 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %3, align 8
  %41 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @netif_tx_unlock_bh(i32* %42)
  br label %48

44:                                               ; preds = %23
  %45 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %3, align 8
  %46 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %45, i32 0, i32 1
  %47 = call i32 @spin_unlock_bh(i32* %46)
  br label %48

48:                                               ; preds = %44, %28
  br label %49

49:                                               ; preds = %48, %13
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @cdc_ncm_tx_timeout_start(%struct.cdc_ncm_ctx*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @netif_tx_lock_bh(i32*) #1

declare dso_local i32 @usbnet_start_xmit(i32*, i32*) #1

declare dso_local i32 @netif_tx_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
