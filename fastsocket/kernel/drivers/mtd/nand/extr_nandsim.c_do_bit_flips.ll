; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nandsim.c_do_bit_flips.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nandsim.c_do_bit_flips.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.nandsim = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i64, i32 }
%struct.TYPE_5__ = type { i32* }

@bitflips = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [83 x i8] c"read_page: flipping bit %d in page %d reading from %d ecc: corrected=%u failed=%u\0A\00", align 1
@nsmtd = common dso_local global %struct.TYPE_8__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_bit_flips(%struct.nandsim* %0, i32 %1) #0 {
  %3 = alloca %struct.nandsim*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nandsim* %0, %struct.nandsim** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @bitflips, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %67

9:                                                ; preds = %2
  %10 = call i32 (...) @random32()
  %11 = icmp slt i32 %10, 4194304
  br i1 %11, label %12, label %67

12:                                               ; preds = %9
  store i32 1, i32* %5, align 4
  %13 = load i32, i32* @bitflips, align 4
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = call i32 (...) @random32()
  %17 = load i32, i32* @bitflips, align 4
  %18 = srem i32 %16, %17
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %15, %12
  br label %21

21:                                               ; preds = %25, %20
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %5, align 4
  %24 = icmp ne i32 %22, 0
  br i1 %24, label %25, label %66

25:                                               ; preds = %21
  %26 = call i32 (...) @random32()
  %27 = load i32, i32* %4, align 4
  %28 = mul nsw i32 %27, 8
  %29 = srem i32 %26, %28
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = srem i32 %30, 8
  %32 = shl i32 1, %31
  %33 = load %struct.nandsim*, %struct.nandsim** %3, align 8
  %34 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sdiv i32 %37, 8
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = xor i32 %41, %32
  store i32 %42, i32* %40, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.nandsim*, %struct.nandsim** %3, align 8
  %45 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.nandsim*, %struct.nandsim** %3, align 8
  %49 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.nandsim*, %struct.nandsim** %3, align 8
  %53 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %51, %55
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** @nsmtd, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** @nsmtd, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @NS_WARN(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %47, i64 %56, i32 %60, i32 %64)
  br label %21

66:                                               ; preds = %21
  br label %67

67:                                               ; preds = %66, %9, %2
  ret void
}

declare dso_local i32 @random32(...) #1

declare dso_local i32 @NS_WARN(i8*, i32, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
