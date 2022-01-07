; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_beat.c_beat_nvram_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_beat.c_beat_nvram_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BEAT_NVRAM_SIZE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@BEAT_NVRW_CNT = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @beat_nvram_read(i8* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i8*, i8** %5, align 8
  store i8* %11, i8** %10, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @BEAT_NVRAM_SIZE, align 4
  %15 = icmp uge i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %76

19:                                               ; preds = %3
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = zext i32 %22 to i64
  %24 = load i64, i64* %6, align 8
  %25 = add i64 %23, %24
  %26 = load i32, i32* @BEAT_NVRAM_SIZE, align 4
  %27 = zext i32 %26 to i64
  %28 = icmp ugt i64 %25, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %19
  %30 = load i32, i32* @BEAT_NVRAM_SIZE, align 4
  %31 = load i32, i32* %8, align 4
  %32 = sub i32 %30, %31
  %33 = zext i32 %32 to i64
  store i64 %33, i64* %6, align 8
  br label %34

34:                                               ; preds = %29, %19
  br label %35

35:                                               ; preds = %63, %34
  %36 = load i64, i64* %6, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %67

38:                                               ; preds = %35
  %39 = load i64, i64* %6, align 8
  store i64 %39, i64* %9, align 8
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* @BEAT_NVRW_CNT, align 8
  %42 = icmp ugt i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i64, i64* @BEAT_NVRW_CNT, align 8
  store i64 %44, i64* %9, align 8
  br label %45

45:                                               ; preds = %43, %38
  %46 = load i32, i32* %8, align 4
  %47 = load i64, i64* %9, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = call i64 @beat_eeprom_read(i32 %46, i64 %47, i8* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32, i32* @EIO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %76

54:                                               ; preds = %45
  %55 = load i64, i64* %9, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 %55
  store i8* %57, i8** %10, align 8
  %58 = load i64, i64* %9, align 8
  %59 = load i32, i32* %8, align 4
  %60 = zext i32 %59 to i64
  %61 = add i64 %60, %58
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %54
  %64 = load i64, i64* %9, align 8
  %65 = load i64, i64* %6, align 8
  %66 = sub i64 %65, %64
  store i64 %66, i64* %6, align 8
  br label %35

67:                                               ; preds = %35
  %68 = load i32, i32* %8, align 4
  %69 = load i32*, i32** %7, align 8
  store i32 %68, i32* %69, align 4
  %70 = load i8*, i8** %10, align 8
  %71 = load i8*, i8** %5, align 8
  %72 = ptrtoint i8* %70 to i64
  %73 = ptrtoint i8* %71 to i64
  %74 = sub i64 %72, %73
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %67, %51, %16
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i64 @beat_eeprom_read(i32, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
