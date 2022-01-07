; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_amplc_pci230.c_pci230_ct_setup_ns_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_amplc_pci230.c_pci230_ct_setup_ns_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.comedi_device = type { i32 }

@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@PCI230_Z2_CT_BASE = common dso_local global i64 0, align 8
@PCI230_ZCLK_SCE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i32, i32, i32, i32)* @pci230_ct_setup_ns_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci230_ct_setup_ns_mode(%struct.comedi_device* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PCI230_Z2_CT_BASE, align 8
  %17 = add nsw i64 %15, %16
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @i8254_set_mode(i64 %17, i32 0, i32 %18, i32 %19)
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @pci230_choose_clk_count(i32 %21, i32* %12, i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @CLK_CONFIG(i32 %24, i32 %25)
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @PCI230_ZCLK_SCE, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @outb(i32 %26, i64 %31)
  %33 = load i32, i32* %12, align 4
  %34 = icmp uge i32 %33, 65536
  br i1 %34, label %35, label %36

35:                                               ; preds = %5
  store i32 0, i32* %12, align 4
  br label %36

36:                                               ; preds = %35, %5
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @PCI230_Z2_CT_BASE, align 8
  %41 = add nsw i64 %39, %40
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %12, align 4
  %44 = call i32 @i8254_write(i64 %41, i32 0, i32 %42, i32 %43)
  ret void
}

declare dso_local i32 @i8254_set_mode(i64, i32, i32, i32) #1

declare dso_local i32 @pci230_choose_clk_count(i32, i32*, i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @CLK_CONFIG(i32, i32) #1

declare dso_local i32 @i8254_write(i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
