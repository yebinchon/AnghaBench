; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ibmlana.c_ResetBoard.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ibmlana.c_ResetBoard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }

@BCMREG = common dso_local global i64 0, align 8
@BCMREG_RESET = common dso_local global i8 0, align 1
@BCMREG_RAMEN = common dso_local global i8 0, align 1
@BCMREG_RAMWIN = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ResetBoard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ResetBoard(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i8, align 1
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = getelementptr inbounds %struct.net_device, %struct.net_device* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @BCMREG, align 8
  %8 = add nsw i64 %6, %7
  %9 = call zeroext i8 @inb(i64 %8)
  store i8 %9, i8* %3, align 1
  %10 = load i8, i8* @BCMREG_RESET, align 1
  %11 = zext i8 %10 to i32
  %12 = load i8, i8* %3, align 1
  %13 = zext i8 %12 to i32
  %14 = or i32 %13, %11
  %15 = trunc i32 %14 to i8
  store i8 %15, i8* %3, align 1
  %16 = load i8, i8* %3, align 1
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @BCMREG, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @outb(i8 zeroext %16, i64 %21)
  %23 = call i32 @udelay(i32 10)
  %24 = load i8, i8* @BCMREG_RESET, align 1
  %25 = zext i8 %24 to i32
  %26 = xor i32 %25, -1
  %27 = load i8, i8* %3, align 1
  %28 = zext i8 %27 to i32
  %29 = and i32 %28, %26
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* %3, align 1
  %31 = load i8, i8* %3, align 1
  %32 = load %struct.net_device*, %struct.net_device** %2, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @BCMREG, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @outb(i8 zeroext %31, i64 %36)
  %38 = load i8, i8* @BCMREG_RAMEN, align 1
  %39 = zext i8 %38 to i32
  %40 = load i8, i8* @BCMREG_RAMWIN, align 1
  %41 = zext i8 %40 to i32
  %42 = or i32 %39, %41
  %43 = load i8, i8* %3, align 1
  %44 = zext i8 %43 to i32
  %45 = or i32 %44, %42
  %46 = trunc i32 %45 to i8
  store i8 %46, i8* %3, align 1
  %47 = load i8, i8* %3, align 1
  %48 = load %struct.net_device*, %struct.net_device** %2, align 8
  %49 = getelementptr inbounds %struct.net_device, %struct.net_device* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @BCMREG, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @outb(i8 zeroext %47, i64 %52)
  ret void
}

declare dso_local zeroext i8 @inb(i64) #1

declare dso_local i32 @outb(i8 zeroext, i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
