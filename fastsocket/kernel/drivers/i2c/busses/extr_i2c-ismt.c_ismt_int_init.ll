; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-ismt.c_ismt_int_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-ismt.c_ismt_int_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ismt_priv = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [54 x i8] c"Unable to use MSI interrupts, falling back to legacy\0A\00", align 1
@ismt_do_msi_interrupt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"ismt-msi\00", align 1
@ismt_do_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"ismt-intx\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"no usable interrupts\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ismt_priv*)* @ismt_int_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ismt_int_init(%struct.ismt_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ismt_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.ismt_priv* %0, %struct.ismt_priv** %3, align 8
  %5 = load %struct.ismt_priv*, %struct.ismt_priv** %3, align 8
  %6 = getelementptr inbounds %struct.ismt_priv, %struct.ismt_priv* %5, i32 0, i32 1
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = call i32 @pci_enable_msi(%struct.TYPE_3__* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.ismt_priv*, %struct.ismt_priv** %3, align 8
  %13 = getelementptr inbounds %struct.ismt_priv, %struct.ismt_priv* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = call i32 @dev_warn(i32* %15, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  br label %40

17:                                               ; preds = %1
  %18 = load %struct.ismt_priv*, %struct.ismt_priv** %3, align 8
  %19 = getelementptr inbounds %struct.ismt_priv, %struct.ismt_priv* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.ismt_priv*, %struct.ismt_priv** %3, align 8
  %23 = getelementptr inbounds %struct.ismt_priv, %struct.ismt_priv* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @ismt_do_msi_interrupt, align 4
  %28 = load %struct.ismt_priv*, %struct.ismt_priv** %3, align 8
  %29 = call i32 @devm_request_irq(i32* %21, i32 %26, i32 %27, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %struct.ismt_priv* %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %17
  %33 = load %struct.ismt_priv*, %struct.ismt_priv** %3, align 8
  %34 = getelementptr inbounds %struct.ismt_priv, %struct.ismt_priv* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = call i32 @pci_disable_msi(%struct.TYPE_3__* %35)
  br label %40

37:                                               ; preds = %17
  %38 = load %struct.ismt_priv*, %struct.ismt_priv** %3, align 8
  %39 = getelementptr inbounds %struct.ismt_priv, %struct.ismt_priv* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  br label %67

40:                                               ; preds = %32, %11
  %41 = load %struct.ismt_priv*, %struct.ismt_priv** %3, align 8
  %42 = getelementptr inbounds %struct.ismt_priv, %struct.ismt_priv* %41, i32 0, i32 1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load %struct.ismt_priv*, %struct.ismt_priv** %3, align 8
  %46 = getelementptr inbounds %struct.ismt_priv, %struct.ismt_priv* %45, i32 0, i32 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @ismt_do_interrupt, align 4
  %51 = load i32, i32* @IRQF_SHARED, align 4
  %52 = load %struct.ismt_priv*, %struct.ismt_priv** %3, align 8
  %53 = call i32 @devm_request_irq(i32* %44, i32 %49, i32 %50, i32 %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), %struct.ismt_priv* %52)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %40
  %57 = load %struct.ismt_priv*, %struct.ismt_priv** %3, align 8
  %58 = getelementptr inbounds %struct.ismt_priv, %struct.ismt_priv* %57, i32 0, i32 1
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = call i32 @dev_err(i32* %60, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %62 = load i32, i32* @ENODEV, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %68

64:                                               ; preds = %40
  %65 = load %struct.ismt_priv*, %struct.ismt_priv** %3, align 8
  %66 = getelementptr inbounds %struct.ismt_priv, %struct.ismt_priv* %65, i32 0, i32 0
  store i32 0, i32* %66, align 8
  br label %67

67:                                               ; preds = %64, %37
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %67, %56
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @pci_enable_msi(%struct.TYPE_3__*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i8*, %struct.ismt_priv*) #1

declare dso_local i32 @pci_disable_msi(%struct.TYPE_3__*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
