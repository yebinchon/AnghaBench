; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zc0301/extr_zc0301_pb0330.c_zc0301_probe_pb0330.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zc0301/extr_zc0301_pb0330.c_zc0301_probe_pb0330.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zc0301_device = type { i32 }

@EIO = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@pb0330 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zc0301_probe_pb0330(%struct.zc0301_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zc0301_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.zc0301_device* %0, %struct.zc0301_device** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.zc0301_device*, %struct.zc0301_device** %3, align 8
  %7 = call i64 @zc0301_write_reg(%struct.zc0301_device* %6, i32 0, i32 1)
  %8 = load i32, i32* %5, align 4
  %9 = sext i32 %8 to i64
  %10 = add nsw i64 %9, %7
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %5, align 4
  %12 = load %struct.zc0301_device*, %struct.zc0301_device** %3, align 8
  %13 = call i64 @zc0301_write_reg(%struct.zc0301_device* %12, i32 16, i32 10)
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %15, %13
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %5, align 4
  %18 = load %struct.zc0301_device*, %struct.zc0301_device** %3, align 8
  %19 = call i64 @zc0301_write_reg(%struct.zc0301_device* %18, i32 1, i32 1)
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %21, %19
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %5, align 4
  %24 = load %struct.zc0301_device*, %struct.zc0301_device** %3, align 8
  %25 = call i64 @zc0301_write_reg(%struct.zc0301_device* %24, i32 18, i32 3)
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %27, %25
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %5, align 4
  %30 = load %struct.zc0301_device*, %struct.zc0301_device** %3, align 8
  %31 = call i64 @zc0301_write_reg(%struct.zc0301_device* %30, i32 18, i32 1)
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %5, align 4
  %36 = call i32 @msleep(i32 10)
  %37 = load %struct.zc0301_device*, %struct.zc0301_device** %3, align 8
  %38 = call i32 @zc0301_i2c_read(%struct.zc0301_device* %37, i32 0, i32 2)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %1
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41, %1
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %56

47:                                               ; preds = %41
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 33347
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* @ENODEV, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %56

53:                                               ; preds = %47
  %54 = load %struct.zc0301_device*, %struct.zc0301_device** %3, align 8
  %55 = call i32 @zc0301_attach_sensor(%struct.zc0301_device* %54, i32* @pb0330)
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %53, %50, %44
  %57 = load i32, i32* %2, align 4
  ret i32 %57
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
