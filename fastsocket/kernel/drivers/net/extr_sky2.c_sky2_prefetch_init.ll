; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sky2.c_sky2_prefetch_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sky2.c_sky2_prefetch_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sky2_hw = type { i32 }

@PREF_UNIT_CTRL = common dso_local global i32 0, align 4
@PREF_UNIT_RST_SET = common dso_local global i32 0, align 4
@PREF_UNIT_RST_CLR = common dso_local global i32 0, align 4
@PREF_UNIT_ADDR_HI = common dso_local global i32 0, align 4
@PREF_UNIT_ADDR_LO = common dso_local global i32 0, align 4
@PREF_UNIT_LAST_IDX = common dso_local global i32 0, align 4
@PREF_UNIT_OP_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sky2_hw*, i32, i32, i32)* @sky2_prefetch_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sky2_prefetch_init(%struct.sky2_hw* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sky2_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sky2_hw* %0, %struct.sky2_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.sky2_hw*, %struct.sky2_hw** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @PREF_UNIT_CTRL, align 4
  %12 = call i32 @Y2_QADDR(i32 %10, i32 %11)
  %13 = load i32, i32* @PREF_UNIT_RST_SET, align 4
  %14 = call i32 @sky2_write32(%struct.sky2_hw* %9, i32 %12, i32 %13)
  %15 = load %struct.sky2_hw*, %struct.sky2_hw** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @PREF_UNIT_CTRL, align 4
  %18 = call i32 @Y2_QADDR(i32 %16, i32 %17)
  %19 = load i32, i32* @PREF_UNIT_RST_CLR, align 4
  %20 = call i32 @sky2_write32(%struct.sky2_hw* %15, i32 %18, i32 %19)
  %21 = load %struct.sky2_hw*, %struct.sky2_hw** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @PREF_UNIT_ADDR_HI, align 4
  %24 = call i32 @Y2_QADDR(i32 %22, i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @upper_32_bits(i32 %25)
  %27 = call i32 @sky2_write32(%struct.sky2_hw* %21, i32 %24, i32 %26)
  %28 = load %struct.sky2_hw*, %struct.sky2_hw** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @PREF_UNIT_ADDR_LO, align 4
  %31 = call i32 @Y2_QADDR(i32 %29, i32 %30)
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @lower_32_bits(i32 %32)
  %34 = call i32 @sky2_write32(%struct.sky2_hw* %28, i32 %31, i32 %33)
  %35 = load %struct.sky2_hw*, %struct.sky2_hw** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @PREF_UNIT_LAST_IDX, align 4
  %38 = call i32 @Y2_QADDR(i32 %36, i32 %37)
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @sky2_write16(%struct.sky2_hw* %35, i32 %38, i32 %39)
  %41 = load %struct.sky2_hw*, %struct.sky2_hw** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @PREF_UNIT_CTRL, align 4
  %44 = call i32 @Y2_QADDR(i32 %42, i32 %43)
  %45 = load i32, i32* @PREF_UNIT_OP_ON, align 4
  %46 = call i32 @sky2_write32(%struct.sky2_hw* %41, i32 %44, i32 %45)
  %47 = load %struct.sky2_hw*, %struct.sky2_hw** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @PREF_UNIT_CTRL, align 4
  %50 = call i32 @Y2_QADDR(i32 %48, i32 %49)
  %51 = call i32 @sky2_read32(%struct.sky2_hw* %47, i32 %50)
  ret void
}

declare dso_local i32 @sky2_write32(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @Y2_QADDR(i32, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @sky2_write16(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @sky2_read32(%struct.sky2_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
