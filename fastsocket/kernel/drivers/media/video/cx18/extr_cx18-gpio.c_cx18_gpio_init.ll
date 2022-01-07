; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-gpio.c_cx18_gpio_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-gpio.c_cx18_gpio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18 = type { i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32 }

@TUNER_XC2028 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"GPIO initial dir: %08x/%08x out: %08x/%08x\0A\00", align 1
@CX18_REG_GPIO_DIR1 = common dso_local global i32 0, align 4
@CX18_REG_GPIO_DIR2 = common dso_local global i32 0, align 4
@CX18_REG_GPIO_OUT1 = common dso_local global i32 0, align 4
@CX18_REG_GPIO_OUT2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx18_gpio_init(%struct.cx18* %0) #0 {
  %2 = alloca %struct.cx18*, align 8
  store %struct.cx18* %0, %struct.cx18** %2, align 8
  %3 = load %struct.cx18*, %struct.cx18** %2, align 8
  %4 = getelementptr inbounds %struct.cx18, %struct.cx18* %3, i32 0, i32 2
  %5 = call i32 @mutex_lock(i32* %4)
  %6 = load %struct.cx18*, %struct.cx18** %2, align 8
  %7 = getelementptr inbounds %struct.cx18, %struct.cx18* %6, i32 0, i32 3
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.cx18*, %struct.cx18** %2, align 8
  %13 = getelementptr inbounds %struct.cx18, %struct.cx18* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.cx18*, %struct.cx18** %2, align 8
  %15 = getelementptr inbounds %struct.cx18, %struct.cx18* %14, i32 0, i32 3
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.cx18*, %struct.cx18** %2, align 8
  %21 = getelementptr inbounds %struct.cx18, %struct.cx18* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.cx18*, %struct.cx18** %2, align 8
  %23 = getelementptr inbounds %struct.cx18, %struct.cx18* %22, i32 0, i32 3
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i64 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @TUNER_XC2028, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %53

32:                                               ; preds = %1
  %33 = load %struct.cx18*, %struct.cx18** %2, align 8
  %34 = getelementptr inbounds %struct.cx18, %struct.cx18* %33, i32 0, i32 3
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = shl i32 1, %37
  %39 = load %struct.cx18*, %struct.cx18** %2, align 8
  %40 = getelementptr inbounds %struct.cx18, %struct.cx18* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 8
  %43 = load %struct.cx18*, %struct.cx18** %2, align 8
  %44 = getelementptr inbounds %struct.cx18, %struct.cx18* %43, i32 0, i32 3
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = shl i32 1, %47
  %49 = load %struct.cx18*, %struct.cx18** %2, align 8
  %50 = getelementptr inbounds %struct.cx18, %struct.cx18* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %32, %1
  %54 = load %struct.cx18*, %struct.cx18** %2, align 8
  %55 = getelementptr inbounds %struct.cx18, %struct.cx18* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load %struct.cx18*, %struct.cx18** %2, align 8
  %60 = getelementptr inbounds %struct.cx18, %struct.cx18* %59, i32 0, i32 2
  %61 = call i32 @mutex_unlock(i32* %60)
  br label %81

62:                                               ; preds = %53
  %63 = load %struct.cx18*, %struct.cx18** %2, align 8
  %64 = load i32, i32* @CX18_REG_GPIO_DIR1, align 4
  %65 = call i32 @cx18_read_reg(%struct.cx18* %63, i32 %64)
  %66 = load %struct.cx18*, %struct.cx18** %2, align 8
  %67 = load i32, i32* @CX18_REG_GPIO_DIR2, align 4
  %68 = call i32 @cx18_read_reg(%struct.cx18* %66, i32 %67)
  %69 = load %struct.cx18*, %struct.cx18** %2, align 8
  %70 = load i32, i32* @CX18_REG_GPIO_OUT1, align 4
  %71 = call i32 @cx18_read_reg(%struct.cx18* %69, i32 %70)
  %72 = load %struct.cx18*, %struct.cx18** %2, align 8
  %73 = load i32, i32* @CX18_REG_GPIO_OUT2, align 4
  %74 = call i32 @cx18_read_reg(%struct.cx18* %72, i32 %73)
  %75 = call i32 @CX18_DEBUG_INFO(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %65, i32 %68, i32 %71, i32 %74)
  %76 = load %struct.cx18*, %struct.cx18** %2, align 8
  %77 = call i32 @gpio_write(%struct.cx18* %76)
  %78 = load %struct.cx18*, %struct.cx18** %2, align 8
  %79 = getelementptr inbounds %struct.cx18, %struct.cx18* %78, i32 0, i32 2
  %80 = call i32 @mutex_unlock(i32* %79)
  br label %81

81:                                               ; preds = %62, %58
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @CX18_DEBUG_INFO(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @cx18_read_reg(%struct.cx18*, i32) #1

declare dso_local i32 @gpio_write(%struct.cx18*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
