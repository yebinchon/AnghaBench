; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tokenring/extr_madgemc.c_madgemc_sifreadb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tokenring/extr_madgemc.c_madgemc_sifreadb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.net_device*, i16)* @madgemc_sifreadb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @madgemc_sifreadb(%struct.net_device* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i16 %1, i16* %4, align 2
  %6 = load i16, i16* %4, align 2
  %7 = zext i16 %6 to i32
  %8 = icmp slt i32 %7, 8
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i16, i16* %4, align 2
  %11 = call zeroext i16 @SIFREADB(i16 zeroext %10)
  store i16 %11, i16* %5, align 2
  br label %19

12:                                               ; preds = %2
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = call i32 @madgemc_setregpage(%struct.net_device* %13, i32 1)
  %15 = load i16, i16* %4, align 2
  %16 = call zeroext i16 @SIFREADB(i16 zeroext %15)
  store i16 %16, i16* %5, align 2
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = call i32 @madgemc_setregpage(%struct.net_device* %17, i32 0)
  br label %19

19:                                               ; preds = %12, %9
  %20 = load i16, i16* %5, align 2
  ret i16 %20
}

declare dso_local zeroext i16 @SIFREADB(i16 zeroext) #1

declare dso_local i32 @madgemc_setregpage(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
