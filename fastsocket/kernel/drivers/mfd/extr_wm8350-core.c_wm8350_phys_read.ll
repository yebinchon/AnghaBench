; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_wm8350-core.c_wm8350_phys_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_wm8350-core.c_wm8350_phys_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.wm8350 = type { i32 (%struct.wm8350*, i32, i32, i8*)*, i32 }

@.str = private unnamed_addr constant [15 x i8] c"volatile read\0A\00", align 1
@wm8350_reg_io_map = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm8350*, i32, i32, i32*)* @wm8350_phys_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8350_phys_read(%struct.wm8350* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.wm8350*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.wm8350* %0, %struct.wm8350** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = mul nsw i32 %12, 2
  store i32 %13, i32* %11, align 4
  %14 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %15 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @dev_dbg(i32 %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %19 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %18, i32 0, i32 0
  %20 = load i32 (%struct.wm8350*, i32, i32, i8*)*, i32 (%struct.wm8350*, i32, i32, i8*)** %19, align 8
  %21 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load i32*, i32** %8, align 8
  %25 = bitcast i32* %24 to i8*
  %26 = call i32 %20(%struct.wm8350* %21, i32 %22, i32 %23, i8* %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %63, %4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %30, %31
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %66

34:                                               ; preds = %28
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %6, align 4
  %38 = sub nsw i32 %36, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %35, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @be16_to_cpu(i32 %41)
  %43 = load i32*, i32** %8, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %6, align 4
  %46 = sub nsw i32 %44, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %43, i64 %47
  store i32 %42, i32* %48, align 4
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wm8350_reg_io_map, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %8, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %6, align 4
  %58 = sub nsw i32 %56, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %55, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, %54
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %34
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %9, align 4
  br label %28

66:                                               ; preds = %28
  %67 = load i32, i32* %7, align 4
  %68 = load i32*, i32** %8, align 8
  %69 = call i32 @dump(i32 %67, i32* %68)
  %70 = load i32, i32* %10, align 4
  ret i32 %70
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @dump(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
