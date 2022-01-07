; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/lib/extr_checksum.c_do_csum.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/lib/extr_checksum.c_do_csum.c"
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
  br label %165

13:                                               ; preds = %2
  %14 = load i8*, i8** %3, align 8
  %15 = ptrtoint i8* %14 to i64
  %16 = and i64 1, %15
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %13
  %21 = load i8*, i8** %3, align 8
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = shl i32 %23, 8
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %7, align 8
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %4, align 4
  %28 = load i8*, i8** %3, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %3, align 8
  br label %30

30:                                               ; preds = %20, %13
  %31 = load i32, i32* %4, align 4
  %32 = ashr i32 %31, 1
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %141

35:                                               ; preds = %30
  %36 = load i8*, i8** %3, align 8
  %37 = ptrtoint i8* %36 to i64
  %38 = and i64 2, %37
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %35
  %41 = load i8*, i8** %3, align 8
  %42 = bitcast i8* %41 to i16*
  %43 = load i16, i16* %42, align 2
  %44 = zext i16 %43 to i64
  %45 = load i64, i64* %7, align 8
  %46 = add i64 %45, %44
  store i64 %46, i64* %7, align 8
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %4, align 4
  %50 = sub nsw i32 %49, 2
  store i32 %50, i32* %4, align 4
  %51 = load i8*, i8** %3, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 2
  store i8* %52, i8** %3, align 8
  br label %53

53:                                               ; preds = %40, %35
  %54 = load i32, i32* %6, align 4
  %55 = ashr i32 %54, 1
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %127

58:                                               ; preds = %53
  %59 = load i8*, i8** %3, align 8
  %60 = ptrtoint i8* %59 to i64
  %61 = and i64 4, %60
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %58
  %64 = load i8*, i8** %3, align 8
  %65 = bitcast i8* %64 to i32*
  %66 = load i32, i32* %65, align 4
  %67 = zext i32 %66 to i64
  %68 = load i64, i64* %7, align 8
  %69 = add i64 %68, %67
  store i64 %69, i64* %7, align 8
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %4, align 4
  %73 = sub nsw i32 %72, 4
  store i32 %73, i32* %4, align 4
  %74 = load i8*, i8** %3, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 4
  store i8* %75, i8** %3, align 8
  br label %76

76:                                               ; preds = %63, %58
  %77 = load i32, i32* %6, align 4
  %78 = ashr i32 %77, 1
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %113

81:                                               ; preds = %76
  store i64 0, i64* %8, align 8
  br label %82

82:                                               ; preds = %101, %81
  %83 = load i8*, i8** %3, align 8
  %84 = bitcast i8* %83 to i64*
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %9, align 8
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %6, align 4
  %88 = load i8*, i8** %3, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 8
  store i8* %89, i8** %3, align 8
  %90 = load i64, i64* %8, align 8
  %91 = load i64, i64* %7, align 8
  %92 = add i64 %91, %90
  store i64 %92, i64* %7, align 8
  %93 = load i64, i64* %9, align 8
  %94 = load i64, i64* %7, align 8
  %95 = add i64 %94, %93
  store i64 %95, i64* %7, align 8
  %96 = load i64, i64* %9, align 8
  %97 = load i64, i64* %7, align 8
  %98 = icmp ugt i64 %96, %97
  %99 = zext i1 %98 to i32
  %100 = sext i32 %99 to i64
  store i64 %100, i64* %8, align 8
  br label %101

101:                                              ; preds = %82
  %102 = load i32, i32* %6, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %82, label %104

104:                                              ; preds = %101
  %105 = load i64, i64* %8, align 8
  %106 = load i64, i64* %7, align 8
  %107 = add i64 %106, %105
  store i64 %107, i64* %7, align 8
  %108 = load i64, i64* %7, align 8
  %109 = and i64 %108, 4294967295
  %110 = load i64, i64* %7, align 8
  %111 = lshr i64 %110, 32
  %112 = add i64 %109, %111
  store i64 %112, i64* %7, align 8
  br label %113

113:                                              ; preds = %104, %76
  %114 = load i32, i32* %4, align 4
  %115 = and i32 %114, 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %113
  %118 = load i8*, i8** %3, align 8
  %119 = bitcast i8* %118 to i32*
  %120 = load i32, i32* %119, align 4
  %121 = zext i32 %120 to i64
  %122 = load i64, i64* %7, align 8
  %123 = add i64 %122, %121
  store i64 %123, i64* %7, align 8
  %124 = load i8*, i8** %3, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 4
  store i8* %125, i8** %3, align 8
  br label %126

126:                                              ; preds = %117, %113
  br label %127

127:                                              ; preds = %126, %53
  %128 = load i32, i32* %4, align 4
  %129 = and i32 %128, 2
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %140

131:                                              ; preds = %127
  %132 = load i8*, i8** %3, align 8
  %133 = bitcast i8* %132 to i16*
  %134 = load i16, i16* %133, align 2
  %135 = zext i16 %134 to i64
  %136 = load i64, i64* %7, align 8
  %137 = add i64 %136, %135
  store i64 %137, i64* %7, align 8
  %138 = load i8*, i8** %3, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 2
  store i8* %139, i8** %3, align 8
  br label %140

140:                                              ; preds = %131, %127
  br label %141

141:                                              ; preds = %140, %30
  %142 = load i32, i32* %4, align 4
  %143 = and i32 %142, 1
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %141
  %146 = load i8*, i8** %3, align 8
  %147 = load i8, i8* %146, align 1
  %148 = zext i8 %147 to i64
  %149 = load i64, i64* %7, align 8
  %150 = add i64 %149, %148
  store i64 %150, i64* %7, align 8
  br label %151

151:                                              ; preds = %145, %141
  %152 = load i64, i64* %7, align 8
  %153 = call i64 @from64to16(i64 %152)
  store i64 %153, i64* %7, align 8
  %154 = load i32, i32* %5, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %164

156:                                              ; preds = %151
  %157 = load i64, i64* %7, align 8
  %158 = lshr i64 %157, 8
  %159 = and i64 %158, 255
  %160 = load i64, i64* %7, align 8
  %161 = and i64 %160, 255
  %162 = shl i64 %161, 8
  %163 = or i64 %159, %162
  store i64 %163, i64* %7, align 8
  br label %164

164:                                              ; preds = %156, %151
  br label %165

165:                                              ; preds = %164, %12
  %166 = load i64, i64* %7, align 8
  ret i64 %166
}

declare dso_local i64 @from64to16(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
