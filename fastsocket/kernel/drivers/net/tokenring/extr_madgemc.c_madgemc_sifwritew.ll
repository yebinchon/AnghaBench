; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tokenring/extr_madgemc.c_madgemc_sifwritew.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tokenring/extr_madgemc.c_madgemc_sifwritew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i16, i16)* @madgemc_sifwritew to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @madgemc_sifwritew(%struct.net_device* %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i16 %1, i16* %5, align 2
  store i16 %2, i16* %6, align 2
  %7 = load i16, i16* %6, align 2
  %8 = zext i16 %7 to i32
  %9 = icmp slt i32 %8, 8
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load i16, i16* %5, align 2
  %12 = load i16, i16* %6, align 2
  %13 = call i32 @SIFWRITEW(i16 zeroext %11, i16 zeroext %12)
  br label %22

14:                                               ; preds = %3
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = call i32 @madgemc_setregpage(%struct.net_device* %15, i32 1)
  %17 = load i16, i16* %5, align 2
  %18 = load i16, i16* %6, align 2
  %19 = call i32 @SIFWRITEW(i16 zeroext %17, i16 zeroext %18)
  %20 = load %struct.net_device*, %struct.net_device** %4, align 8
  %21 = call i32 @madgemc_setregpage(%struct.net_device* %20, i32 0)
  br label %22

22:                                               ; preds = %14, %10
  ret void
}

declare dso_local i32 @SIFWRITEW(i16 zeroext, i16 zeroext) #1

declare dso_local i32 @madgemc_setregpage(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
