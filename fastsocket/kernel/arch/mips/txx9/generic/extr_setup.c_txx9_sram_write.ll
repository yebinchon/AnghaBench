; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/txx9/generic/extr_setup.c_txx9_sram_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/txx9/generic/extr_setup.c_txx9_sram_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kobject = type { i32 }
%struct.bin_attribute = type { i64, %struct.txx9_sramc_sysdev* }
%struct.txx9_sramc_sysdev = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* @txx9_sram_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @txx9_sram_write(%struct.file* %0, %struct.kobject* %1, %struct.bin_attribute* %2, i8* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.kobject*, align 8
  %10 = alloca %struct.bin_attribute*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.txx9_sramc_sysdev*, align 8
  %15 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.kobject* %1, %struct.kobject** %9, align 8
  store %struct.bin_attribute* %2, %struct.bin_attribute** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %16 = load %struct.bin_attribute*, %struct.bin_attribute** %10, align 8
  %17 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %16, i32 0, i32 1
  %18 = load %struct.txx9_sramc_sysdev*, %struct.txx9_sramc_sysdev** %17, align 8
  store %struct.txx9_sramc_sysdev* %18, %struct.txx9_sramc_sysdev** %14, align 8
  %19 = load %struct.bin_attribute*, %struct.bin_attribute** %10, align 8
  %20 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %15, align 8
  %22 = load i64, i64* %12, align 8
  %23 = load i64, i64* %15, align 8
  %24 = icmp uge i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %6
  store i64 0, i64* %7, align 8
  br label %46

26:                                               ; preds = %6
  %27 = load i64, i64* %12, align 8
  %28 = load i64, i64* %13, align 8
  %29 = add i64 %27, %28
  %30 = load i64, i64* %15, align 8
  %31 = icmp ugt i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load i64, i64* %15, align 8
  %34 = load i64, i64* %12, align 8
  %35 = sub i64 %33, %34
  store i64 %35, i64* %13, align 8
  br label %36

36:                                               ; preds = %32, %26
  %37 = load %struct.txx9_sramc_sysdev*, %struct.txx9_sramc_sysdev** %14, align 8
  %38 = getelementptr inbounds %struct.txx9_sramc_sysdev, %struct.txx9_sramc_sysdev* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %12, align 8
  %41 = add i64 %39, %40
  %42 = load i8*, i8** %11, align 8
  %43 = load i64, i64* %13, align 8
  %44 = call i32 @memcpy_toio(i64 %41, i8* %42, i64 %43)
  %45 = load i64, i64* %13, align 8
  store i64 %45, i64* %7, align 8
  br label %46

46:                                               ; preds = %36, %25
  %47 = load i64, i64* %7, align 8
  ret i64 %47
}

declare dso_local i32 @memcpy_toio(i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
