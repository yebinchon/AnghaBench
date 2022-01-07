; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm90.c_temp_to_u16_adt7461.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm90.c_temp_to_u16_adt7461.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm90_data = type { i32 }

@LM90_FLAG_ADT7461_EXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lm90_data*, i64)* @temp_to_u16_adt7461 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @temp_to_u16_adt7461(%struct.lm90_data* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lm90_data*, align 8
  %5 = alloca i64, align 8
  store %struct.lm90_data* %0, %struct.lm90_data** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %7 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @LM90_FLAG_ADT7461_EXT, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %2
  %13 = load i64, i64* %5, align 8
  %14 = icmp sle i64 %13, -64000
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %41

16:                                               ; preds = %12
  %17 = load i64, i64* %5, align 8
  %18 = icmp sge i64 %17, 191750
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 65472, i32* %3, align 4
  br label %41

20:                                               ; preds = %16
  %21 = load i64, i64* %5, align 8
  %22 = add nsw i64 %21, 64000
  %23 = add nsw i64 %22, 125
  %24 = sdiv i64 %23, 250
  %25 = mul nsw i64 %24, 64
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %3, align 4
  br label %41

27:                                               ; preds = %2
  %28 = load i64, i64* %5, align 8
  %29 = icmp sle i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %41

31:                                               ; preds = %27
  %32 = load i64, i64* %5, align 8
  %33 = icmp sge i64 %32, 127750
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 32704, i32* %3, align 4
  br label %41

35:                                               ; preds = %31
  %36 = load i64, i64* %5, align 8
  %37 = add nsw i64 %36, 125
  %38 = sdiv i64 %37, 250
  %39 = mul nsw i64 %38, 64
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %35, %34, %30, %20, %19, %15
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
