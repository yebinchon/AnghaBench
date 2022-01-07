; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_mkiss.c_kiss_esc_crc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_mkiss.c_kiss_esc_crc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESC_END = common dso_local global i32 0, align 4
@ESC_ESC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i16, i32)* @kiss_esc_crc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kiss_esc_crc(i8* %0, i8* %1, i16 zeroext %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i16 %2, i16* %7, align 2
  store i32 %3, i32* %8, align 4
  %11 = load i8*, i8** %6, align 8
  store i8* %11, i8** %9, align 8
  store i8 0, i8* %10, align 1
  %12 = load i8*, i8** %9, align 8
  %13 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %13, i8** %9, align 8
  store i8 -127, i8* %12, align 1
  br label %14

14:                                               ; preds = %65, %4
  %15 = load i32, i32* %8, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %66

17:                                               ; preds = %14
  %18 = load i32, i32* %8, align 4
  %19 = icmp sgt i32 %18, 2
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %5, align 8
  %23 = load i8, i8* %21, align 1
  store i8 %23, i8* %10, align 1
  br label %42

24:                                               ; preds = %17
  %25 = load i32, i32* %8, align 4
  %26 = icmp sgt i32 %25, 1
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load i16, i16* %7, align 2
  %29 = zext i16 %28 to i32
  %30 = ashr i32 %29, 8
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %10, align 1
  br label %41

32:                                               ; preds = %24
  %33 = load i32, i32* %8, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load i16, i16* %7, align 2
  %37 = zext i16 %36 to i32
  %38 = and i32 %37, 255
  %39 = trunc i32 %38 to i8
  store i8 %39, i8* %10, align 1
  br label %40

40:                                               ; preds = %35, %32
  br label %41

41:                                               ; preds = %40, %27
  br label %42

42:                                               ; preds = %41, %20
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %8, align 4
  %45 = load i8, i8* %10, align 1
  %46 = zext i8 %45 to i32
  switch i32 %46, label %61 [
    i32 129, label %47
    i32 128, label %54
  ]

47:                                               ; preds = %42
  %48 = load i8*, i8** %9, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %9, align 8
  store i8 -128, i8* %48, align 1
  %50 = load i32, i32* @ESC_END, align 4
  %51 = trunc i32 %50 to i8
  %52 = load i8*, i8** %9, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %9, align 8
  store i8 %51, i8* %52, align 1
  br label %65

54:                                               ; preds = %42
  %55 = load i8*, i8** %9, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %9, align 8
  store i8 -128, i8* %55, align 1
  %57 = load i32, i32* @ESC_ESC, align 4
  %58 = trunc i32 %57 to i8
  %59 = load i8*, i8** %9, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %9, align 8
  store i8 %58, i8* %59, align 1
  br label %65

61:                                               ; preds = %42
  %62 = load i8, i8* %10, align 1
  %63 = load i8*, i8** %9, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %9, align 8
  store i8 %62, i8* %63, align 1
  br label %65

65:                                               ; preds = %61, %54, %47
  br label %14

66:                                               ; preds = %14
  %67 = load i8*, i8** %9, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %9, align 8
  store i8 -127, i8* %67, align 1
  %69 = load i8*, i8** %9, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = ptrtoint i8* %69 to i64
  %72 = ptrtoint i8* %70 to i64
  %73 = sub i64 %71, %72
  %74 = trunc i64 %73 to i32
  ret i32 %74
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
