; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_therm_windtunnel.c_attach_thermostat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_therm_windtunnel.c_attach_thermostat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@x = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [36 x i8] c"DS1775 digital thermometer [@%02x]\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Temp: \00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"  Hyst: \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"  OS: \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @attach_thermostat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @attach_thermostat(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %6 = load %struct.i2c_client*, %struct.i2c_client** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @x, i32 0, i32 3), align 8
  %7 = icmp ne %struct.i2c_client* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %48

9:                                                ; preds = %1
  %10 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %11 = call i32 @read_reg(%struct.i2c_client* %10, i32 0, i32 2)
  store i32 %11, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  br label %48

14:                                               ; preds = %9
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 5632
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %5, align 4
  %19 = icmp sgt i32 %18, 15360
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %14
  br label %48

21:                                               ; preds = %17
  %22 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %23 = call i32 @read_reg(%struct.i2c_client* %22, i32 2, i32 2)
  store i32 %23, i32* %3, align 4
  %24 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %25 = call i32 @read_reg(%struct.i2c_client* %24, i32 3, i32 2)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %3, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28, %21
  br label %48

32:                                               ; preds = %28
  %33 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %34 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @print_temp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @print_temp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @print_temp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %41)
  %43 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @x, i32 0, i32 0), align 8
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @x, i32 0, i32 1), align 4
  %46 = load i32, i32* %3, align 4
  store i32 %46, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @x, i32 0, i32 2), align 8
  %47 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  store %struct.i2c_client* %47, %struct.i2c_client** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @x, i32 0, i32 3), align 8
  br label %48

48:                                               ; preds = %32, %31, %20, %13, %8
  ret i32 0
}

declare dso_local i32 @read_reg(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @print_temp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
