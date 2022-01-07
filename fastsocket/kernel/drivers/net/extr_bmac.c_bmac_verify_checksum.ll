; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bmac.c_bmac_verify_checksum.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bmac.c_bmac_verify_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@SROMAddressBits = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @bmac_verify_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmac_verify_checksum(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call i32 @reset_and_select_srom(%struct.net_device* %5)
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = load i32, i32* @SROMAddressBits, align 4
  %9 = call zeroext i16 @read_srom(%struct.net_device* %7, i32 3, i32 %8)
  store i16 %9, i16* %3, align 2
  %10 = load i16, i16* %3, align 2
  %11 = zext i16 %10 to i32
  %12 = ashr i32 %11, 8
  %13 = and i32 %12, 255
  %14 = load i16, i16* %3, align 2
  %15 = zext i16 %14 to i32
  %16 = shl i32 %15, 8
  %17 = and i32 %16, 65280
  %18 = or i32 %13, %17
  %19 = trunc i32 %18 to i16
  store i16 %19, i16* %4, align 2
  ret i32 0
}

declare dso_local i32 @reset_and_select_srom(%struct.net_device*) #1

declare dso_local zeroext i16 @read_srom(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
