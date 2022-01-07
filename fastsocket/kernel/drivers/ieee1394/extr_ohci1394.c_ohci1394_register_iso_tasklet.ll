; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ohci1394.c_ohci1394_register_iso_tasklet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ohci1394.c_ohci1394_register_iso_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_ohci = type { i32, i64, i32, i64, i64, i32, i32 }
%struct.ohci1394_iso_tasklet = type { i64, i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@OHCI_ISO_TRANSMIT = common dso_local global i64 0, align 8
@OHCI_ISO_MULTICHANNEL_RECEIVE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ohci1394_register_iso_tasklet(%struct.ti_ohci* %0, %struct.ohci1394_iso_tasklet* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ti_ohci*, align 8
  %5 = alloca %struct.ohci1394_iso_tasklet*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ti_ohci* %0, %struct.ti_ohci** %4, align 8
  store %struct.ohci1394_iso_tasklet* %1, %struct.ohci1394_iso_tasklet** %5, align 8
  %11 = load i32, i32* @EBUSY, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %10, align 4
  %13 = load %struct.ohci1394_iso_tasklet*, %struct.ohci1394_iso_tasklet** %5, align 8
  %14 = getelementptr inbounds %struct.ohci1394_iso_tasklet, %struct.ohci1394_iso_tasklet* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @OHCI_ISO_TRANSMIT, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.ti_ohci*, %struct.ti_ohci** %4, align 8
  %20 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %8, align 4
  %22 = load %struct.ti_ohci*, %struct.ti_ohci** %4, align 8
  %23 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %22, i32 0, i32 1
  store i64* %23, i64** %7, align 8
  br label %44

24:                                               ; preds = %2
  %25 = load %struct.ti_ohci*, %struct.ti_ohci** %4, align 8
  %26 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %8, align 4
  %28 = load %struct.ti_ohci*, %struct.ti_ohci** %4, align 8
  %29 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %28, i32 0, i32 3
  store i64* %29, i64** %7, align 8
  %30 = load %struct.ohci1394_iso_tasklet*, %struct.ohci1394_iso_tasklet** %5, align 8
  %31 = getelementptr inbounds %struct.ohci1394_iso_tasklet, %struct.ohci1394_iso_tasklet* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @OHCI_ISO_MULTICHANNEL_RECEIVE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %24
  %36 = load %struct.ti_ohci*, %struct.ti_ohci** %4, align 8
  %37 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %36, i32 0, i32 4
  %38 = call i64 @test_and_set_bit(i32 0, i64* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %3, align 4
  br label %77

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42, %24
  br label %44

44:                                               ; preds = %43, %18
  %45 = load %struct.ti_ohci*, %struct.ti_ohci** %4, align 8
  %46 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %45, i32 0, i32 5
  %47 = load i64, i64* %6, align 8
  %48 = call i32 @spin_lock_irqsave(i32* %46, i64 %47)
  store i32 0, i32* %9, align 4
  br label %49

49:                                               ; preds = %68, %44
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %71

53:                                               ; preds = %49
  %54 = load i32, i32* %9, align 4
  %55 = load i64*, i64** %7, align 8
  %56 = call i64 @test_and_set_bit(i32 %54, i64* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %67, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.ohci1394_iso_tasklet*, %struct.ohci1394_iso_tasklet** %5, align 8
  %61 = getelementptr inbounds %struct.ohci1394_iso_tasklet, %struct.ohci1394_iso_tasklet* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  %62 = load %struct.ohci1394_iso_tasklet*, %struct.ohci1394_iso_tasklet** %5, align 8
  %63 = getelementptr inbounds %struct.ohci1394_iso_tasklet, %struct.ohci1394_iso_tasklet* %62, i32 0, i32 2
  %64 = load %struct.ti_ohci*, %struct.ti_ohci** %4, align 8
  %65 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %64, i32 0, i32 6
  %66 = call i32 @list_add_tail(i32* %63, i32* %65)
  store i32 0, i32* %10, align 4
  br label %71

67:                                               ; preds = %53
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %49

71:                                               ; preds = %58, %49
  %72 = load %struct.ti_ohci*, %struct.ti_ohci** %4, align 8
  %73 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %72, i32 0, i32 5
  %74 = load i64, i64* %6, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* %73, i64 %74)
  %76 = load i32, i32* %10, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %71, %40
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i64 @test_and_set_bit(i32, i64*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
