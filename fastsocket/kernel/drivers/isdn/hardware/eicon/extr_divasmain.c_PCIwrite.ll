; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_divasmain.c_PCIwrite.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_divasmain.c_PCIwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PCIwrite(i32 %0, i32 %1, i32 %2, i8* %3, i32 %4, i8* %5) #0 {
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
  switch i32 %18, label %39 [
    i32 1, label %19
    i32 2, label %25
    i32 4, label %32
  ]

19:                                               ; preds = %6
  %20 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i8*, i8** %10, align 8
  %23 = load i8, i8* %22, align 1
  %24 = call i32 @pci_write_config_byte(%struct.pci_dev* %20, i32 %21, i8 zeroext %23)
  br label %81

25:                                               ; preds = %6
  %26 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i8*, i8** %10, align 8
  %29 = bitcast i8* %28 to i16*
  %30 = load i16, i16* %29, align 2
  %31 = call i32 @pci_write_config_word(%struct.pci_dev* %26, i32 %27, i16 zeroext %30)
  br label %81

32:                                               ; preds = %6
  %33 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load i8*, i8** %10, align 8
  %36 = bitcast i8* %35 to i32*
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @pci_write_config_dword(%struct.pci_dev* %33, i32 %34, i32 %37)
  br label %81

39:                                               ; preds = %6
  %40 = load i32, i32* %11, align 4
  %41 = srem i32 %40, 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %64, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %11, align 4
  %45 = and i32 %44, 3
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %64, label %47

47:                                               ; preds = %43
  %48 = load i8*, i8** %10, align 8
  %49 = bitcast i8* %48 to i32*
  store i32* %49, i32** %14, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sdiv i32 %50, 4
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %56, %47
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %11, align 4
  %55 = icmp ne i32 %53, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %52
  %57 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load i32*, i32** %14, align 8
  %60 = getelementptr inbounds i32, i32* %59, i32 1
  store i32* %60, i32** %14, align 8
  %61 = load i32, i32* %59, align 4
  %62 = call i32 @pci_write_config_dword(%struct.pci_dev* %57, i32 %58, i32 %61)
  br label %52

63:                                               ; preds = %52
  br label %80

64:                                               ; preds = %43, %39
  %65 = load i8*, i8** %10, align 8
  %66 = bitcast i8* %65 to i32*
  store i32* %66, i32** %15, align 8
  br label %67

67:                                               ; preds = %71, %64
  %68 = load i32, i32* %11, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %11, align 4
  %70 = icmp ne i32 %68, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %67
  %72 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %73 = load i32, i32* %9, align 4
  %74 = load i32*, i32** %15, align 8
  %75 = getelementptr inbounds i32, i32* %74, i32 1
  store i32* %75, i32** %15, align 8
  %76 = bitcast i32* %74 to i8*
  %77 = load i8, i8* %76, align 1
  %78 = call i32 @pci_write_config_byte(%struct.pci_dev* %72, i32 %73, i8 zeroext %77)
  br label %67

79:                                               ; preds = %67
  br label %80

80:                                               ; preds = %79, %63
  br label %81

81:                                               ; preds = %80, %32, %25, %19
  ret void
}

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i8 zeroext) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i16 zeroext) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
