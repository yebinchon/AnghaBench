; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/85xx/extr_mpc85xx_mds.c_mpc8568_mds_phy_fixups.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/85xx/extr_mpc85xx_mds.c_mpc8568_mds_phy_fixups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @mpc8568_mds_phy_fixups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc8568_mds_phy_fixups(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %6 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %7 = call i32 @phy_write(%struct.phy_device* %6, i32 29, i32 6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %75

12:                                               ; preds = %1
  %13 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %14 = call i32 @phy_read(%struct.phy_device* %13, i32 30)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %75

19:                                               ; preds = %12
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, -32769
  %22 = or i32 %21, 16384
  store i32 %22, i32* %4, align 4
  %23 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @phy_write(%struct.phy_device* %23, i32 30, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %2, align 4
  br label %75

30:                                               ; preds = %19
  %31 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %32 = call i32 @phy_write(%struct.phy_device* %31, i32 29, i32 10)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %2, align 4
  br label %75

37:                                               ; preds = %30
  %38 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %39 = call i32 @phy_read(%struct.phy_device* %38, i32 30)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %75

44:                                               ; preds = %37
  %45 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %46 = call i32 @phy_read(%struct.phy_device* %45, i32 30)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* %2, align 4
  br label %75

51:                                               ; preds = %44
  %52 = load i32, i32* %4, align 4
  %53 = and i32 %52, -33
  store i32 %53, i32* %4, align 4
  %54 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @phy_write(%struct.phy_device* %54, i32 30, i32 %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i32, i32* %5, align 4
  store i32 %60, i32* %2, align 4
  br label %75

61:                                               ; preds = %51
  %62 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %63 = call i32 @phy_read(%struct.phy_device* %62, i32 16)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i32, i32* %4, align 4
  store i32 %67, i32* %2, align 4
  br label %75

68:                                               ; preds = %61
  %69 = load i32, i32* %4, align 4
  %70 = and i32 %69, -97
  store i32 %70, i32* %4, align 4
  %71 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @phy_write(%struct.phy_device* %71, i32 16, i32 %72)
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %68, %66, %59, %49, %42, %35, %28, %17, %10
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
