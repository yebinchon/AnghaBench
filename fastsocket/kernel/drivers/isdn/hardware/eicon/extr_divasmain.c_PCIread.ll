; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_divasmain.c_PCIread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_divasmain.c_PCIread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PCIread(i32 %0, i32 %1, i32 %2, i8* %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.pci_dev*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %16 = load i8*, i8** %12, align 8
  %17 = bitcast i8* %16 to %struct.pci_dev*
  store %struct.pci_dev* %17, %struct.pci_dev** %13, align 8
  %18 = load i32, i32* %11, align 4
  switch i32 %18, label %36 [
    i32 1, label %19
    i32 2, label %24
    i32 4, label %30
  ]

19:                                               ; preds = %6
  %20 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i8*, i8** %10, align 8
  %23 = call i32 @pci_read_config_byte(%struct.pci_dev* %20, i32 %21, i8* %22)
  br label %76

24:                                               ; preds = %6
  %25 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i8*, i8** %10, align 8
  %28 = bitcast i8* %27 to i16*
  %29 = call i32 @pci_read_config_word(%struct.pci_dev* %25, i32 %26, i16* %28)
  br label %76

30:                                               ; preds = %6
  %31 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load i8*, i8** %10, align 8
  %34 = bitcast i8* %33 to i32*
  %35 = call i32 @pci_read_config_dword(%struct.pci_dev* %31, i32 %32, i32* %34)
  br label %76

36:                                               ; preds = %6
  %37 = load i32, i32* %11, align 4
  %38 = srem i32 %37, 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %60, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* %11, align 4
  %42 = and i32 %41, 3
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %60, label %44

44:                                               ; preds = %40
  %45 = load i8*, i8** %10, align 8
  %46 = bitcast i8* %45 to i32*
  store i32* %46, i32** %14, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sdiv i32 %47, 4
  store i32 %48, i32* %11, align 4
  br label %49

49:                                               ; preds = %53, %44
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %11, align 4
  %52 = icmp ne i32 %50, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %55 = load i32, i32* %9, align 4
  %56 = load i32*, i32** %14, align 8
  %57 = getelementptr inbounds i32, i32* %56, i32 1
  store i32* %57, i32** %14, align 8
  %58 = call i32 @pci_read_config_dword(%struct.pci_dev* %54, i32 %55, i32* %56)
  br label %49

59:                                               ; preds = %49
  br label %75

60:                                               ; preds = %40, %36
  %61 = load i8*, i8** %10, align 8
  %62 = bitcast i8* %61 to i32*
  store i32* %62, i32** %15, align 8
  br label %63

63:                                               ; preds = %67, %60
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %11, align 4
  %66 = icmp ne i32 %64, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %63
  %68 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %69 = load i32, i32* %9, align 4
  %70 = load i32*, i32** %15, align 8
  %71 = getelementptr inbounds i32, i32* %70, i32 1
  store i32* %71, i32** %15, align 8
  %72 = bitcast i32* %70 to i8*
  %73 = call i32 @pci_read_config_byte(%struct.pci_dev* %68, i32 %69, i8* %72)
  br label %63

74:                                               ; preds = %63
  br label %75

75:                                               ; preds = %74, %59
  br label %76

76:                                               ; preds = %75, %30, %24, %19
  ret void
}

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i8*) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i16*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
