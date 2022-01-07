; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_vicam.c_vicam_decode_color.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_vicam.c_vicam_decode_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VICAM_HEADER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @vicam_decode_color to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vicam_decode_color(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 512, i32* %6, align 4
  store i32 512, i32* %7, align 4
  %18 = load i32, i32* @VICAM_HEADER_SIZE, align 4
  %19 = load i32*, i32** %3, align 8
  %20 = sext i32 %18 to i64
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  store i32* %21, i32** %3, align 8
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %189, %2
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 240
  br i1 %24, label %25, label %194

25:                                               ; preds = %22
  %26 = load i32, i32* %5, align 4
  %27 = mul nsw i32 %26, 242
  %28 = sdiv i32 %27, 240
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp eq i32 %29, 241
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 -512, i32* %7, align 4
  br label %32

32:                                               ; preds = %31, %25
  store i32 1, i32* %10, align 4
  store i32 1, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %33

33:                                               ; preds = %183, %32
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %34, 320
  br i1 %35, label %36, label %188

36:                                               ; preds = %33
  %37 = load i32, i32* %9, align 4
  %38 = mul nsw i32 %37, 512
  %39 = sdiv i32 %38, 320
  store i32 %39, i32* %15, align 4
  %40 = load i32*, i32** %3, align 8
  %41 = load i32, i32* %15, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32* %43, i32** %16, align 8
  %44 = load i32, i32* %15, align 4
  %45 = icmp eq i32 %44, 511
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  store i32 -1, i32* %11, align 4
  br label %47

47:                                               ; preds = %46, %36
  %48 = load i32*, i32** %16, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %16, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = sub nsw i32 %52, %55
  %57 = load i32*, i32** %16, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %16, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = sub nsw i32 %61, %64
  %66 = add nsw i32 %56, %65
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  %68 = sdiv i32 %67, 2
  store i32 %68, i32* %13, align 4
  %69 = load i32*, i32** %16, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %16, align 8
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %75, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %74, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = sub nsw i32 %73, %80
  %82 = load i32*, i32** %16, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %16, align 8
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %88, %89
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %87, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = sub nsw i32 %86, %93
  %95 = add nsw i32 %81, %94
  %96 = load i32*, i32** %16, align 8
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load i32*, i32** %16, align 8
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* %7, align 4
  %104 = add nsw i32 %102, %103
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %101, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = sub nsw i32 %100, %107
  %109 = add nsw i32 %95, %108
  %110 = load i32*, i32** %16, align 8
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load i32*, i32** %16, align 8
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* %7, align 4
  %118 = add nsw i32 %116, %117
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %115, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = sub nsw i32 %114, %121
  %123 = add nsw i32 %109, %122
  store i32 %123, i32* %14, align 4
  %124 = load i32, i32* %14, align 4
  %125 = sdiv i32 %124, 4
  store i32 %125, i32* %14, align 4
  %126 = load i32*, i32** %16, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %13, align 4
  %130 = sdiv i32 %129, 2
  %131 = add nsw i32 %128, %130
  %132 = sub nsw i32 %131, 16
  %133 = mul nsw i32 1160, %132
  store i32 %133, i32* %12, align 4
  %134 = load i32, i32* %5, align 4
  %135 = and i32 %134, 1
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %47
  %138 = load i32, i32* %13, align 4
  store i32 %138, i32* %17, align 4
  %139 = load i32, i32* %14, align 4
  store i32 %139, i32* %13, align 4
  %140 = load i32, i32* %17, align 4
  store i32 %140, i32* %14, align 4
  br label %141

141:                                              ; preds = %137, %47
  %142 = load i32, i32* %15, align 4
  %143 = load i32, i32* %5, align 4
  %144 = xor i32 %142, %143
  %145 = and i32 %144, 1
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %141
  %148 = load i32, i32* %13, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %13, align 4
  %150 = load i32, i32* %14, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %14, align 4
  br label %152

152:                                              ; preds = %147, %141
  %153 = load i32, i32* %12, align 4
  %154 = load i32, i32* %14, align 4
  %155 = mul nsw i32 2017, %154
  %156 = add nsw i32 %153, %155
  %157 = add nsw i32 %156, 500
  %158 = sdiv i32 %157, 900
  %159 = call i32 @clamp(i32 %158, i32 0, i32 255)
  %160 = load i32*, i32** %4, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 0
  store i32 %159, i32* %161, align 4
  %162 = load i32, i32* %12, align 4
  %163 = load i32, i32* %14, align 4
  %164 = mul nsw i32 392, %163
  %165 = sub nsw i32 %162, %164
  %166 = load i32, i32* %13, align 4
  %167 = mul nsw i32 813, %166
  %168 = sub nsw i32 %165, %167
  %169 = add nsw i32 %168, 500
  %170 = sdiv i32 %169, 1000
  %171 = call i32 @clamp(i32 %170, i32 0, i32 255)
  %172 = load i32*, i32** %4, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 1
  store i32 %171, i32* %173, align 4
  %174 = load i32, i32* %12, align 4
  %175 = load i32, i32* %13, align 4
  %176 = mul nsw i32 1594, %175
  %177 = add nsw i32 %174, %176
  %178 = add nsw i32 %177, 500
  %179 = sdiv i32 %178, 1300
  %180 = call i32 @clamp(i32 %179, i32 0, i32 255)
  %181 = load i32*, i32** %4, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 2
  store i32 %180, i32* %182, align 4
  store i32 -1, i32* %10, align 4
  br label %183

183:                                              ; preds = %152
  %184 = load i32, i32* %9, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %9, align 4
  %186 = load i32*, i32** %4, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 3
  store i32* %187, i32** %4, align 8
  br label %33

188:                                              ; preds = %33
  store i32 -512, i32* %6, align 4
  br label %189

189:                                              ; preds = %188
  %190 = load i32, i32* %5, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %5, align 4
  %192 = load i32*, i32** %3, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 512
  store i32* %193, i32** %3, align 8
  br label %22

194:                                              ; preds = %22
  ret void
}

declare dso_local i32 @clamp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
