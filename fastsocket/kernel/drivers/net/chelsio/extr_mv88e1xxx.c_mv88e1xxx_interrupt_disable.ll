; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_mv88e1xxx.c_mv88e1xxx_interrupt_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_mv88e1xxx.c_mv88e1xxx_interrupt_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cphy = type { i32 }

@MV88E1XXX_INTERRUPT_ENABLE_REGISTER = common dso_local global i32 0, align 4
@A_ELMER0_INT_ENABLE = common dso_local global i32 0, align 4
@ELMER0_GP_BIT1 = common dso_local global i32 0, align 4
@ELMER0_GP_BIT2 = common dso_local global i32 0, align 4
@ELMER0_GP_BIT3 = common dso_local global i32 0, align 4
@ELMER0_GP_BIT4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cphy*)* @mv88e1xxx_interrupt_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv88e1xxx_interrupt_disable(%struct.cphy* %0) #0 {
  %2 = alloca %struct.cphy*, align 8
  %3 = alloca i32, align 4
  store %struct.cphy* %0, %struct.cphy** %2, align 8
  %4 = load %struct.cphy*, %struct.cphy** %2, align 8
  %5 = load i32, i32* @MV88E1XXX_INTERRUPT_ENABLE_REGISTER, align 4
  %6 = call i32 @simple_mdio_write(%struct.cphy* %4, i32 %5, i32 0)
  %7 = load %struct.cphy*, %struct.cphy** %2, align 8
  %8 = getelementptr inbounds %struct.cphy, %struct.cphy* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @t1_is_asic(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %43

12:                                               ; preds = %1
  %13 = load %struct.cphy*, %struct.cphy** %2, align 8
  %14 = getelementptr inbounds %struct.cphy, %struct.cphy* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @A_ELMER0_INT_ENABLE, align 4
  %17 = call i32 @t1_tpi_read(i32 %15, i32 %16, i32* %3)
  %18 = load i32, i32* @ELMER0_GP_BIT1, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %3, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %3, align 4
  %22 = load %struct.cphy*, %struct.cphy** %2, align 8
  %23 = getelementptr inbounds %struct.cphy, %struct.cphy* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @is_T2(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %12
  %28 = load i32, i32* @ELMER0_GP_BIT2, align 4
  %29 = load i32, i32* @ELMER0_GP_BIT3, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @ELMER0_GP_BIT4, align 4
  %32 = or i32 %30, %31
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %3, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %27, %12
  %37 = load %struct.cphy*, %struct.cphy** %2, align 8
  %38 = getelementptr inbounds %struct.cphy, %struct.cphy* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @A_ELMER0_INT_ENABLE, align 4
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @t1_tpi_write(i32 %39, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %36, %1
  ret i32 0
}

declare dso_local i32 @simple_mdio_write(%struct.cphy*, i32, i32) #1

declare dso_local i64 @t1_is_asic(i32) #1

declare dso_local i32 @t1_tpi_read(i32, i32, i32*) #1

declare dso_local i64 @is_T2(i32) #1

declare dso_local i32 @t1_tpi_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
