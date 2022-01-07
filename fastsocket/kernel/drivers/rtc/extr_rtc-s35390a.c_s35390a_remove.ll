; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-s35390a.c_s35390a_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-s35390a.c_s35390a_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.s35390a = type { i32, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @s35390a_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s35390a_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.s35390a*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %5 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %6 = call %struct.s35390a* @i2c_get_clientdata(%struct.i2c_client* %5)
  store %struct.s35390a* %6, %struct.s35390a** %4, align 8
  store i32 1, i32* %3, align 4
  br label %7

7:                                                ; preds = %29, %1
  %8 = load i32, i32* %3, align 4
  %9 = icmp ult i32 %8, 8
  br i1 %9, label %10, label %32

10:                                               ; preds = %7
  %11 = load %struct.s35390a*, %struct.s35390a** %4, align 8
  %12 = getelementptr inbounds %struct.s35390a, %struct.s35390a* %11, i32 0, i32 1
  %13 = load i64*, i64** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i64, i64* %13, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %10
  %20 = load %struct.s35390a*, %struct.s35390a** %4, align 8
  %21 = getelementptr inbounds %struct.s35390a, %struct.s35390a* %20, i32 0, i32 1
  %22 = load i64*, i64** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @i2c_unregister_device(i64 %26)
  br label %28

28:                                               ; preds = %19, %10
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %3, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %7

32:                                               ; preds = %7
  %33 = load %struct.s35390a*, %struct.s35390a** %4, align 8
  %34 = getelementptr inbounds %struct.s35390a, %struct.s35390a* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @rtc_device_unregister(i32 %35)
  %37 = load %struct.s35390a*, %struct.s35390a** %4, align 8
  %38 = call i32 @kfree(%struct.s35390a* %37)
  %39 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %40 = call i32 @i2c_set_clientdata(%struct.i2c_client* %39, i32* null)
  ret i32 0
}

declare dso_local %struct.s35390a* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @i2c_unregister_device(i64) #1

declare dso_local i32 @rtc_device_unregister(i32) #1

declare dso_local i32 @kfree(%struct.s35390a*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
