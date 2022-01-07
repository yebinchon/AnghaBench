; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_pm3393.c_pm3393_mac_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_pm3393.c_pm3393_mac_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@A_ELMER0_GPO = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_DEVICE_STATUS = common dso_local global i32 0, align 4
@SUNI1x10GEXP_BITMSK_TOP_EXPIRED = common dso_local global i32 0, align 4
@SUNI1x10GEXP_BITMSK_TOP_PL4_ID_DOOL = common dso_local global i32 0, align 4
@SUNI1x10GEXP_BITMSK_TOP_PL4_ID_ROOL = common dso_local global i32 0, align 4
@SUNI1x10GEXP_BITMSK_TOP_PL4_IS_ROOL = common dso_local global i32 0, align 4
@SUNI1x10GEXP_BITMSK_TOP_PL4_OUT_ROOL = common dso_local global i32 0, align 4
@SUNI1x10GEXP_BITMSK_TOP_SXRA_EXPIRED = common dso_local global i32 0, align 4
@HW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [88 x i8] c"PM3393 HW reset %d: pl4_reset 0x%x, val 0x%x, is_pl4_outof_lock 0x%x, xaui_locked 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @pm3393_mac_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm3393_mac_reset(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %79, %1
  %11 = load i32, i32* %9, align 4
  %12 = icmp slt i32 %11, 3
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  br label %17

17:                                               ; preds = %13, %10
  %18 = phi i1 [ false, %10 ], [ %16, %13 ]
  br i1 %18, label %19, label %82

19:                                               ; preds = %17
  %20 = load i32*, i32** %2, align 8
  %21 = load i32, i32* @A_ELMER0_GPO, align 4
  %22 = call i32 @t1_tpi_read(i32* %20, i32 %21, i32* %3)
  %23 = load i32, i32* %3, align 4
  %24 = and i32 %23, -2
  store i32 %24, i32* %3, align 4
  %25 = load i32*, i32** %2, align 8
  %26 = load i32, i32* @A_ELMER0_GPO, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @t1_tpi_write(i32* %25, i32 %26, i32 %27)
  %29 = call i32 @msleep(i32 1)
  %30 = call i32 @msleep(i32 1)
  %31 = call i32 @msleep(i32 2)
  %32 = load i32, i32* %3, align 4
  %33 = or i32 %32, 1
  store i32 %33, i32* %3, align 4
  %34 = load i32*, i32** %2, align 8
  %35 = load i32, i32* @A_ELMER0_GPO, align 4
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @t1_tpi_write(i32* %34, i32 %35, i32 %36)
  %38 = call i32 @msleep(i32 15)
  %39 = call i32 @msleep(i32 1)
  %40 = load i32*, i32** %2, align 8
  %41 = load i32, i32* @SUNI1x10GEXP_REG_DEVICE_STATUS, align 4
  %42 = call i32 @OFFSET(i32 %41)
  %43 = call i32 @t1_tpi_read(i32* %40, i32 %42, i32* %3)
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @SUNI1x10GEXP_BITMSK_TOP_EXPIRED, align 4
  %46 = and i32 %44, %45
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* @SUNI1x10GEXP_BITMSK_TOP_PL4_ID_DOOL, align 4
  %48 = load i32, i32* @SUNI1x10GEXP_BITMSK_TOP_PL4_ID_ROOL, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @SUNI1x10GEXP_BITMSK_TOP_PL4_IS_ROOL, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @SUNI1x10GEXP_BITMSK_TOP_PL4_OUT_ROOL, align 4
  %53 = or i32 %51, %52
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* %4, align 4
  %56 = and i32 %54, %55
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @SUNI1x10GEXP_BITMSK_TOP_SXRA_EXPIRED, align 4
  %59 = and i32 %57, %58
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %19
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br label %68

68:                                               ; preds = %65, %62, %19
  %69 = phi i1 [ false, %62 ], [ false, %19 ], [ %67, %65 ]
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %8, align 4
  %71 = load i32*, i32** %2, align 8
  %72 = load i32, i32* @HW, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @CH_DBG(i32* %71, i32 %72, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %74, i32 %75, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %68
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %9, align 4
  br label %10

82:                                               ; preds = %17
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i32 0, i32 1
  ret i32 %86
}

declare dso_local i32 @t1_tpi_read(i32*, i32, i32*) #1

declare dso_local i32 @t1_tpi_write(i32*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @OFFSET(i32) #1

declare dso_local i32 @CH_DBG(i32*, i32, i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
