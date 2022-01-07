; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ohci1394.c_get_phy_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ohci1394.c_get_phy_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_ohci = type { i32 }

@OHCI1394_PhyControl = common dso_local global i32 0, align 4
@OHCI_LOOP_COUNT = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Get PHY Reg timeout [0x%08x/0x%08x/%d]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_ohci*, i32)* @get_phy_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_phy_reg(%struct.ti_ohci* %0, i32 %1) #0 {
  %3 = alloca %struct.ti_ohci*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ti_ohci* %0, %struct.ti_ohci** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ti_ohci*, %struct.ti_ohci** %3, align 8
  %9 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %8, i32 0, i32 0
  %10 = load i64, i64* %6, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.ti_ohci*, %struct.ti_ohci** %3, align 8
  %13 = load i32, i32* @OHCI1394_PhyControl, align 4
  %14 = load i32, i32* %4, align 4
  %15 = shl i32 %14, 8
  %16 = or i32 %15, 32768
  %17 = call i32 @reg_write(%struct.ti_ohci* %12, i32 %13, i32 %16)
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %31, %2
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @OHCI_LOOP_COUNT, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %18
  %23 = load %struct.ti_ohci*, %struct.ti_ohci** %3, align 8
  %24 = load i32, i32* @OHCI1394_PhyControl, align 4
  %25 = call i32 @reg_read(%struct.ti_ohci* %23, i32 %24)
  %26 = and i32 %25, -2147483648
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %34

29:                                               ; preds = %22
  %30 = call i32 @mdelay(i32 1)
  br label %31

31:                                               ; preds = %29
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %18

34:                                               ; preds = %28, %18
  %35 = load %struct.ti_ohci*, %struct.ti_ohci** %3, align 8
  %36 = load i32, i32* @OHCI1394_PhyControl, align 4
  %37 = call i32 @reg_read(%struct.ti_ohci* %35, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @OHCI_LOOP_COUNT, align 4
  %40 = icmp sge i32 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %34
  %42 = load i32, i32* @KERN_ERR, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = and i32 %44, -2147483648
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @PRINT(i32 %42, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %41, %34
  %49 = load %struct.ti_ohci*, %struct.ti_ohci** %3, align 8
  %50 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %49, i32 0, i32 0
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  %53 = load i32, i32* %7, align 4
  %54 = and i32 %53, 16711680
  %55 = ashr i32 %54, 16
  ret i32 %55
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
