; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_geode-aes.c_do_crypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_geode-aes.c_do_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AES_OP_TIMEOUT = common dso_local global i32 0, align 4
@_iobase = common dso_local global i64 0, align 8
@AES_SOURCEA_REG = common dso_local global i64 0, align 8
@AES_DSTA_REG = common dso_local global i64 0, align 8
@AES_LENA_REG = common dso_local global i64 0, align 8
@AES_CTRL_START = common dso_local global i32 0, align 4
@AES_CTRLA_REG = common dso_local global i64 0, align 8
@AES_INTR_REG = common dso_local global i64 0, align 8
@AES_INTRA_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32)* @do_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_crypt(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* @AES_OP_TIMEOUT, align 4
  store i32 %11, i32* %10, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @virt_to_phys(i8* %12)
  %14 = load i64, i64* @_iobase, align 8
  %15 = load i64, i64* @AES_SOURCEA_REG, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @iowrite32(i32 %13, i64 %16)
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @virt_to_phys(i8* %18)
  %20 = load i64, i64* @_iobase, align 8
  %21 = load i64, i64* @AES_DSTA_REG, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @iowrite32(i32 %19, i64 %22)
  %24 = load i32, i32* %7, align 4
  %25 = load i64, i64* @_iobase, align 8
  %26 = load i64, i64* @AES_LENA_REG, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @iowrite32(i32 %24, i64 %27)
  %29 = load i32, i32* @AES_CTRL_START, align 4
  %30 = load i32, i32* %8, align 4
  %31 = or i32 %29, %30
  %32 = load i64, i64* @_iobase, align 8
  %33 = load i64, i64* @AES_CTRLA_REG, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @iowrite32(i32 %31, i64 %34)
  br label %36

36:                                               ; preds = %51, %4
  %37 = load i64, i64* @_iobase, align 8
  %38 = load i64, i64* @AES_INTR_REG, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @ioread32(i64 %39)
  store i32 %40, i32* %9, align 4
  %41 = call i32 (...) @cpu_relax()
  br label %42

42:                                               ; preds = %36
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @AES_INTRA_PENDING, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br label %51

51:                                               ; preds = %47, %42
  %52 = phi i1 [ false, %42 ], [ %50, %47 ]
  br i1 %52, label %36, label %53

53:                                               ; preds = %51
  %54 = load i32, i32* %9, align 4
  %55 = and i32 %54, 255
  %56 = load i32, i32* @AES_INTRA_PENDING, align 4
  %57 = or i32 %55, %56
  %58 = load i64, i64* @_iobase, align 8
  %59 = load i64, i64* @AES_INTR_REG, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @iowrite32(i32 %57, i64 %60)
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 0, i32 1
  ret i32 %65
}

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @virt_to_phys(i8*) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
