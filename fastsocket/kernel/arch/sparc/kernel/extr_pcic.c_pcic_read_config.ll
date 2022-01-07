; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_pcic.c_pcic_read_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_pcic.c_pcic_read_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32*)* @pcic_read_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcic_read_config(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %13 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %14 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %6, align 4
  br label %78

20:                                               ; preds = %5
  %21 = load i32, i32* %10, align 4
  switch i32 %21, label %75 [
    i32 1, label %22
    i32 2, label %37
    i32 4, label %59
  ]

22:                                               ; preds = %20
  %23 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %24 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = and i32 %27, -4
  %29 = call i32 @pcic_read_config_dword(i64 %25, i32 %26, i32 %28, i32* %12)
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %9, align 4
  %32 = and i32 %31, 3
  %33 = mul nsw i32 8, %32
  %34 = lshr i32 %30, %33
  %35 = and i32 255, %34
  %36 = load i32*, i32** %11, align 8
  store i32 %35, i32* %36, align 4
  store i32 0, i32* %6, align 4
  br label %78

37:                                               ; preds = %20
  %38 = load i32, i32* %9, align 4
  %39 = and i32 %38, 1
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  br label %78

44:                                               ; preds = %37
  %45 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %46 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %9, align 4
  %50 = and i32 %49, -4
  %51 = call i32 @pcic_read_config_dword(i64 %47, i32 %48, i32 %50, i32* %12)
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %9, align 4
  %54 = and i32 %53, 3
  %55 = mul nsw i32 8, %54
  %56 = lshr i32 %52, %55
  %57 = and i32 65535, %56
  %58 = load i32*, i32** %11, align 8
  store i32 %57, i32* %58, align 4
  store i32 0, i32* %6, align 4
  br label %78

59:                                               ; preds = %20
  %60 = load i32, i32* %9, align 4
  %61 = and i32 %60, 3
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %6, align 4
  br label %78

66:                                               ; preds = %59
  %67 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %68 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %9, align 4
  %72 = and i32 %71, -4
  %73 = load i32*, i32** %11, align 8
  %74 = call i32 @pcic_read_config_dword(i64 %69, i32 %70, i32 %72, i32* %73)
  store i32 0, i32* %6, align 4
  br label %78

75:                                               ; preds = %20
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %6, align 4
  br label %78

78:                                               ; preds = %75, %66, %63, %44, %41, %22, %17
  %79 = load i32, i32* %6, align 4
  ret i32 %79
}

declare dso_local i32 @pcic_read_config_dword(i64, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
