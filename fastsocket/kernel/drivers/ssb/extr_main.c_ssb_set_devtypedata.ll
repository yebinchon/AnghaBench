; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ssb/extr_main.c_ssb_set_devtypedata.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ssb/extr_main.c_ssb_set_devtypedata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_device = type { i8*, %struct.TYPE_2__, %struct.ssb_bus* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.ssb_bus = type { i32, %struct.ssb_device* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ssb_set_devtypedata(%struct.ssb_device* %0, i8* %1) #0 {
  %3 = alloca %struct.ssb_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ssb_bus*, align 8
  %6 = alloca %struct.ssb_device*, align 8
  %7 = alloca i32, align 4
  store %struct.ssb_device* %0, %struct.ssb_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %9 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %8, i32 0, i32 2
  %10 = load %struct.ssb_bus*, %struct.ssb_bus** %9, align 8
  store %struct.ssb_bus* %10, %struct.ssb_bus** %5, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %49, %2
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.ssb_bus*, %struct.ssb_bus** %5, align 8
  %14 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %52

17:                                               ; preds = %11
  %18 = load %struct.ssb_bus*, %struct.ssb_bus** %5, align 8
  %19 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %18, i32 0, i32 1
  %20 = load %struct.ssb_device*, %struct.ssb_device** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %20, i64 %22
  store %struct.ssb_device* %23, %struct.ssb_device** %6, align 8
  %24 = load %struct.ssb_device*, %struct.ssb_device** %6, align 8
  %25 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %29 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %27, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %17
  br label %49

34:                                               ; preds = %17
  %35 = load %struct.ssb_device*, %struct.ssb_device** %6, align 8
  %36 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %40 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %38, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  br label %49

45:                                               ; preds = %34
  %46 = load i8*, i8** %4, align 8
  %47 = load %struct.ssb_device*, %struct.ssb_device** %6, align 8
  %48 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  br label %49

49:                                               ; preds = %45, %44, %33
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %11

52:                                               ; preds = %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
