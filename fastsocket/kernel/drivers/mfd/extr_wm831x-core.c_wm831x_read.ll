; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_wm831x-core.c_wm831x_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_wm831x-core.c_wm831x_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm831x = type { {}*, i32 }

@.str = private unnamed_addr constant [26 x i8] c"Read %04x from R%d(0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm831x*, i16, i32, i8*)* @wm831x_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_read(%struct.wm831x* %0, i16 zeroext %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wm831x*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.wm831x* %0, %struct.wm831x** %6, align 8
  store i16 %1, i16* %7, align 2
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %12, align 8
  %15 = load i32, i32* %8, align 4
  %16 = srem i32 %15, 2
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load i32, i32* %8, align 4
  %19 = icmp sle i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.wm831x*, %struct.wm831x** %6, align 8
  %23 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %22, i32 0, i32 0
  %24 = bitcast {}** %23 to i32 (%struct.wm831x*, i16, i32, i8*)**
  %25 = load i32 (%struct.wm831x*, i16, i32, i8*)*, i32 (%struct.wm831x*, i16, i32, i8*)** %24, align 8
  %26 = load %struct.wm831x*, %struct.wm831x** %6, align 8
  %27 = load i16, i16* %7, align 2
  %28 = load i32, i32* %8, align 4
  %29 = load i8*, i8** %9, align 8
  %30 = call i32 %25(%struct.wm831x* %26, i16 zeroext %27, i32 %28, i8* %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %4
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %5, align 4
  br label %75

35:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %36

36:                                               ; preds = %71, %35
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %8, align 4
  %39 = sdiv i32 %38, 2
  %40 = icmp slt i32 %37, %39
  br i1 %40, label %41, label %74

41:                                               ; preds = %36
  %42 = load i32*, i32** %12, align 8
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @be16_to_cpu(i32 %46)
  %48 = load i32*, i32** %12, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 %47, i32* %51, align 4
  %52 = load %struct.wm831x*, %struct.wm831x** %6, align 8
  %53 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32*, i32** %12, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i16, i16* %7, align 2
  %61 = zext i16 %60 to i32
  %62 = load i32, i32* %11, align 4
  %63 = add nsw i32 %61, %62
  %64 = trunc i32 %63 to i16
  %65 = load i16, i16* %7, align 2
  %66 = zext i16 %65 to i32
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %66, %67
  %69 = trunc i32 %68 to i16
  %70 = call i32 @dev_vdbg(i32 %54, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %59, i16 zeroext %64, i16 zeroext %69)
  br label %71

71:                                               ; preds = %41
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %11, align 4
  br label %36

74:                                               ; preds = %36
  store i32 0, i32* %5, align 4
  br label %75

75:                                               ; preds = %74, %33
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @dev_vdbg(i32, i8*, i32, i16 zeroext, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
