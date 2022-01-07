; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/sbus/char/extr_envctrl.c_envctrl_init_adc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/sbus/char/extr_envctrl.c_envctrl_init_adc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_child_t = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"channels-description\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"warning-temp\00", align 1
@warning_temperature = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"shutdown-temp\00", align 1
@shutdown_temperature = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_child_t*, %struct.device_node*)* @envctrl_init_adc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @envctrl_init_adc(%struct.i2c_child_t* %0, %struct.device_node* %1) #0 {
  %3 = alloca %struct.i2c_child_t*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_child_t* %0, %struct.i2c_child_t** %3, align 8
  store %struct.device_node* %1, %struct.device_node** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.device_node*, %struct.device_node** %4, align 8
  %11 = call i8* @of_get_property(%struct.device_node* %10, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32* %6)
  store i8* %11, i8** %7, align 8
  br label %12

12:                                               ; preds = %15, %2
  %13 = load i32, i32* %6, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %12
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @strlen(i8* %16)
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %9, align 4
  %19 = load %struct.i2c_child_t*, %struct.i2c_child_t** %3, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %5, align 4
  %23 = call i32 @envctrl_set_mon(%struct.i2c_child_t* %19, i8* %20, i32 %21)
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %6, align 4
  %26 = sub nsw i32 %25, %24
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i8*, i8** %7, align 8
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  store i8* %30, i8** %7, align 8
  br label %12

31:                                               ; preds = %12
  %32 = load %struct.device_node*, %struct.device_node** %4, align 8
  %33 = call i8* @of_get_property(%struct.device_node* %32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32* null)
  %34 = bitcast i8* %33 to i32*
  store i32* %34, i32** %8, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* @warning_temperature, align 4
  br label %40

40:                                               ; preds = %37, %31
  %41 = load %struct.device_node*, %struct.device_node** %4, align 8
  %42 = call i8* @of_get_property(%struct.device_node* %41, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32* null)
  %43 = bitcast i8* %42 to i32*
  store i32* %43, i32** %8, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* @shutdown_temperature, align 4
  br label %49

49:                                               ; preds = %46, %40
  ret void
}

declare dso_local i8* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @envctrl_set_mon(%struct.i2c_child_t*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
