; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_w9966.c_w9966_i2c_wbyte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_w9966.c_w9966_i2c_wbyte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w9966_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.w9966_dev*, i32)* @w9966_i2c_wbyte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w9966_i2c_wbyte(%struct.w9966_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.w9966_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.w9966_dev* %0, %struct.w9966_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 7, i32* %6, align 4
  br label %7

7:                                                ; preds = %24, %2
  %8 = load i32, i32* %6, align 4
  %9 = icmp sge i32 %8, 0
  br i1 %9, label %10, label %27

10:                                               ; preds = %7
  %11 = load %struct.w9966_dev*, %struct.w9966_dev** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = ashr i32 %12, %13
  %15 = and i32 %14, 1
  %16 = call i32 @w9966_i2c_setsda(%struct.w9966_dev* %11, i32 %15)
  %17 = load %struct.w9966_dev*, %struct.w9966_dev** %4, align 8
  %18 = call i32 @w9966_i2c_setscl(%struct.w9966_dev* %17, i32 1)
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %21

20:                                               ; preds = %10
  store i32 -1, i32* %3, align 4
  br label %37

21:                                               ; preds = %10
  %22 = load %struct.w9966_dev*, %struct.w9966_dev** %4, align 8
  %23 = call i32 @w9966_i2c_setscl(%struct.w9966_dev* %22, i32 0)
  br label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %6, align 4
  br label %7

27:                                               ; preds = %7
  %28 = load %struct.w9966_dev*, %struct.w9966_dev** %4, align 8
  %29 = call i32 @w9966_i2c_setsda(%struct.w9966_dev* %28, i32 1)
  %30 = load %struct.w9966_dev*, %struct.w9966_dev** %4, align 8
  %31 = call i32 @w9966_i2c_setscl(%struct.w9966_dev* %30, i32 1)
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 -1, i32* %3, align 4
  br label %37

34:                                               ; preds = %27
  %35 = load %struct.w9966_dev*, %struct.w9966_dev** %4, align 8
  %36 = call i32 @w9966_i2c_setscl(%struct.w9966_dev* %35, i32 0)
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %34, %33, %20
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @w9966_i2c_setsda(%struct.w9966_dev*, i32) #1

declare dso_local i32 @w9966_i2c_setscl(%struct.w9966_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
