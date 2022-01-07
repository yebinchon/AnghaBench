; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/maps/extr_gpio-addr-flash.c_gf_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/maps/extr_gpio-addr-flash.c_gf_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map_info = type { i64 }
%struct.TYPE_3__ = type { i32* }
%struct.async_state = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.map_info*, i32*, i64)* @gf_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gf_write(%struct.map_info* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_3__, align 8
  %5 = alloca %struct.map_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.async_state*, align 8
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  store i32* %1, i32** %9, align 8
  store %struct.map_info* %0, %struct.map_info** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.map_info*, %struct.map_info** %5, align 8
  %11 = call %struct.async_state* @gf_map_info_to_state(%struct.map_info* %10)
  store %struct.async_state* %11, %struct.async_state** %7, align 8
  %12 = load %struct.async_state*, %struct.async_state** %7, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @gf_set_gpios(%struct.async_state* %12, i64 %13)
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.map_info*, %struct.map_info** %5, align 8
  %21 = getelementptr inbounds %struct.map_info, %struct.map_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load %struct.async_state*, %struct.async_state** %7, align 8
  %25 = getelementptr inbounds %struct.async_state, %struct.async_state* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = urem i64 %23, %26
  %28 = add i64 %22, %27
  %29 = call i32 @writew(i32 %19, i64 %28)
  ret void
}

declare dso_local %struct.async_state* @gf_map_info_to_state(%struct.map_info*) #1

declare dso_local i32 @gf_set_gpios(%struct.async_state*, i64) #1

declare dso_local i32 @writew(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
