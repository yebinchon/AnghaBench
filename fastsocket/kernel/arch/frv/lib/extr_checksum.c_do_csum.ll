; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/frv/lib/extr_checksum.c_do_csum.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/frv/lib/extr_checksum.c_do_csum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32)* @do_csum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @do_csum(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %7, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp sle i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %128

13:                                               ; preds = %2
  %14 = load i8*, i8** %3, align 8
  %15 = ptrtoint i8* %14 to i64
  %16 = and i64 1, %15
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %13
  %21 = load i8*, i8** %3, align 8
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i64
  store i64 %23, i64* %7, align 8
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %4, align 4
  %26 = load i8*, i8** %3, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %3, align 8
  br label %28

28:                                               ; preds = %20, %13
  %29 = load i32, i32* %4, align 4
  %30 = ashr i32 %29, 1
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %102

33:                                               ; preds = %28
  %34 = load i8*, i8** %3, align 8
  %35 = ptrtoint i8* %34 to i64
  %36 = and i64 2, %35
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %33
  %39 = load i8*, i8** %3, align 8
  %40 = bitcast i8* %39 to i16*
  %41 = load i16, i16* %40, align 2
  %42 = zext i16 %41 to i64
  %43 = load i64, i64* %7, align 8
  %44 = add i64 %43, %42
  store i64 %44, i64* %7, align 8
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %4, align 4
  %48 = sub nsw i32 %47, 2
  store i32 %48, i32* %4, align 4
  %49 = load i8*, i8** %3, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 2
  store i8* %50, i8** %3, align 8
  br label %51

51:                                               ; preds = %38, %33
  %52 = load i32, i32* %6, align 4
  %53 = ashr i32 %52, 1
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %88

56:                                               ; preds = %51
  store i64 0, i64* %8, align 8
  br label %57

57:                                               ; preds = %76, %56
  %58 = load i8*, i8** %3, align 8
  %59 = bitcast i8* %58 to i64*
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %9, align 8
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %6, align 4
  %63 = load i8*, i8** %3, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 4
  store i8* %64, i8** %3, align 8
  %65 = load i64, i64* %8, align 8
  %66 = load i64, i64* %7, align 8
  %67 = add i64 %66, %65
  store i64 %67, i64* %7, align 8
  %68 = load i64, i64* %9, align 8
  %69 = load i64, i64* %7, align 8
  %70 = add i64 %69, %68
  store i64 %70, i64* %7, align 8
  %71 = load i64, i64* %9, align 8
  %72 = load i64, i64* %7, align 8
  %73 = icmp ugt i64 %71, %72
  %74 = zext i1 %73 to i32
  %75 = sext i32 %74 to i64
  store i64 %75, i64* %8, align 8
  br label %76

76:                                               ; preds = %57
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %57, label %79

79:                                               ; preds = %76
  %80 = load i64, i64* %8, align 8
  %81 = load i64, i64* %7, align 8
  %82 = add i64 %81, %80
  store i64 %82, i64* %7, align 8
  %83 = load i64, i64* %7, align 8
  %84 = and i64 %83, 65535
  %85 = load i64, i64* %7, align 8
  %86 = lshr i64 %85, 16
  %87 = add i64 %84, %86
  store i64 %87, i64* %7, align 8
  br label %88

88:                                               ; preds = %79, %51
  %89 = load i32, i32* %4, align 4
  %90 = and i32 %89, 2
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %88
  %93 = load i8*, i8** %3, align 8
  %94 = bitcast i8* %93 to i16*
  %95 = load i16, i16* %94, align 2
  %96 = zext i16 %95 to i64
  %97 = load i64, i64* %7, align 8
  %98 = add i64 %97, %96
  store i64 %98, i64* %7, align 8
  %99 = load i8*, i8** %3, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 2
  store i8* %100, i8** %3, align 8
  br label %101

101:                                              ; preds = %92, %88
  br label %102

102:                                              ; preds = %101, %28
  %103 = load i32, i32* %4, align 4
  %104 = and i32 %103, 1
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %102
  %107 = load i8*, i8** %3, align 8
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i32
  %110 = shl i32 %109, 8
  %111 = sext i32 %110 to i64
  %112 = load i64, i64* %7, align 8
  %113 = add i64 %112, %111
  store i64 %113, i64* %7, align 8
  br label %114

114:                                              ; preds = %106, %102
  %115 = load i64, i64* %7, align 8
  %116 = call i64 @from32to16(i64 %115)
  store i64 %116, i64* %7, align 8
  %117 = load i32, i32* %5, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %114
  %120 = load i64, i64* %7, align 8
  %121 = lshr i64 %120, 8
  %122 = and i64 %121, 255
  %123 = load i64, i64* %7, align 8
  %124 = and i64 %123, 255
  %125 = shl i64 %124, 8
  %126 = or i64 %122, %125
  store i64 %126, i64* %7, align 8
  br label %127

127:                                              ; preds = %119, %114
  br label %128

128:                                              ; preds = %127, %12
  %129 = load i64, i64* %7, align 8
  ret i64 %129
}

declare dso_local i64 @from32to16(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
