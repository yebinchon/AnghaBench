; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7164/extr_saa7164-cards.c_saa7164_i2caddr_to_unitid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7164/extr_saa7164-cards.c_saa7164_i2caddr_to_unitid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.saa7164_unit* }
%struct.saa7164_unit = type { i64, i64, i32, i32 }
%struct.saa7164_i2c = type { i64, %struct.saa7164_dev* }
%struct.saa7164_dev = type { i64 }

@SAA7164_MAX_UNITS = common dso_local global i32 0, align 4
@saa7164_boards = common dso_local global %struct.TYPE_2__* null, align 8
@SAA7164_UNIT_UNDEFINED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @saa7164_i2caddr_to_unitid(%struct.saa7164_i2c* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.saa7164_i2c*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.saa7164_dev*, align 8
  %7 = alloca %struct.saa7164_unit*, align 8
  %8 = alloca i32, align 4
  store %struct.saa7164_i2c* %0, %struct.saa7164_i2c** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.saa7164_i2c*, %struct.saa7164_i2c** %4, align 8
  %10 = getelementptr inbounds %struct.saa7164_i2c, %struct.saa7164_i2c* %9, i32 0, i32 1
  %11 = load %struct.saa7164_dev*, %struct.saa7164_dev** %10, align 8
  store %struct.saa7164_dev* %11, %struct.saa7164_dev** %6, align 8
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %52, %2
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @SAA7164_MAX_UNITS, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %55

16:                                               ; preds = %12
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @saa7164_boards, align 8
  %18 = load %struct.saa7164_dev*, %struct.saa7164_dev** %6, align 8
  %19 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.saa7164_unit*, %struct.saa7164_unit** %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.saa7164_unit, %struct.saa7164_unit* %23, i64 %25
  store %struct.saa7164_unit* %26, %struct.saa7164_unit** %7, align 8
  %27 = load %struct.saa7164_unit*, %struct.saa7164_unit** %7, align 8
  %28 = getelementptr inbounds %struct.saa7164_unit, %struct.saa7164_unit* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SAA7164_UNIT_UNDEFINED, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %16
  br label %52

33:                                               ; preds = %16
  %34 = load %struct.saa7164_i2c*, %struct.saa7164_i2c** %4, align 8
  %35 = getelementptr inbounds %struct.saa7164_i2c, %struct.saa7164_i2c* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.saa7164_unit*, %struct.saa7164_unit** %7, align 8
  %38 = getelementptr inbounds %struct.saa7164_unit, %struct.saa7164_unit* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %36, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %33
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.saa7164_unit*, %struct.saa7164_unit** %7, align 8
  %44 = getelementptr inbounds %struct.saa7164_unit, %struct.saa7164_unit* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %42, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load %struct.saa7164_unit*, %struct.saa7164_unit** %7, align 8
  %49 = getelementptr inbounds %struct.saa7164_unit, %struct.saa7164_unit* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %3, align 4
  br label %56

51:                                               ; preds = %41, %33
  br label %52

52:                                               ; preds = %51, %32
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %12

55:                                               ; preds = %12
  store i32 -1, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %47
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
