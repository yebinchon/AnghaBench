; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/kernel/extr_kgdb.c_bfin_probe_kernel_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/kernel/extr_kgdb.c_bfin_probe_kernel_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SYSMMR_BASE = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32)* @bfin_probe_kernel_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfin_probe_kernel_read(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = ptrtoint i8* %12 to i64
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @validate_memory_access_address(i64 %14, i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %4, align 4
  br label %78

21:                                               ; preds = %3
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* @SYSMMR_BASE, align 8
  %24 = icmp uge i64 %22, %23
  br i1 %24, label %25, label %51

25:                                               ; preds = %21
  %26 = load i32, i32* %7, align 4
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %28, label %37

28:                                               ; preds = %25
  %29 = load i64, i64* %8, align 8
  %30 = urem i64 %29, 2
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @bfin_read16(i8* %33)
  store i32 %34, i32* %10, align 4
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @memcpy(i8* %35, i32* %10, i32 4)
  store i32 0, i32* %4, align 4
  br label %78

37:                                               ; preds = %28, %25
  %38 = load i32, i32* %7, align 4
  %39 = icmp eq i32 %38, 4
  br i1 %39, label %40, label %49

40:                                               ; preds = %37
  %41 = load i64, i64* %8, align 8
  %42 = urem i64 %41, 4
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @bfin_read32(i8* %45)
  store i32 %46, i32* %11, align 4
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 @memcpy(i8* %47, i32* %11, i32 4)
  store i32 0, i32* %4, align 4
  br label %78

49:                                               ; preds = %40, %37
  br label %50

50:                                               ; preds = %49
  br label %75

51:                                               ; preds = %21
  %52 = load i32, i32* %9, align 4
  switch i32 %52, label %74 [
    i32 131, label %53
    i32 130, label %53
    i32 129, label %58
    i32 128, label %66
  ]

53:                                               ; preds = %51, %51
  %54 = load i8*, i8** %5, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @probe_kernel_read(i8* %54, i8* %55, i32 %56)
  store i32 %57, i32* %4, align 4
  br label %78

58:                                               ; preds = %51
  %59 = load i8*, i8** %5, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @dma_memcpy(i8* %59, i8* %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  store i32 0, i32* %4, align 4
  br label %78

65:                                               ; preds = %58
  br label %74

66:                                               ; preds = %51
  %67 = load i8*, i8** %5, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @isram_memcpy(i8* %67, i8* %68, i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  store i32 0, i32* %4, align 4
  br label %78

73:                                               ; preds = %66
  br label %74

74:                                               ; preds = %51, %73, %65
  br label %75

75:                                               ; preds = %74, %50
  %76 = load i32, i32* @EFAULT, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %75, %72, %64, %53, %44, %32, %19
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @validate_memory_access_address(i64, i32) #1

declare dso_local i32 @bfin_read16(i8*) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @bfin_read32(i8*) #1

declare dso_local i32 @probe_kernel_read(i8*, i8*, i32) #1

declare dso_local i32 @dma_memcpy(i8*, i8*, i32) #1

declare dso_local i32 @isram_memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
