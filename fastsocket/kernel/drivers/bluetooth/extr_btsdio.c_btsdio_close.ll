; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btsdio.c_btsdio_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btsdio.c_btsdio_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32, i32, %struct.btsdio_data* }
%struct.btsdio_data = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@HCI_RUNNING = common dso_local global i32 0, align 4
@REG_EN_INTRD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*)* @btsdio_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btsdio_close(%struct.hci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.btsdio_data*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  %5 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %6 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %5, i32 0, i32 2
  %7 = load %struct.btsdio_data*, %struct.btsdio_data** %6, align 8
  store %struct.btsdio_data* %7, %struct.btsdio_data** %4, align 8
  %8 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %9 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* @HCI_RUNNING, align 4
  %13 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %14 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %13, i32 0, i32 0
  %15 = call i32 @test_and_clear_bit(i32 %12, i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %40

18:                                               ; preds = %1
  %19 = load %struct.btsdio_data*, %struct.btsdio_data** %4, align 8
  %20 = getelementptr inbounds %struct.btsdio_data, %struct.btsdio_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @sdio_claim_host(i32 %21)
  %23 = load %struct.btsdio_data*, %struct.btsdio_data** %4, align 8
  %24 = getelementptr inbounds %struct.btsdio_data, %struct.btsdio_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @REG_EN_INTRD, align 4
  %27 = call i32 @sdio_writeb(i32 %25, i32 0, i32 %26, i32* null)
  %28 = load %struct.btsdio_data*, %struct.btsdio_data** %4, align 8
  %29 = getelementptr inbounds %struct.btsdio_data, %struct.btsdio_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @sdio_release_irq(i32 %30)
  %32 = load %struct.btsdio_data*, %struct.btsdio_data** %4, align 8
  %33 = getelementptr inbounds %struct.btsdio_data, %struct.btsdio_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @sdio_disable_func(i32 %34)
  %36 = load %struct.btsdio_data*, %struct.btsdio_data** %4, align 8
  %37 = getelementptr inbounds %struct.btsdio_data, %struct.btsdio_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @sdio_release_host(i32 %38)
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %18, %17
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @sdio_claim_host(i32) #1

declare dso_local i32 @sdio_writeb(i32, i32, i32, i32*) #1

declare dso_local i32 @sdio_release_irq(i32) #1

declare dso_local i32 @sdio_disable_func(i32) #1

declare dso_local i32 @sdio_release_host(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
