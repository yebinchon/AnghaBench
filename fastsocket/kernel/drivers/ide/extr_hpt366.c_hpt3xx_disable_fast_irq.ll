; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_hpt366.c_hpt3xx_disable_fast_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_hpt366.c_hpt3xx_disable_fast_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.ide_host = type { i32**, %struct.hpt_info* }
%struct.hpt_info = type { i64 }

@HPT374 = common dso_local global i64 0, align 8
@HPT370 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, i64)* @hpt3xx_disable_fast_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpt3xx_disable_fast_irq(%struct.pci_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ide_host*, align 8
  %6 = alloca %struct.hpt_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %11 = call %struct.ide_host* @pci_get_drvdata(%struct.pci_dev* %10)
  store %struct.ide_host* %11, %struct.ide_host** %5, align 8
  %12 = load %struct.ide_host*, %struct.ide_host** %5, align 8
  %13 = getelementptr inbounds %struct.ide_host, %struct.ide_host* %12, i32 0, i32 1
  %14 = load %struct.hpt_info*, %struct.hpt_info** %13, align 8
  %15 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 0
  %17 = load %struct.ide_host*, %struct.ide_host** %5, align 8
  %18 = getelementptr inbounds %struct.ide_host, %struct.ide_host* %17, i32 0, i32 0
  %19 = load i32**, i32*** %18, align 8
  %20 = getelementptr inbounds i32*, i32** %19, i64 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %16, %21
  %23 = zext i1 %22 to i32
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.hpt_info, %struct.hpt_info* %14, i64 %24
  store %struct.hpt_info* %25, %struct.hpt_info** %6, align 8
  %26 = load %struct.hpt_info*, %struct.hpt_info** %6, align 8
  %27 = getelementptr inbounds %struct.hpt_info, %struct.hpt_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %7, align 8
  store i64 0, i64* %9, align 8
  %29 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %30 = load i64, i64* %4, align 8
  %31 = add nsw i64 %30, 1
  %32 = call i32 @pci_read_config_byte(%struct.pci_dev* %29, i64 %31, i64* %9)
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @HPT374, align 8
  %35 = icmp sge i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %2
  %37 = load i64, i64* %9, align 8
  %38 = and i64 %37, -8
  store i64 %38, i64* %8, align 8
  br label %53

39:                                               ; preds = %2
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* @HPT370, align 8
  %42 = icmp sge i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = load i64, i64* %9, align 8
  store i64 %44, i64* %8, align 8
  %45 = load i64, i64* %8, align 8
  %46 = and i64 %45, -3
  store i64 %46, i64* %8, align 8
  %47 = load i64, i64* %8, align 8
  %48 = or i64 %47, 1
  store i64 %48, i64* %8, align 8
  br label %52

49:                                               ; preds = %39
  %50 = load i64, i64* %9, align 8
  %51 = and i64 %50, -129
  store i64 %51, i64* %8, align 8
  br label %52

52:                                               ; preds = %49, %43
  br label %53

53:                                               ; preds = %52, %36
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* %9, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %59 = load i64, i64* %4, align 8
  %60 = add nsw i64 %59, 1
  %61 = load i64, i64* %8, align 8
  %62 = call i32 @pci_write_config_byte(%struct.pci_dev* %58, i64 %60, i64 %61)
  br label %63

63:                                               ; preds = %57, %53
  ret void
}

declare dso_local %struct.ide_host* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i64, i64*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
