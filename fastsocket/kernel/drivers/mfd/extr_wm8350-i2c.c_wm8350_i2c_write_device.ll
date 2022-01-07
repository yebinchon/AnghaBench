; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_wm8350-i2c.c_wm8350_i2c_write_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_wm8350-i2c.c_wm8350_i2c_write_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm8350 = type { i32 }

@WM8350_MAX_REGISTER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm8350*, i8, i32, i8*)* @wm8350_i2c_write_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8350_i2c_write_device(%struct.wm8350* %0, i8 signext %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wm8350*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.wm8350* %0, %struct.wm8350** %6, align 8
  store i8 %1, i8* %7, align 1
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %14 = load i32, i32* @WM8350_MAX_REGISTER, align 4
  %15 = shl i32 %14, 1
  %16 = add nsw i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %10, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @WM8350_MAX_REGISTER, align 4
  %22 = shl i32 %21, 1
  %23 = add nsw i32 %22, 1
  %24 = icmp sgt i32 %20, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %54

28:                                               ; preds = %4
  %29 = load i8, i8* %7, align 1
  %30 = getelementptr inbounds i8, i8* %19, i64 0
  store i8 %29, i8* %30, align 16
  %31 = getelementptr inbounds i8, i8* %19, i64 1
  %32 = load i8*, i8** %9, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @memcpy(i8* %31, i8* %32, i32 %33)
  %35 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %36 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, 1
  %40 = call i32 @i2c_master_send(i32 %37, i8* %19, i32 %39)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %28
  %44 = load i32, i32* %12, align 4
  store i32 %44, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %54

45:                                               ; preds = %28
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  %49 = icmp ne i32 %46, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32, i32* @EIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %54

53:                                               ; preds = %45
  store i32 0, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %54

54:                                               ; preds = %53, %50, %43, %25
  %55 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %55)
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @i2c_master_send(i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
