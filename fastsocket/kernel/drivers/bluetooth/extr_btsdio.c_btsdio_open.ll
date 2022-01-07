; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btsdio.c_btsdio_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btsdio.c_btsdio_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32, i32, %struct.btsdio_data* }
%struct.btsdio_data = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@HCI_RUNNING = common dso_local global i32 0, align 4
@btsdio_interrupt = common dso_local global i32 0, align 4
@SDIO_CLASS_BT_B = common dso_local global i64 0, align 8
@REG_MD_STAT = common dso_local global i32 0, align 4
@REG_EN_INTRD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*)* @btsdio_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btsdio_open(%struct.hci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.btsdio_data*, align 8
  %5 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  %6 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %7 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %6, i32 0, i32 2
  %8 = load %struct.btsdio_data*, %struct.btsdio_data** %7, align 8
  store %struct.btsdio_data* %8, %struct.btsdio_data** %4, align 8
  %9 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %10 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* @HCI_RUNNING, align 4
  %14 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %15 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %14, i32 0, i32 0
  %16 = call i64 @test_and_set_bit(i32 %13, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %78

19:                                               ; preds = %1
  %20 = load %struct.btsdio_data*, %struct.btsdio_data** %4, align 8
  %21 = getelementptr inbounds %struct.btsdio_data, %struct.btsdio_data* %20, i32 0, i32 0
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = call i32 @sdio_claim_host(%struct.TYPE_7__* %22)
  %24 = load %struct.btsdio_data*, %struct.btsdio_data** %4, align 8
  %25 = getelementptr inbounds %struct.btsdio_data, %struct.btsdio_data* %24, i32 0, i32 0
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = call i32 @sdio_enable_func(%struct.TYPE_7__* %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %19
  %31 = load i32, i32* @HCI_RUNNING, align 4
  %32 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %33 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %32, i32 0, i32 0
  %34 = call i32 @clear_bit(i32 %31, i32* %33)
  br label %72

35:                                               ; preds = %19
  %36 = load %struct.btsdio_data*, %struct.btsdio_data** %4, align 8
  %37 = getelementptr inbounds %struct.btsdio_data, %struct.btsdio_data* %36, i32 0, i32 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = load i32, i32* @btsdio_interrupt, align 4
  %40 = call i32 @sdio_claim_irq(%struct.TYPE_7__* %38, i32 %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %35
  %44 = load %struct.btsdio_data*, %struct.btsdio_data** %4, align 8
  %45 = getelementptr inbounds %struct.btsdio_data, %struct.btsdio_data* %44, i32 0, i32 0
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = call i32 @sdio_disable_func(%struct.TYPE_7__* %46)
  %48 = load i32, i32* @HCI_RUNNING, align 4
  %49 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %50 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %49, i32 0, i32 0
  %51 = call i32 @clear_bit(i32 %48, i32* %50)
  br label %72

52:                                               ; preds = %35
  %53 = load %struct.btsdio_data*, %struct.btsdio_data** %4, align 8
  %54 = getelementptr inbounds %struct.btsdio_data, %struct.btsdio_data* %53, i32 0, i32 0
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @SDIO_CLASS_BT_B, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %52
  %61 = load %struct.btsdio_data*, %struct.btsdio_data** %4, align 8
  %62 = getelementptr inbounds %struct.btsdio_data, %struct.btsdio_data* %61, i32 0, i32 0
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = load i32, i32* @REG_MD_STAT, align 4
  %65 = call i32 @sdio_writeb(%struct.TYPE_7__* %63, i32 0, i32 %64, i32* null)
  br label %66

66:                                               ; preds = %60, %52
  %67 = load %struct.btsdio_data*, %struct.btsdio_data** %4, align 8
  %68 = getelementptr inbounds %struct.btsdio_data, %struct.btsdio_data* %67, i32 0, i32 0
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = load i32, i32* @REG_EN_INTRD, align 4
  %71 = call i32 @sdio_writeb(%struct.TYPE_7__* %69, i32 1, i32 %70, i32* null)
  br label %72

72:                                               ; preds = %66, %43, %30
  %73 = load %struct.btsdio_data*, %struct.btsdio_data** %4, align 8
  %74 = getelementptr inbounds %struct.btsdio_data, %struct.btsdio_data* %73, i32 0, i32 0
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = call i32 @sdio_release_host(%struct.TYPE_7__* %75)
  %77 = load i32, i32* %5, align 4
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %72, %18
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @sdio_claim_host(%struct.TYPE_7__*) #1

declare dso_local i32 @sdio_enable_func(%struct.TYPE_7__*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @sdio_claim_irq(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @sdio_disable_func(%struct.TYPE_7__*) #1

declare dso_local i32 @sdio_writeb(%struct.TYPE_7__*, i32, i32, i32*) #1

declare dso_local i32 @sdio_release_host(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
