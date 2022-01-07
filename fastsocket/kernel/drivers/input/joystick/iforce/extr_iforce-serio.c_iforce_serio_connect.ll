; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/iforce/extr_iforce-serio.c_iforce_serio_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/iforce/extr_iforce-serio.c_iforce_serio_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { i32 }
%struct.serio_driver = type { i32 }
%struct.iforce = type { %struct.serio*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IFORCE_232 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*, %struct.serio_driver*)* @iforce_serio_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iforce_serio_connect(%struct.serio* %0, %struct.serio_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.serio*, align 8
  %5 = alloca %struct.serio_driver*, align 8
  %6 = alloca %struct.iforce*, align 8
  %7 = alloca i32, align 4
  store %struct.serio* %0, %struct.serio** %4, align 8
  store %struct.serio_driver* %1, %struct.serio_driver** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.iforce* @kzalloc(i32 16, i32 %8)
  store %struct.iforce* %9, %struct.iforce** %6, align 8
  %10 = load %struct.iforce*, %struct.iforce** %6, align 8
  %11 = icmp ne %struct.iforce* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %47

15:                                               ; preds = %2
  %16 = load i32, i32* @IFORCE_232, align 4
  %17 = load %struct.iforce*, %struct.iforce** %6, align 8
  %18 = getelementptr inbounds %struct.iforce, %struct.iforce* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  %19 = load %struct.serio*, %struct.serio** %4, align 8
  %20 = load %struct.iforce*, %struct.iforce** %6, align 8
  %21 = getelementptr inbounds %struct.iforce, %struct.iforce* %20, i32 0, i32 0
  store %struct.serio* %19, %struct.serio** %21, align 8
  %22 = load %struct.serio*, %struct.serio** %4, align 8
  %23 = load %struct.iforce*, %struct.iforce** %6, align 8
  %24 = call i32 @serio_set_drvdata(%struct.serio* %22, %struct.iforce* %23)
  %25 = load %struct.serio*, %struct.serio** %4, align 8
  %26 = load %struct.serio_driver*, %struct.serio_driver** %5, align 8
  %27 = call i32 @serio_open(%struct.serio* %25, %struct.serio_driver* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %15
  br label %41

31:                                               ; preds = %15
  %32 = load %struct.iforce*, %struct.iforce** %6, align 8
  %33 = call i32 @iforce_init_device(%struct.iforce* %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %38

37:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %47

38:                                               ; preds = %36
  %39 = load %struct.serio*, %struct.serio** %4, align 8
  %40 = call i32 @serio_close(%struct.serio* %39)
  br label %41

41:                                               ; preds = %38, %30
  %42 = load %struct.serio*, %struct.serio** %4, align 8
  %43 = call i32 @serio_set_drvdata(%struct.serio* %42, %struct.iforce* null)
  %44 = load %struct.iforce*, %struct.iforce** %6, align 8
  %45 = call i32 @kfree(%struct.iforce* %44)
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %41, %37, %12
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.iforce* @kzalloc(i32, i32) #1

declare dso_local i32 @serio_set_drvdata(%struct.serio*, %struct.iforce*) #1

declare dso_local i32 @serio_open(%struct.serio*, %struct.serio_driver*) #1

declare dso_local i32 @iforce_init_device(%struct.iforce*) #1

declare dso_local i32 @serio_close(%struct.serio*) #1

declare dso_local i32 @kfree(%struct.iforce*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
