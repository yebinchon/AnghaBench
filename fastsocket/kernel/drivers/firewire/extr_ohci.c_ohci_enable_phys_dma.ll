; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_ohci.c_ohci_enable_phys_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_ohci.c_ohci_enable_phys_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_card = type { i32 }
%struct.fw_ohci = type { i32, i32 }

@ESTALE = common dso_local global i32 0, align 4
@LOCAL_BUS = common dso_local global i32 0, align 4
@OHCI1394_PhyReqFilterLoSet = common dso_local global i32 0, align 4
@OHCI1394_PhyReqFilterHiSet = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fw_card*, i32, i32)* @ohci_enable_phys_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ohci_enable_phys_dma(%struct.fw_card* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.fw_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.fw_ohci*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fw_card* %0, %struct.fw_card** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.fw_card*, %struct.fw_card** %4, align 8
  %12 = call %struct.fw_ohci* @fw_ohci(%struct.fw_card* %11)
  store %struct.fw_ohci* %12, %struct.fw_ohci** %7, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.fw_ohci*, %struct.fw_ohci** %7, align 8
  %14 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %13, i32 0, i32 1
  %15 = load i64, i64* %8, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.fw_ohci*, %struct.fw_ohci** %7, align 8
  %18 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @ESTALE, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %10, align 4
  br label %54

25:                                               ; preds = %3
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %26, 65472
  %28 = load i32, i32* @LOCAL_BUS, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* %5, align 4
  %32 = and i32 %31, 63
  br label %34

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %33, %30
  %35 = phi i32 [ %32, %30 ], [ 63, %33 ]
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 32
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load %struct.fw_ohci*, %struct.fw_ohci** %7, align 8
  %40 = load i32, i32* @OHCI1394_PhyReqFilterLoSet, align 4
  %41 = load i32, i32* %9, align 4
  %42 = shl i32 1, %41
  %43 = call i32 @reg_write(%struct.fw_ohci* %39, i32 %40, i32 %42)
  br label %51

44:                                               ; preds = %34
  %45 = load %struct.fw_ohci*, %struct.fw_ohci** %7, align 8
  %46 = load i32, i32* @OHCI1394_PhyReqFilterHiSet, align 4
  %47 = load i32, i32* %9, align 4
  %48 = sub nsw i32 %47, 32
  %49 = shl i32 1, %48
  %50 = call i32 @reg_write(%struct.fw_ohci* %45, i32 %46, i32 %49)
  br label %51

51:                                               ; preds = %44, %38
  %52 = load %struct.fw_ohci*, %struct.fw_ohci** %7, align 8
  %53 = call i32 @flush_writes(%struct.fw_ohci* %52)
  br label %54

54:                                               ; preds = %51, %22
  %55 = load %struct.fw_ohci*, %struct.fw_ohci** %7, align 8
  %56 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %55, i32 0, i32 1
  %57 = load i64, i64* %8, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* %56, i64 %57)
  %59 = load i32, i32* %10, align 4
  ret i32 %59
}

declare dso_local %struct.fw_ohci* @fw_ohci(%struct.fw_card*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @reg_write(%struct.fw_ohci*, i32, i32) #1

declare dso_local i32 @flush_writes(%struct.fw_ohci*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
