; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/nubus/extr_nubus.c_nubus_find_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/nubus/extr_nubus.c_nubus_find_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nubus_dev = type { i16, i16, %struct.nubus_dev* }

@nubus_devices = common dso_local global %struct.nubus_dev* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nubus_dev* @nubus_find_type(i16 zeroext %0, i16 zeroext %1, %struct.nubus_dev* %2) #0 {
  %4 = alloca %struct.nubus_dev*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca %struct.nubus_dev*, align 8
  %8 = alloca %struct.nubus_dev*, align 8
  store i16 %0, i16* %5, align 2
  store i16 %1, i16* %6, align 2
  store %struct.nubus_dev* %2, %struct.nubus_dev** %7, align 8
  %9 = load %struct.nubus_dev*, %struct.nubus_dev** %7, align 8
  %10 = icmp ne %struct.nubus_dev* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load %struct.nubus_dev*, %struct.nubus_dev** %7, align 8
  %13 = getelementptr inbounds %struct.nubus_dev, %struct.nubus_dev* %12, i32 0, i32 2
  %14 = load %struct.nubus_dev*, %struct.nubus_dev** %13, align 8
  br label %17

15:                                               ; preds = %3
  %16 = load %struct.nubus_dev*, %struct.nubus_dev** @nubus_devices, align 8
  br label %17

17:                                               ; preds = %15, %11
  %18 = phi %struct.nubus_dev* [ %14, %11 ], [ %16, %15 ]
  store %struct.nubus_dev* %18, %struct.nubus_dev** %8, align 8
  br label %19

19:                                               ; preds = %40, %17
  %20 = load %struct.nubus_dev*, %struct.nubus_dev** %8, align 8
  %21 = icmp ne %struct.nubus_dev* %20, null
  br i1 %21, label %22, label %44

22:                                               ; preds = %19
  %23 = load %struct.nubus_dev*, %struct.nubus_dev** %8, align 8
  %24 = getelementptr inbounds %struct.nubus_dev, %struct.nubus_dev* %23, i32 0, i32 0
  %25 = load i16, i16* %24, align 8
  %26 = zext i16 %25 to i32
  %27 = load i16, i16* %5, align 2
  %28 = zext i16 %27 to i32
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %22
  %31 = load %struct.nubus_dev*, %struct.nubus_dev** %8, align 8
  %32 = getelementptr inbounds %struct.nubus_dev, %struct.nubus_dev* %31, i32 0, i32 1
  %33 = load i16, i16* %32, align 2
  %34 = zext i16 %33 to i32
  %35 = load i16, i16* %6, align 2
  %36 = zext i16 %35 to i32
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load %struct.nubus_dev*, %struct.nubus_dev** %8, align 8
  store %struct.nubus_dev* %39, %struct.nubus_dev** %4, align 8
  br label %45

40:                                               ; preds = %30, %22
  %41 = load %struct.nubus_dev*, %struct.nubus_dev** %8, align 8
  %42 = getelementptr inbounds %struct.nubus_dev, %struct.nubus_dev* %41, i32 0, i32 2
  %43 = load %struct.nubus_dev*, %struct.nubus_dev** %42, align 8
  store %struct.nubus_dev* %43, %struct.nubus_dev** %8, align 8
  br label %19

44:                                               ; preds = %19
  store %struct.nubus_dev* null, %struct.nubus_dev** %4, align 8
  br label %45

45:                                               ; preds = %44, %38
  %46 = load %struct.nubus_dev*, %struct.nubus_dev** %4, align 8
  ret %struct.nubus_dev* %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
