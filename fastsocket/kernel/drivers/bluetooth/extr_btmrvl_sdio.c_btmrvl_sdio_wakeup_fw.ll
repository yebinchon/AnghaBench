; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btmrvl_sdio.c_btmrvl_sdio_wakeup_fw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btmrvl_sdio.c_btmrvl_sdio_wakeup_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btmrvl_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.btmrvl_sdio_card* }
%struct.btmrvl_sdio_card = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"card or function is NULL!\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@HOST_POWER_UP = common dso_local global i32 0, align 4
@CONFIG_REG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"wake up firmware\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btmrvl_private*)* @btmrvl_sdio_wakeup_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btmrvl_sdio_wakeup_fw(%struct.btmrvl_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btmrvl_private*, align 8
  %4 = alloca %struct.btmrvl_sdio_card*, align 8
  %5 = alloca i32, align 4
  store %struct.btmrvl_private* %0, %struct.btmrvl_private** %3, align 8
  %6 = load %struct.btmrvl_private*, %struct.btmrvl_private** %3, align 8
  %7 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %8, align 8
  store %struct.btmrvl_sdio_card* %9, %struct.btmrvl_sdio_card** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %4, align 8
  %11 = icmp ne %struct.btmrvl_sdio_card* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %4, align 8
  %14 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %12, %1
  %18 = call i32 @BT_ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %38

21:                                               ; preds = %12
  %22 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %4, align 8
  %23 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @sdio_claim_host(i32 %24)
  %26 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %4, align 8
  %27 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @HOST_POWER_UP, align 4
  %30 = load i32, i32* @CONFIG_REG, align 4
  %31 = call i32 @sdio_writeb(i32 %28, i32 %29, i32 %30, i32* %5)
  %32 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %4, align 8
  %33 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @sdio_release_host(i32 %34)
  %36 = call i32 @BT_DBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %21, %17
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local i32 @sdio_claim_host(i32) #1

declare dso_local i32 @sdio_writeb(i32, i32, i32, i32*) #1

declare dso_local i32 @sdio_release_host(i32) #1

declare dso_local i32 @BT_DBG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
