; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zc0301/extr_zc0301_core.c_zc0301_i2c_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zc0301/extr_zc0301_core.c_zc0301_i2c_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zc0301_device = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"I2C write failed at address 0x%04X, value: 0x%04X\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"I2C write: address 0x%04X, value: 0x%04X\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zc0301_i2c_write(%struct.zc0301_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.zc0301_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.zc0301_device* %0, %struct.zc0301_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.zc0301_device*, %struct.zc0301_device** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @zc0301_write_reg(%struct.zc0301_device* %9, i32 146, i32 %10)
  %12 = load i32, i32* %7, align 4
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %13, %11
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %7, align 4
  %16 = load %struct.zc0301_device*, %struct.zc0301_device** %4, align 8
  %17 = load i32, i32* %6, align 4
  %18 = and i32 %17, 255
  %19 = call i64 @zc0301_write_reg(%struct.zc0301_device* %16, i32 147, i32 %18)
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %21, %19
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %7, align 4
  %24 = load %struct.zc0301_device*, %struct.zc0301_device** %4, align 8
  %25 = load i32, i32* %6, align 4
  %26 = ashr i32 %25, 8
  %27 = call i64 @zc0301_write_reg(%struct.zc0301_device* %24, i32 148, i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, %27
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %7, align 4
  %32 = load %struct.zc0301_device*, %struct.zc0301_device** %4, align 8
  %33 = call i64 @zc0301_write_reg(%struct.zc0301_device* %32, i32 144, i32 1)
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %35, %33
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %7, align 4
  %38 = call i32 @msleep(i32 1)
  %39 = load %struct.zc0301_device*, %struct.zc0301_device** %4, align 8
  %40 = call i32 @zc0301_read_reg(%struct.zc0301_device* %39, i32 145)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %3
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %43, %3
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @DBG(i32 3, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %50, %47
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @PDBGG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %56)
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 -1, i32 0
  ret i32 %61
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
