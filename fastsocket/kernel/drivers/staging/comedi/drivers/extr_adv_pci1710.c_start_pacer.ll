; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adv_pci1710.c_start_pacer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adv_pci1710.c_start_pacer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64 }

@.str = private unnamed_addr constant [46 x i8] c"adv_pci1710 EDBG: BGN: start_pacer(%d,%u,%u)\0A\00", align 1
@PCI171x_CNTCTRL = common dso_local global i64 0, align 8
@PCI171x_CNT2 = common dso_local global i64 0, align 8
@PCI171x_CNT1 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"adv_pci1710 EDBG: END: start_pacer(...)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i32, i32, i32)* @start_pacer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_pacer(%struct.comedi_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %8, align 4
  %12 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %10, i32 %11)
  %13 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PCI171x_CNTCTRL, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @outw(i32 180, i64 %17)
  %19 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %20 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PCI171x_CNTCTRL, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @outw(i32 116, i64 %23)
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %62

27:                                               ; preds = %4
  %28 = load i32, i32* %8, align 4
  %29 = and i32 %28, 255
  %30 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %31 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @PCI171x_CNT2, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @outw(i32 %29, i64 %34)
  %36 = load i32, i32* %8, align 4
  %37 = lshr i32 %36, 8
  %38 = and i32 %37, 255
  %39 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %40 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @PCI171x_CNT2, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @outw(i32 %38, i64 %43)
  %45 = load i32, i32* %7, align 4
  %46 = and i32 %45, 255
  %47 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %48 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @PCI171x_CNT1, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @outw(i32 %46, i64 %51)
  %53 = load i32, i32* %7, align 4
  %54 = lshr i32 %53, 8
  %55 = and i32 %54, 255
  %56 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %57 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @PCI171x_CNT1, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @outw(i32 %55, i64 %60)
  br label %62

62:                                               ; preds = %27, %4
  %63 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @DPRINTK(i8*, ...) #1

declare dso_local i32 @outw(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
