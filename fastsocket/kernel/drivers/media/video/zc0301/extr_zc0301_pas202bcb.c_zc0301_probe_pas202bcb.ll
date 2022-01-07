; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zc0301/extr_zc0301_pas202bcb.c_zc0301_probe_pas202bcb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zc0301/extr_zc0301_pas202bcb.c_zc0301_probe_pas202bcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zc0301_device = type { i32 }

@EIO = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@pas202bcb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zc0301_probe_pas202bcb(%struct.zc0301_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zc0301_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.zc0301_device* %0, %struct.zc0301_device** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.zc0301_device*, %struct.zc0301_device** %3, align 8
  %9 = call i64 @zc0301_write_reg(%struct.zc0301_device* %8, i32 0, i32 1)
  %10 = load i32, i32* %6, align 4
  %11 = sext i32 %10 to i64
  %12 = add nsw i64 %11, %9
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %6, align 4
  %14 = load %struct.zc0301_device*, %struct.zc0301_device** %3, align 8
  %15 = call i64 @zc0301_write_reg(%struct.zc0301_device* %14, i32 16, i32 14)
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %17, %15
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %6, align 4
  %20 = load %struct.zc0301_device*, %struct.zc0301_device** %3, align 8
  %21 = call i64 @zc0301_write_reg(%struct.zc0301_device* %20, i32 1, i32 1)
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %23, %21
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %6, align 4
  %26 = load %struct.zc0301_device*, %struct.zc0301_device** %3, align 8
  %27 = call i64 @zc0301_write_reg(%struct.zc0301_device* %26, i32 18, i32 3)
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, %27
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %6, align 4
  %32 = load %struct.zc0301_device*, %struct.zc0301_device** %3, align 8
  %33 = call i64 @zc0301_write_reg(%struct.zc0301_device* %32, i32 18, i32 1)
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %35, %33
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %6, align 4
  %38 = load %struct.zc0301_device*, %struct.zc0301_device** %3, align 8
  %39 = call i64 @zc0301_write_reg(%struct.zc0301_device* %38, i32 141, i32 8)
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %41, %39
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %6, align 4
  %44 = call i32 @msleep(i32 10)
  %45 = load %struct.zc0301_device*, %struct.zc0301_device** %3, align 8
  %46 = call i32 @zc0301_i2c_read(%struct.zc0301_device* %45, i32 0, i32 1)
  store i32 %46, i32* %4, align 4
  %47 = load %struct.zc0301_device*, %struct.zc0301_device** %3, align 8
  %48 = call i32 @zc0301_i2c_read(%struct.zc0301_device* %47, i32 1, i32 1)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %1
  %52 = load i32, i32* %5, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54, %51, %1
  %58 = load i32, i32* @EIO, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %75

60:                                               ; preds = %54
  %61 = load i32, i32* %4, align 4
  %62 = shl i32 %61, 4
  %63 = load i32, i32* %5, align 4
  %64 = and i32 %63, 240
  %65 = ashr i32 %64, 4
  %66 = or i32 %62, %65
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 23
  br i1 %68, label %69, label %72

69:                                               ; preds = %60
  %70 = load i32, i32* @ENODEV, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %75

72:                                               ; preds = %60
  %73 = load %struct.zc0301_device*, %struct.zc0301_device** %3, align 8
  %74 = call i32 @zc0301_attach_sensor(%struct.zc0301_device* %73, i32* @pas202bcb)
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %72, %69, %57
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i64 @zc0301_write_reg(%struct.zc0301_device*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @zc0301_i2c_read(%struct.zc0301_device*, i32, i32) #1

declare dso_local i32 @zc0301_attach_sensor(%struct.zc0301_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
