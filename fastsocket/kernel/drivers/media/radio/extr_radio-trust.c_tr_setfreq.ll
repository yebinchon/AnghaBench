; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-trust.c_tr_setfreq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-trust.c_tr_setfreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trust = type { i64, i32 }

@TSA6060T_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trust*, i64)* @tr_setfreq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tr_setfreq(%struct.trust* %0, i64 %1) #0 {
  %3 = alloca %struct.trust*, align 8
  %4 = alloca i64, align 8
  store %struct.trust* %0, %struct.trust** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.trust*, %struct.trust** %3, align 8
  %6 = getelementptr inbounds %struct.trust, %struct.trust* %5, i32 0, i32 1
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load i64, i64* %4, align 8
  %9 = load %struct.trust*, %struct.trust** %3, align 8
  %10 = getelementptr inbounds %struct.trust, %struct.trust* %9, i32 0, i32 0
  store i64 %8, i64* %10, align 8
  %11 = load i64, i64* %4, align 8
  %12 = udiv i64 %11, 160
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* %4, align 8
  %14 = add i64 %13, 1070
  store i64 %14, i64* %4, align 8
  %15 = load %struct.trust*, %struct.trust** %3, align 8
  %16 = load i32, i32* @TSA6060T_ADDR, align 4
  %17 = load i64, i64* %4, align 8
  %18 = shl i64 %17, 1
  %19 = or i64 %18, 1
  %20 = load i64, i64* %4, align 8
  %21 = lshr i64 %20, 7
  %22 = load i64, i64* %4, align 8
  %23 = lshr i64 %22, 15
  %24 = and i64 %23, 1
  %25 = or i64 96, %24
  %26 = trunc i64 %25 to i32
  %27 = call i32 @write_i2c(%struct.trust* %15, i32 5, i32 %16, i64 %19, i64 %21, i32 %26, i32 0)
  %28 = load %struct.trust*, %struct.trust** %3, align 8
  %29 = getelementptr inbounds %struct.trust, %struct.trust* %28, i32 0, i32 1
  %30 = call i32 @mutex_unlock(i32* %29)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @write_i2c(%struct.trust*, i32, i32, i64, i64, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
