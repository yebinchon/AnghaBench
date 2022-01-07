; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_chip.c_set_mandatory_rates.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_chip.c_set_mandatory_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_chip = type { i32 }

@CR_RATE_1M = common dso_local global i32 0, align 4
@CR_RATE_2M = common dso_local global i32 0, align 4
@CR_RATE_5_5M = common dso_local global i32 0, align 4
@CR_RATE_11M = common dso_local global i32 0, align 4
@CR_RATE_6M = common dso_local global i32 0, align 4
@CR_RATE_12M = common dso_local global i32 0, align 4
@CR_RATE_24M = common dso_local global i32 0, align 4
@CR_MANDATORY_RATE_TBL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zd_chip*, i32)* @set_mandatory_rates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_mandatory_rates(%struct.zd_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.zd_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.zd_chip* %0, %struct.zd_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.zd_chip*, %struct.zd_chip** %3, align 8
  %7 = getelementptr inbounds %struct.zd_chip, %struct.zd_chip* %6, i32 0, i32 0
  %8 = call i32 @mutex_is_locked(i32* %7)
  %9 = call i32 @ZD_ASSERT(i32 %8)
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @CR_RATE_1M, align 4
  %14 = load i32, i32* @CR_RATE_2M, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @CR_RATE_5_5M, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @CR_RATE_11M, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %5, align 4
  br label %34

20:                                               ; preds = %2
  %21 = load i32, i32* @CR_RATE_1M, align 4
  %22 = load i32, i32* @CR_RATE_2M, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @CR_RATE_5_5M, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @CR_RATE_11M, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @CR_RATE_6M, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @CR_RATE_12M, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @CR_RATE_24M, align 4
  %33 = or i32 %31, %32
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %20, %12
  %35 = load %struct.zd_chip*, %struct.zd_chip** %3, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @CR_MANDATORY_RATE_TBL, align 4
  %38 = call i32 @zd_iowrite32_locked(%struct.zd_chip* %35, i32 %36, i32 %37)
  ret i32 %38
}

declare dso_local i32 @ZD_ASSERT(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i32 @zd_iowrite32_locked(%struct.zd_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
