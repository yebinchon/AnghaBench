; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_raw3270.c___raw3270_size_device_vm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_raw3270.c___raw3270_size_device_vm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.raw3270 = type { i32, i32, i32, i32 }
%struct.ccw_dev_id = type { i32 }

@raw3270_init_diag210 = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.raw3270*)* @__raw3270_size_device_vm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__raw3270_size_device_vm(%struct.raw3270* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.raw3270*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ccw_dev_id, align 4
  store %struct.raw3270* %0, %struct.raw3270** %3, align 8
  %7 = load %struct.raw3270*, %struct.raw3270** %3, align 8
  %8 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @ccw_device_get_id(i32 %9, %struct.ccw_dev_id* %6)
  %11 = getelementptr inbounds %struct.ccw_dev_id, %struct.ccw_dev_id* %6, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @raw3270_init_diag210, i32 0, i32 2), align 4
  store i32 4, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @raw3270_init_diag210, i32 0, i32 0), align 4
  %13 = call i32 @diag210(%struct.TYPE_3__* @raw3270_init_diag210)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %58

18:                                               ; preds = %1
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @raw3270_init_diag210, i32 0, i32 1), align 4
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  switch i32 %20, label %53 [
    i32 2, label %21
    i32 3, label %29
    i32 4, label %37
    i32 5, label %45
  ]

21:                                               ; preds = %18
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.raw3270*, %struct.raw3270** %3, align 8
  %24 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.raw3270*, %struct.raw3270** %3, align 8
  %26 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %25, i32 0, i32 1
  store i32 24, i32* %26, align 4
  %27 = load %struct.raw3270*, %struct.raw3270** %3, align 8
  %28 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %27, i32 0, i32 2
  store i32 80, i32* %28, align 4
  br label %56

29:                                               ; preds = %18
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.raw3270*, %struct.raw3270** %3, align 8
  %32 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.raw3270*, %struct.raw3270** %3, align 8
  %34 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %33, i32 0, i32 1
  store i32 32, i32* %34, align 4
  %35 = load %struct.raw3270*, %struct.raw3270** %3, align 8
  %36 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %35, i32 0, i32 2
  store i32 80, i32* %36, align 4
  br label %56

37:                                               ; preds = %18
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.raw3270*, %struct.raw3270** %3, align 8
  %40 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.raw3270*, %struct.raw3270** %3, align 8
  %42 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %41, i32 0, i32 1
  store i32 43, i32* %42, align 4
  %43 = load %struct.raw3270*, %struct.raw3270** %3, align 8
  %44 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %43, i32 0, i32 2
  store i32 80, i32* %44, align 4
  br label %56

45:                                               ; preds = %18
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.raw3270*, %struct.raw3270** %3, align 8
  %48 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.raw3270*, %struct.raw3270** %3, align 8
  %50 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %49, i32 0, i32 1
  store i32 27, i32* %50, align 4
  %51 = load %struct.raw3270*, %struct.raw3270** %3, align 8
  %52 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %51, i32 0, i32 2
  store i32 132, i32* %52, align 4
  br label %56

53:                                               ; preds = %18
  %54 = load i32, i32* @EOPNOTSUPP, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %53, %45, %37, %29, %21
  %57 = load i32, i32* %4, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %56, %16
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @ccw_device_get_id(i32, %struct.ccw_dev_id*) #1

declare dso_local i32 @diag210(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
