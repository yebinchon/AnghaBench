; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_triflex.c_triflex_set_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_triflex.c_triflex_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.pci_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32)* @triflex_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @triflex_set_mode(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %5, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.pci_dev* @to_pci_dev(i32 %16)
  store %struct.pci_dev* %17, %struct.pci_dev** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 116, i32 112
  store i32 %23, i32* %9, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, 1
  store i32 %27, i32* %10, align 4
  %28 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @pci_read_config_dword(%struct.pci_dev* %28, i32 %29, i32* %7)
  %31 = load i32, i32* %4, align 4
  switch i32 %31, label %41 [
    i32 136, label %32
    i32 137, label %33
    i32 138, label %34
    i32 128, label %35
    i32 129, label %35
    i32 130, label %35
    i32 131, label %36
    i32 132, label %37
    i32 133, label %38
    i32 134, label %39
    i32 135, label %40
  ]

32:                                               ; preds = %2
  store i32 259, i32* %8, align 4
  br label %41

33:                                               ; preds = %2
  store i32 515, i32* %8, align 4
  br label %41

34:                                               ; preds = %2
  store i32 2056, i32* %8, align 4
  br label %41

35:                                               ; preds = %2, %2, %2
  store i32 3855, i32* %8, align 4
  br label %41

36:                                               ; preds = %2
  store i32 514, i32* %8, align 4
  br label %41

37:                                               ; preds = %2
  store i32 516, i32* %8, align 4
  br label %41

38:                                               ; preds = %2
  store i32 1028, i32* %8, align 4
  br label %41

39:                                               ; preds = %2
  store i32 1288, i32* %8, align 4
  br label %41

40:                                               ; preds = %2
  store i32 2056, i32* %8, align 4
  br label %41

41:                                               ; preds = %2, %40, %39, %38, %37, %36, %35, %34, %33, %32
  %42 = load i32, i32* %10, align 4
  %43 = mul nsw i32 16, %42
  %44 = shl i32 65535, %43
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %7, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %10, align 4
  %50 = mul nsw i32 16, %49
  %51 = shl i32 %48, %50
  %52 = load i32, i32* %7, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %7, align 4
  %54 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @pci_write_config_dword(%struct.pci_dev* %54, i32 %55, i32 %56)
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
