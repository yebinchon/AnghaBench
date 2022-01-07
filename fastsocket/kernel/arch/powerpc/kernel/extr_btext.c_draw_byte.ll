; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_btext.c_draw_byte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_btext.c_draw_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vga_font = common dso_local global i8* null, align 8
@dispDeviceRowBytes = common dso_local global i32 0, align 4
@dispDeviceDepth = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8, i64, i64)* @draw_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_byte(i8 zeroext %0, i64 %1, i64 %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8 %0, i8* %4, align 1
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i64, i64* %5, align 8
  %11 = shl i64 %10, 3
  %12 = load i64, i64* %6, align 8
  %13 = shl i64 %12, 4
  %14 = call i8* @calc_base(i64 %11, i64 %13)
  store i8* %14, i8** %7, align 8
  %15 = load i8*, i8** @vga_font, align 8
  %16 = load i8, i8* %4, align 1
  %17 = zext i8 %16 to i32
  %18 = mul i32 %17, 16
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %15, i64 %19
  store i8* %20, i8** %8, align 8
  %21 = load i32, i32* @dispDeviceRowBytes, align 4
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* @dispDeviceDepth, align 4
  switch i32 %22, label %41 [
    i32 24, label %23
    i32 32, label %23
    i32 15, label %29
    i32 16, label %29
    i32 8, label %35
  ]

23:                                               ; preds = %3, %3
  %24 = load i8*, i8** %8, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = bitcast i8* %25 to i32*
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @draw_byte_32(i8* %24, i32* %26, i32 %27)
  br label %41

29:                                               ; preds = %3, %3
  %30 = load i8*, i8** %8, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = bitcast i8* %31 to i32*
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @draw_byte_16(i8* %30, i32* %32, i32 %33)
  br label %41

35:                                               ; preds = %3
  %36 = load i8*, i8** %8, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = bitcast i8* %37 to i32*
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @draw_byte_8(i8* %36, i32* %38, i32 %39)
  br label %41

41:                                               ; preds = %3, %35, %29, %23
  ret void
}

declare dso_local i8* @calc_base(i64, i64) #1

declare dso_local i32 @draw_byte_32(i8*, i32*, i32) #1

declare dso_local i32 @draw_byte_16(i8*, i32*, i32) #1

declare dso_local i32 @draw_byte_8(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
