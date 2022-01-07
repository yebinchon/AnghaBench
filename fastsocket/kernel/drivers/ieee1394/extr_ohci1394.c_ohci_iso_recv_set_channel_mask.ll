; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ohci1394.c_ohci_iso_recv_set_channel_mask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ohci1394.c_ohci_iso_recv_set_channel_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_iso = type { %struct.ohci_iso_recv* }
%struct.ohci_iso_recv = type { i32 }

@OHCI1394_IRMultiChanMaskLoSet = common dso_local global i32 0, align 4
@OHCI1394_IRMultiChanMaskHiSet = common dso_local global i32 0, align 4
@OHCI1394_IRMultiChanMaskLoClear = common dso_local global i32 0, align 4
@OHCI1394_IRMultiChanMaskHiClear = common dso_local global i32 0, align 4
@OHCI1394_IsochronousCycleTimer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hpsb_iso*, i64)* @ohci_iso_recv_set_channel_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ohci_iso_recv_set_channel_mask(%struct.hpsb_iso* %0, i64 %1) #0 {
  %3 = alloca %struct.hpsb_iso*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ohci_iso_recv*, align 8
  %6 = alloca i32, align 4
  store %struct.hpsb_iso* %0, %struct.hpsb_iso** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.hpsb_iso*, %struct.hpsb_iso** %3, align 8
  %8 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %7, i32 0, i32 0
  %9 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %8, align 8
  store %struct.ohci_iso_recv* %9, %struct.ohci_iso_recv** %5, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %63, %2
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 64
  br i1 %12, label %13, label %66

13:                                               ; preds = %10
  %14 = load i64, i64* %4, align 8
  %15 = load i32, i32* %6, align 4
  %16 = zext i32 %15 to i64
  %17 = shl i64 1, %16
  %18 = and i64 %14, %17
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %41

20:                                               ; preds = %13
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 32
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %5, align 8
  %25 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @OHCI1394_IRMultiChanMaskLoSet, align 4
  %28 = load i32, i32* %6, align 4
  %29 = shl i32 1, %28
  %30 = call i32 @reg_write(i32 %26, i32 %27, i32 %29)
  br label %40

31:                                               ; preds = %20
  %32 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %5, align 8
  %33 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @OHCI1394_IRMultiChanMaskHiSet, align 4
  %36 = load i32, i32* %6, align 4
  %37 = sub nsw i32 %36, 32
  %38 = shl i32 1, %37
  %39 = call i32 @reg_write(i32 %34, i32 %35, i32 %38)
  br label %40

40:                                               ; preds = %31, %23
  br label %62

41:                                               ; preds = %13
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 32
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %5, align 8
  %46 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @OHCI1394_IRMultiChanMaskLoClear, align 4
  %49 = load i32, i32* %6, align 4
  %50 = shl i32 1, %49
  %51 = call i32 @reg_write(i32 %47, i32 %48, i32 %50)
  br label %61

52:                                               ; preds = %41
  %53 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %5, align 8
  %54 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @OHCI1394_IRMultiChanMaskHiClear, align 4
  %57 = load i32, i32* %6, align 4
  %58 = sub nsw i32 %57, 32
  %59 = shl i32 1, %58
  %60 = call i32 @reg_write(i32 %55, i32 %56, i32 %59)
  br label %61

61:                                               ; preds = %52, %44
  br label %62

62:                                               ; preds = %61, %40
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %10

66:                                               ; preds = %10
  %67 = call i32 (...) @mb()
  %68 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %5, align 8
  %69 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @OHCI1394_IsochronousCycleTimer, align 4
  %72 = call i32 @reg_read(i32 %70, i32 %71)
  ret void
}

declare dso_local i32 @reg_write(i32, i32, i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @reg_read(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
