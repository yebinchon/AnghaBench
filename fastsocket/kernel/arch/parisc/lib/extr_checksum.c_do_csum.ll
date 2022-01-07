; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/lib/extr_checksum.c_do_csum.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/lib/extr_checksum.c_do_csum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @do_csum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_csum(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp sle i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %152

16:                                               ; preds = %2
  %17 = load i8*, i8** %3, align 8
  %18 = ptrtoint i8* %17 to i64
  %19 = and i64 1, %18
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %16
  %24 = load i8*, i8** %3, align 8
  %25 = load i8, i8* %24, align 1
  %26 = call i32 @be16_to_cpu(i8 zeroext %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %4, align 4
  %29 = load i8*, i8** %3, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %3, align 8
  br label %31

31:                                               ; preds = %23, %16
  %32 = load i32, i32* %4, align 4
  %33 = ashr i32 %32, 1
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %131

36:                                               ; preds = %31
  %37 = load i8*, i8** %3, align 8
  %38 = ptrtoint i8* %37 to i64
  %39 = and i64 2, %38
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %36
  %42 = load i8*, i8** %3, align 8
  %43 = bitcast i8* %42 to i16*
  %44 = load i16, i16* %43, align 2
  %45 = zext i16 %44 to i32
  %46 = load i32, i32* %7, align 4
  %47 = add i32 %46, %45
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %4, align 4
  %51 = sub nsw i32 %50, 2
  store i32 %51, i32* %4, align 4
  %52 = load i8*, i8** %3, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 2
  store i8* %53, i8** %3, align 8
  br label %54

54:                                               ; preds = %41, %36
  %55 = load i32, i32* %6, align 4
  %56 = ashr i32 %55, 1
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %117

59:                                               ; preds = %54
  br label %60

60:                                               ; preds = %63, %59
  %61 = load i32, i32* %6, align 4
  %62 = icmp sge i32 %61, 4
  br i1 %62, label %63, label %96

63:                                               ; preds = %60
  %64 = load i8*, i8** %3, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 0
  %66 = bitcast i8* %65 to i32*
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %8, align 4
  %68 = load i8*, i8** %3, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 4
  %70 = bitcast i8* %69 to i32*
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %9, align 4
  %72 = load i8*, i8** %3, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 8
  %74 = bitcast i8* %73 to i32*
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %10, align 4
  %76 = load i8*, i8** %3, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 12
  %78 = bitcast i8* %77 to i32*
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @addc(i32 %80, i32 %81)
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @addc(i32 %83, i32 %84)
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @addc(i32 %86, i32 %87)
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %11, align 4
  %91 = call i32 @addc(i32 %89, i32 %90)
  %92 = load i32, i32* %6, align 4
  %93 = sub nsw i32 %92, 4
  store i32 %93, i32* %6, align 4
  %94 = load i8*, i8** %3, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 16
  store i8* %95, i8** %3, align 8
  br label %60

96:                                               ; preds = %60
  br label %97

97:                                               ; preds = %100, %96
  %98 = load i32, i32* %6, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %111

100:                                              ; preds = %97
  %101 = load i8*, i8** %3, align 8
  %102 = bitcast i8* %101 to i32*
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %12, align 4
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %104, -1
  store i32 %105, i32* %6, align 4
  %106 = load i8*, i8** %3, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 4
  store i8* %107, i8** %3, align 8
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* %12, align 4
  %110 = call i32 @addc(i32 %108, i32 %109)
  br label %97

111:                                              ; preds = %97
  %112 = load i32, i32* %7, align 4
  %113 = and i32 %112, 65535
  %114 = load i32, i32* %7, align 4
  %115 = lshr i32 %114, 16
  %116 = add i32 %113, %115
  store i32 %116, i32* %7, align 4
  br label %117

117:                                              ; preds = %111, %54
  %118 = load i32, i32* %4, align 4
  %119 = and i32 %118, 2
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %117
  %122 = load i8*, i8** %3, align 8
  %123 = bitcast i8* %122 to i16*
  %124 = load i16, i16* %123, align 2
  %125 = zext i16 %124 to i32
  %126 = load i32, i32* %7, align 4
  %127 = add i32 %126, %125
  store i32 %127, i32* %7, align 4
  %128 = load i8*, i8** %3, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 2
  store i8* %129, i8** %3, align 8
  br label %130

130:                                              ; preds = %121, %117
  br label %131

131:                                              ; preds = %130, %31
  %132 = load i32, i32* %4, align 4
  %133 = and i32 %132, 1
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %131
  %136 = load i8*, i8** %3, align 8
  %137 = load i8, i8* %136, align 1
  %138 = call i64 @le16_to_cpu(i8 zeroext %137)
  %139 = load i32, i32* %7, align 4
  %140 = zext i32 %139 to i64
  %141 = add nsw i64 %140, %138
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %7, align 4
  br label %143

143:                                              ; preds = %135, %131
  %144 = load i32, i32* %7, align 4
  %145 = call i32 @from32to16(i32 %144)
  store i32 %145, i32* %7, align 4
  %146 = load i32, i32* %5, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %143
  %149 = load i32, i32* %7, align 4
  %150 = call i32 @swab16(i32 %149)
  store i32 %150, i32* %7, align 4
  br label %151

151:                                              ; preds = %148, %143
  br label %152

152:                                              ; preds = %151, %15
  %153 = load i32, i32* %7, align 4
  ret i32 %153
}

declare dso_local i32 @be16_to_cpu(i8 zeroext) #1

declare dso_local i32 @addc(i32, i32) #1

declare dso_local i64 @le16_to_cpu(i8 zeroext) #1

declare dso_local i32 @from32to16(i32) #1

declare dso_local i32 @swab16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
