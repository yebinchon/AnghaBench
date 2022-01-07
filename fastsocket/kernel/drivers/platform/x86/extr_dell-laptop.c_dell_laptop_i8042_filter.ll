; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_dell-laptop.c_dell_laptop_i8042_filter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_dell-laptop.c_dell_laptop_i8042_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { i32 }

@dell_laptop_i8042_filter.extended = internal global i32 0, align 4
@dell_rfkill_work = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dell_laptop_i8042_filter(i8 zeroext %0, i8 zeroext %1, %struct.serio* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca %struct.serio*, align 8
  store i8 %0, i8* %5, align 1
  store i8 %1, i8* %6, align 1
  store %struct.serio* %2, %struct.serio** %7, align 8
  %8 = load i8, i8* %6, align 1
  %9 = zext i8 %8 to i32
  %10 = and i32 %9, 32
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %35

13:                                               ; preds = %3
  %14 = load i8, i8* %5, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp eq i32 %15, 224
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  store i32 1, i32* @dell_laptop_i8042_filter.extended, align 4
  store i32 0, i32* %4, align 4
  br label %35

21:                                               ; preds = %13
  %22 = load i32, i32* @dell_laptop_i8042_filter.extended, align 4
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %21
  %26 = load i8, i8* %5, align 1
  %27 = zext i8 %26 to i32
  switch i32 %27, label %32 [
    i32 8, label %28
  ]

28:                                               ; preds = %25
  %29 = load i32, i32* @HZ, align 4
  %30 = call i32 @round_jiffies_relative(i32 %29)
  %31 = call i32 @schedule_delayed_work(i32* @dell_rfkill_work, i32 %30)
  br label %32

32:                                               ; preds = %25, %28
  store i32 0, i32* @dell_laptop_i8042_filter.extended, align 4
  br label %33

33:                                               ; preds = %32, %21
  br label %34

34:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %34, %20, %12
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @round_jiffies_relative(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
