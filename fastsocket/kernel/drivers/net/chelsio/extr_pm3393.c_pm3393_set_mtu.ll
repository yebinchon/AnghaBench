; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_pm3393.c_pm3393_set_mtu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_pm3393.c_pm3393_set_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmac = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MAX_FRAME_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MAC_DIRECTION_RX = common dso_local global i32 0, align 4
@MAC_DIRECTION_TX = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_RXXG_MAX_FRAME_LENGTH = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_TXXG_MAX_FRAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmac*, i32)* @pm3393_set_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm3393_set_mtu(%struct.cmac* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cmac*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cmac* %0, %struct.cmac** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.cmac*, %struct.cmac** %4, align 8
  %8 = getelementptr inbounds %struct.cmac, %struct.cmac* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = add nsw i32 %12, 18
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @MAX_FRAME_SIZE, align 4
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %45

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load %struct.cmac*, %struct.cmac** %4, align 8
  %25 = load i32, i32* @MAC_DIRECTION_RX, align 4
  %26 = load i32, i32* @MAC_DIRECTION_TX, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @pm3393_disable(%struct.cmac* %24, i32 %27)
  br label %29

29:                                               ; preds = %23, %20
  %30 = load %struct.cmac*, %struct.cmac** %4, align 8
  %31 = load i32, i32* @SUNI1x10GEXP_REG_RXXG_MAX_FRAME_LENGTH, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @pmwrite(%struct.cmac* %30, i32 %31, i32 %32)
  %34 = load %struct.cmac*, %struct.cmac** %4, align 8
  %35 = load i32, i32* @SUNI1x10GEXP_REG_TXXG_MAX_FRAME_SIZE, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @pmwrite(%struct.cmac* %34, i32 %35, i32 %36)
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %29
  %41 = load %struct.cmac*, %struct.cmac** %4, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @pm3393_enable(%struct.cmac* %41, i32 %42)
  br label %44

44:                                               ; preds = %40, %29
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %17
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @pm3393_disable(%struct.cmac*, i32) #1

declare dso_local i32 @pmwrite(%struct.cmac*, i32, i32) #1

declare dso_local i32 @pm3393_enable(%struct.cmac*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
