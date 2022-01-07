; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00pci.c_rt2x00pci_alloc_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00pci.c_rt2x00pci_alloc_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i8*, %struct.TYPE_3__*, i8*, %struct.TYPE_4__, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.pci_dev = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to allocate registers\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*)* @rt2x00pci_alloc_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2x00pci_alloc_reg(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  %5 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %6 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.pci_dev* @to_pci_dev(i32 %7)
  store %struct.pci_dev* %8, %struct.pci_dev** %4, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = call i32 @pci_ioremap_bar(%struct.pci_dev* %9, i32 0)
  %11 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %12 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i32 %10, i32* %13, align 8
  %14 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %15 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %51

20:                                               ; preds = %1
  %21 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %22 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i8* @kzalloc(i32 %25, i32 %26)
  %28 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %29 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %28, i32 0, i32 2
  store i8* %27, i8** %29, align 8
  %30 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %31 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %30, i32 0, i32 2
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %20
  br label %51

35:                                               ; preds = %20
  %36 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %37 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %36, i32 0, i32 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call i8* @kzalloc(i32 %40, i32 %41)
  %43 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %44 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  %45 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %46 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %35
  br label %51

50:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %57

51:                                               ; preds = %49, %34, %19
  %52 = call i32 @rt2x00_probe_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %53 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %54 = call i32 @rt2x00pci_free_reg(%struct.rt2x00_dev* %53)
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %51, %50
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @pci_ioremap_bar(%struct.pci_dev*, i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @rt2x00_probe_err(i8*) #1

declare dso_local i32 @rt2x00pci_free_reg(%struct.rt2x00_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
