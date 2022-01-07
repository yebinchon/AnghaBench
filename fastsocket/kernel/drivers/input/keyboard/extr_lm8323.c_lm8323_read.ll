; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_lm8323.c_lm8323_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_lm8323.c_lm8323_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm8323_chip = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@EREMOTEIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"sending read cmd 0x%02x failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"wanted %d bytes, got %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lm8323_chip*, i32, i32*, i32)* @lm8323_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm8323_read(%struct.lm8323_chip* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lm8323_chip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.lm8323_chip* %0, %struct.lm8323_chip** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.lm8323_chip*, %struct.lm8323_chip** %6, align 8
  %12 = getelementptr inbounds %struct.lm8323_chip, %struct.lm8323_chip* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = call i32 @i2c_master_send(%struct.TYPE_3__* %13, i32* %7, i32 1)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* @EREMOTEIO, align 4
  %17 = sub nsw i32 0, %16
  %18 = icmp eq i32 %15, %17
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %4
  %23 = load %struct.lm8323_chip*, %struct.lm8323_chip** %6, align 8
  %24 = getelementptr inbounds %struct.lm8323_chip, %struct.lm8323_chip* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = call i32 @i2c_master_send(%struct.TYPE_3__* %25, i32* %7, i32 1)
  store i32 %26, i32* %10, align 4
  br label %27

27:                                               ; preds = %22, %4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 1
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load %struct.lm8323_chip*, %struct.lm8323_chip** %6, align 8
  %35 = getelementptr inbounds %struct.lm8323_chip, %struct.lm8323_chip* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %7, align 4
  %39 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %37, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %38)
  store i32 0, i32* %5, align 4
  br label %63

40:                                               ; preds = %27
  %41 = load %struct.lm8323_chip*, %struct.lm8323_chip** %6, align 8
  %42 = getelementptr inbounds %struct.lm8323_chip, %struct.lm8323_chip* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @i2c_master_recv(%struct.TYPE_3__* %43, i32* %44, i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %40
  %54 = load %struct.lm8323_chip*, %struct.lm8323_chip** %6, align 8
  %55 = getelementptr inbounds %struct.lm8323_chip, %struct.lm8323_chip* %54, i32 0, i32 0
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %10, align 4
  %60 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %57, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %53, %40
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %61, %33
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @i2c_master_send(%struct.TYPE_3__*, i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @i2c_master_recv(%struct.TYPE_3__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
