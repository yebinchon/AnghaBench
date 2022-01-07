; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/maps/extr_gpio-addr-flash.c_gf_copy_to.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/maps/extr_gpio-addr-flash.c_gf_copy_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map_info = type { i64 }
%struct.async_state = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.map_info*, i64, i8*, i64)* @gf_copy_to to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gf_copy_to(%struct.map_info* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.map_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.async_state*, align 8
  store %struct.map_info* %0, %struct.map_info** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.map_info*, %struct.map_info** %5, align 8
  %11 = call %struct.async_state* @gf_map_info_to_state(%struct.map_info* %10)
  store %struct.async_state* %11, %struct.async_state** %9, align 8
  %12 = load %struct.async_state*, %struct.async_state** %9, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @gf_set_gpios(%struct.async_state* %12, i64 %13)
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* %8, align 8
  %17 = add i64 %15, %16
  %18 = load %struct.async_state*, %struct.async_state** %9, align 8
  %19 = getelementptr inbounds %struct.async_state, %struct.async_state* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = urem i64 %17, %20
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* %8, align 8
  %24 = add i64 %22, %23
  %25 = icmp ule i64 %21, %24
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load %struct.map_info*, %struct.map_info** %5, align 8
  %30 = getelementptr inbounds %struct.map_info, %struct.map_info* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load %struct.async_state*, %struct.async_state** %9, align 8
  %34 = getelementptr inbounds %struct.async_state, %struct.async_state* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = urem i64 %32, %35
  %37 = add i64 %31, %36
  %38 = load i8*, i8** %7, align 8
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @memcpy_toio(i64 %37, i8* %38, i64 %39)
  ret void
}

declare dso_local %struct.async_state* @gf_map_info_to_state(%struct.map_info*) #1

declare dso_local i32 @gf_set_gpios(%struct.async_state*, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memcpy_toio(i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
