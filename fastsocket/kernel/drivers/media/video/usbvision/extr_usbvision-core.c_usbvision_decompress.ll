; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvision/extr_usbvision-core.c_usbvision_decompress.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvision/extr_usbvision-core.c_usbvision_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_usbvision = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_usbvision*, i8*, i8*, i32*, i32*, i32)* @usbvision_decompress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbvision_decompress(%struct.usb_usbvision* %0, i8* %1, i8* %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca %struct.usb_usbvision*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  %23 = alloca i8, align 1
  %24 = alloca i8, align 1
  %25 = alloca i8, align 1
  store %struct.usb_usbvision* %0, %struct.usb_usbvision** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  store i8 0, i8* %25, align 1
  %26 = load i32*, i32** %10, align 8
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %16, align 4
  %28 = load i32*, i32** %11, align 8
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %19, align 4
  store i32 396, i32* %15, align 4
  %30 = load i32, i32* %16, align 4
  store i32 %30, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i8 0, i8* %21, align 1
  store i8 0, i8* %22, align 1
  store i8 0, i8* %23, align 1
  store i8 0, i8* %24, align 1
  store i32 0, i32* %20, align 4
  %31 = load i32, i32* %12, align 4
  store i32 %31, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %32

32:                                               ; preds = %184, %6
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %187

36:                                               ; preds = %32
  %37 = load i32, i32* %18, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %115

39:                                               ; preds = %36
  %40 = load i32, i32* %20, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = load i8*, i8** %8, align 8
  %44 = load i32, i32* %19, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i8, i8* %46, align 1
  store i8 %47, i8* %24, align 1
  %48 = load i32, i32* %19, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %19, align 4
  store i32 4, i32* %20, align 4
  br label %50

50:                                               ; preds = %42, %39
  %51 = load i8, i8* %24, align 1
  %52 = zext i8 %51 to i32
  %53 = and i32 %52, 192
  %54 = ashr i32 %53, 6
  %55 = trunc i32 %54 to i8
  store i8 %55, i8* %23, align 1
  %56 = load %struct.usb_usbvision*, %struct.usb_usbvision** %7, align 8
  %57 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i8, i8* %23, align 1
  %60 = zext i8 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  %64 = load i32, i32* %17, align 4
  store i32 %64, i32* %16, align 4
  %65 = load i8, i8* %23, align 1
  %66 = zext i8 %65 to i32
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %87

68:                                               ; preds = %50
  %69 = load i32, i32* %13, align 4
  %70 = icmp sge i32 %69, 24
  br i1 %70, label %71, label %81

71:                                               ; preds = %68
  %72 = load i32, i32* %14, align 4
  %73 = add nsw i32 %72, 23
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %13, align 4
  %75 = sub nsw i32 %74, 24
  store i32 %75, i32* %13, align 4
  %76 = load i8*, i8** %9, align 8
  %77 = load i32, i32* %14, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  %80 = load i8, i8* %79, align 1
  store i8 %80, i8* %25, align 1
  br label %86

81:                                               ; preds = %68
  %82 = load i32, i32* %13, align 4
  %83 = sub nsw i32 %82, 1
  %84 = load i32, i32* %14, align 4
  %85 = add nsw i32 %84, %83
  store i32 %85, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %86

86:                                               ; preds = %81, %71
  br label %108

87:                                               ; preds = %50
  %88 = load i8*, i8** %8, align 8
  %89 = load i32, i32* %16, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  %92 = load i8, i8* %91, align 1
  store i8 %92, i8* %22, align 1
  %93 = load i32, i32* %16, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %16, align 4
  %95 = load i32, i32* %13, align 4
  %96 = icmp sge i32 %95, 24
  br i1 %96, label %97, label %98

97:                                               ; preds = %87
  store i32 24, i32* %18, align 4
  br label %100

98:                                               ; preds = %87
  %99 = load i32, i32* %13, align 4
  store i32 %99, i32* %18, align 4
  br label %100

100:                                              ; preds = %98, %97
  %101 = load i32, i32* %18, align 4
  %102 = load i32, i32* %13, align 4
  %103 = sub nsw i32 %102, %101
  store i32 %103, i32* %13, align 4
  %104 = load i32, i32* %16, align 4
  %105 = load i32, i32* %18, align 4
  %106 = sdiv i32 %105, 4
  %107 = add nsw i32 %104, %106
  store i32 %107, i32* %17, align 4
  br label %108

108:                                              ; preds = %100, %86
  %109 = load i8, i8* %24, align 1
  %110 = zext i8 %109 to i32
  %111 = shl i32 %110, 2
  %112 = trunc i32 %111 to i8
  store i8 %112, i8* %24, align 1
  %113 = load i32, i32* %20, align 4
  %114 = sub nsw i32 %113, 1
  store i32 %114, i32* %20, align 4
  br label %115

115:                                              ; preds = %108, %36
  %116 = load i32, i32* %18, align 4
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %118, label %183

118:                                              ; preds = %115
  %119 = load i32, i32* %18, align 4
  %120 = srem i32 %119, 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %130

122:                                              ; preds = %118
  %123 = load i8*, i8** %8, align 8
  %124 = load i32, i32* %16, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %123, i64 %125
  %127 = load i8, i8* %126, align 1
  store i8 %127, i8* %21, align 1
  %128 = load i32, i32* %16, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %16, align 4
  br label %130

130:                                              ; preds = %122, %118
  %131 = load i8, i8* %23, align 1
  %132 = zext i8 %131 to i32
  %133 = icmp eq i32 %132, 1
  br i1 %133, label %134, label %140

134:                                              ; preds = %130
  %135 = load i8*, i8** %9, align 8
  %136 = load i32, i32* %14, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %135, i64 %137
  %139 = load i8, i8* %138, align 1
  store i8 %139, i8* %25, align 1
  br label %140

140:                                              ; preds = %134, %130
  %141 = load i8, i8* %21, align 1
  %142 = zext i8 %141 to i32
  %143 = and i32 %142, 192
  switch i32 %143, label %171 [
    i32 192, label %144
    i32 128, label %157
    i32 0, label %164
  ]

144:                                              ; preds = %140
  %145 = load i8*, i8** %8, align 8
  %146 = load i32, i32* %17, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %145, i64 %147
  %149 = load i8, i8* %148, align 1
  %150 = zext i8 %149 to i32
  %151 = load i8, i8* %25, align 1
  %152 = zext i8 %151 to i32
  %153 = add nsw i32 %152, %150
  %154 = trunc i32 %153 to i8
  store i8 %154, i8* %25, align 1
  %155 = load i32, i32* %17, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %17, align 4
  br label %171

157:                                              ; preds = %140
  %158 = load i8, i8* %22, align 1
  %159 = zext i8 %158 to i32
  %160 = load i8, i8* %25, align 1
  %161 = zext i8 %160 to i32
  %162 = add nsw i32 %161, %159
  %163 = trunc i32 %162 to i8
  store i8 %163, i8* %25, align 1
  br label %171

164:                                              ; preds = %140
  %165 = load i8, i8* %22, align 1
  %166 = zext i8 %165 to i32
  %167 = load i8, i8* %25, align 1
  %168 = zext i8 %167 to i32
  %169 = sub nsw i32 %168, %166
  %170 = trunc i32 %169 to i8
  store i8 %170, i8* %25, align 1
  br label %171

171:                                              ; preds = %140, %164, %157, %144
  %172 = load i8, i8* %25, align 1
  %173 = load i8*, i8** %9, align 8
  %174 = load i32, i32* %14, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8, i8* %173, i64 %175
  store i8 %172, i8* %176, align 1
  %177 = load i8, i8* %21, align 1
  %178 = zext i8 %177 to i32
  %179 = shl i32 %178, 2
  %180 = trunc i32 %179 to i8
  store i8 %180, i8* %21, align 1
  %181 = load i32, i32* %18, align 4
  %182 = sub nsw i32 %181, 1
  store i32 %182, i32* %18, align 4
  br label %183

183:                                              ; preds = %171, %115
  br label %184

184:                                              ; preds = %183
  %185 = load i32, i32* %14, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %14, align 4
  br label %32

187:                                              ; preds = %32
  %188 = load i32, i32* %17, align 4
  %189 = load i32*, i32** %10, align 8
  store i32 %188, i32* %189, align 4
  %190 = load i32, i32* %19, align 4
  %191 = load i32*, i32** %11, align 8
  store i32 %190, i32* %191, align 4
  %192 = load i32, i32* %14, align 4
  ret i32 %192
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
