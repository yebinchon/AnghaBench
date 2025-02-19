; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_it821x.c_it821x_program.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_it821x.c_it821x_program.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.pci_dev = type { i32 }
%struct.it821x_dev = type { i64 }

@ATA_66 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32)* @it821x_program to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @it821x_program(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.it821x_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %5, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.pci_dev* @to_pci_dev(i32 %15)
  store %struct.pci_dev* %16, %struct.pci_dev** %6, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = call %struct.it821x_dev* @ide_get_hwifdata(%struct.TYPE_5__* %17)
  store %struct.it821x_dev* %18, %struct.it821x_dev** %7, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  %22 = load %struct.it821x_dev*, %struct.it821x_dev** %7, align 8
  %23 = getelementptr inbounds %struct.it821x_dev, %struct.it821x_dev* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ATA_66, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load i32, i32* %4, align 4
  %29 = ashr i32 %28, 8
  store i32 %29, i32* %9, align 4
  br label %33

30:                                               ; preds = %2
  %31 = load i32, i32* %4, align 4
  %32 = and i32 %31, 255
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %30, %27
  %34 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %35 = load i32, i32* %8, align 4
  %36 = mul nsw i32 4, %35
  %37 = add nsw i32 84, %36
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @pci_write_config_byte(%struct.pci_dev* %34, i32 %37, i32 %38)
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local %struct.it821x_dev* @ide_get_hwifdata(%struct.TYPE_5__*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
