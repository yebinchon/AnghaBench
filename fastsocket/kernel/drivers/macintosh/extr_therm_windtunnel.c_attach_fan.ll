; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_therm_windtunnel.c_attach_fan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_therm_windtunnel.c_attach_fan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@x = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [32 x i8] c"ADM1030 fan controller [@%02x]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @attach_fan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @attach_fan(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %3 = load %struct.i2c_client*, %struct.i2c_client** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @x, i32 0, i32 0), align 8
  %4 = icmp ne %struct.i2c_client* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %21

6:                                                ; preds = %1
  %7 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %8 = call i32 @read_reg(%struct.i2c_client* %7, i32 61, i32 1)
  %9 = icmp ne i32 %8, 48
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %12 = call i32 @read_reg(%struct.i2c_client* %11, i32 62, i32 1)
  %13 = icmp ne i32 %12, 65
  br i1 %13, label %14, label %15

14:                                               ; preds = %10, %6
  br label %21

15:                                               ; preds = %10
  %16 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  store %struct.i2c_client* %20, %struct.i2c_client** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @x, i32 0, i32 0), align 8
  br label %21

21:                                               ; preds = %15, %14, %5
  ret i32 0
}

declare dso_local i32 @read_reg(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @printk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
