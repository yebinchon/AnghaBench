; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpio/extr_pca953x.c_pca953x_read_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpio/extr_pca953x.c_pca953x_read_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pca953x_chip = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"failed reading register\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pca953x_chip*, i32, i64*)* @pca953x_read_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pca953x_read_reg(%struct.pca953x_chip* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pca953x_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  store %struct.pca953x_chip* %0, %struct.pca953x_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %9 = load %struct.pca953x_chip*, %struct.pca953x_chip** %5, align 8
  %10 = getelementptr inbounds %struct.pca953x_chip, %struct.pca953x_chip* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp sle i32 %12, 8
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load %struct.pca953x_chip*, %struct.pca953x_chip** %5, align 8
  %16 = getelementptr inbounds %struct.pca953x_chip, %struct.pca953x_chip* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @i2c_smbus_read_byte_data(%struct.TYPE_5__* %17, i32 %18)
  store i32 %19, i32* %8, align 4
  br label %27

20:                                               ; preds = %3
  %21 = load %struct.pca953x_chip*, %struct.pca953x_chip** %5, align 8
  %22 = getelementptr inbounds %struct.pca953x_chip, %struct.pca953x_chip* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = shl i32 %24, 1
  %26 = call i32 @i2c_smbus_read_word_data(%struct.TYPE_5__* %23, i32 %25)
  store i32 %26, i32* %8, align 4
  br label %27

27:                                               ; preds = %20, %14
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load %struct.pca953x_chip*, %struct.pca953x_chip** %5, align 8
  %32 = getelementptr inbounds %struct.pca953x_chip, %struct.pca953x_chip* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = call i32 @dev_err(i32* %34, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %4, align 4
  br label %41

37:                                               ; preds = %27
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = load i64*, i64** %7, align 8
  store i64 %39, i64* %40, align 8
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %37, %30
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @i2c_smbus_read_word_data(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
