; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_smc91c92_cs.c_mdio_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_smc91c92_cs.c_mdio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@MGMT = common dso_local global i32 0, align 4
@MDIO_DATA_WRITE1 = common dso_local global i32 0, align 4
@MDIO_DATA_WRITE0 = common dso_local global i32 0, align 4
@MDIO_SHIFT_CLK = common dso_local global i32 0, align 4
@MDIO_DATA_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32)* @mdio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdio_read(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @MGMT, align 4
  %16 = add i32 %14, %15
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %5, align 4
  %18 = shl i32 %17, 5
  %19 = or i32 6144, %18
  %20 = load i32, i32* %6, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @mdio_sync(i32 %22)
  store i32 13, i32* %9, align 4
  br label %24

24:                                               ; preds = %47, %3
  %25 = load i32, i32* %9, align 4
  %26 = icmp sge i32 %25, 0
  br i1 %26, label %27, label %50

27:                                               ; preds = %24
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = shl i32 1, %29
  %31 = and i32 %28, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @MDIO_DATA_WRITE1, align 4
  br label %37

35:                                               ; preds = %27
  %36 = load i32, i32* @MDIO_DATA_WRITE0, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @outb(i32 %39, i32 %40)
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @MDIO_SHIFT_CLK, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @outb(i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %37
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %9, align 4
  br label %24

50:                                               ; preds = %24
  store i32 19, i32* %9, align 4
  br label %51

51:                                               ; preds = %69, %50
  %52 = load i32, i32* %9, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %72

54:                                               ; preds = %51
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @outb(i32 0, i32 %55)
  %57 = load i32, i32* %10, align 4
  %58 = shl i32 %57, 1
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @inb(i32 %59)
  %61 = load i32, i32* @MDIO_DATA_READ, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i32
  %65 = or i32 %58, %64
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* @MDIO_SHIFT_CLK, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @outb(i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %54
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %9, align 4
  br label %51

72:                                               ; preds = %51
  %73 = load i32, i32* %10, align 4
  %74 = ashr i32 %73, 1
  %75 = and i32 %74, 65535
  ret i32 %75
}

declare dso_local i32 @mdio_sync(i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @inb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
