; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_ael1002.c_ael2020_setup_sr_edc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_ael1002.c_ael2020_setup_sr_edc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reg_val = type { i32, i32, i32, i32 }
%struct.cphy = type { i32 }

@ael2020_setup_sr_edc.regs = internal constant [5 x %struct.reg_val] [%struct.reg_val { i32 128, i32 52225, i32 65535, i32 18570 }, %struct.reg_val { i32 128, i32 51995, i32 65535, i32 512 }, %struct.reg_val { i32 128, i32 51996, i32 65535, i32 240 }, %struct.reg_val { i32 128, i32 52230, i32 65535, i32 224 }, %struct.reg_val zeroinitializer], align 16
@edc_sr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cphy*)* @ael2020_setup_sr_edc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ael2020_setup_sr_edc(%struct.cphy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cphy*, align 8
  %4 = alloca i32, align 4
  store %struct.cphy* %0, %struct.cphy** %3, align 8
  %5 = load %struct.cphy*, %struct.cphy** %3, align 8
  %6 = call i32 @set_phy_regs(%struct.cphy* %5, %struct.reg_val* getelementptr inbounds ([5 x %struct.reg_val], [5 x %struct.reg_val]* @ael2020_setup_sr_edc.regs, i64 0, i64 0))
  store i32 %6, i32* %4, align 4
  %7 = call i32 @msleep(i32 50)
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %16

12:                                               ; preds = %1
  %13 = load i32, i32* @edc_sr, align 4
  %14 = load %struct.cphy*, %struct.cphy** %3, align 8
  %15 = getelementptr inbounds %struct.cphy, %struct.cphy* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  store i32 0, i32* %2, align 4
  br label %16

16:                                               ; preds = %12, %10
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

declare dso_local i32 @set_phy_regs(%struct.cphy*, %struct.reg_val*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
