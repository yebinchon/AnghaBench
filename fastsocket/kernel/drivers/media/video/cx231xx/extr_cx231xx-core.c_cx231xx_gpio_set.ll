; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-core.c_cx231xx_gpio_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-core.c_cx231xx_gpio_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32 }
%struct.cx231xx_reg_seq = type { i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx231xx_gpio_set(%struct.cx231xx* %0, %struct.cx231xx_reg_seq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cx231xx*, align 8
  %5 = alloca %struct.cx231xx_reg_seq*, align 8
  %6 = alloca i32, align 4
  store %struct.cx231xx* %0, %struct.cx231xx** %4, align 8
  store %struct.cx231xx_reg_seq* %1, %struct.cx231xx_reg_seq** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.cx231xx_reg_seq*, %struct.cx231xx_reg_seq** %5, align 8
  %8 = icmp ne %struct.cx231xx_reg_seq* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %6, align 4
  store i32 %10, i32* %3, align 4
  br label %45

11:                                               ; preds = %2
  br label %12

12:                                               ; preds = %40, %11
  %13 = load %struct.cx231xx_reg_seq*, %struct.cx231xx_reg_seq** %5, align 8
  %14 = getelementptr inbounds %struct.cx231xx_reg_seq, %struct.cx231xx_reg_seq* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sge i64 %15, 0
  br i1 %16, label %17, label %43

17:                                               ; preds = %12
  %18 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %19 = load %struct.cx231xx_reg_seq*, %struct.cx231xx_reg_seq** %5, align 8
  %20 = getelementptr inbounds %struct.cx231xx_reg_seq, %struct.cx231xx_reg_seq* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.cx231xx_reg_seq*, %struct.cx231xx_reg_seq** %5, align 8
  %23 = getelementptr inbounds %struct.cx231xx_reg_seq, %struct.cx231xx_reg_seq* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @cx231xx_set_gpio_value(%struct.cx231xx* %18, i32 %21, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %17
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %3, align 4
  br label %45

30:                                               ; preds = %17
  %31 = load %struct.cx231xx_reg_seq*, %struct.cx231xx_reg_seq** %5, align 8
  %32 = getelementptr inbounds %struct.cx231xx_reg_seq, %struct.cx231xx_reg_seq* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.cx231xx_reg_seq*, %struct.cx231xx_reg_seq** %5, align 8
  %37 = getelementptr inbounds %struct.cx231xx_reg_seq, %struct.cx231xx_reg_seq* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @msleep(i64 %38)
  br label %40

40:                                               ; preds = %35, %30
  %41 = load %struct.cx231xx_reg_seq*, %struct.cx231xx_reg_seq** %5, align 8
  %42 = getelementptr inbounds %struct.cx231xx_reg_seq, %struct.cx231xx_reg_seq* %41, i32 1
  store %struct.cx231xx_reg_seq* %42, %struct.cx231xx_reg_seq** %5, align 8
  br label %12

43:                                               ; preds = %12
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %43, %28, %9
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @cx231xx_set_gpio_value(%struct.cx231xx*, i32, i32) #1

declare dso_local i32 @msleep(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
