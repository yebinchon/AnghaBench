; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adt7462.c_temp_label.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adt7462.c_temp_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adt7462_data = type { i32* }

@.str = private unnamed_addr constant [6 x i8] c"local\00", align 1
@ADT7462_DIODE1_INPUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"remote1\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"remote2\00", align 1
@ADT7462_DIODE3_INPUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"remote3\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.adt7462_data*, i32)* @temp_label to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @temp_label(%struct.adt7462_data* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.adt7462_data*, align 8
  %5 = alloca i32, align 4
  store %struct.adt7462_data* %0, %struct.adt7462_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %31 [
    i32 0, label %7
    i32 1, label %8
    i32 2, label %19
    i32 3, label %20
  ]

7:                                                ; preds = %2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %32

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
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %32

18:                                               ; preds = %8
  br label %31

19:                                               ; preds = %2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %32

20:                                               ; preds = %2
  %21 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %22 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @ADT7462_DIODE3_INPUT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %32

30:                                               ; preds = %20
  br label %31

31:                                               ; preds = %2, %30, %18
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %32

32:                                               ; preds = %31, %29, %19, %17, %7
  %33 = load i8*, i8** %3, align 8
  ret i8* %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
