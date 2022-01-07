; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_atkbd.c_atkbd_attr_set_helper.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_atkbd.c_atkbd_attr_set_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.atkbd = type opaque
%struct.serio = type { i32* }

@atkbd_drv = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*, i64, i32 (%struct.atkbd*, i8*, i64)*)* @atkbd_attr_set_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atkbd_attr_set_helper(%struct.device* %0, i8* %1, i64 %2, i32 (%struct.atkbd*, i8*, i64)* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32 (%struct.atkbd*, i8*, i64)*, align 8
  %10 = alloca %struct.serio*, align 8
  %11 = alloca %struct.atkbd*, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 (%struct.atkbd*, i8*, i64)* %3, i32 (%struct.atkbd*, i8*, i64)** %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.serio* @to_serio_port(%struct.device* %13)
  store %struct.serio* %14, %struct.serio** %10, align 8
  %15 = load %struct.serio*, %struct.serio** %10, align 8
  %16 = call i32 @serio_pin_driver(%struct.serio* %15)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %12, align 4
  store i32 %20, i32* %5, align 4
  br label %45

21:                                               ; preds = %4
  %22 = load %struct.serio*, %struct.serio** %10, align 8
  %23 = getelementptr inbounds %struct.serio, %struct.serio* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, @atkbd_drv
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %12, align 4
  br label %41

29:                                               ; preds = %21
  %30 = load %struct.serio*, %struct.serio** %10, align 8
  %31 = call %struct.atkbd* @serio_get_drvdata(%struct.serio* %30)
  store %struct.atkbd* %31, %struct.atkbd** %11, align 8
  %32 = load %struct.atkbd*, %struct.atkbd** %11, align 8
  %33 = call i32 @atkbd_disable(%struct.atkbd* %32)
  %34 = load i32 (%struct.atkbd*, i8*, i64)*, i32 (%struct.atkbd*, i8*, i64)** %9, align 8
  %35 = load %struct.atkbd*, %struct.atkbd** %11, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load i64, i64* %8, align 8
  %38 = call i32 %34(%struct.atkbd* %35, i8* %36, i64 %37)
  store i32 %38, i32* %12, align 4
  %39 = load %struct.atkbd*, %struct.atkbd** %11, align 8
  %40 = call i32 @atkbd_enable(%struct.atkbd* %39)
  br label %41

41:                                               ; preds = %29, %26
  %42 = load %struct.serio*, %struct.serio** %10, align 8
  %43 = call i32 @serio_unpin_driver(%struct.serio* %42)
  %44 = load i32, i32* %12, align 4
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %41, %19
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local %struct.serio* @to_serio_port(%struct.device*) #1

declare dso_local i32 @serio_pin_driver(%struct.serio*) #1

declare dso_local %struct.atkbd* @serio_get_drvdata(%struct.serio*) #1

declare dso_local i32 @atkbd_disable(%struct.atkbd*) #1

declare dso_local i32 @atkbd_enable(%struct.atkbd*) #1

declare dso_local i32 @serio_unpin_driver(%struct.serio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
