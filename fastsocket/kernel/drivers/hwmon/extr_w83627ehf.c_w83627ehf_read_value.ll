; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83627ehf.c_w83627ehf_read_value.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83627ehf.c_w83627ehf_read_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w83627ehf_data = type { i32, i64 }

@ADDR_REG_OFFSET = common dso_local global i64 0, align 8
@DATA_REG_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.w83627ehf_data*, i32)* @w83627ehf_read_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w83627ehf_read_value(%struct.w83627ehf_data* %0, i32 %1) #0 {
  %3 = alloca %struct.w83627ehf_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.w83627ehf_data* %0, %struct.w83627ehf_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @is_word_sized(i32 %7)
  store i32 %8, i32* %6, align 4
  %9 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %10 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @w83627ehf_set_bank(%struct.w83627ehf_data* %12, i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, 255
  %17 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %18 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ADDR_REG_OFFSET, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @outb_p(i32 %16, i64 %21)
  %23 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %24 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @DATA_REG_OFFSET, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @inb_p(i64 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %50

31:                                               ; preds = %2
  %32 = load i32, i32* %4, align 4
  %33 = and i32 %32, 255
  %34 = add nsw i32 %33, 1
  %35 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %36 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ADDR_REG_OFFSET, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @outb_p(i32 %34, i64 %39)
  %41 = load i32, i32* %5, align 4
  %42 = shl i32 %41, 8
  %43 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %44 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @DATA_REG_OFFSET, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @inb_p(i64 %47)
  %49 = add nsw i32 %42, %48
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %31, %2
  %51 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @w83627ehf_reset_bank(%struct.w83627ehf_data* %51, i32 %52)
  %54 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %55 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %54, i32 0, i32 0
  %56 = call i32 @mutex_unlock(i32* %55)
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @is_word_sized(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @w83627ehf_set_bank(%struct.w83627ehf_data*, i32) #1

declare dso_local i32 @outb_p(i32, i64) #1

declare dso_local i32 @inb_p(i64) #1

declare dso_local i32 @w83627ehf_reset_bank(%struct.w83627ehf_data*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
