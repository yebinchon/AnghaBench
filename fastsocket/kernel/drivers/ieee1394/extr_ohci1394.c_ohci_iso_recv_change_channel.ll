; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ohci1394.c_ohci_iso_recv_change_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ohci1394.c_ohci_iso_recv_change_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_iso = type { %struct.ohci_iso_recv* }
%struct.ohci_iso_recv = type { i32 }

@OHCI1394_IRMultiChanMaskLoSet = common dso_local global i32 0, align 4
@OHCI1394_IRMultiChanMaskLoClear = common dso_local global i32 0, align 4
@OHCI1394_IRMultiChanMaskHiSet = common dso_local global i32 0, align 4
@OHCI1394_IRMultiChanMaskHiClear = common dso_local global i32 0, align 4
@OHCI1394_IsochronousCycleTimer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hpsb_iso*, i8, i32)* @ohci_iso_recv_change_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ohci_iso_recv_change_channel(%struct.hpsb_iso* %0, i8 zeroext %1, i32 %2) #0 {
  %4 = alloca %struct.hpsb_iso*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca %struct.ohci_iso_recv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hpsb_iso* %0, %struct.hpsb_iso** %4, align 8
  store i8 %1, i8* %5, align 1
  store i32 %2, i32* %6, align 4
  %10 = load %struct.hpsb_iso*, %struct.hpsb_iso** %4, align 8
  %11 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %10, i32 0, i32 0
  %12 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %11, align 8
  store %struct.ohci_iso_recv* %12, %struct.ohci_iso_recv** %7, align 8
  %13 = load i8, i8* %5, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp slt i32 %14, 32
  br i1 %15, label %16, label %27

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, i32* @OHCI1394_IRMultiChanMaskLoSet, align 4
  br label %23

21:                                               ; preds = %16
  %22 = load i32, i32* @OHCI1394_IRMultiChanMaskLoClear, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* %8, align 4
  %25 = load i8, i8* %5, align 1
  %26 = zext i8 %25 to i32
  store i32 %26, i32* %9, align 4
  br label %39

27:                                               ; preds = %3
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, i32* @OHCI1394_IRMultiChanMaskHiSet, align 4
  br label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @OHCI1394_IRMultiChanMaskHiClear, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  store i32 %35, i32* %8, align 4
  %36 = load i8, i8* %5, align 1
  %37 = zext i8 %36 to i32
  %38 = sub nsw i32 %37, 32
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %34, %23
  %40 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %7, align 8
  %41 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = shl i32 1, %44
  %46 = call i32 @reg_write(i32 %42, i32 %43, i32 %45)
  %47 = call i32 (...) @mb()
  %48 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %7, align 8
  %49 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @OHCI1394_IsochronousCycleTimer, align 4
  %52 = call i32 @reg_read(i32 %50, i32 %51)
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
