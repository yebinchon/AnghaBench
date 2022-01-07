; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/kernel/extr_kgdb.c_bfin_probe_kernel_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/kernel/extr_kgdb.c_bfin_probe_kernel_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SYSMMR_BASE = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32)* @bfin_probe_kernel_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfin_probe_kernel_write(i8* %0, i8* %1, i32 %2) #0 {
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
  %12 = load i8*, i8** %5, align 8
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
  br label %80

21:                                               ; preds = %3
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* @SYSMMR_BASE, align 8
  %24 = icmp uge i64 %22, %23
  br i1 %24, label %25, label %53

25:                                               ; preds = %21
  %26 = load i32, i32* %7, align 4
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %28, label %38

28:                                               ; preds = %25
  %29 = load i64, i64* %8, align 8
  %30 = urem i64 %29, 2
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @memcpy(i32* %10, i8* %33, i32 4)
  %35 = load i8*, i8** %5, align 8
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @bfin_write16(i8* %35, i32 %36)
  store i32 0, i32* %4, align 4
  br label %80

38:                                               ; preds = %28, %25
  %39 = load i32, i32* %7, align 4
  %40 = icmp eq i32 %39, 4
  br i1 %40, label %41, label %51

41:                                               ; preds = %38
  %42 = load i64, i64* %8, align 8
  %43 = urem i64 %42, 4
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @memcpy(i32* %11, i8* %46, i32 4)
  %48 = load i8*, i8** %5, align 8
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @bfin_write32(i8* %48, i32 %49)
  store i32 0, i32* %4, align 4
  br label %80

51:                                               ; preds = %41, %38
  br label %52

52:                                               ; preds = %51
  br label %77

53:                                               ; preds = %21
  %54 = load i32, i32* %9, align 4
  switch i32 %54, label %76 [
    i32 131, label %55
    i32 130, label %55
    i32 129, label %60
    i32 128, label %68
  ]

55:                                               ; preds = %53, %53
  %56 = load i8*, i8** %5, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @probe_kernel_write(i8* %56, i8* %57, i32 %58)
  store i32 %59, i32* %4, align 4
  br label %80

60:                                               ; preds = %53
  %61 = load i8*, i8** %5, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @dma_memcpy(i8* %61, i8* %62, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  store i32 0, i32* %4, align 4
  br label %80

67:                                               ; preds = %60
  br label %76

68:                                               ; preds = %53
  %69 = load i8*, i8** %5, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @isram_memcpy(i8* %69, i8* %70, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  store i32 0, i32* %4, align 4
  br label %80

75:                                               ; preds = %68
  br label %76

76:                                               ; preds = %53, %75, %67
  br label %77

77:                                               ; preds = %76, %52
  %78 = load i32, i32* @EFAULT, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %77, %74, %66, %55, %45, %32, %19
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @validate_memory_access_address(i64, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @bfin_write16(i8*, i32) #1

declare dso_local i32 @bfin_write32(i8*, i32) #1

declare dso_local i32 @probe_kernel_write(i8*, i8*, i32) #1

declare dso_local i32 @dma_memcpy(i8*, i8*, i32) #1

declare dso_local i32 @isram_memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
