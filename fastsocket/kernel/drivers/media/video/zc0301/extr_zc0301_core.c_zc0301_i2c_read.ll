; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zc0301/extr_zc0301_core.c_zc0301_i2c_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zc0301/extr_zc0301_core.c_zc0301_i2c_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zc0301_device = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"I2C read failed at address 0x%04X, value: 0x%04X\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"I2C read: address 0x%04X, value: 0x%04X\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zc0301_i2c_read(%struct.zc0301_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.zc0301_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.zc0301_device* %0, %struct.zc0301_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load %struct.zc0301_device*, %struct.zc0301_device** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @zc0301_write_reg(%struct.zc0301_device* %11, i32 146, i32 %12)
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %15, %13
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %7, align 4
  %18 = load %struct.zc0301_device*, %struct.zc0301_device** %4, align 8
  %19 = call i64 @zc0301_write_reg(%struct.zc0301_device* %18, i32 144, i32 2)
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %21, %19
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %7, align 4
  %24 = call i32 @msleep(i32 1)
  %25 = load %struct.zc0301_device*, %struct.zc0301_device** %4, align 8
  %26 = call i32 @zc0301_read_reg(%struct.zc0301_device* %25, i32 145)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %3
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, %30
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %29, %3
  %34 = load %struct.zc0301_device*, %struct.zc0301_device** %4, align 8
  %35 = call i32 @zc0301_read_reg(%struct.zc0301_device* %34, i32 149)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, %39
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %38, %33
  %43 = load %struct.zc0301_device*, %struct.zc0301_device** %4, align 8
  %44 = call i32 @zc0301_read_reg(%struct.zc0301_device* %43, i32 150)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %47, %42
  %52 = load i32, i32* %6, align 4
  %53 = icmp sle i32 %52, 1
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* %9, align 4
  br label %61

56:                                               ; preds = %51
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %10, align 4
  %59 = shl i32 %58, 8
  %60 = or i32 %57, %59
  br label %61

61:                                               ; preds = %56, %54
  %62 = phi i32 [ %55, %54 ], [ %60, %56 ]
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @DBG(i32 3, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %65, %61
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @PDBGG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %70, i32 %71)
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %78

76:                                               ; preds = %69
  %77 = load i32, i32* %8, align 4
  br label %78

78:                                               ; preds = %76, %75
  %79 = phi i32 [ -1, %75 ], [ %77, %76 ]
  ret i32 %79
}

declare dso_local i64 @zc0301_write_reg(%struct.zc0301_device*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @zc0301_read_reg(%struct.zc0301_device*, i32) #1

declare dso_local i32 @DBG(i32, i8*, i32, i32) #1

declare dso_local i32 @PDBGG(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
