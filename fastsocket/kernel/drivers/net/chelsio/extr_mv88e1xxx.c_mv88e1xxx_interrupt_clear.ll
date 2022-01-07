; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_mv88e1xxx.c_mv88e1xxx_interrupt_clear.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_mv88e1xxx.c_mv88e1xxx_interrupt_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cphy = type { i32 }

@MV88E1XXX_INTERRUPT_STATUS_REGISTER = common dso_local global i32 0, align 4
@A_ELMER0_INT_CAUSE = common dso_local global i32 0, align 4
@ELMER0_GP_BIT1 = common dso_local global i32 0, align 4
@ELMER0_GP_BIT2 = common dso_local global i32 0, align 4
@ELMER0_GP_BIT3 = common dso_local global i32 0, align 4
@ELMER0_GP_BIT4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cphy*)* @mv88e1xxx_interrupt_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv88e1xxx_interrupt_clear(%struct.cphy* %0) #0 {
  %2 = alloca %struct.cphy*, align 8
  %3 = alloca i32, align 4
  store %struct.cphy* %0, %struct.cphy** %2, align 8
  %4 = load %struct.cphy*, %struct.cphy** %2, align 8
  %5 = load i32, i32* @MV88E1XXX_INTERRUPT_STATUS_REGISTER, align 4
  %6 = call i32 @simple_mdio_read(%struct.cphy* %4, i32 %5, i32* %3)
  %7 = load %struct.cphy*, %struct.cphy** %2, align 8
  %8 = getelementptr inbounds %struct.cphy, %struct.cphy* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @t1_is_asic(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %41

12:                                               ; preds = %1
  %13 = load %struct.cphy*, %struct.cphy** %2, align 8
  %14 = getelementptr inbounds %struct.cphy, %struct.cphy* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @A_ELMER0_INT_CAUSE, align 4
  %17 = call i32 @t1_tpi_read(i32 %15, i32 %16, i32* %3)
  %18 = load i32, i32* @ELMER0_GP_BIT1, align 4
  %19 = load i32, i32* %3, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %3, align 4
  %21 = load %struct.cphy*, %struct.cphy** %2, align 8
  %22 = getelementptr inbounds %struct.cphy, %struct.cphy* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @is_T2(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %12
  %27 = load i32, i32* @ELMER0_GP_BIT2, align 4
  %28 = load i32, i32* @ELMER0_GP_BIT3, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @ELMER0_GP_BIT4, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* %3, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %26, %12
  %35 = load %struct.cphy*, %struct.cphy** %2, align 8
  %36 = getelementptr inbounds %struct.cphy, %struct.cphy* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @A_ELMER0_INT_CAUSE, align 4
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @t1_tpi_write(i32 %37, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %34, %1
  ret i32 0
}

declare dso_local i32 @simple_mdio_read(%struct.cphy*, i32, i32*) #1

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
