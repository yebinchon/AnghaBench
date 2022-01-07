; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_snprint_line.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_snprint_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%08X\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%02X \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32*, i32, i32)* @snprint_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snprint_line(i8* %0, i64 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i32, i32* %10, align 4
  %19 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %16, i64 %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %18)
  store i32 %19, i32* %11, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %20

20:                                               ; preds = %89, %5
  %21 = load i32, i32* %12, align 4
  %22 = icmp slt i32 %21, 2
  br i1 %22, label %23, label %92

23:                                               ; preds = %20
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = load i64, i64* %7, align 8
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = sub i64 %28, %30
  %32 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %27, i64 %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* %11, align 4
  %34 = add nsw i32 %33, %32
  store i32 %34, i32* %11, align 4
  store i32 0, i32* %13, align 4
  br label %35

35:                                               ; preds = %64, %23
  %36 = load i32, i32* %13, align 4
  %37 = icmp slt i32 %36, 8
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %39, %40
  br label %42

42:                                               ; preds = %38, %35
  %43 = phi i1 [ false, %35 ], [ %41, %38 ]
  br i1 %43, label %44, label %69

44:                                               ; preds = %42
  %45 = load i8*, i8** %6, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i64, i64* %7, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = sub i64 %49, %51
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* %12, align 4
  %55 = mul nsw i32 %54, 8
  %56 = load i32, i32* %13, align 4
  %57 = add nsw i32 %55, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %53, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %48, i64 %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %11, align 4
  %63 = add nsw i32 %62, %61
  store i32 %63, i32* %11, align 4
  br label %64

64:                                               ; preds = %44
  %65 = load i32, i32* %13, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %14, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %14, align 4
  br label %35

69:                                               ; preds = %42
  br label %70

70:                                               ; preds = %85, %69
  %71 = load i32, i32* %13, align 4
  %72 = icmp slt i32 %71, 8
  br i1 %72, label %73, label %88

73:                                               ; preds = %70
  %74 = load i8*, i8** %6, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = load i64, i64* %7, align 8
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = sub i64 %78, %80
  %82 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %77, i64 %81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %83, %82
  store i32 %84, i32* %11, align 4
  br label %85

85:                                               ; preds = %73
  %86 = load i32, i32* %13, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %13, align 4
  br label %70

88:                                               ; preds = %70
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %12, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %12, align 4
  br label %20

92:                                               ; preds = %20
  %93 = load i8*, i8** %6, align 8
  %94 = load i32, i32* %11, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  %97 = load i64, i64* %7, align 8
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = sub i64 %97, %99
  %101 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %96, i64 %100, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %102 = load i32, i32* %11, align 4
  %103 = add nsw i32 %102, %101
  store i32 %103, i32* %11, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %104

104:                                              ; preds = %185, %92
  %105 = load i32, i32* %12, align 4
  %106 = icmp slt i32 %105, 2
  br i1 %106, label %107, label %188

107:                                              ; preds = %104
  %108 = load i8*, i8** %6, align 8
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %108, i64 %110
  %112 = load i64, i64* %7, align 8
  %113 = load i32, i32* %11, align 4
  %114 = sext i32 %113 to i64
  %115 = sub i64 %112, %114
  %116 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %111, i64 %115, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %117 = load i32, i32* %11, align 4
  %118 = add nsw i32 %117, %116
  store i32 %118, i32* %11, align 4
  store i32 0, i32* %13, align 4
  br label %119

119:                                              ; preds = %160, %107
  %120 = load i32, i32* %13, align 4
  %121 = icmp slt i32 %120, 8
  br i1 %121, label %122, label %126

122:                                              ; preds = %119
  %123 = load i32, i32* %14, align 4
  %124 = load i32, i32* %9, align 4
  %125 = icmp slt i32 %123, %124
  br label %126

126:                                              ; preds = %122, %119
  %127 = phi i1 [ false, %119 ], [ %125, %122 ]
  br i1 %127, label %128, label %165

128:                                              ; preds = %126
  %129 = load i32*, i32** %8, align 8
  %130 = load i32, i32* %12, align 4
  %131 = mul nsw i32 %130, 8
  %132 = load i32, i32* %13, align 4
  %133 = add nsw i32 %131, %132
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %129, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = trunc i32 %136 to i8
  store i8 %137, i8* %15, align 1
  %138 = load i8, i8* %15, align 1
  %139 = call i32 @isascii(i8 signext %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %128
  %142 = load i8, i8* %15, align 1
  %143 = call i32 @isprint(i8 signext %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %146, label %145

145:                                              ; preds = %141, %128
  store i8 46, i8* %15, align 1
  br label %146

146:                                              ; preds = %145, %141
  %147 = load i8*, i8** %6, align 8
  %148 = load i32, i32* %11, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8, i8* %147, i64 %149
  %151 = load i64, i64* %7, align 8
  %152 = load i32, i32* %11, align 4
  %153 = sext i32 %152 to i64
  %154 = sub i64 %151, %153
  %155 = load i8, i8* %15, align 1
  %156 = sext i8 %155 to i32
  %157 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %150, i64 %154, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %156)
  %158 = load i32, i32* %11, align 4
  %159 = add nsw i32 %158, %157
  store i32 %159, i32* %11, align 4
  br label %160

160:                                              ; preds = %146
  %161 = load i32, i32* %13, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %13, align 4
  %163 = load i32, i32* %14, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %14, align 4
  br label %119

165:                                              ; preds = %126
  br label %166

166:                                              ; preds = %181, %165
  %167 = load i32, i32* %13, align 4
  %168 = icmp slt i32 %167, 8
  br i1 %168, label %169, label %184

169:                                              ; preds = %166
  %170 = load i8*, i8** %6, align 8
  %171 = load i32, i32* %11, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i8, i8* %170, i64 %172
  %174 = load i64, i64* %7, align 8
  %175 = load i32, i32* %11, align 4
  %176 = sext i32 %175 to i64
  %177 = sub i64 %174, %176
  %178 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %173, i64 %177, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %179 = load i32, i32* %11, align 4
  %180 = add nsw i32 %179, %178
  store i32 %180, i32* %11, align 4
  br label %181

181:                                              ; preds = %169
  %182 = load i32, i32* %13, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %13, align 4
  br label %166

184:                                              ; preds = %166
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %12, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %12, align 4
  br label %104

188:                                              ; preds = %104
  %189 = load i32, i32* %11, align 4
  ret i32 %189
}

declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #1

declare dso_local i32 @isascii(i8 signext) #1

declare dso_local i32 @isprint(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
