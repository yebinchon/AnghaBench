; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_keyboard.c_kbd_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_keyboard.c_kbd_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_handler = type { i32 }
%struct.input_dev = type { i32, i32 }
%struct.input_device_id = type { i32 }
%struct.input_handle = type { i8*, %struct.input_handler*, %struct.input_dev* }

@KEY_RESERVED = common dso_local global i32 0, align 4
@BTN_MISC = common dso_local global i32 0, align 4
@EV_SND = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"kbd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_handler*, %struct.input_dev*, %struct.input_device_id*)* @kbd_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kbd_connect(%struct.input_handler* %0, %struct.input_dev* %1, %struct.input_device_id* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.input_handler*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca %struct.input_device_id*, align 8
  %8 = alloca %struct.input_handle*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.input_handler* %0, %struct.input_handler** %5, align 8
  store %struct.input_dev* %1, %struct.input_dev** %6, align 8
  store %struct.input_device_id* %2, %struct.input_device_id** %7, align 8
  %11 = load i32, i32* @KEY_RESERVED, align 4
  store i32 %11, i32* %10, align 4
  br label %12

12:                                               ; preds = %25, %3
  %13 = load i32, i32* %10, align 4
  %14 = load i32, i32* @BTN_MISC, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %12
  %17 = load i32, i32* %10, align 4
  %18 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %19 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @test_bit(i32 %17, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %28

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %10, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %10, align 4
  br label %12

28:                                               ; preds = %23, %12
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @BTN_MISC, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %28
  %33 = load i32, i32* @EV_SND, align 4
  %34 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %35 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @test_bit(i32 %33, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %78

42:                                               ; preds = %32, %28
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call %struct.input_handle* @kzalloc(i32 24, i32 %43)
  store %struct.input_handle* %44, %struct.input_handle** %8, align 8
  %45 = load %struct.input_handle*, %struct.input_handle** %8, align 8
  %46 = icmp ne %struct.input_handle* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %78

50:                                               ; preds = %42
  %51 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %52 = load %struct.input_handle*, %struct.input_handle** %8, align 8
  %53 = getelementptr inbounds %struct.input_handle, %struct.input_handle* %52, i32 0, i32 2
  store %struct.input_dev* %51, %struct.input_dev** %53, align 8
  %54 = load %struct.input_handler*, %struct.input_handler** %5, align 8
  %55 = load %struct.input_handle*, %struct.input_handle** %8, align 8
  %56 = getelementptr inbounds %struct.input_handle, %struct.input_handle* %55, i32 0, i32 1
  store %struct.input_handler* %54, %struct.input_handler** %56, align 8
  %57 = load %struct.input_handle*, %struct.input_handle** %8, align 8
  %58 = getelementptr inbounds %struct.input_handle, %struct.input_handle* %57, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %58, align 8
  %59 = load %struct.input_handle*, %struct.input_handle** %8, align 8
  %60 = call i32 @input_register_handle(%struct.input_handle* %59)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %50
  br label %74

64:                                               ; preds = %50
  %65 = load %struct.input_handle*, %struct.input_handle** %8, align 8
  %66 = call i32 @input_open_device(%struct.input_handle* %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %71

70:                                               ; preds = %64
  store i32 0, i32* %4, align 4
  br label %78

71:                                               ; preds = %69
  %72 = load %struct.input_handle*, %struct.input_handle** %8, align 8
  %73 = call i32 @input_unregister_handle(%struct.input_handle* %72)
  br label %74

74:                                               ; preds = %71, %63
  %75 = load %struct.input_handle*, %struct.input_handle** %8, align 8
  %76 = call i32 @kfree(%struct.input_handle* %75)
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %74, %70, %47, %39
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local %struct.input_handle* @kzalloc(i32, i32) #1

declare dso_local i32 @input_register_handle(%struct.input_handle*) #1

declare dso_local i32 @input_open_device(%struct.input_handle*) #1

declare dso_local i32 @input_unregister_handle(%struct.input_handle*) #1

declare dso_local i32 @kfree(%struct.input_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
