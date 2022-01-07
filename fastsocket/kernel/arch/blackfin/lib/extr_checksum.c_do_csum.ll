; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/lib/extr_checksum.c_do_csum.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/lib/extr_checksum.c_do_csum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (i8*, i32)* @do_csum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @do_csum(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = ptrtoint i8* %7 to i64
  %9 = and i64 1, %8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %2
  %12 = load i8*, i8** %3, align 8
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  %15 = shl i32 %14, 8
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %5, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %11, %2
  br label %24

24:                                               ; preds = %27, %23
  %25 = load i32, i32* %4, align 4
  %26 = icmp sgt i32 %25, 1
  br i1 %26, label %27, label %38

27:                                               ; preds = %24
  %28 = load i8*, i8** %3, align 8
  %29 = bitcast i8* %28 to i16*
  %30 = load i16, i16* %29, align 2
  %31 = zext i16 %30 to i64
  %32 = load i64, i64* %5, align 8
  %33 = add i64 %32, %31
  store i64 %33, i64* %5, align 8
  %34 = load i8*, i8** %3, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 2
  store i8* %35, i8** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sub nsw i32 %36, 2
  store i32 %37, i32* %4, align 4
  br label %24

38:                                               ; preds = %24
  %39 = load i32, i32* %4, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load i8*, i8** %3, align 8
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i64
  %45 = load i64, i64* %5, align 8
  %46 = add i64 %45, %44
  store i64 %46, i64* %5, align 8
  br label %47

47:                                               ; preds = %41, %38
  br label %48

48:                                               ; preds = %52, %47
  %49 = load i64, i64* %5, align 8
  %50 = lshr i64 %49, 16
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  %53 = load i64, i64* %5, align 8
  %54 = and i64 %53, 65535
  %55 = load i64, i64* %5, align 8
  %56 = lshr i64 %55, 16
  %57 = add i64 %54, %56
  store i64 %57, i64* %5, align 8
  br label %48

58:                                               ; preds = %48
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %58
  %62 = load i64, i64* %5, align 8
  %63 = and i64 %62, 65280
  %64 = lshr i64 %63, 8
  %65 = load i64, i64* %5, align 8
  %66 = and i64 %65, 255
  %67 = shl i64 %66, 8
  %68 = add i64 %64, %67
  store i64 %68, i64* %5, align 8
  br label %69

69:                                               ; preds = %61, %58
  %70 = load i64, i64* %5, align 8
  %71 = trunc i64 %70 to i16
  ret i16 %71
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
