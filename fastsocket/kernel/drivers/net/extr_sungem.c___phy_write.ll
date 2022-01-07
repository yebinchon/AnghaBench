; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sungem.c___phy_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sungem.c___phy_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gem = type { i64 }

@MIF_FRAME_PHYAD = common dso_local global i32 0, align 4
@MIF_FRAME_REGAD = common dso_local global i32 0, align 4
@MIF_FRAME_TAMSB = common dso_local global i32 0, align 4
@MIF_FRAME_DATA = common dso_local global i32 0, align 4
@MIF_FRAME = common dso_local global i64 0, align 8
@MIF_FRAME_TALSB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gem*, i32, i32, i32)* @__phy_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__phy_write(%struct.gem* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.gem*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gem* %0, %struct.gem** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 10000, i32* %10, align 4
  store i32 1073741824, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = or i32 %11, 268435456
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %6, align 4
  %14 = shl i32 %13, 23
  %15 = load i32, i32* @MIF_FRAME_PHYAD, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* %9, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %7, align 4
  %20 = shl i32 %19, 18
  %21 = load i32, i32* @MIF_FRAME_REGAD, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* %9, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* @MIF_FRAME_TAMSB, align 4
  %26 = load i32, i32* %9, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @MIF_FRAME_DATA, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* %9, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.gem*, %struct.gem** %5, align 8
  %35 = getelementptr inbounds %struct.gem, %struct.gem* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @MIF_FRAME, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @writel(i32 %33, i64 %38)
  br label %40

40:                                               ; preds = %56, %4
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %10, align 4
  %43 = icmp ne i32 %41, 0
  br i1 %43, label %44, label %58

44:                                               ; preds = %40
  %45 = load %struct.gem*, %struct.gem** %5, align 8
  %46 = getelementptr inbounds %struct.gem, %struct.gem* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @MIF_FRAME, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @readl(i64 %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @MIF_FRAME_TALSB, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %44
  br label %58

56:                                               ; preds = %44
  %57 = call i32 @udelay(i32 10)
  br label %40

58:                                               ; preds = %55, %40
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
