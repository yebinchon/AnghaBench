; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/mm/extr_isram-driver.c_isram_memcpy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/mm/extr_isram-driver.c_isram_memcpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @isram_memcpy(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %17 = load i8*, i8** %5, align 8
  store i8* %17, i8** %15, align 8
  %18 = load i8*, i8** %4, align 8
  store i8* %18, i8** %16, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @isram_check_addr(i8* %19, i64 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i8*, i8** %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @isram_check_addr(i8* %22, i64 %23)
  store i32 %24, i32* %11, align 4
  store i32 1, i32* %12, align 4
  store i32 1, i32* %13, align 4
  store i64 0, i64* %9, align 8
  br label %25

25:                                               ; preds = %108, %3
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* %6, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %111

29:                                               ; preds = %25
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %56

32:                                               ; preds = %29
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load i8*, i8** %5, align 8
  %37 = load i64, i64* %9, align 8
  %38 = getelementptr i8, i8* %36, i64 %37
  %39 = call i32 @isram_read(i8* %38)
  store i32 %39, i32* %7, align 4
  store i32 0, i32* %12, align 4
  br label %40

40:                                               ; preds = %35, %32
  %41 = load i8*, i8** %5, align 8
  %42 = load i64, i64* %9, align 8
  %43 = getelementptr i8, i8* %41, i64 %42
  %44 = call i64 @ADDR2LAST(i8* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i32 1, i32* %12, align 4
  br label %47

47:                                               ; preds = %46, %40
  %48 = load i32, i32* %7, align 4
  %49 = load i8*, i8** %5, align 8
  %50 = load i64, i64* %9, align 8
  %51 = getelementptr i8, i8* %49, i64 %50
  %52 = call i32 @ADDR2OFFSET(i8* %51)
  %53 = ashr i32 %48, %52
  %54 = and i32 %53, 255
  %55 = trunc i32 %54 to i8
  store i8 %55, i8* %14, align 1
  br label %61

56:                                               ; preds = %29
  %57 = load i8*, i8** %15, align 8
  %58 = load i64, i64* %9, align 8
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  %60 = load i8, i8* %59, align 1
  store i8 %60, i8* %14, align 1
  br label %61

61:                                               ; preds = %56, %47
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %102

64:                                               ; preds = %61
  %65 = load i32, i32* %13, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load i8*, i8** %4, align 8
  %69 = load i64, i64* %9, align 8
  %70 = getelementptr i8, i8* %68, i64 %69
  %71 = call i32 @isram_read(i8* %70)
  store i32 %71, i32* %8, align 4
  store i32 0, i32* %13, align 4
  br label %72

72:                                               ; preds = %67, %64
  %73 = load i8*, i8** %4, align 8
  %74 = load i64, i64* %9, align 8
  %75 = getelementptr i8, i8* %73, i64 %74
  %76 = call i32 @ADDR2OFFSET(i8* %75)
  %77 = shl i32 255, %76
  %78 = xor i32 %77, -1
  %79 = load i32, i32* %8, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %8, align 4
  %81 = load i8, i8* %14, align 1
  %82 = zext i8 %81 to i32
  %83 = load i8*, i8** %4, align 8
  %84 = load i64, i64* %9, align 8
  %85 = getelementptr i8, i8* %83, i64 %84
  %86 = call i32 @ADDR2OFFSET(i8* %85)
  %87 = shl i32 %82, %86
  %88 = load i32, i32* %8, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %8, align 4
  %90 = load i8*, i8** %4, align 8
  %91 = load i64, i64* %9, align 8
  %92 = getelementptr i8, i8* %90, i64 %91
  %93 = call i64 @ADDR2LAST(i8* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %72
  store i32 1, i32* %13, align 4
  %96 = load i8*, i8** %4, align 8
  %97 = load i64, i64* %9, align 8
  %98 = getelementptr i8, i8* %96, i64 %97
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @isram_write(i8* %98, i32 %99)
  br label %101

101:                                              ; preds = %95, %72
  br label %107

102:                                              ; preds = %61
  %103 = load i8, i8* %14, align 1
  %104 = load i8*, i8** %16, align 8
  %105 = load i64, i64* %9, align 8
  %106 = getelementptr inbounds i8, i8* %104, i64 %105
  store i8 %103, i8* %106, align 1
  br label %107

107:                                              ; preds = %102, %101
  br label %108

108:                                              ; preds = %107
  %109 = load i64, i64* %9, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %9, align 8
  br label %25

111:                                              ; preds = %25
  %112 = load i32, i32* %10, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %111
  %115 = load i32, i32* %13, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %123, label %117

117:                                              ; preds = %114
  %118 = load i8*, i8** %4, align 8
  %119 = load i64, i64* %9, align 8
  %120 = getelementptr i8, i8* %118, i64 %119
  %121 = load i32, i32* %8, align 4
  %122 = call i32 @isram_write(i8* %120, i32 %121)
  br label %123

123:                                              ; preds = %117, %114, %111
  %124 = load i8*, i8** %4, align 8
  ret i8* %124
}

declare dso_local i32 @isram_check_addr(i8*, i64) #1

declare dso_local i32 @isram_read(i8*) #1

declare dso_local i64 @ADDR2LAST(i8*) #1

declare dso_local i32 @ADDR2OFFSET(i8*) #1

declare dso_local i32 @isram_write(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
