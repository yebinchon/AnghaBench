; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_wm831x-core.c_wm831x_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_wm831x-core.c_wm831x_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm831x = type { {}*, i32 }

@EPERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Write %04x to R%d(0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm831x*, i16, i32, i8*)* @wm831x_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_write(%struct.wm831x* %0, i16 zeroext %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wm831x*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.wm831x* %0, %struct.wm831x** %6, align 8
  store i16 %1, i16* %7, align 2
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %10, align 8
  %14 = load i32, i32* %8, align 4
  %15 = srem i32 %14, 2
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load i32, i32* %8, align 4
  %18 = icmp sle i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  store i32 0, i32* %11, align 4
  br label %21

21:                                               ; preds = %64, %4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %8, align 4
  %24 = sdiv i32 %23, 2
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %67

26:                                               ; preds = %21
  %27 = load %struct.wm831x*, %struct.wm831x** %6, align 8
  %28 = load i16, i16* %7, align 2
  %29 = call i64 @wm831x_reg_locked(%struct.wm831x* %27, i16 zeroext %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @EPERM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %77

34:                                               ; preds = %26
  %35 = load %struct.wm831x*, %struct.wm831x** %6, align 8
  %36 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32*, i32** %10, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i16, i16* %7, align 2
  %44 = zext i16 %43 to i32
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 %44, %45
  %47 = trunc i32 %46 to i16
  %48 = load i16, i16* %7, align 2
  %49 = zext i16 %48 to i32
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %49, %50
  %52 = trunc i32 %51 to i16
  %53 = call i32 @dev_vdbg(i32 %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %42, i16 zeroext %47, i16 zeroext %52)
  %54 = load i32*, i32** %10, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @cpu_to_be16(i32 %58)
  %60 = load i32*, i32** %10, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 %59, i32* %63, align 4
  br label %64

64:                                               ; preds = %34
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %11, align 4
  br label %21

67:                                               ; preds = %21
  %68 = load %struct.wm831x*, %struct.wm831x** %6, align 8
  %69 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %68, i32 0, i32 0
  %70 = bitcast {}** %69 to i32 (%struct.wm831x*, i16, i32, i8*)**
  %71 = load i32 (%struct.wm831x*, i16, i32, i8*)*, i32 (%struct.wm831x*, i16, i32, i8*)** %70, align 8
  %72 = load %struct.wm831x*, %struct.wm831x** %6, align 8
  %73 = load i16, i16* %7, align 2
  %74 = load i32, i32* %8, align 4
  %75 = load i8*, i8** %9, align 8
  %76 = call i32 %71(%struct.wm831x* %72, i16 zeroext %73, i32 %74, i8* %75)
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %67, %31
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @wm831x_reg_locked(%struct.wm831x*, i16 zeroext) #1

declare dso_local i32 @dev_vdbg(i32, i8*, i32, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
