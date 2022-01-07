; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_i2400m-usb.h_i2400mu_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_i2400m-usb.h_i2400mu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400mu = type { i32, i32, i64, i32, i32, i32, i32, i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2400mu*)* @i2400mu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2400mu_init(%struct.i2400mu* %0) #0 {
  %2 = alloca %struct.i2400mu*, align 8
  store %struct.i2400mu* %0, %struct.i2400mu** %2, align 8
  %3 = load %struct.i2400mu*, %struct.i2400mu** %2, align 8
  %4 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %3, i32 0, i32 7
  %5 = call i32 @i2400m_init(i32* %4)
  %6 = load %struct.i2400mu*, %struct.i2400mu** %2, align 8
  %7 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %6, i32 0, i32 6
  %8 = call i32 @edc_init(i32* %7)
  %9 = load %struct.i2400mu*, %struct.i2400mu** %2, align 8
  %10 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %9, i32 0, i32 5
  %11 = call i32 @init_waitqueue_head(i32* %10)
  %12 = load %struct.i2400mu*, %struct.i2400mu** %2, align 8
  %13 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %12, i32 0, i32 4
  %14 = call i32 @atomic_set(i32* %13, i32 0)
  %15 = load %struct.i2400mu*, %struct.i2400mu** %2, align 8
  %16 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %15, i32 0, i32 3
  %17 = call i32 @init_waitqueue_head(i32* %16)
  %18 = load i64, i64* @PAGE_SIZE, align 8
  %19 = sub i64 %18, 4
  %20 = load %struct.i2400mu*, %struct.i2400mu** %2, align 8
  %21 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %20, i32 0, i32 2
  store i64 %19, i64* %21, align 8
  %22 = load %struct.i2400mu*, %struct.i2400mu** %2, align 8
  %23 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %22, i32 0, i32 1
  %24 = call i32 @atomic_set(i32* %23, i32 1)
  %25 = load %struct.i2400mu*, %struct.i2400mu** %2, align 8
  %26 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  ret void
}

declare dso_local i32 @i2400m_init(i32*) #1

declare dso_local i32 @edc_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
