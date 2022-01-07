; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/lib/extr_io.c_insl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/lib/extr_io.c_insl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @insl(i64 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load i8*, i8** %5, align 8
  store i8* %10, i8** %9, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %158

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = ptrtoint i8* %15 to i64
  %17 = and i64 %16, 3
  switch i64 %17, label %158 [
    i64 0, label %18
    i64 2, label %32
    i64 1, label %70
    i64 3, label %114
  ]

18:                                               ; preds = %14
  br label %19

19:                                               ; preds = %23, %18
  %20 = load i64, i64* %6, align 8
  %21 = add i64 %20, -1
  store i64 %21, i64* %6, align 8
  %22 = icmp ne i64 %20, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %19
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @inl(i64 %24)
  %26 = call i32 @cpu_to_le32(i32 %25)
  %27 = load i8*, i8** %9, align 8
  %28 = bitcast i8* %27 to i32*
  store i32 %26, i32* %28, align 4
  %29 = load i8*, i8** %9, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 4
  store i8* %30, i8** %9, align 8
  br label %19

31:                                               ; preds = %19
  br label %158

32:                                               ; preds = %14
  %33 = load i64, i64* %6, align 8
  %34 = add i64 %33, -1
  store i64 %34, i64* %6, align 8
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @inl(i64 %35)
  %37 = call i32 @cpu_to_le32(i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = lshr i32 %38, 16
  %40 = trunc i32 %39 to i16
  %41 = load i8*, i8** %9, align 8
  %42 = bitcast i8* %41 to i16*
  store i16 %40, i16* %42, align 2
  %43 = load i8*, i8** %9, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 2
  store i8* %44, i8** %9, align 8
  br label %45

45:                                               ; preds = %49, %32
  %46 = load i64, i64* %6, align 8
  %47 = add i64 %46, -1
  store i64 %47, i64* %6, align 8
  %48 = icmp ne i64 %46, 0
  br i1 %48, label %49, label %64

49:                                               ; preds = %45
  %50 = load i64, i64* %4, align 8
  %51 = call i32 @inl(i64 %50)
  %52 = call i32 @cpu_to_le32(i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %7, align 4
  %54 = and i32 %53, 65535
  %55 = shl i32 %54, 16
  %56 = load i32, i32* %8, align 4
  %57 = lshr i32 %56, 16
  %58 = or i32 %55, %57
  %59 = load i8*, i8** %9, align 8
  %60 = bitcast i8* %59 to i32*
  store i32 %58, i32* %60, align 4
  %61 = load i8*, i8** %9, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 4
  store i8* %62, i8** %9, align 8
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %7, align 4
  br label %45

64:                                               ; preds = %45
  %65 = load i32, i32* %7, align 4
  %66 = and i32 %65, 65535
  %67 = trunc i32 %66 to i16
  %68 = load i8*, i8** %9, align 8
  %69 = bitcast i8* %68 to i16*
  store i16 %67, i16* %69, align 2
  br label %158

70:                                               ; preds = %14
  %71 = load i64, i64* %6, align 8
  %72 = add i64 %71, -1
  store i64 %72, i64* %6, align 8
  %73 = load i64, i64* %4, align 8
  %74 = call i32 @inl(i64 %73)
  %75 = call i32 @cpu_to_le32(i32 %74)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = lshr i32 %76, 24
  %78 = trunc i32 %77 to i8
  %79 = load i8*, i8** %9, align 8
  store i8 %78, i8* %79, align 1
  %80 = load i8*, i8** %9, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %9, align 8
  %82 = load i32, i32* %7, align 4
  %83 = lshr i32 %82, 8
  %84 = and i32 %83, 65535
  %85 = trunc i32 %84 to i16
  %86 = load i8*, i8** %9, align 8
  %87 = bitcast i8* %86 to i16*
  store i16 %85, i16* %87, align 2
  %88 = load i8*, i8** %9, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 2
  store i8* %89, i8** %9, align 8
  br label %90

90:                                               ; preds = %94, %70
  %91 = load i64, i64* %6, align 8
  %92 = add i64 %91, -1
  store i64 %92, i64* %6, align 8
  %93 = icmp ne i64 %91, 0
  br i1 %93, label %94, label %109

94:                                               ; preds = %90
  %95 = load i64, i64* %4, align 8
  %96 = call i32 @inl(i64 %95)
  %97 = call i32 @cpu_to_le32(i32 %96)
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %7, align 4
  %99 = and i32 %98, 255
  %100 = shl i32 %99, 24
  %101 = load i32, i32* %8, align 4
  %102 = lshr i32 %101, 8
  %103 = or i32 %100, %102
  %104 = load i8*, i8** %9, align 8
  %105 = bitcast i8* %104 to i32*
  store i32 %103, i32* %105, align 4
  %106 = load i8*, i8** %9, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 4
  store i8* %107, i8** %9, align 8
  %108 = load i32, i32* %8, align 4
  store i32 %108, i32* %7, align 4
  br label %90

109:                                              ; preds = %90
  %110 = load i32, i32* %7, align 4
  %111 = and i32 %110, 255
  %112 = trunc i32 %111 to i8
  %113 = load i8*, i8** %9, align 8
  store i8 %112, i8* %113, align 1
  br label %158

114:                                              ; preds = %14
  %115 = load i64, i64* %6, align 8
  %116 = add i64 %115, -1
  store i64 %116, i64* %6, align 8
  %117 = load i64, i64* %4, align 8
  %118 = call i32 @inl(i64 %117)
  %119 = call i32 @cpu_to_le32(i32 %118)
  store i32 %119, i32* %7, align 4
  %120 = load i32, i32* %7, align 4
  %121 = lshr i32 %120, 24
  %122 = trunc i32 %121 to i8
  %123 = load i8*, i8** %9, align 8
  store i8 %122, i8* %123, align 1
  %124 = load i8*, i8** %9, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %125, i8** %9, align 8
  br label %126

126:                                              ; preds = %130, %114
  %127 = load i64, i64* %6, align 8
  %128 = add i64 %127, -1
  store i64 %128, i64* %6, align 8
  %129 = icmp ne i64 %127, 0
  br i1 %129, label %130, label %145

130:                                              ; preds = %126
  %131 = load i64, i64* %4, align 8
  %132 = call i32 @inl(i64 %131)
  %133 = call i32 @cpu_to_le32(i32 %132)
  store i32 %133, i32* %8, align 4
  %134 = load i32, i32* %7, align 4
  %135 = and i32 %134, 16777215
  %136 = shl i32 %135, 8
  %137 = load i32, i32* %8, align 4
  %138 = lshr i32 %137, 24
  %139 = or i32 %136, %138
  %140 = load i8*, i8** %9, align 8
  %141 = bitcast i8* %140 to i32*
  store i32 %139, i32* %141, align 4
  %142 = load i8*, i8** %9, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 4
  store i8* %143, i8** %9, align 8
  %144 = load i32, i32* %8, align 4
  store i32 %144, i32* %7, align 4
  br label %126

145:                                              ; preds = %126
  %146 = load i32, i32* %7, align 4
  %147 = lshr i32 %146, 8
  %148 = and i32 %147, 65535
  %149 = trunc i32 %148 to i16
  %150 = load i8*, i8** %9, align 8
  %151 = bitcast i8* %150 to i16*
  store i16 %149, i16* %151, align 2
  %152 = load i8*, i8** %9, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 2
  store i8* %153, i8** %9, align 8
  %154 = load i32, i32* %7, align 4
  %155 = and i32 %154, 255
  %156 = trunc i32 %155 to i8
  %157 = load i8*, i8** %9, align 8
  store i8 %156, i8* %157, align 1
  br label %158

158:                                              ; preds = %13, %14, %145, %109, %64, %31
  ret void
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @inl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
