; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cassini.c_cas_phy_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cassini.c_cas_phy_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cas = type { i32, i64 }

@STOP_TRIES_PHY = common dso_local global i32 0, align 4
@MIF_FRAME_ST = common dso_local global i32 0, align 4
@MIF_FRAME_OP_WRITE = common dso_local global i32 0, align 4
@MIF_FRAME_PHY_ADDR = common dso_local global i32 0, align 4
@MIF_FRAME_REG_ADDR = common dso_local global i32 0, align 4
@MIF_FRAME_TURN_AROUND_MSB = common dso_local global i32 0, align 4
@MIF_FRAME_DATA_MASK = common dso_local global i32 0, align 4
@REG_MIF_FRAME = common dso_local global i64 0, align 8
@MIF_FRAME_TURN_AROUND_LSB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cas*, i32, i32)* @cas_phy_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cas_phy_write(%struct.cas* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cas*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cas* %0, %struct.cas** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @STOP_TRIES_PHY, align 4
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* @MIF_FRAME_ST, align 4
  %12 = load i32, i32* @MIF_FRAME_OP_WRITE, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* @MIF_FRAME_PHY_ADDR, align 4
  %15 = load %struct.cas*, %struct.cas** %5, align 8
  %16 = getelementptr inbounds %struct.cas, %struct.cas* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @CAS_BASE(i32 %14, i32 %17)
  %19 = load i32, i32* %9, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* @MIF_FRAME_REG_ADDR, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @CAS_BASE(i32 %21, i32 %22)
  %24 = load i32, i32* %9, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* @MIF_FRAME_TURN_AROUND_MSB, align 4
  %27 = load i32, i32* %9, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @MIF_FRAME_DATA_MASK, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* %9, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.cas*, %struct.cas** %5, align 8
  %36 = getelementptr inbounds %struct.cas, %struct.cas* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @REG_MIF_FRAME, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @writel(i32 %34, i64 %39)
  br label %41

41:                                               ; preds = %58, %3
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %8, align 4
  %44 = icmp sgt i32 %42, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %41
  %46 = call i32 @udelay(i32 10)
  %47 = load %struct.cas*, %struct.cas** %5, align 8
  %48 = getelementptr inbounds %struct.cas, %struct.cas* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @REG_MIF_FRAME, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @readl(i64 %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @MIF_FRAME_TURN_AROUND_LSB, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %60

58:                                               ; preds = %45
  br label %41

59:                                               ; preds = %41
  store i32 -1, i32* %4, align 4
  br label %60

60:                                               ; preds = %59, %57
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @CAS_BASE(i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
