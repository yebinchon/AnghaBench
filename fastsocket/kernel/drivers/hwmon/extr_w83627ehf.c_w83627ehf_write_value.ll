; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83627ehf.c_w83627ehf_write_value.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83627ehf.c_w83627ehf_write_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w83627ehf_data = type { i32, i64 }

@ADDR_REG_OFFSET = common dso_local global i64 0, align 8
@DATA_REG_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.w83627ehf_data*, i32, i32)* @w83627ehf_write_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w83627ehf_write_value(%struct.w83627ehf_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.w83627ehf_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.w83627ehf_data* %0, %struct.w83627ehf_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @is_word_sized(i32 %8)
  store i32 %9, i32* %7, align 4
  %10 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %4, align 8
  %11 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @w83627ehf_set_bank(%struct.w83627ehf_data* %13, i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, 255
  %18 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %4, align 8
  %19 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ADDR_REG_OFFSET, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @outb_p(i32 %17, i64 %22)
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  %28 = ashr i32 %27, 8
  %29 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %4, align 8
  %30 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @DATA_REG_OFFSET, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @outb_p(i32 %28, i64 %33)
  %35 = load i32, i32* %5, align 4
  %36 = and i32 %35, 255
  %37 = add nsw i32 %36, 1
  %38 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %4, align 8
  %39 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ADDR_REG_OFFSET, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @outb_p(i32 %37, i64 %42)
  br label %44

44:                                               ; preds = %26, %3
  %45 = load i32, i32* %6, align 4
  %46 = and i32 %45, 255
  %47 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %4, align 8
  %48 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @DATA_REG_OFFSET, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @outb_p(i32 %46, i64 %51)
  %53 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @w83627ehf_reset_bank(%struct.w83627ehf_data* %53, i32 %54)
  %56 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %4, align 8
  %57 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %56, i32 0, i32 0
  %58 = call i32 @mutex_unlock(i32* %57)
  ret i32 0
}

declare dso_local i32 @is_word_sized(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @w83627ehf_set_bank(%struct.w83627ehf_data*, i32) #1

declare dso_local i32 @outb_p(i32, i64) #1

declare dso_local i32 @w83627ehf_reset_bank(%struct.w83627ehf_data*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
