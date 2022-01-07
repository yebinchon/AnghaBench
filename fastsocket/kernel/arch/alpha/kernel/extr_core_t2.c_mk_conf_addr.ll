; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_core_t2.c_mk_conf_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_core_t2.c_mk_conf_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }

@.str = private unnamed_addr constant [68 x i8] c"mk_conf_addr(bus=%d, dfn=0x%x, where=0x%x, addr=0x%lx, type1=0x%x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"mk_conf_addr: device (%d)>20, returning -1\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"mk_conf_addr: returning pci_addr 0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i64*, i8*)* @mk_conf_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mk_conf_addr(%struct.pci_bus* %0, i32 %1, i32 %2, i64* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64* %3, i64** %10, align 8
  store i8* %4, i8** %11, align 8
  %15 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %16 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %13, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i64*, i64** %10, align 8
  %22 = load i8*, i8** %11, align 8
  %23 = call i32 @DBG(i8* %22)
  %24 = load i32, i32* %13, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %49

26:                                               ; preds = %5
  %27 = load i32, i32* %8, align 4
  %28 = lshr i32 %27, 3
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %14, align 4
  %30 = icmp sgt i32 %29, 8
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load i32, i32* %14, align 4
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i8*
  %35 = call i32 @DBG(i8* %34)
  store i32 -1, i32* %6, align 4
  br label %65

36:                                               ; preds = %26
  %37 = load i8*, i8** %11, align 8
  store i8 0, i8* %37, align 1
  %38 = load i32, i32* %14, align 4
  %39 = zext i32 %38 to i64
  %40 = shl i64 2048, %39
  %41 = load i32, i32* %8, align 4
  %42 = and i32 %41, 7
  %43 = shl i32 %42, 8
  %44 = zext i32 %43 to i64
  %45 = or i64 %40, %44
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = or i64 %45, %47
  store i64 %48, i64* %12, align 8
  br label %59

49:                                               ; preds = %5
  %50 = load i8*, i8** %11, align 8
  store i8 1, i8* %50, align 1
  %51 = load i32, i32* %13, align 4
  %52 = shl i32 %51, 16
  %53 = load i32, i32* %8, align 4
  %54 = shl i32 %53, 8
  %55 = or i32 %52, %54
  %56 = load i32, i32* %9, align 4
  %57 = or i32 %55, %56
  %58 = zext i32 %57 to i64
  store i64 %58, i64* %12, align 8
  br label %59

59:                                               ; preds = %49, %36
  %60 = load i64, i64* %12, align 8
  %61 = load i64*, i64** %10, align 8
  store i64 %60, i64* %61, align 8
  %62 = load i64, i64* %12, align 8
  %63 = inttoptr i64 %62 to i8*
  %64 = call i32 @DBG(i8* %63)
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %59, %31
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local i32 @DBG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
