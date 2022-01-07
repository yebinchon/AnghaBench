; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/extr_cryptocop.c_create_sha1_pad.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/extr_cryptocop.c_create_sha1_pad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHA1_BLOCK_LENGTH = common dso_local global i64 0, align 8
@SHA1_MIN_PAD_LENGTH = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"create_sha1_pad: hashed_length=%lld bits == %lld bytes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i8**, i64*)* @create_sha1_pad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_sha1_pad(i32 %0, i64 %1, i8** %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i8** %2, i8*** %8, align 8
  store i64* %3, i64** %9, align 8
  %14 = load i64, i64* @SHA1_BLOCK_LENGTH, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @SHA1_BLOCK_LENGTH, align 8
  %17 = urem i64 %15, %16
  %18 = sub i64 %14, %17
  store i64 %18, i64* %10, align 8
  %19 = load i64, i64* %7, align 8
  %20 = shl i64 %19, 3
  store i64 %20, i64* %13, align 8
  %21 = load i64, i64* %10, align 8
  %22 = load i64, i64* @SHA1_MIN_PAD_LENGTH, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %4
  %25 = load i64, i64* @SHA1_BLOCK_LENGTH, align 8
  %26 = load i64, i64* %10, align 8
  %27 = add i64 %26, %25
  store i64 %27, i64* %10, align 8
  br label %28

28:                                               ; preds = %24, %4
  %29 = load i64, i64* %10, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i8* @kmalloc(i64 %29, i32 %30)
  store i8* %31, i8** %11, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %70

37:                                               ; preds = %28
  %38 = load i8*, i8** %11, align 8
  store i8 -128, i8* %38, align 1
  %39 = load i8*, i8** %11, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = load i64, i64* %10, align 8
  %42 = sub i64 %41, 1
  %43 = call i32 @memset(i8* %40, i32 0, i64 %42)
  %44 = load i64, i64* %13, align 8
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @printk(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i64 %44, i64 %45)
  %47 = call i32 @DEBUG(i32 %46)
  %48 = load i64, i64* %10, align 8
  %49 = sub i64 %48, 1
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %12, align 4
  br label %51

51:                                               ; preds = %54, %37
  %52 = load i64, i64* %13, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %51
  %55 = load i64, i64* %13, align 8
  %56 = urem i64 %55, 256
  %57 = trunc i64 %56 to i8
  %58 = load i8*, i8** %11, align 8
  %59 = load i32, i32* %12, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %12, align 4
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i8, i8* %58, i64 %61
  store i8 %57, i8* %62, align 1
  %63 = load i64, i64* %13, align 8
  %64 = lshr i64 %63, 8
  store i64 %64, i64* %13, align 8
  br label %51

65:                                               ; preds = %51
  %66 = load i8*, i8** %11, align 8
  %67 = load i8**, i8*** %8, align 8
  store i8* %66, i8** %67, align 8
  %68 = load i64, i64* %10, align 8
  %69 = load i64*, i64** %9, align 8
  store i64 %68, i64* %69, align 8
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %65, %34
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @DEBUG(i32) #1

declare dso_local i32 @printk(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
