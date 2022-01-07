; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_pcnet_cs.c_mdio_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_pcnet_cs.c_mdio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MDIO_MASK = common dso_local global i32 0, align 4
@MDIO_DATA_WRITE1 = common dso_local global i32 0, align 4
@MDIO_DATA_WRITE0 = common dso_local global i32 0, align 4
@MDIO_SHIFT_CLK = common dso_local global i32 0, align 4
@MDIO_DATA_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @mdio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdio_read(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = shl i32 %12, 5
  %14 = or i32 6144, %13
  %15 = load i32, i32* %6, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @inb(i32 %17)
  %19 = load i32, i32* @MDIO_MASK, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @mdio_sync(i32 %21)
  store i32 13, i32* %8, align 4
  br label %23

23:                                               ; preds = %50, %3
  %24 = load i32, i32* %8, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %53

26:                                               ; preds = %23
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = shl i32 1, %28
  %30 = and i32 %27, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @MDIO_DATA_WRITE1, align 4
  br label %36

34:                                               ; preds = %26
  %35 = load i32, i32* @MDIO_DATA_WRITE0, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %11, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @outb(i32 %40, i32 %41)
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %11, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @MDIO_SHIFT_CLK, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @outb(i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %36
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %8, align 4
  br label %23

53:                                               ; preds = %23
  store i32 19, i32* %8, align 4
  br label %54

54:                                               ; preds = %75, %53
  %55 = load i32, i32* %8, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %78

57:                                               ; preds = %54
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @outb(i32 %58, i32 %59)
  %61 = load i32, i32* %9, align 4
  %62 = shl i32 %61, 1
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @inb(i32 %63)
  %65 = load i32, i32* @MDIO_DATA_READ, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i32
  %69 = or i32 %62, %68
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @MDIO_SHIFT_CLK, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @outb(i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %57
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %8, align 4
  br label %54

78:                                               ; preds = %54
  %79 = load i32, i32* %9, align 4
  %80 = ashr i32 %79, 1
  %81 = and i32 %80, 65535
  ret i32 %81
}

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @mdio_sync(i32) #1

declare dso_local i32 @outb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
