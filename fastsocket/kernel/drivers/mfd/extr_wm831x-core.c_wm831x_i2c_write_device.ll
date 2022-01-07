; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_wm831x-core.c_wm831x_i2c_write_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_wm831x-core.c_wm831x_i2c_write_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm831x = type { %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm831x*, i16, i32, i8*)* @wm831x_i2c_write_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_i2c_write_device(%struct.wm831x* %0, i16 zeroext %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wm831x*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.wm831x* %0, %struct.wm831x** %6, align 8
  store i16 %1, i16* %7, align 2
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %15 = load %struct.wm831x*, %struct.wm831x** %6, align 8
  %16 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %15, i32 0, i32 0
  %17 = load %struct.i2c_client*, %struct.i2c_client** %16, align 8
  store %struct.i2c_client* %17, %struct.i2c_client** %10, align 8
  %18 = load i32, i32* %8, align 4
  %19 = add nsw i32 %18, 2
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %11, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %12, align 8
  %23 = load i16, i16* %7, align 2
  %24 = call zeroext i16 @cpu_to_be16(i16 zeroext %23)
  store i16 %24, i16* %7, align 2
  %25 = getelementptr inbounds i8, i8* %22, i64 0
  %26 = bitcast i16* %7 to i8*
  %27 = call i32 @memcpy(i8* %25, i8* %26, i32 2)
  %28 = getelementptr inbounds i8, i8* %22, i64 2
  %29 = load i8*, i8** %9, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @memcpy(i8* %28, i8* %29, i32 %30)
  %32 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 2
  %35 = call i32 @i2c_master_send(%struct.i2c_client* %32, i8* %22, i32 %34)
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %4
  %39 = load i32, i32* %13, align 4
  store i32 %39, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %49

40:                                               ; preds = %4
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 2
  %44 = icmp slt i32 %41, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* @EIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %49

48:                                               ; preds = %40
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %49

49:                                               ; preds = %48, %45, %38
  %50 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %50)
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local zeroext i16 @cpu_to_be16(i16 zeroext) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
