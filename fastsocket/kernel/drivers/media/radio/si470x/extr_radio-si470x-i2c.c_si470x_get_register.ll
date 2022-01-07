; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/si470x/extr_radio-si470x-i2c.c_si470x_get_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/si470x/extr_radio-si470x-i2c.c_si470x_get_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si470x_device = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.i2c_msg = type { i32, i8*, i32, i32 }

@READ_REG_NUM = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @si470x_get_register(%struct.si470x_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.si470x_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [1 x %struct.i2c_msg], align 16
  %9 = alloca i32, align 4
  store %struct.si470x_device* %0, %struct.si470x_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @READ_REG_NUM, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %8, i64 0, i64 0
  %15 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 0
  %16 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %17 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %15, align 8
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 1
  %22 = load i32, i32* @I2C_M_RD, align 4
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i8*
  store i8* %24, i8** %21, align 8
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 2
  %26 = load i32, i32* @READ_REG_NUM, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 4, %27
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %25, align 8
  %30 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 3
  %31 = bitcast i32* %13 to i8*
  %32 = ptrtoint i8* %31 to i32
  store i32 %32, i32* %30, align 4
  %33 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %34 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %8, i64 0, i64 0
  %39 = call i32 @i2c_transfer(i32 %37, %struct.i2c_msg* %38, i32 1)
  %40 = icmp ne i32 %39, 1
  br i1 %40, label %41, label %44

41:                                               ; preds = %2
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %56

44:                                               ; preds = %2
  %45 = load i32, i32* %5, align 4
  %46 = call i64 @READ_INDEX(i32 %45)
  %47 = getelementptr inbounds i32, i32* %13, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @__be16_to_cpu(i32 %48)
  %50 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %51 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %49, i32* %55, align 4
  store i32 0, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %56

56:                                               ; preds = %44, %41
  %57 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %57)
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #2

declare dso_local i32 @__be16_to_cpu(i32) #2

declare dso_local i64 @READ_INDEX(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
