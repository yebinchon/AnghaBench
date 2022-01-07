; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_zhenhua.c_zhenhua_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_zhenhua.c_zhenhua_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { i32 }
%struct.zhenhua = type { i64, i32* }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@ZHENHUA_MAX_LENGTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*, i8, i32)* @zhenhua_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zhenhua_interrupt(%struct.serio* %0, i8 zeroext %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.serio*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca %struct.zhenhua*, align 8
  store %struct.serio* %0, %struct.serio** %5, align 8
  store i8 %1, i8* %6, align 1
  store i32 %2, i32* %7, align 4
  %9 = load %struct.serio*, %struct.serio** %5, align 8
  %10 = call %struct.zhenhua* @serio_get_drvdata(%struct.serio* %9)
  store %struct.zhenhua* %10, %struct.zhenhua** %8, align 8
  %11 = load i8, i8* %6, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp eq i32 %12, 239
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load %struct.zhenhua*, %struct.zhenhua** %8, align 8
  %16 = getelementptr inbounds %struct.zhenhua, %struct.zhenhua* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  br label %25

17:                                               ; preds = %3
  %18 = load %struct.zhenhua*, %struct.zhenhua** %8, align 8
  %19 = getelementptr inbounds %struct.zhenhua, %struct.zhenhua* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %23, i32* %4, align 4
  br label %55

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %24, %14
  %26 = load %struct.zhenhua*, %struct.zhenhua** %8, align 8
  %27 = getelementptr inbounds %struct.zhenhua, %struct.zhenhua* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ZHENHUA_MAX_LENGTH, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %25
  %32 = load i8, i8* %6, align 1
  %33 = call i32 @zhenhua_bitreverse(i8 zeroext %32)
  %34 = load %struct.zhenhua*, %struct.zhenhua** %8, align 8
  %35 = getelementptr inbounds %struct.zhenhua, %struct.zhenhua* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.zhenhua*, %struct.zhenhua** %8, align 8
  %38 = getelementptr inbounds %struct.zhenhua, %struct.zhenhua* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, 1
  store i64 %40, i64* %38, align 8
  %41 = getelementptr inbounds i32, i32* %36, i64 %39
  store i32 %33, i32* %41, align 4
  br label %42

42:                                               ; preds = %31, %25
  %43 = load %struct.zhenhua*, %struct.zhenhua** %8, align 8
  %44 = getelementptr inbounds %struct.zhenhua, %struct.zhenhua* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @ZHENHUA_MAX_LENGTH, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %42
  %49 = load %struct.zhenhua*, %struct.zhenhua** %8, align 8
  %50 = call i32 @zhenhua_process_packet(%struct.zhenhua* %49)
  %51 = load %struct.zhenhua*, %struct.zhenhua** %8, align 8
  %52 = getelementptr inbounds %struct.zhenhua, %struct.zhenhua* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  br label %53

53:                                               ; preds = %48, %42
  %54 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %53, %22
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local %struct.zhenhua* @serio_get_drvdata(%struct.serio*) #1

declare dso_local i32 @zhenhua_bitreverse(i8 zeroext) #1

declare dso_local i32 @zhenhua_process_packet(%struct.zhenhua*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
