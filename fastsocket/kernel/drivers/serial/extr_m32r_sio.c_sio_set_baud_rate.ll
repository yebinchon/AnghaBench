; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_m32r_sio.c_sio_set_baud_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_m32r_sio.c_sio_set_baud_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@boot_cpu_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@M32R_SIO0_BAUR_PORTL = common dso_local global i32 0, align 4
@M32R_SIO0_RBAUR_PORTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @sio_set_baud_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sio_set_baud_rate(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 0), align 8
  %6 = load i64, i64* %2, align 8
  %7 = mul i64 %6, 16
  %8 = udiv i64 %5, %7
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 0), align 8
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* %2, align 8
  %12 = mul i64 %10, %11
  %13 = mul i64 %12, 16
  %14 = sub i64 %9, %13
  %15 = load i64, i64* %2, align 8
  %16 = udiv i64 %14, %15
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* %3, align 8
  %18 = sub i64 %17, 1
  store i64 %18, i64* %3, align 8
  %19 = load i64, i64* %4, align 8
  %20 = add i64 %19, 1
  %21 = lshr i64 %20, 1
  store i64 %21, i64* %4, align 8
  %22 = load i64, i64* %3, align 8
  %23 = load i32, i32* @M32R_SIO0_BAUR_PORTL, align 4
  %24 = call i32 @__sio_out(i64 %22, i32 %23)
  %25 = load i64, i64* %4, align 8
  %26 = load i32, i32* @M32R_SIO0_RBAUR_PORTL, align 4
  %27 = call i32 @__sio_out(i64 %25, i32 %26)
  ret void
}

declare dso_local i32 @__sio_out(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
