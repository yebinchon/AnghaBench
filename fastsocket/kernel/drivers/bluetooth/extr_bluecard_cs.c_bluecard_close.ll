; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_bluecard_cs.c_bluecard_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_bluecard_cs.c_bluecard_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.hci_dev*, %struct.TYPE_6__* }
%struct.hci_dev = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@CARD_READY = common dso_local global i32 0, align 4
@REG_CONTROL_BT_RESET = common dso_local global i32 0, align 4
@REG_CONTROL_CARD_RESET = common dso_local global i32 0, align 4
@REG_CONTROL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Can't unregister HCI device %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @bluecard_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bluecard_close(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hci_dev*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 3
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  %14 = load %struct.hci_dev*, %struct.hci_dev** %13, align 8
  store %struct.hci_dev* %14, %struct.hci_dev** %5, align 8
  %15 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %16 = icmp ne %struct.hci_dev* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %53

20:                                               ; preds = %1
  %21 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %22 = call i32 @bluecard_hci_close(%struct.hci_dev* %21)
  %23 = load i32, i32* @CARD_READY, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = call i32 @clear_bit(i32 %23, i32* %25)
  %27 = load i32, i32* @REG_CONTROL_BT_RESET, align 4
  %28 = load i32, i32* @REG_CONTROL_CARD_RESET, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @REG_CONTROL, align 4
  %37 = add i32 %35, %36
  %38 = call i32 @outb(i32 %34, i32 %37)
  %39 = load i32, i32* %4, align 4
  %40 = add i32 %39, 48
  %41 = call i32 @outb(i32 128, i32 %40)
  %42 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %43 = call i64 @hci_unregister_dev(%struct.hci_dev* %42)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %20
  %46 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %47 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @BT_ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %45, %20
  %51 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %52 = call i32 @hci_free_dev(%struct.hci_dev* %51)
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %50, %17
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @bluecard_hci_close(%struct.hci_dev*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i64 @hci_unregister_dev(%struct.hci_dev*) #1

declare dso_local i32 @BT_ERR(i8*, i32) #1

declare dso_local i32 @hci_free_dev(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
