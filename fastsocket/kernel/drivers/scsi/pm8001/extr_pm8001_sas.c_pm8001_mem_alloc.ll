; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_sas.c_pm8001_mem_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_sas.c_pm8001_mem_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"memory allocation error\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pm8001_mem_alloc(%struct.pci_dev* %0, i8** %1, i32* %2, i64* %3, i64* %4, i64 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.pci_dev*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %9, align 8
  store i8** %1, i8*** %10, align 8
  store i32* %2, i32** %11, align 8
  store i64* %3, i64** %12, align 8
  store i64* %4, i64** %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  store i32 0, i32* %19, align 4
  %20 = load i64, i64* %15, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %7
  %23 = load i64, i64* %15, align 8
  %24 = trunc i64 %23 to i32
  %25 = sub nsw i32 %24, 1
  store i32 %25, i32* %19, align 4
  br label %26

26:                                               ; preds = %22, %7
  %27 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %28 = load i64, i64* %14, align 8
  %29 = load i64, i64* %15, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i64 @pci_alloc_consistent(%struct.pci_dev* %27, i64 %30, i32* %17)
  store i64 %31, i64* %16, align 8
  %32 = load i64, i64* %16, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %26
  %35 = call i32 @pm8001_printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %69

36:                                               ; preds = %26
  %37 = load i64, i64* %16, align 8
  %38 = inttoptr i64 %37 to i8*
  %39 = load i64, i64* %14, align 8
  %40 = load i64, i64* %15, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @memset(i8* %38, i32 0, i64 %41)
  %43 = load i32, i32* %17, align 4
  %44 = load i32*, i32** %11, align 8
  store i32 %43, i32* %44, align 4
  %45 = load i32*, i32** %11, align 8
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %19, align 4
  %48 = add nsw i32 %46, %47
  %49 = load i32, i32* %19, align 4
  %50 = xor i32 %49, -1
  %51 = and i32 %48, %50
  store i32 %51, i32* %18, align 4
  %52 = load i64, i64* %16, align 8
  %53 = inttoptr i64 %52 to i8*
  %54 = load i32, i32* %18, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr i8, i8* %53, i64 %55
  %57 = load i32*, i32** %11, align 8
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = sub i64 0, %59
  %61 = getelementptr i8, i8* %56, i64 %60
  %62 = load i8**, i8*** %10, align 8
  store i8* %61, i8** %62, align 8
  %63 = load i32, i32* %18, align 4
  %64 = call i64 @upper_32_bits(i32 %63)
  %65 = load i64*, i64** %12, align 8
  store i64 %64, i64* %65, align 8
  %66 = load i32, i32* %18, align 4
  %67 = call i64 @lower_32_bits(i32 %66)
  %68 = load i64*, i64** %13, align 8
  store i64 %67, i64* %68, align 8
  store i32 0, i32* %8, align 4
  br label %69

69:                                               ; preds = %36, %34
  %70 = load i32, i32* %8, align 4
  ret i32 %70
}

declare dso_local i64 @pci_alloc_consistent(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @pm8001_printk(i8*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i64 @upper_32_bits(i32) #1

declare dso_local i64 @lower_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
