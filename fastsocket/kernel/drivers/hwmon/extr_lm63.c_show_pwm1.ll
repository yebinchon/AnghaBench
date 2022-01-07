; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm63.c_show_pwm1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm63.c_show_pwm1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.lm63_data = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_pwm1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_pwm1(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.lm63_data*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.lm63_data* @lm63_update_device(%struct.device* %8)
  store %struct.lm63_data* %9, %struct.lm63_data** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load %struct.lm63_data*, %struct.lm63_data** %7, align 8
  %12 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.lm63_data*, %struct.lm63_data** %7, align 8
  %15 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = mul nsw i32 2, %16
  %18 = icmp sge i32 %13, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %34

20:                                               ; preds = %3
  %21 = load %struct.lm63_data*, %struct.lm63_data** %7, align 8
  %22 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %23, 255
  %25 = load %struct.lm63_data*, %struct.lm63_data** %7, align 8
  %26 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %24, %27
  %29 = load %struct.lm63_data*, %struct.lm63_data** %7, align 8
  %30 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 2, %31
  %33 = sdiv i32 %28, %32
  br label %34

34:                                               ; preds = %20, %19
  %35 = phi i32 [ 255, %19 ], [ %33, %20 ]
  %36 = call i32 @sprintf(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %35)
  ret i32 %36
}

declare dso_local %struct.lm63_data* @lm63_update_device(%struct.device*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
