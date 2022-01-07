; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_as-iosched.c_est_time_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_as-iosched.c_est_time_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elevator_queue = type { %struct.as_data* }
%struct.as_data = type { i32, i32, i64, i64 }

@.str = private unnamed_addr constant [25 x i8] c"%lu %% exit probability\0A\00", align 1
@.str.1 = private unnamed_addr constant [75 x i8] c"%lu %% probability of exiting without a cooperating process submitting IO\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"%lu ms new thinktime\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"%llu sectors new seek distance\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elevator_queue*, i8*)* @est_time_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @est_time_show(%struct.elevator_queue* %0, i8* %1) #0 {
  %3 = alloca %struct.elevator_queue*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.as_data*, align 8
  %6 = alloca i32, align 4
  store %struct.elevator_queue* %0, %struct.elevator_queue** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.elevator_queue*, %struct.elevator_queue** %3, align 8
  %8 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %7, i32 0, i32 0
  %9 = load %struct.as_data*, %struct.as_data** %8, align 8
  store %struct.as_data* %9, %struct.as_data** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = load i32, i32* %6, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8, i8* %10, i64 %12
  %14 = load %struct.as_data*, %struct.as_data** %5, align 8
  %15 = getelementptr inbounds %struct.as_data, %struct.as_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = mul nsw i32 100, %16
  %18 = sdiv i32 %17, 256
  %19 = sext i32 %18 to i64
  %20 = call i64 @sprintf(i8* %13, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %22, %20
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %6, align 4
  %25 = load i8*, i8** %4, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load %struct.as_data*, %struct.as_data** %5, align 8
  %30 = getelementptr inbounds %struct.as_data, %struct.as_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 100, %31
  %33 = sdiv i32 %32, 256
  %34 = sext i32 %33 to i64
  %35 = call i64 @sprintf(i8* %28, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0), i64 %34)
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %37, %35
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %6, align 4
  %40 = load i8*, i8** %4, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load %struct.as_data*, %struct.as_data** %5, align 8
  %45 = getelementptr inbounds %struct.as_data, %struct.as_data* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @sprintf(i8* %43, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 %46)
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %49, %47
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %6, align 4
  %52 = load i8*, i8** %4, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load %struct.as_data*, %struct.as_data** %5, align 8
  %57 = getelementptr inbounds %struct.as_data, %struct.as_data* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = call i64 @sprintf(i8* %55, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i64 %58)
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %61, %59
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

declare dso_local i64 @sprintf(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
