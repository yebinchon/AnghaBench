; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_sentelic.c_fsp_onpad_hscr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_sentelic.c_fsp_onpad_hscr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { %struct.fsp_data* }
%struct.fsp_data = type { i32 }

@FSP_REG_ONPAD_CTL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@FSP_REG_SYSCTL5 = common dso_local global i32 0, align 4
@FSP_BIT_FIX_HSCR = common dso_local global i32 0, align 4
@FSP_BIT_ONPAD_ENABLE = common dso_local global i32 0, align 4
@FSP_BIT_EN_MSID6 = common dso_local global i32 0, align 4
@FSP_BIT_EN_MSID7 = common dso_local global i32 0, align 4
@FSP_BIT_EN_MSID8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*, i32)* @fsp_onpad_hscr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsp_onpad_hscr(%struct.psmouse* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.psmouse*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fsp_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %10 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %9, i32 0, i32 0
  %11 = load %struct.fsp_data*, %struct.fsp_data** %10, align 8
  store %struct.fsp_data* %11, %struct.fsp_data** %6, align 8
  %12 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %13 = load i32, i32* @FSP_REG_ONPAD_CTL, align 4
  %14 = call i64 @fsp_reg_read(%struct.psmouse* %12, i32 %13, i32* %7)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %74

19:                                               ; preds = %2
  %20 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %21 = load i32, i32* @FSP_REG_SYSCTL5, align 4
  %22 = call i64 @fsp_reg_read(%struct.psmouse* %20, i32 %21, i32* %8)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %74

27:                                               ; preds = %19
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.fsp_data*, %struct.fsp_data** %6, align 8
  %30 = getelementptr inbounds %struct.fsp_data, %struct.fsp_data* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %27
  %34 = load i32, i32* @FSP_BIT_FIX_HSCR, align 4
  %35 = load i32, i32* @FSP_BIT_ONPAD_ENABLE, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* %7, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* @FSP_BIT_EN_MSID6, align 4
  %40 = load i32, i32* %8, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %8, align 4
  br label %55

42:                                               ; preds = %27
  %43 = load i32, i32* @FSP_BIT_FIX_HSCR, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %7, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* @FSP_BIT_EN_MSID6, align 4
  %48 = load i32, i32* @FSP_BIT_EN_MSID7, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @FSP_BIT_EN_MSID8, align 4
  %51 = or i32 %49, %50
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %8, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %42, %33
  %56 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %57 = load i32, i32* @FSP_REG_ONPAD_CTL, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i64 @fsp_reg_write(%struct.psmouse* %56, i32 %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load i32, i32* @EIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %74

64:                                               ; preds = %55
  %65 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %66 = load i32, i32* @FSP_REG_SYSCTL5, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i64 @fsp_reg_write(%struct.psmouse* %65, i32 %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load i32, i32* @EIO, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %74

73:                                               ; preds = %64
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %73, %70, %61, %24, %16
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i64 @fsp_reg_read(%struct.psmouse*, i32, i32*) #1

declare dso_local i64 @fsp_reg_write(%struct.psmouse*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
