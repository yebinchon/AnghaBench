; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ohci1394.c_ohci1394_unregister_iso_tasklet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ohci1394.c_ohci1394_unregister_iso_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_ohci = type { i32, i32, i32, i32 }
%struct.ohci1394_iso_tasklet = type { i64, i32, i32, i32 }

@OHCI_ISO_TRANSMIT = common dso_local global i64 0, align 8
@OHCI_ISO_MULTICHANNEL_RECEIVE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ohci1394_unregister_iso_tasklet(%struct.ti_ohci* %0, %struct.ohci1394_iso_tasklet* %1) #0 {
  %3 = alloca %struct.ti_ohci*, align 8
  %4 = alloca %struct.ohci1394_iso_tasklet*, align 8
  %5 = alloca i64, align 8
  store %struct.ti_ohci* %0, %struct.ti_ohci** %3, align 8
  store %struct.ohci1394_iso_tasklet* %1, %struct.ohci1394_iso_tasklet** %4, align 8
  %6 = load %struct.ohci1394_iso_tasklet*, %struct.ohci1394_iso_tasklet** %4, align 8
  %7 = getelementptr inbounds %struct.ohci1394_iso_tasklet, %struct.ohci1394_iso_tasklet* %6, i32 0, i32 3
  %8 = call i32 @tasklet_kill(i32* %7)
  %9 = load %struct.ti_ohci*, %struct.ti_ohci** %3, align 8
  %10 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %9, i32 0, i32 0
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.ohci1394_iso_tasklet*, %struct.ohci1394_iso_tasklet** %4, align 8
  %14 = getelementptr inbounds %struct.ohci1394_iso_tasklet, %struct.ohci1394_iso_tasklet* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @OHCI_ISO_TRANSMIT, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.ohci1394_iso_tasklet*, %struct.ohci1394_iso_tasklet** %4, align 8
  %20 = getelementptr inbounds %struct.ohci1394_iso_tasklet, %struct.ohci1394_iso_tasklet* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ti_ohci*, %struct.ti_ohci** %3, align 8
  %23 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %22, i32 0, i32 3
  %24 = call i32 @clear_bit(i32 %21, i32* %23)
  br label %42

25:                                               ; preds = %2
  %26 = load %struct.ohci1394_iso_tasklet*, %struct.ohci1394_iso_tasklet** %4, align 8
  %27 = getelementptr inbounds %struct.ohci1394_iso_tasklet, %struct.ohci1394_iso_tasklet* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ti_ohci*, %struct.ti_ohci** %3, align 8
  %30 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %29, i32 0, i32 2
  %31 = call i32 @clear_bit(i32 %28, i32* %30)
  %32 = load %struct.ohci1394_iso_tasklet*, %struct.ohci1394_iso_tasklet** %4, align 8
  %33 = getelementptr inbounds %struct.ohci1394_iso_tasklet, %struct.ohci1394_iso_tasklet* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @OHCI_ISO_MULTICHANNEL_RECEIVE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %25
  %38 = load %struct.ti_ohci*, %struct.ti_ohci** %3, align 8
  %39 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %38, i32 0, i32 1
  %40 = call i32 @clear_bit(i32 0, i32* %39)
  br label %41

41:                                               ; preds = %37, %25
  br label %42

42:                                               ; preds = %41, %18
  %43 = load %struct.ohci1394_iso_tasklet*, %struct.ohci1394_iso_tasklet** %4, align 8
  %44 = getelementptr inbounds %struct.ohci1394_iso_tasklet, %struct.ohci1394_iso_tasklet* %43, i32 0, i32 1
  %45 = call i32 @list_del(i32* %44)
  %46 = load %struct.ti_ohci*, %struct.ti_ohci** %3, align 8
  %47 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %46, i32 0, i32 0
  %48 = load i64, i64* %5, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  ret void
}

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
