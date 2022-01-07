; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_pm3393.c_pm3393_set_speed_duplex_fc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_pm3393.c_pm3393_set_speed_duplex_fc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmac = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@SPEED_10000 = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@PAUSE_TX = common dso_local global i32 0, align 4
@PAUSE_RX = common dso_local global i32 0, align 4
@MAC_DIRECTION_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmac*, i32, i32, i32)* @pm3393_set_speed_duplex_fc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm3393_set_speed_duplex_fc(%struct.cmac* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cmac*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cmac* %0, %struct.cmac** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @SPEED_10000, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 -1, i32* %5, align 4
  br label %62

17:                                               ; preds = %12, %4
  %18 = load i32, i32* %8, align 4
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @DUPLEX_FULL, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 -1, i32* %5, align 4
  br label %62

25:                                               ; preds = %20, %17
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @PAUSE_TX, align 4
  %28 = load i32, i32* @PAUSE_RX, align 4
  %29 = or i32 %27, %28
  %30 = xor i32 %29, -1
  %31 = and i32 %26, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store i32 -1, i32* %5, align 4
  br label %62

34:                                               ; preds = %25
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.cmac*, %struct.cmac** %6, align 8
  %37 = getelementptr inbounds %struct.cmac, %struct.cmac* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %35, %40
  br i1 %41, label %42, label %61

42:                                               ; preds = %34
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.cmac*, %struct.cmac** %6, align 8
  %45 = getelementptr inbounds %struct.cmac, %struct.cmac* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32 %43, i32* %47, align 4
  %48 = load %struct.cmac*, %struct.cmac** %6, align 8
  %49 = getelementptr inbounds %struct.cmac, %struct.cmac* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @MAC_DIRECTION_TX, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %42
  %57 = load %struct.cmac*, %struct.cmac** %6, align 8
  %58 = load i32, i32* @MAC_DIRECTION_TX, align 4
  %59 = call i32 @pm3393_enable(%struct.cmac* %57, i32 %58)
  br label %60

60:                                               ; preds = %56, %42
  br label %61

61:                                               ; preds = %60, %34
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %61, %33, %24, %16
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @pm3393_enable(%struct.cmac*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
