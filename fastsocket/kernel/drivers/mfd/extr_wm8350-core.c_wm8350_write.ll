; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_wm8350-core.c_wm8350_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_wm8350-core.c_wm8350_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.wm8350 = type { i32 (%struct.wm8350*, i32, i32, i8*)*, i32*, i32 }

@ENODEV = common dso_local global i32 0, align 4
@WM8350_MAX_REGISTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"invalid reg %x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@wm8350_reg_io_map = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"attempted write to read only reg R%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"attempted write to locked reg R%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm8350*, i32, i32, i32*)* @wm8350_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8350_write(%struct.wm8350* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wm8350*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.wm8350* %0, %struct.wm8350** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = add nsw i32 %13, %14
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %8, align 4
  %17 = mul nsw i32 %16, 2
  store i32 %17, i32* %12, align 4
  %18 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %19 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %18, i32 0, i32 0
  %20 = load i32 (%struct.wm8350*, i32, i32, i8*)*, i32 (%struct.wm8350*, i32, i32, i8*)** %19, align 8
  %21 = icmp eq i32 (%struct.wm8350*, i32, i32, i8*)* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %149

25:                                               ; preds = %4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %8, align 4
  %28 = add nsw i32 %26, %27
  %29 = sub nsw i32 %28, 1
  %30 = load i32, i32* @WM8350_MAX_REGISTER, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %25
  %33 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %34 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %36, %37
  %39 = sub nsw i32 %38, 1
  %40 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %149

43:                                               ; preds = %25
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %10, align 4
  br label %45

45:                                               ; preds = %136, %43
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %139

49:                                               ; preds = %45
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wm8350_reg_io_map, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %49
  %58 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %59 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @dev_err(i32 %60, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  br label %149

65:                                               ; preds = %49
  %66 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %67 = load i32, i32* %10, align 4
  %68 = call i64 @is_reg_locked(%struct.wm8350* %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %65
  %71 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %72 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @dev_err(i32 %73, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %5, align 4
  br label %149

78:                                               ; preds = %65
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wm8350_reg_io_map, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %9, align 8
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %7, align 4
  %88 = sub nsw i32 %86, %87
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %85, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, %84
  store i32 %92, i32* %90, align 4
  %93 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %94 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wm8350_reg_io_map, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = xor i32 %105, -1
  %107 = and i32 %99, %106
  %108 = load i32*, i32** %9, align 8
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* %7, align 4
  %111 = sub nsw i32 %109, %110
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %108, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %107, %114
  %116 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %117 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %10, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  store i32 %115, i32* %121, align 4
  %122 = load i32*, i32** %9, align 8
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* %7, align 4
  %125 = sub nsw i32 %123, %124
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %122, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @cpu_to_be16(i32 %128)
  %130 = load i32*, i32** %9, align 8
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* %7, align 4
  %133 = sub nsw i32 %131, %132
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %130, i64 %134
  store i32 %129, i32* %135, align 4
  br label %136

136:                                              ; preds = %78
  %137 = load i32, i32* %10, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %10, align 4
  br label %45

139:                                              ; preds = %45
  %140 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %141 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %140, i32 0, i32 0
  %142 = load i32 (%struct.wm8350*, i32, i32, i8*)*, i32 (%struct.wm8350*, i32, i32, i8*)** %141, align 8
  %143 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* %12, align 4
  %146 = load i32*, i32** %9, align 8
  %147 = bitcast i32* %146 to i8*
  %148 = call i32 %142(%struct.wm8350* %143, i32 %144, i32 %145, i8* %147)
  store i32 %148, i32* %5, align 4
  br label %149

149:                                              ; preds = %139, %70, %57, %32, %22
  %150 = load i32, i32* %5, align 4
  ret i32 %150
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i64 @is_reg_locked(%struct.wm8350*, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
