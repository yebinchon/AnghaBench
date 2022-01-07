; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btmrvl_sdio.c_btmrvl_sdio_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btmrvl_sdio.c_btmrvl_sdio_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_func = type { i32 }
%struct.btmrvl_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.hci_dev* }
%struct.hci_dev = type { i32 }
%struct.btmrvl_sdio_card = type { %struct.btmrvl_private* }

@.str = private unnamed_addr constant [35 x i8] c"reading HOST_INT_STATUS_REG failed\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"HOST_INT_STATUS_REG %#x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdio_func*)* @btmrvl_sdio_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btmrvl_sdio_interrupt(%struct.sdio_func* %0) #0 {
  %2 = alloca %struct.sdio_func*, align 8
  %3 = alloca %struct.btmrvl_private*, align 8
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca %struct.btmrvl_sdio_card*, align 8
  %6 = alloca i32, align 4
  store %struct.sdio_func* %0, %struct.sdio_func** %2, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %8 = call %struct.btmrvl_sdio_card* @sdio_get_drvdata(%struct.sdio_func* %7)
  store %struct.btmrvl_sdio_card* %8, %struct.btmrvl_sdio_card** %5, align 8
  %9 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %5, align 8
  %10 = icmp ne %struct.btmrvl_sdio_card* %9, null
  br i1 %10, label %11, label %35

11:                                               ; preds = %1
  %12 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %5, align 8
  %13 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %12, i32 0, i32 0
  %14 = load %struct.btmrvl_private*, %struct.btmrvl_private** %13, align 8
  %15 = icmp ne %struct.btmrvl_private* %14, null
  br i1 %15, label %16, label %35

16:                                               ; preds = %11
  %17 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %5, align 8
  %18 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %17, i32 0, i32 0
  %19 = load %struct.btmrvl_private*, %struct.btmrvl_private** %18, align 8
  store %struct.btmrvl_private* %19, %struct.btmrvl_private** %3, align 8
  %20 = load %struct.btmrvl_private*, %struct.btmrvl_private** %3, align 8
  %21 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.hci_dev*, %struct.hci_dev** %22, align 8
  store %struct.hci_dev* %23, %struct.hci_dev** %4, align 8
  %24 = load %struct.btmrvl_private*, %struct.btmrvl_private** %3, align 8
  %25 = call i64 @btmrvl_sdio_get_int_status(%struct.btmrvl_private* %24, i32* %6)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %16
  %28 = call i32 @BT_ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %32

29:                                               ; preds = %16
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @BT_DBG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %29, %27
  %33 = load %struct.btmrvl_private*, %struct.btmrvl_private** %3, align 8
  %34 = call i32 @btmrvl_interrupt(%struct.btmrvl_private* %33)
  br label %35

35:                                               ; preds = %32, %11, %1
  ret void
}

declare dso_local %struct.btmrvl_sdio_card* @sdio_get_drvdata(%struct.sdio_func*) #1

declare dso_local i64 @btmrvl_sdio_get_int_status(%struct.btmrvl_private*, i32*) #1

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @btmrvl_interrupt(%struct.btmrvl_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
