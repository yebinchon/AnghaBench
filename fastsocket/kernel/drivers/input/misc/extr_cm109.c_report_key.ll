; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_cm109.c_report_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_cm109.c_report_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm109_dev = type { i32, %struct.input_dev* }
%struct.input_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cm109_dev*, i32)* @report_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @report_key(%struct.cm109_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.cm109_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.input_dev*, align 8
  store %struct.cm109_dev* %0, %struct.cm109_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.cm109_dev*, %struct.cm109_dev** %3, align 8
  %7 = getelementptr inbounds %struct.cm109_dev, %struct.cm109_dev* %6, i32 0, i32 1
  %8 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  store %struct.input_dev* %8, %struct.input_dev** %5, align 8
  %9 = load %struct.cm109_dev*, %struct.cm109_dev** %3, align 8
  %10 = getelementptr inbounds %struct.cm109_dev, %struct.cm109_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %15 = load %struct.cm109_dev*, %struct.cm109_dev** %3, align 8
  %16 = getelementptr inbounds %struct.cm109_dev, %struct.cm109_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @input_report_key(%struct.input_dev* %14, i32 %17, i32 0)
  br label %19

19:                                               ; preds = %13, %2
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.cm109_dev*, %struct.cm109_dev** %3, align 8
  %22 = getelementptr inbounds %struct.cm109_dev, %struct.cm109_dev* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* %4, align 4
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @input_report_key(%struct.input_dev* %26, i32 %27, i32 1)
  br label %29

29:                                               ; preds = %25, %19
  %30 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %31 = call i32 @input_sync(%struct.input_dev* %30)
  ret void
}

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
