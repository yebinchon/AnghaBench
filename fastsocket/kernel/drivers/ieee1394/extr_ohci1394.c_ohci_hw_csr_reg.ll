; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ohci1394.c_ohci_hw_csr_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ohci1394.c_ohci_hw_csr_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_host = type { %struct.ti_ohci* }
%struct.ti_ohci = type { i32 }

@OHCI1394_CSRData = common dso_local global i32 0, align 4
@OHCI1394_CSRCompareData = common dso_local global i32 0, align 4
@OHCI1394_CSRControl = common dso_local global i32 0, align 4
@OHCI_LOOP_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hpsb_host*, i32, i32, i32)* @ohci_hw_csr_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ohci_hw_csr_reg(%struct.hpsb_host* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.hpsb_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ti_ohci*, align 8
  %10 = alloca i32, align 4
  store %struct.hpsb_host* %0, %struct.hpsb_host** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.hpsb_host*, %struct.hpsb_host** %5, align 8
  %12 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %11, i32 0, i32 0
  %13 = load %struct.ti_ohci*, %struct.ti_ohci** %12, align 8
  store %struct.ti_ohci* %13, %struct.ti_ohci** %9, align 8
  %14 = load %struct.ti_ohci*, %struct.ti_ohci** %9, align 8
  %15 = load i32, i32* @OHCI1394_CSRData, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @reg_write(%struct.ti_ohci* %14, i32 %15, i32 %16)
  %18 = load %struct.ti_ohci*, %struct.ti_ohci** %9, align 8
  %19 = load i32, i32* @OHCI1394_CSRCompareData, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @reg_write(%struct.ti_ohci* %18, i32 %19, i32 %20)
  %22 = load %struct.ti_ohci*, %struct.ti_ohci** %9, align 8
  %23 = load i32, i32* @OHCI1394_CSRControl, align 4
  %24 = load i32, i32* %6, align 4
  %25 = and i32 %24, 3
  %26 = call i32 @reg_write(%struct.ti_ohci* %22, i32 %23, i32 %25)
  store i32 0, i32* %10, align 4
  br label %27

27:                                               ; preds = %40, %4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @OHCI_LOOP_COUNT, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %27
  %32 = load %struct.ti_ohci*, %struct.ti_ohci** %9, align 8
  %33 = load i32, i32* @OHCI1394_CSRControl, align 4
  %34 = call i32 @reg_read(%struct.ti_ohci* %32, i32 %33)
  %35 = and i32 %34, -2147483648
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %43

38:                                               ; preds = %31
  %39 = call i32 @mdelay(i32 1)
  br label %40

40:                                               ; preds = %38
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %10, align 4
  br label %27

43:                                               ; preds = %37, %27
  %44 = load %struct.ti_ohci*, %struct.ti_ohci** %9, align 8
  %45 = load i32, i32* @OHCI1394_CSRData, align 4
  %46 = call i32 @reg_read(%struct.ti_ohci* %44, i32 %45)
  ret i32 %46
}

declare dso_local i32 @reg_write(%struct.ti_ohci*, i32, i32) #1

declare dso_local i32 @reg_read(%struct.ti_ohci*, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
