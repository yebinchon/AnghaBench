; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/si470x/extr_radio-si470x-i2c.c_si470x_set_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/si470x/extr_radio-si470x-i2c.c_si470x_set_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si470x_device = type { %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.i2c_msg = type { i32, i8*, i32, i32 }

@WRITE_REG_NUM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @si470x_set_register(%struct.si470x_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.si470x_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [1 x %struct.i2c_msg], align 16
  %10 = alloca i32, align 4
  store %struct.si470x_device* %0, %struct.si470x_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @WRITE_REG_NUM, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  %15 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %9, i64 0, i64 0
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i32 0, i32 0
  %17 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %18 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %16, align 8
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i32 0, i32 1
  store i8* null, i8** %22, align 8
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i32 0, i32 2
  %24 = load i32, i32* @WRITE_REG_NUM, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 4, %25
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %23, align 8
  %28 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i32 0, i32 3
  %29 = bitcast i32* %14 to i8*
  %30 = ptrtoint i8* %29 to i32
  store i32 %30, i32* %28, align 4
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %47, %2
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @WRITE_REG_NUM, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %31
  %36 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %37 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i64 @WRITE_INDEX(i32 %39)
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @__cpu_to_be16(i32 %42)
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %14, i64 %45
  store i32 %43, i32* %46, align 4
  br label %47

47:                                               ; preds = %35
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %31

50:                                               ; preds = %31
  %51 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %52 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %9, i64 0, i64 0
  %57 = call i32 @i2c_transfer(i32 %55, %struct.i2c_msg* %56, i32 1)
  %58 = icmp ne i32 %57, 1
  br i1 %58, label %59, label %62

59:                                               ; preds = %50
  %60 = load i32, i32* @EIO, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %63

62:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %63

63:                                               ; preds = %62, %59
  %64 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %64)
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @__cpu_to_be16(i32) #2

declare dso_local i64 @WRITE_INDEX(i32) #2

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
