; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/nubus/extr_nubus.c_nubus_find_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/nubus/extr_nubus.c_nubus_find_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nubus_dev = type { i16, i16, i16, i16, %struct.nubus_dev* }

@nubus_devices = common dso_local global %struct.nubus_dev* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nubus_dev* @nubus_find_device(i16 zeroext %0, i16 zeroext %1, i16 zeroext %2, i16 zeroext %3, %struct.nubus_dev* %4) #0 {
  %6 = alloca %struct.nubus_dev*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca %struct.nubus_dev*, align 8
  %12 = alloca %struct.nubus_dev*, align 8
  store i16 %0, i16* %7, align 2
  store i16 %1, i16* %8, align 2
  store i16 %2, i16* %9, align 2
  store i16 %3, i16* %10, align 2
  store %struct.nubus_dev* %4, %struct.nubus_dev** %11, align 8
  %13 = load %struct.nubus_dev*, %struct.nubus_dev** %11, align 8
  %14 = icmp ne %struct.nubus_dev* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %5
  %16 = load %struct.nubus_dev*, %struct.nubus_dev** %11, align 8
  %17 = getelementptr inbounds %struct.nubus_dev, %struct.nubus_dev* %16, i32 0, i32 4
  %18 = load %struct.nubus_dev*, %struct.nubus_dev** %17, align 8
  br label %21

19:                                               ; preds = %5
  %20 = load %struct.nubus_dev*, %struct.nubus_dev** @nubus_devices, align 8
  br label %21

21:                                               ; preds = %19, %15
  %22 = phi %struct.nubus_dev* [ %18, %15 ], [ %20, %19 ]
  store %struct.nubus_dev* %22, %struct.nubus_dev** %12, align 8
  br label %23

23:                                               ; preds = %60, %21
  %24 = load %struct.nubus_dev*, %struct.nubus_dev** %12, align 8
  %25 = icmp ne %struct.nubus_dev* %24, null
  br i1 %25, label %26, label %64

26:                                               ; preds = %23
  %27 = load %struct.nubus_dev*, %struct.nubus_dev** %12, align 8
  %28 = getelementptr inbounds %struct.nubus_dev, %struct.nubus_dev* %27, i32 0, i32 0
  %29 = load i16, i16* %28, align 8
  %30 = zext i16 %29 to i32
  %31 = load i16, i16* %7, align 2
  %32 = zext i16 %31 to i32
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %60

34:                                               ; preds = %26
  %35 = load %struct.nubus_dev*, %struct.nubus_dev** %12, align 8
  %36 = getelementptr inbounds %struct.nubus_dev, %struct.nubus_dev* %35, i32 0, i32 1
  %37 = load i16, i16* %36, align 2
  %38 = zext i16 %37 to i32
  %39 = load i16, i16* %8, align 2
  %40 = zext i16 %39 to i32
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %60

42:                                               ; preds = %34
  %43 = load %struct.nubus_dev*, %struct.nubus_dev** %12, align 8
  %44 = getelementptr inbounds %struct.nubus_dev, %struct.nubus_dev* %43, i32 0, i32 2
  %45 = load i16, i16* %44, align 4
  %46 = zext i16 %45 to i32
  %47 = load i16, i16* %9, align 2
  %48 = zext i16 %47 to i32
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %42
  %51 = load %struct.nubus_dev*, %struct.nubus_dev** %12, align 8
  %52 = getelementptr inbounds %struct.nubus_dev, %struct.nubus_dev* %51, i32 0, i32 3
  %53 = load i16, i16* %52, align 2
  %54 = zext i16 %53 to i32
  %55 = load i16, i16* %10, align 2
  %56 = zext i16 %55 to i32
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = load %struct.nubus_dev*, %struct.nubus_dev** %12, align 8
  store %struct.nubus_dev* %59, %struct.nubus_dev** %6, align 8
  br label %65

60:                                               ; preds = %50, %42, %34, %26
  %61 = load %struct.nubus_dev*, %struct.nubus_dev** %12, align 8
  %62 = getelementptr inbounds %struct.nubus_dev, %struct.nubus_dev* %61, i32 0, i32 4
  %63 = load %struct.nubus_dev*, %struct.nubus_dev** %62, align 8
  store %struct.nubus_dev* %63, %struct.nubus_dev** %12, align 8
  br label %23

64:                                               ; preds = %23
  store %struct.nubus_dev* null, %struct.nubus_dev** %6, align 8
  br label %65

65:                                               ; preds = %64, %58
  %66 = load %struct.nubus_dev*, %struct.nubus_dev** %6, align 8
  ret %struct.nubus_dev* %66
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
