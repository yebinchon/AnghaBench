; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_hw.c_nes_init_1g_phy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_hw.c_nes_init_1g_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nes_device*, i32, i32)* @nes_init_1g_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nes_init_1g_phy(%struct.nes_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nes_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nes_device* %0, %struct.nes_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @nes_read_1G_phy_reg(%struct.nes_device* %10, i32 1, i32 %11, i32* %8)
  %13 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @nes_write_1G_phy_reg(%struct.nes_device* %13, i32 23, i32 %14, i32 45056)
  %16 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @nes_write_1G_phy_reg(%struct.nes_device* %16, i32 0, i32 %17, i32 32768)
  %19 = call i32 @udelay(i32 100)
  store i64 0, i64* %7, align 8
  br label %20

20:                                               ; preds = %29, %3
  %21 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @nes_read_1G_phy_reg(%struct.nes_device* %21, i32 0, i32 %22, i32* %8)
  %24 = load i64, i64* %7, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* %7, align 8
  %26 = icmp sgt i64 %24, 100
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  store i32 -1, i32* %9, align 4
  br label %33

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %8, align 4
  %31 = and i32 %30, 32768
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %20, label %33

33:                                               ; preds = %29, %27
  %34 = load i32, i32* %8, align 4
  %35 = and i32 %34, 49151
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %36, 4416
  store i32 %37, i32* %8, align 4
  %38 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @nes_write_1G_phy_reg(%struct.nes_device* %38, i32 0, i32 %39, i32 %40)
  %42 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @nes_read_1G_phy_reg(%struct.nes_device* %42, i32 0, i32 %43, i32* %8)
  %45 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @nes_read_1G_phy_reg(%struct.nes_device* %45, i32 23, i32 %46, i32* %8)
  %48 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @nes_read_1G_phy_reg(%struct.nes_device* %48, i32 30, i32 %49, i32* %8)
  %51 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @nes_read_1G_phy_reg(%struct.nes_device* %51, i32 25, i32 %52, i32* %8)
  %54 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @nes_write_1G_phy_reg(%struct.nes_device* %54, i32 25, i32 %55, i32 65518)
  %57 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @nes_read_1G_phy_reg(%struct.nes_device* %57, i32 25, i32 %58, i32* %8)
  %60 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @nes_read_1G_phy_reg(%struct.nes_device* %60, i32 4, i32 %61, i32* %8)
  %63 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %8, align 4
  %66 = and i32 %65, -993
  %67 = or i32 %66, 3072
  %68 = call i32 @nes_write_1G_phy_reg(%struct.nes_device* %63, i32 4, i32 %64, i32 %67)
  %69 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @nes_read_1G_phy_reg(%struct.nes_device* %69, i32 4, i32 %70, i32* %8)
  %72 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @nes_read_1G_phy_reg(%struct.nes_device* %72, i32 9, i32 %73, i32* %8)
  %75 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* %8, align 4
  %78 = and i32 %77, -257
  %79 = call i32 @nes_write_1G_phy_reg(%struct.nes_device* %75, i32 9, i32 %76, i32 %78)
  %80 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @nes_read_1G_phy_reg(%struct.nes_device* %80, i32 9, i32 %81, i32* %8)
  %83 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @nes_read_1G_phy_reg(%struct.nes_device* %83, i32 0, i32 %84, i32* %8)
  %86 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* %8, align 4
  %89 = or i32 %88, 768
  %90 = call i32 @nes_write_1G_phy_reg(%struct.nes_device* %86, i32 0, i32 %87, i32 %89)
  %91 = load i32, i32* %9, align 4
  ret i32 %91
}

declare dso_local i32 @nes_read_1G_phy_reg(%struct.nes_device*, i32, i32, i32*) #1

declare dso_local i32 @nes_write_1G_phy_reg(%struct.nes_device*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
