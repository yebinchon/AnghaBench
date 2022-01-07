; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btsdio.c_btsdio_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btsdio.c_btsdio_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_func = type { i32 }
%struct.btsdio_data = type { %struct.hci_dev* }
%struct.hci_dev = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"func %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdio_func*)* @btsdio_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btsdio_remove(%struct.sdio_func* %0) #0 {
  %2 = alloca %struct.sdio_func*, align 8
  %3 = alloca %struct.btsdio_data*, align 8
  %4 = alloca %struct.hci_dev*, align 8
  store %struct.sdio_func* %0, %struct.sdio_func** %2, align 8
  %5 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %6 = call %struct.btsdio_data* @sdio_get_drvdata(%struct.sdio_func* %5)
  store %struct.btsdio_data* %6, %struct.btsdio_data** %3, align 8
  %7 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %8 = call i32 @BT_DBG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.sdio_func* %7)
  %9 = load %struct.btsdio_data*, %struct.btsdio_data** %3, align 8
  %10 = icmp ne %struct.btsdio_data* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %22

12:                                               ; preds = %1
  %13 = load %struct.btsdio_data*, %struct.btsdio_data** %3, align 8
  %14 = getelementptr inbounds %struct.btsdio_data, %struct.btsdio_data* %13, i32 0, i32 0
  %15 = load %struct.hci_dev*, %struct.hci_dev** %14, align 8
  store %struct.hci_dev* %15, %struct.hci_dev** %4, align 8
  %16 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %17 = call i32 @sdio_set_drvdata(%struct.sdio_func* %16, i32* null)
  %18 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %19 = call i32 @hci_unregister_dev(%struct.hci_dev* %18)
  %20 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %21 = call i32 @hci_free_dev(%struct.hci_dev* %20)
  br label %22

22:                                               ; preds = %12, %11
  ret void
}

declare dso_local %struct.btsdio_data* @sdio_get_drvdata(%struct.sdio_func*) #1

declare dso_local i32 @BT_DBG(i8*, %struct.sdio_func*) #1

declare dso_local i32 @sdio_set_drvdata(%struct.sdio_func*, i32*) #1

declare dso_local i32 @hci_unregister_dev(%struct.hci_dev*) #1

declare dso_local i32 @hci_free_dev(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
