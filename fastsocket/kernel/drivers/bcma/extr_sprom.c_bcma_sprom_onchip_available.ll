; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bcma/extr_sprom.c_bcma_sprom_onchip_available.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bcma/extr_sprom.c_bcma_sprom_onchip_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_bus = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@BCMA_CC_CHIPSTAT = common dso_local global i32 0, align 4
@BCMA_CC_CHIPST_4313_OTP_PRESENT = common dso_local global i32 0, align 4
@BCMA_CC_CHIPST_4331_OTP_PRESENT = common dso_local global i32 0, align 4
@BCMA_CC_CHIPST_43228_OTP_PRESENT = common dso_local global i32 0, align 4
@BCMA_CC_CAP_OTPS = common dso_local global i32 0, align 4
@BCMA_CC_CAP_OTPS_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcma_bus*)* @bcma_sprom_onchip_available to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcma_sprom_onchip_available(%struct.bcma_bus* %0) #0 {
  %2 = alloca %struct.bcma_bus*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bcma_bus* %0, %struct.bcma_bus** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.bcma_bus*, %struct.bcma_bus** %2, align 8
  %7 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @BCMA_CC_CHIPSTAT, align 4
  %11 = call i32 @bcma_read32(i32 %9, i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load %struct.bcma_bus*, %struct.bcma_bus** %2, align 8
  %13 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %29 [
    i32 134, label %16
    i32 129, label %20
    i32 133, label %24
    i32 132, label %24
    i32 131, label %25
    i32 130, label %25
    i32 128, label %25
  ]

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @BCMA_CC_CHIPST_4313_OTP_PRESENT, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %5, align 4
  br label %30

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @BCMA_CC_CHIPST_4331_OTP_PRESENT, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %5, align 4
  br label %30

24:                                               ; preds = %1, %1
  store i32 1, i32* %5, align 4
  br label %30

25:                                               ; preds = %1, %1, %1
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @BCMA_CC_CHIPST_43228_OTP_PRESENT, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %5, align 4
  br label %30

29:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %29, %25, %24, %20, %16
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %30
  %34 = load %struct.bcma_bus*, %struct.bcma_bus** %2, align 8
  %35 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @BCMA_CC_CAP_OTPS, align 4
  %39 = and i32 %37, %38
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* @BCMA_CC_CAP_OTPS_SHIFT, align 4
  %41 = load i32, i32* %4, align 4
  %42 = ashr i32 %41, %40
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %33, %30
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i32
  ret i32 %46
}

declare dso_local i32 @bcma_read32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
