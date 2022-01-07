; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/iforce/extr_iforce-ff.c_need_core.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/iforce/extr_iforce-ff.c_need_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ff_effect = type { i64, %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ff_effect*, %struct.ff_effect*)* @need_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @need_core(%struct.ff_effect* %0, %struct.ff_effect* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ff_effect*, align 8
  %5 = alloca %struct.ff_effect*, align 8
  store %struct.ff_effect* %0, %struct.ff_effect** %4, align 8
  store %struct.ff_effect* %1, %struct.ff_effect** %5, align 8
  %6 = load %struct.ff_effect*, %struct.ff_effect** %4, align 8
  %7 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.ff_effect*, %struct.ff_effect** %5, align 8
  %10 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %8, %11
  br i1 %12, label %53, label %13

13:                                               ; preds = %2
  %14 = load %struct.ff_effect*, %struct.ff_effect** %4, align 8
  %15 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.ff_effect*, %struct.ff_effect** %5, align 8
  %19 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %17, %21
  br i1 %22, label %53, label %23

23:                                               ; preds = %13
  %24 = load %struct.ff_effect*, %struct.ff_effect** %4, align 8
  %25 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.ff_effect*, %struct.ff_effect** %5, align 8
  %29 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %27, %31
  br i1 %32, label %53, label %33

33:                                               ; preds = %23
  %34 = load %struct.ff_effect*, %struct.ff_effect** %4, align 8
  %35 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.ff_effect*, %struct.ff_effect** %5, align 8
  %39 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %37, %41
  br i1 %42, label %53, label %43

43:                                               ; preds = %33
  %44 = load %struct.ff_effect*, %struct.ff_effect** %4, align 8
  %45 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.ff_effect*, %struct.ff_effect** %5, align 8
  %49 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %47, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %43, %33, %23, %13, %2
  store i32 1, i32* %3, align 4
  br label %55

54:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %53
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
