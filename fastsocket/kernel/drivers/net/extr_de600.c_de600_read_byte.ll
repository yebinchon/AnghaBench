; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_de600.c_de600_read_byte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_de600.c_de600_read_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@DATA_PORT = common dso_local global i32 0, align 4
@STATUS_PORT = common dso_local global i32 0, align 4
@HI_NIBBLE = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i8, %struct.net_device*)* @de600_read_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @de600_read_byte(i8 zeroext %0, %struct.net_device* %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %6 = load i8, i8* %3, align 1
  %7 = load i32, i32* @DATA_PORT, align 4
  %8 = call i32 @outb_p(i8 zeroext %6, i32 %7)
  %9 = load i32, i32* @STATUS_PORT, align 4
  %10 = call i64 @inb(i32 %9)
  %11 = trunc i64 %10 to i8
  %12 = zext i8 %11 to i32
  %13 = ashr i32 %12, 4
  %14 = trunc i32 %13 to i8
  store i8 %14, i8* %5, align 1
  %15 = load i8, i8* %3, align 1
  %16 = zext i8 %15 to i32
  %17 = load i8, i8* @HI_NIBBLE, align 1
  %18 = zext i8 %17 to i32
  %19 = or i32 %16, %18
  %20 = trunc i32 %19 to i8
  %21 = load i32, i32* @DATA_PORT, align 4
  %22 = call i32 @outb_p(i8 zeroext %20, i32 %21)
  %23 = load i32, i32* @STATUS_PORT, align 4
  %24 = call i64 @inb(i32 %23)
  %25 = trunc i64 %24 to i8
  %26 = zext i8 %25 to i32
  %27 = and i32 %26, 240
  %28 = load i8, i8* %5, align 1
  %29 = zext i8 %28 to i32
  %30 = or i32 %27, %29
  %31 = trunc i32 %30 to i8
  ret i8 %31
}

declare dso_local i32 @outb_p(i8 zeroext, i32) #1

declare dso_local i64 @inb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
