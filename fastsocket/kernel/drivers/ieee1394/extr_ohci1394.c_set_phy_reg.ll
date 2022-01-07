; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ohci1394.c_set_phy_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ohci1394.c_set_phy_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_ohci = type { i32 }

@OHCI1394_PhyControl = common dso_local global i32 0, align 4
@OHCI_LOOP_COUNT = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Set PHY Reg timeout [0x%08x/0x%08x/%d]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ti_ohci*, i32, i32)* @set_phy_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_phy_reg(%struct.ti_ohci* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ti_ohci*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.ti_ohci* %0, %struct.ti_ohci** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.ti_ohci*, %struct.ti_ohci** %4, align 8
  %11 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %10, i32 0, i32 0
  %12 = load i64, i64* %8, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.ti_ohci*, %struct.ti_ohci** %4, align 8
  %15 = load i32, i32* @OHCI1394_PhyControl, align 4
  %16 = load i32, i32* %5, align 4
  %17 = shl i32 %16, 8
  %18 = load i32, i32* %6, align 4
  %19 = or i32 %17, %18
  %20 = or i32 %19, 16384
  %21 = call i32 @reg_write(%struct.ti_ohci* %14, i32 %15, i32 %20)
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %36, %3
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @OHCI_LOOP_COUNT, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %22
  %27 = load %struct.ti_ohci*, %struct.ti_ohci** %4, align 8
  %28 = load i32, i32* @OHCI1394_PhyControl, align 4
  %29 = call i32 @reg_read(%struct.ti_ohci* %27, i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = and i32 %30, 16384
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  br label %39

34:                                               ; preds = %26
  %35 = call i32 @mdelay(i32 1)
  br label %36

36:                                               ; preds = %34
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  br label %22

39:                                               ; preds = %33, %22
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @OHCI_LOOP_COUNT, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %39
  %44 = load i32, i32* @KERN_ERR, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = and i32 %46, 16384
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @PRINT(i32 %44, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %43, %39
  %51 = load %struct.ti_ohci*, %struct.ti_ohci** %4, align 8
  %52 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %51, i32 0, i32 0
  %53 = load i64, i64* %8, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @reg_write(%struct.ti_ohci*, i32, i32) #1

declare dso_local i32 @reg_read(%struct.ti_ohci*, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @PRINT(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
