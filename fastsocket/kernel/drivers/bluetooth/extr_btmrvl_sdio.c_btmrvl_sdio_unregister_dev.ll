; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btmrvl_sdio.c_btmrvl_sdio_unregister_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btmrvl_sdio.c_btmrvl_sdio_unregister_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btmrvl_sdio_card = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btmrvl_sdio_card*)* @btmrvl_sdio_unregister_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btmrvl_sdio_unregister_dev(%struct.btmrvl_sdio_card* %0) #0 {
  %2 = alloca %struct.btmrvl_sdio_card*, align 8
  store %struct.btmrvl_sdio_card* %0, %struct.btmrvl_sdio_card** %2, align 8
  %3 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %2, align 8
  %4 = icmp ne %struct.btmrvl_sdio_card* %3, null
  br i1 %4, label %5, label %31

5:                                                ; preds = %1
  %6 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %2, align 8
  %7 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %31

10:                                               ; preds = %5
  %11 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %2, align 8
  %12 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @sdio_claim_host(i64 %13)
  %15 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %2, align 8
  %16 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @sdio_release_irq(i64 %17)
  %19 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %2, align 8
  %20 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @sdio_disable_func(i64 %21)
  %23 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %2, align 8
  %24 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @sdio_release_host(i64 %25)
  %27 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %2, align 8
  %28 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @sdio_set_drvdata(i64 %29, i32* null)
  br label %31

31:                                               ; preds = %10, %5, %1
  ret i32 0
}

declare dso_local i32 @sdio_claim_host(i64) #1

declare dso_local i32 @sdio_release_irq(i64) #1

declare dso_local i32 @sdio_disable_func(i64) #1

declare dso_local i32 @sdio_release_host(i64) #1

declare dso_local i32 @sdio_set_drvdata(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
