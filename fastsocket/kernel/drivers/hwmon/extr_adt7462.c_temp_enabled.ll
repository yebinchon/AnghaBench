; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adt7462.c_temp_enabled.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adt7462.c_temp_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adt7462_data = type { i32* }

@ADT7462_DIODE1_INPUT = common dso_local global i32 0, align 4
@ADT7462_DIODE3_INPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adt7462_data*, i32)* @temp_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @temp_enabled(%struct.adt7462_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adt7462_data*, align 8
  %5 = alloca i32, align 4
  store %struct.adt7462_data* %0, %struct.adt7462_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %30 [
    i32 0, label %7
    i32 2, label %7
    i32 1, label %8
    i32 3, label %19
  ]

7:                                                ; preds = %2, %2
  store i32 1, i32* %3, align 4
  br label %31

8:                                                ; preds = %2
  %9 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %10 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @ADT7462_DIODE1_INPUT, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %8
  store i32 1, i32* %3, align 4
  br label %31

18:                                               ; preds = %8
  br label %30

19:                                               ; preds = %2
  %20 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %21 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ADT7462_DIODE3_INPUT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  store i32 1, i32* %3, align 4
  br label %31

29:                                               ; preds = %19
  br label %30

30:                                               ; preds = %2, %29, %18
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %28, %17, %7
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
