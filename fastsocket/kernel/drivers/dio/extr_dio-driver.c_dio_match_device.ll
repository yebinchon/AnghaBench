; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dio/extr_dio-driver.c_dio_match_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dio/extr_dio-driver.c_dio_match_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dio_device_id = type { i32 }
%struct.dio_dev = type { i32 }

@DIO_WILDCARD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dio_device_id* @dio_match_device(%struct.dio_device_id* %0, %struct.dio_dev* %1) #0 {
  %3 = alloca %struct.dio_device_id*, align 8
  %4 = alloca %struct.dio_device_id*, align 8
  %5 = alloca %struct.dio_dev*, align 8
  store %struct.dio_device_id* %0, %struct.dio_device_id** %4, align 8
  store %struct.dio_dev* %1, %struct.dio_dev** %5, align 8
  br label %6

6:                                                ; preds = %50, %2
  %7 = load %struct.dio_device_id*, %struct.dio_device_id** %4, align 8
  %8 = getelementptr inbounds %struct.dio_device_id, %struct.dio_device_id* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %53

11:                                               ; preds = %6
  %12 = load %struct.dio_device_id*, %struct.dio_device_id** %4, align 8
  %13 = getelementptr inbounds %struct.dio_device_id, %struct.dio_device_id* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @DIO_WILDCARD, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load %struct.dio_device_id*, %struct.dio_device_id** %4, align 8
  store %struct.dio_device_id* %18, %struct.dio_device_id** %3, align 8
  br label %54

19:                                               ; preds = %11
  %20 = load %struct.dio_device_id*, %struct.dio_device_id** %4, align 8
  %21 = getelementptr inbounds %struct.dio_device_id, %struct.dio_device_id* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 255
  %24 = call i64 @DIO_NEEDSSECID(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %19
  %27 = load %struct.dio_device_id*, %struct.dio_device_id** %4, align 8
  %28 = getelementptr inbounds %struct.dio_device_id, %struct.dio_device_id* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.dio_dev*, %struct.dio_dev** %5, align 8
  %31 = getelementptr inbounds %struct.dio_dev, %struct.dio_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %29, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load %struct.dio_device_id*, %struct.dio_device_id** %4, align 8
  store %struct.dio_device_id* %35, %struct.dio_device_id** %3, align 8
  br label %54

36:                                               ; preds = %26
  br label %50

37:                                               ; preds = %19
  %38 = load %struct.dio_device_id*, %struct.dio_device_id** %4, align 8
  %39 = getelementptr inbounds %struct.dio_device_id, %struct.dio_device_id* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 255
  %42 = load %struct.dio_dev*, %struct.dio_dev** %5, align 8
  %43 = getelementptr inbounds %struct.dio_dev, %struct.dio_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 255
  %46 = icmp eq i32 %41, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %37
  %48 = load %struct.dio_device_id*, %struct.dio_device_id** %4, align 8
  store %struct.dio_device_id* %48, %struct.dio_device_id** %3, align 8
  br label %54

49:                                               ; preds = %37
  br label %50

50:                                               ; preds = %49, %36
  %51 = load %struct.dio_device_id*, %struct.dio_device_id** %4, align 8
  %52 = getelementptr inbounds %struct.dio_device_id, %struct.dio_device_id* %51, i32 1
  store %struct.dio_device_id* %52, %struct.dio_device_id** %4, align 8
  br label %6

53:                                               ; preds = %6
  store %struct.dio_device_id* null, %struct.dio_device_id** %3, align 8
  br label %54

54:                                               ; preds = %53, %47, %34, %17
  %55 = load %struct.dio_device_id*, %struct.dio_device_id** %3, align 8
  ret %struct.dio_device_id* %55
}

declare dso_local i64 @DIO_NEEDSSECID(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
