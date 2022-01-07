; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/maps/extr_gpio-addr-flash.c_gf_set_gpios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/maps/extr_gpio-addr-flash.c_gf_set_gpios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.async_state = type { i64, i64, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.async_state*, i64)* @gf_set_gpios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gf_set_gpios(%struct.async_state* %0, i64 %1) #0 {
  %3 = alloca %struct.async_state*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.async_state* %0, %struct.async_state** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %7 = load %struct.async_state*, %struct.async_state** %3, align 8
  %8 = getelementptr inbounds %struct.async_state, %struct.async_state* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* %4, align 8
  %11 = udiv i64 %10, %9
  store i64 %11, i64* %4, align 8
  br label %12

12:                                               ; preds = %44, %2
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* %5, align 8
  %15 = trunc i64 %14 to i32
  %16 = shl i32 1, %15
  %17 = sext i32 %16 to i64
  %18 = and i64 %13, %17
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %6, align 4
  %20 = load %struct.async_state*, %struct.async_state** %3, align 8
  %21 = getelementptr inbounds %struct.async_state, %struct.async_state* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %12
  %29 = load %struct.async_state*, %struct.async_state** %3, align 8
  %30 = getelementptr inbounds %struct.async_state, %struct.async_state* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* %5, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @gpio_set_value(i32 %34, i32 %35)
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.async_state*, %struct.async_state** %3, align 8
  %39 = getelementptr inbounds %struct.async_state, %struct.async_state* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* %5, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  store i32 %37, i32* %42, align 4
  br label %43

43:                                               ; preds = %28, %12
  br label %44

44:                                               ; preds = %43
  %45 = load i64, i64* %5, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %5, align 8
  %47 = load %struct.async_state*, %struct.async_state** %3, align 8
  %48 = getelementptr inbounds %struct.async_state, %struct.async_state* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ult i64 %46, %49
  br i1 %50, label %12, label %51

51:                                               ; preds = %44
  ret void
}

declare dso_local i32 @gpio_set_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
