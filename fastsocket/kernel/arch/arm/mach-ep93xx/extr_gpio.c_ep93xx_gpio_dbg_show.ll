; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ep93xx/extr_gpio.c_ep93xx_gpio_dbg_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ep93xx/extr_gpio.c_ep93xx_gpio_dbg_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32, i64 }
%struct.seq_file = type { i32 }
%struct.gpio_chip = type { i32, i32 }
%struct.ep93xx_gpio_chip = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c" %s%d gpio-%-3d (%-12s) %s %s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"in \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"hi\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"lo\00", align 1
@irq_desc = common dso_local global %struct.irq_desc* null, align 8
@IRQ_TYPE_SENSE_MASK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"(default)\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"edge-falling\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"edge-rising\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"edge-both\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"level-high\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"level-low\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"?trigger?\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c" irq-%d %s%s\00", align 1
@IRQ_WAKEUP = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [8 x i8] c" wakeup\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.gpio_chip*)* @ep93xx_gpio_dbg_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ep93xx_gpio_dbg_show(%struct.seq_file* %0, %struct.gpio_chip* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca %struct.ep93xx_gpio_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.irq_desc*, align 8
  %13 = alloca i8*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.gpio_chip* %1, %struct.gpio_chip** %4, align 8
  %14 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %15 = call %struct.ep93xx_gpio_chip* @to_ep93xx_gpio_chip(%struct.gpio_chip* %14)
  store %struct.ep93xx_gpio_chip* %15, %struct.ep93xx_gpio_chip** %5, align 8
  %16 = load %struct.ep93xx_gpio_chip*, %struct.ep93xx_gpio_chip** %5, align 8
  %17 = getelementptr inbounds %struct.ep93xx_gpio_chip, %struct.ep93xx_gpio_chip* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @__raw_readb(i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.ep93xx_gpio_chip*, %struct.ep93xx_gpio_chip** %5, align 8
  %21 = getelementptr inbounds %struct.ep93xx_gpio_chip, %struct.ep93xx_gpio_chip* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @__raw_readb(i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.ep93xx_gpio_chip*, %struct.ep93xx_gpio_chip** %5, align 8
  %25 = getelementptr inbounds %struct.ep93xx_gpio_chip, %struct.ep93xx_gpio_chip* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %112, %2
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %31 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %117

34:                                               ; preds = %28
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %9, align 4
  %37 = shl i32 1, %36
  %38 = and i32 %35, %37
  store i32 %38, i32* %10, align 4
  %39 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %40 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %41 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i64 @gpiochip_is_requested(%struct.gpio_chip* %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %34
  %50 = inttoptr i64 %47 to i8*
  br label %52

51:                                               ; preds = %34
  br label %52

52:                                               ; preds = %51, %49
  %53 = phi i8* [ %50, %49 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %51 ]
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %9, align 4
  %60 = shl i32 1, %59
  %61 = and i32 %58, %60
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %65 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %39, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43, i32 %44, i8* %53, i8* %57, i8* %64)
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %109, label %68

68:                                               ; preds = %52
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @gpio_to_irq(i32 %69)
  store i32 %70, i32* %11, align 4
  %71 = load %struct.irq_desc*, %struct.irq_desc** @irq_desc, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %71, i64 %73
  store %struct.irq_desc* %74, %struct.irq_desc** %12, align 8
  %75 = load i32, i32* %11, align 4
  %76 = icmp sge i32 %75, 0
  br i1 %76, label %77, label %108

77:                                               ; preds = %68
  %78 = load %struct.irq_desc*, %struct.irq_desc** %12, align 8
  %79 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %108

82:                                               ; preds = %77
  %83 = load %struct.irq_desc*, %struct.irq_desc** %12, align 8
  %84 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @IRQ_TYPE_SENSE_MASK, align 4
  %87 = and i32 %85, %86
  switch i32 %87, label %94 [
    i32 128, label %88
    i32 132, label %89
    i32 131, label %90
    i32 133, label %91
    i32 130, label %92
    i32 129, label %93
  ]

88:                                               ; preds = %82
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8** %13, align 8
  br label %95

89:                                               ; preds = %82
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8** %13, align 8
  br label %95

90:                                               ; preds = %82
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8** %13, align 8
  br label %95

91:                                               ; preds = %82
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8** %13, align 8
  br label %95

92:                                               ; preds = %82
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8** %13, align 8
  br label %95

93:                                               ; preds = %82
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8** %13, align 8
  br label %95

94:                                               ; preds = %82
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8** %13, align 8
  br label %95

95:                                               ; preds = %94, %93, %92, %91, %90, %89, %88
  %96 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %97 = load i32, i32* %11, align 4
  %98 = load i8*, i8** %13, align 8
  %99 = load %struct.irq_desc*, %struct.irq_desc** %12, align 8
  %100 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @IRQ_WAKEUP, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  %107 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %96, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i32 %97, i8* %98, i8* %106)
  br label %108

108:                                              ; preds = %95, %77, %68
  br label %109

109:                                              ; preds = %108, %52
  %110 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %111 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %110, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  br label %112

112:                                              ; preds = %109
  %113 = load i32, i32* %9, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %9, align 4
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %8, align 4
  br label %28

117:                                              ; preds = %28
  ret void
}

declare dso_local %struct.ep93xx_gpio_chip* @to_ep93xx_gpio_chip(%struct.gpio_chip*) #1

declare dso_local i32 @__raw_readb(i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i64 @gpiochip_is_requested(%struct.gpio_chip*, i32) #1

declare dso_local i32 @gpio_to_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
