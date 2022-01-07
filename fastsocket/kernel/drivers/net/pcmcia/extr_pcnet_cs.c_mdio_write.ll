; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_pcnet_cs.c_mdio_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_pcnet_cs.c_mdio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MDIO_MASK = common dso_local global i32 0, align 4
@MDIO_DATA_WRITE1 = common dso_local global i32 0, align 4
@MDIO_DATA_WRITE0 = common dso_local global i32 0, align 4
@MDIO_SHIFT_CLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32)* @mdio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mdio_write(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %6, align 4
  %14 = shl i32 %13, 23
  %15 = or i32 1342177280, %14
  %16 = load i32, i32* %7, align 4
  %17 = shl i32 %16, 18
  %18 = or i32 %15, %17
  %19 = or i32 %18, 131072
  %20 = load i32, i32* %8, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @inb(i32 %22)
  %24 = load i32, i32* @MDIO_MASK, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @mdio_sync(i32 %26)
  store i32 31, i32* %10, align 4
  br label %28

28:                                               ; preds = %55, %4
  %29 = load i32, i32* %10, align 4
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %58

31:                                               ; preds = %28
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = shl i32 1, %33
  %35 = and i32 %32, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @MDIO_DATA_WRITE1, align 4
  br label %41

39:                                               ; preds = %31
  %40 = load i32, i32* @MDIO_DATA_WRITE0, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %12, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @outb(i32 %45, i32 %46)
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %12, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @MDIO_SHIFT_CLK, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @outb(i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %41
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %10, align 4
  br label %28

58:                                               ; preds = %28
  store i32 1, i32* %10, align 4
  br label %59

59:                                               ; preds = %71, %58
  %60 = load i32, i32* %10, align 4
  %61 = icmp sge i32 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %59
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @outb(i32 %63, i32 %64)
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* @MDIO_SHIFT_CLK, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @outb(i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %62
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %10, align 4
  br label %59

74:                                               ; preds = %59
  ret void
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
