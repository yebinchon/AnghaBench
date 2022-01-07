; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_da903x.c_da903x_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_da903x.c_da903x_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.da903x_chip = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @da903x_update(%struct.device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.da903x_chip*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.da903x_chip* @dev_get_drvdata(%struct.device* %12)
  store %struct.da903x_chip* %13, %struct.da903x_chip** %9, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.da903x_chip*, %struct.da903x_chip** %9, align 8
  %15 = getelementptr inbounds %struct.da903x_chip, %struct.da903x_chip* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.da903x_chip*, %struct.da903x_chip** %9, align 8
  %18 = getelementptr inbounds %struct.da903x_chip, %struct.da903x_chip* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @__da903x_read(i32 %19, i32 %20, i32* %10)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  br label %45

25:                                               ; preds = %4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %8, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %25
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %8, align 4
  %34 = xor i32 %33, -1
  %35 = and i32 %32, %34
  %36 = load i32, i32* %7, align 4
  %37 = or i32 %35, %36
  store i32 %37, i32* %10, align 4
  %38 = load %struct.da903x_chip*, %struct.da903x_chip** %9, align 8
  %39 = getelementptr inbounds %struct.da903x_chip, %struct.da903x_chip* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @__da903x_write(i32 %40, i32 %41, i32 %42)
  store i32 %43, i32* %11, align 4
  br label %44

44:                                               ; preds = %31, %25
  br label %45

45:                                               ; preds = %44, %24
  %46 = load %struct.da903x_chip*, %struct.da903x_chip** %9, align 8
  %47 = getelementptr inbounds %struct.da903x_chip, %struct.da903x_chip* %46, i32 0, i32 0
  %48 = call i32 @mutex_unlock(i32* %47)
  %49 = load i32, i32* %11, align 4
  ret i32 %49
}

declare dso_local %struct.da903x_chip* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__da903x_read(i32, i32, i32*) #1

declare dso_local i32 @__da903x_write(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
