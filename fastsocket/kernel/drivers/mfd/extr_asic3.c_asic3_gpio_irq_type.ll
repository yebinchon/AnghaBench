; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_asic3.c_asic3_gpio_irq_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_asic3.c_asic3_gpio_irq_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asic3 = type { i32*, i32, i32, i32, i32 }

@ASIC3_GPIO_LEVEL_TRIGGER = common dso_local global i32 0, align 4
@ASIC3_GPIO_EDGE_TRIGGER = common dso_local global i32 0, align 4
@ASIC3_GPIO_TRIGGER_TYPE = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_RISING = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_FALLING = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_BOTH = common dso_local global i32 0, align 4
@IRQ_TYPE_LEVEL_LOW = common dso_local global i32 0, align 4
@IRQ_TYPE_LEVEL_HIGH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"irq type not changed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @asic3_gpio_irq_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asic3_gpio_irq_type(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.asic3*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call %struct.asic3* @get_irq_chip_data(i32 %13)
  store %struct.asic3* %14, %struct.asic3** %5, align 8
  %15 = load %struct.asic3*, %struct.asic3** %5, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @asic3_irq_to_bank(%struct.asic3* %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.asic3*, %struct.asic3** %5, align 8
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @asic3_irq_to_index(%struct.asic3* %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = shl i32 1, %21
  store i32 %22, i32* %11, align 4
  %23 = load %struct.asic3*, %struct.asic3** %5, align 8
  %24 = getelementptr inbounds %struct.asic3, %struct.asic3* %23, i32 0, i32 2
  %25 = load i64, i64* %12, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.asic3*, %struct.asic3** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @ASIC3_GPIO_LEVEL_TRIGGER, align 4
  %30 = add nsw i32 %28, %29
  %31 = call i32 @asic3_read_register(%struct.asic3* %27, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load %struct.asic3*, %struct.asic3** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @ASIC3_GPIO_EDGE_TRIGGER, align 4
  %35 = add nsw i32 %33, %34
  %36 = call i32 @asic3_read_register(%struct.asic3* %32, i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load %struct.asic3*, %struct.asic3** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @ASIC3_GPIO_TRIGGER_TYPE, align 4
  %40 = add nsw i32 %38, %39
  %41 = call i32 @asic3_read_register(%struct.asic3* %37, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %11, align 4
  %43 = xor i32 %42, -1
  %44 = load %struct.asic3*, %struct.asic3** %5, align 8
  %45 = getelementptr inbounds %struct.asic3, %struct.asic3* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %3, align 4
  %48 = load %struct.asic3*, %struct.asic3** %5, align 8
  %49 = getelementptr inbounds %struct.asic3, %struct.asic3* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = sub i32 %47, %50
  %52 = lshr i32 %51, 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %46, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, %43
  store i32 %56, i32* %54, align 4
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %2
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %8, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %10, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %10, align 4
  br label %154

67:                                               ; preds = %2
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @IRQ_TYPE_EDGE_FALLING, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %67
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %8, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %11, align 4
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %10, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %10, align 4
  br label %153

79:                                               ; preds = %67
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @IRQ_TYPE_EDGE_BOTH, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %120

83:                                               ; preds = %79
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* %8, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %8, align 4
  %87 = load %struct.asic3*, %struct.asic3** %5, align 8
  %88 = getelementptr inbounds %struct.asic3, %struct.asic3* %87, i32 0, i32 4
  %89 = load i32, i32* %3, align 4
  %90 = load %struct.asic3*, %struct.asic3** %5, align 8
  %91 = getelementptr inbounds %struct.asic3, %struct.asic3* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = sub i32 %89, %92
  %94 = call i64 @asic3_gpio_get(i32* %88, i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %83
  %97 = load i32, i32* %11, align 4
  %98 = xor i32 %97, -1
  %99 = load i32, i32* %10, align 4
  %100 = and i32 %99, %98
  store i32 %100, i32* %10, align 4
  br label %105

101:                                              ; preds = %83
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %10, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %10, align 4
  br label %105

105:                                              ; preds = %101, %96
  %106 = load i32, i32* %11, align 4
  %107 = load %struct.asic3*, %struct.asic3** %5, align 8
  %108 = getelementptr inbounds %struct.asic3, %struct.asic3* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %3, align 4
  %111 = load %struct.asic3*, %struct.asic3** %5, align 8
  %112 = getelementptr inbounds %struct.asic3, %struct.asic3* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = sub i32 %110, %113
  %115 = lshr i32 %114, 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %109, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %118, %106
  store i32 %119, i32* %117, align 4
  br label %152

120:                                              ; preds = %79
  %121 = load i32, i32* %4, align 4
  %122 = load i32, i32* @IRQ_TYPE_LEVEL_LOW, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %133

124:                                              ; preds = %120
  %125 = load i32, i32* %11, align 4
  %126 = xor i32 %125, -1
  %127 = load i32, i32* %8, align 4
  %128 = and i32 %127, %126
  store i32 %128, i32* %8, align 4
  %129 = load i32, i32* %11, align 4
  %130 = xor i32 %129, -1
  %131 = load i32, i32* %9, align 4
  %132 = and i32 %131, %130
  store i32 %132, i32* %9, align 4
  br label %151

133:                                              ; preds = %120
  %134 = load i32, i32* %4, align 4
  %135 = load i32, i32* @IRQ_TYPE_LEVEL_HIGH, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %145

137:                                              ; preds = %133
  %138 = load i32, i32* %11, align 4
  %139 = xor i32 %138, -1
  %140 = load i32, i32* %8, align 4
  %141 = and i32 %140, %139
  store i32 %141, i32* %8, align 4
  %142 = load i32, i32* %11, align 4
  %143 = load i32, i32* %9, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %9, align 4
  br label %150

145:                                              ; preds = %133
  %146 = load %struct.asic3*, %struct.asic3** %5, align 8
  %147 = getelementptr inbounds %struct.asic3, %struct.asic3* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @dev_notice(i32 %148, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %150

150:                                              ; preds = %145, %137
  br label %151

151:                                              ; preds = %150, %124
  br label %152

152:                                              ; preds = %151, %105
  br label %153

153:                                              ; preds = %152, %71
  br label %154

154:                                              ; preds = %153, %60
  %155 = load %struct.asic3*, %struct.asic3** %5, align 8
  %156 = load i32, i32* %6, align 4
  %157 = load i32, i32* @ASIC3_GPIO_LEVEL_TRIGGER, align 4
  %158 = add nsw i32 %156, %157
  %159 = load i32, i32* %9, align 4
  %160 = call i32 @asic3_write_register(%struct.asic3* %155, i32 %158, i32 %159)
  %161 = load %struct.asic3*, %struct.asic3** %5, align 8
  %162 = load i32, i32* %6, align 4
  %163 = load i32, i32* @ASIC3_GPIO_EDGE_TRIGGER, align 4
  %164 = add nsw i32 %162, %163
  %165 = load i32, i32* %10, align 4
  %166 = call i32 @asic3_write_register(%struct.asic3* %161, i32 %164, i32 %165)
  %167 = load %struct.asic3*, %struct.asic3** %5, align 8
  %168 = load i32, i32* %6, align 4
  %169 = load i32, i32* @ASIC3_GPIO_TRIGGER_TYPE, align 4
  %170 = add nsw i32 %168, %169
  %171 = load i32, i32* %8, align 4
  %172 = call i32 @asic3_write_register(%struct.asic3* %167, i32 %170, i32 %171)
  %173 = load %struct.asic3*, %struct.asic3** %5, align 8
  %174 = getelementptr inbounds %struct.asic3, %struct.asic3* %173, i32 0, i32 2
  %175 = load i64, i64* %12, align 8
  %176 = call i32 @spin_unlock_irqrestore(i32* %174, i64 %175)
  ret i32 0
}

declare dso_local %struct.asic3* @get_irq_chip_data(i32) #1

declare dso_local i32 @asic3_irq_to_bank(%struct.asic3*, i32) #1

declare dso_local i32 @asic3_irq_to_index(%struct.asic3*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @asic3_read_register(%struct.asic3*, i32) #1

declare dso_local i64 @asic3_gpio_get(i32*, i32) #1

declare dso_local i32 @dev_notice(i32, i8*) #1

declare dso_local i32 @asic3_write_register(%struct.asic3*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
