; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_zhenhua.c_zhenhua_process_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_zhenhua.c_zhenhua_process_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zhenhua = type { i8*, %struct.input_dev* }
%struct.input_dev = type { i32 }

@ABS_Y = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_RZ = common dso_local global i32 0, align 4
@ABS_Z = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zhenhua*)* @zhenhua_process_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zhenhua_process_packet(%struct.zhenhua* %0) #0 {
  %2 = alloca %struct.zhenhua*, align 8
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca i8*, align 8
  store %struct.zhenhua* %0, %struct.zhenhua** %2, align 8
  %5 = load %struct.zhenhua*, %struct.zhenhua** %2, align 8
  %6 = getelementptr inbounds %struct.zhenhua, %struct.zhenhua* %5, i32 0, i32 1
  %7 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  store %struct.input_dev* %7, %struct.input_dev** %3, align 8
  %8 = load %struct.zhenhua*, %struct.zhenhua** %2, align 8
  %9 = getelementptr inbounds %struct.zhenhua, %struct.zhenhua* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %4, align 8
  %11 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %12 = load i32, i32* @ABS_Y, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 1
  %15 = load i8, i8* %14, align 1
  %16 = call i32 @input_report_abs(%struct.input_dev* %11, i32 %12, i8 zeroext %15)
  %17 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %18 = load i32, i32* @ABS_X, align 4
  %19 = load i8*, i8** %4, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 2
  %21 = load i8, i8* %20, align 1
  %22 = call i32 @input_report_abs(%struct.input_dev* %17, i32 %18, i8 zeroext %21)
  %23 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %24 = load i32, i32* @ABS_RZ, align 4
  %25 = load i8*, i8** %4, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 3
  %27 = load i8, i8* %26, align 1
  %28 = call i32 @input_report_abs(%struct.input_dev* %23, i32 %24, i8 zeroext %27)
  %29 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %30 = load i32, i32* @ABS_Z, align 4
  %31 = load i8*, i8** %4, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 4
  %33 = load i8, i8* %32, align 1
  %34 = call i32 @input_report_abs(%struct.input_dev* %29, i32 %30, i8 zeroext %33)
  %35 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %36 = call i32 @input_sync(%struct.input_dev* %35)
  ret void
}

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i8 zeroext) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
