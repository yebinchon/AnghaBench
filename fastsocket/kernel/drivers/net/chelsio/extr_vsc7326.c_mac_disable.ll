; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_vsc7326.c_mac_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_vsc7326.c_mac_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmac = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MAC_DIRECTION_RX = common dso_local global i32 0, align 4
@MAC_DIRECTION_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmac*, i32)* @mac_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mac_disable(%struct.cmac* %0, i32 %1) #0 {
  %3 = alloca %struct.cmac*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cmac* %0, %struct.cmac** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.cmac*, %struct.cmac** %3, align 8
  %9 = getelementptr inbounds %struct.cmac, %struct.cmac* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = load %struct.cmac*, %struct.cmac** %3, align 8
  %14 = call i32 @mac_reset(%struct.cmac* %13)
  %15 = load %struct.cmac*, %struct.cmac** %3, align 8
  %16 = getelementptr inbounds %struct.cmac, %struct.cmac* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @REG_MODE_CFG(i32 %18)
  %20 = call i32 @vsc_read(i32 %17, i32 %19, i32* %5)
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @MAC_DIRECTION_RX, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %26, -3
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %25, %2
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @MAC_DIRECTION_TX, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* %5, align 4
  %35 = and i32 %34, -2
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %33, %28
  %37 = load %struct.cmac*, %struct.cmac** %3, align 8
  %38 = getelementptr inbounds %struct.cmac, %struct.cmac* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @REG_MODE_CFG(i32 %40)
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @vsc_write(i32 %39, i32 %41, i32 %42)
  %44 = load %struct.cmac*, %struct.cmac** %3, align 8
  %45 = getelementptr inbounds %struct.cmac, %struct.cmac* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @REG_MODE_CFG(i32 %47)
  %49 = call i32 @vsc_read(i32 %46, i32 %48, i32* %5)
  store i32 0, i32* %6, align 4
  br label %50

50:                                               ; preds = %61, %36
  %51 = load i32, i32* %6, align 4
  %52 = icmp sle i32 %51, 58
  br i1 %52, label %53, label %64

53:                                               ; preds = %50
  %54 = load %struct.cmac*, %struct.cmac** %3, align 8
  %55 = getelementptr inbounds %struct.cmac, %struct.cmac* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @CRA(i32 4, i32 %57, i32 %58)
  %60 = call i32 @vsc_write(i32 %56, i32 %59, i32 0)
  br label %61

61:                                               ; preds = %53
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %50

64:                                               ; preds = %50
  %65 = load %struct.cmac*, %struct.cmac** %3, align 8
  %66 = getelementptr inbounds %struct.cmac, %struct.cmac* %65, i32 0, i32 0
  %67 = call i32 @memset(i32* %66, i32 0, i32 4)
  ret i32 0
}

declare dso_local i32 @mac_reset(%struct.cmac*) #1

declare dso_local i32 @vsc_read(i32, i32, i32*) #1

declare dso_local i32 @REG_MODE_CFG(i32) #1

declare dso_local i32 @vsc_write(i32, i32, i32) #1

declare dso_local i32 @CRA(i32, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
