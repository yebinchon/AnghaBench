; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_ep93xx_keypad.c_ep93xx_keypad_irq_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_ep93xx_keypad.c_ep93xx_keypad_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ep93xx_keypad = type { i32*, i32, i32, %struct.input_dev* }
%struct.input_dev = type { i32 }

@KEY_REG = common dso_local global i32 0, align 4
@KEY_REG_KEY1_MASK = common dso_local global i32 0, align 4
@KEY_REG_KEY1_SHIFT = common dso_local global i32 0, align 4
@KEY_REG_KEY2_MASK = common dso_local global i32 0, align 4
@KEY_REG_KEY2_SHIFT = common dso_local global i32 0, align 4
@KEY_REG_2KEYS = common dso_local global i32 0, align 4
@KEY_REG_1KEY = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ep93xx_keypad_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep93xx_keypad_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ep93xx_keypad*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.ep93xx_keypad*
  store %struct.ep93xx_keypad* %12, %struct.ep93xx_keypad** %5, align 8
  %13 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %5, align 8
  %14 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %13, i32 0, i32 3
  %15 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  store %struct.input_dev* %15, %struct.input_dev** %6, align 8
  %16 = load i32, i32* @KEY_REG, align 4
  %17 = call i32 @keypad_readl(i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @KEY_REG_KEY1_MASK, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @KEY_REG_KEY1_SHIFT, align 4
  %22 = lshr i32 %20, %21
  store i32 %22, i32* %8, align 4
  %23 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %5, align 8
  %24 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @KEY_REG_KEY2_MASK, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* @KEY_REG_KEY2_SHIFT, align 4
  %34 = lshr i32 %32, %33
  store i32 %34, i32* %8, align 4
  %35 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %5, align 8
  %36 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @KEY_REG_2KEYS, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %105

46:                                               ; preds = %2
  %47 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %5, align 8
  %48 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %69

51:                                               ; preds = %46
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %5, align 8
  %54 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %52, %55
  br i1 %56, label %57, label %69

57:                                               ; preds = %51
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %5, align 8
  %60 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %58, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %57
  %64 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %65 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %5, align 8
  %66 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @input_report_key(%struct.input_dev* %64, i32 %67, i32 0)
  br label %69

69:                                               ; preds = %63, %57, %51, %46
  %70 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %5, align 8
  %71 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %92

74:                                               ; preds = %69
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %5, align 8
  %77 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %75, %78
  br i1 %79, label %80, label %92

80:                                               ; preds = %74
  %81 = load i32, i32* %10, align 4
  %82 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %5, align 8
  %83 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %81, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %80
  %87 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %88 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %5, align 8
  %89 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @input_report_key(%struct.input_dev* %87, i32 %90, i32 0)
  br label %92

92:                                               ; preds = %86, %80, %74, %69
  %93 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @input_report_key(%struct.input_dev* %93, i32 %94, i32 1)
  %96 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @input_report_key(%struct.input_dev* %96, i32 %97, i32 1)
  %99 = load i32, i32* %9, align 4
  %100 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %5, align 8
  %101 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 8
  %102 = load i32, i32* %10, align 4
  %103 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %5, align 8
  %104 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 4
  br label %169

105:                                              ; preds = %2
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @KEY_REG_1KEY, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %153

110:                                              ; preds = %105
  %111 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %5, align 8
  %112 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %127

115:                                              ; preds = %110
  %116 = load i32, i32* %9, align 4
  %117 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %5, align 8
  %118 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %116, %119
  br i1 %120, label %121, label %127

121:                                              ; preds = %115
  %122 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %123 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %5, align 8
  %124 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @input_report_key(%struct.input_dev* %122, i32 %125, i32 0)
  br label %127

127:                                              ; preds = %121, %115, %110
  %128 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %5, align 8
  %129 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %144

132:                                              ; preds = %127
  %133 = load i32, i32* %9, align 4
  %134 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %5, align 8
  %135 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %133, %136
  br i1 %137, label %138, label %144

138:                                              ; preds = %132
  %139 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %140 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %5, align 8
  %141 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @input_report_key(%struct.input_dev* %139, i32 %142, i32 0)
  br label %144

144:                                              ; preds = %138, %132, %127
  %145 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %146 = load i32, i32* %9, align 4
  %147 = call i32 @input_report_key(%struct.input_dev* %145, i32 %146, i32 1)
  %148 = load i32, i32* %9, align 4
  %149 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %5, align 8
  %150 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %149, i32 0, i32 1
  store i32 %148, i32* %150, align 8
  %151 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %5, align 8
  %152 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %151, i32 0, i32 2
  store i32 0, i32* %152, align 4
  br label %168

153:                                              ; preds = %105
  %154 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %155 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %5, align 8
  %156 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @input_report_key(%struct.input_dev* %154, i32 %157, i32 0)
  %159 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %160 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %5, align 8
  %161 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @input_report_key(%struct.input_dev* %159, i32 %162, i32 0)
  %164 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %5, align 8
  %165 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %164, i32 0, i32 2
  store i32 0, i32* %165, align 4
  %166 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %5, align 8
  %167 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %166, i32 0, i32 1
  store i32 0, i32* %167, align 8
  br label %168

168:                                              ; preds = %153, %144
  br label %169

169:                                              ; preds = %168, %92
  %170 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %171 = call i32 @input_sync(%struct.input_dev* %170)
  %172 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %172
}

declare dso_local i32 @keypad_readl(i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
