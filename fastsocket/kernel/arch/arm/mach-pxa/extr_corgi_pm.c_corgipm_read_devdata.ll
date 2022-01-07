; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_corgi_pm.c_corgipm_read_devdata.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_corgi_pm.c_corgipm_read_devdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32 }

@CORGI_GPIO_AC_IN = common dso_local global i32 0, align 4
@sharpsl_pm = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@MAX1111_ACIN_VOLT = common dso_local global i32 0, align 4
@MAX1111_BATT_TEMP = common dso_local global i32 0, align 4
@MAX1111_BATT_VOLT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @corgipm_read_devdata(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %36 [
    i32 131, label %5
    i32 128, label %14
    i32 130, label %19
    i32 129, label %24
    i32 134, label %29
    i32 133, label %32
    i32 132, label %35
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @CORGI_GPIO_AC_IN, align 4
  %7 = call i32 @GPLR(i32 %6)
  %8 = load i32, i32* @CORGI_GPIO_AC_IN, align 4
  %9 = call i32 @GPIO_bit(i32 %8)
  %10 = and i32 %7, %9
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %2, align 8
  br label %39

14:                                               ; preds = %1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sharpsl_pm, i32 0, i32 0), align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @READ_GPIO_BIT(i32 %17)
  store i64 %18, i64* %2, align 8
  br label %39

19:                                               ; preds = %1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sharpsl_pm, i32 0, i32 0), align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @READ_GPIO_BIT(i32 %22)
  store i64 %23, i64* %2, align 8
  br label %39

24:                                               ; preds = %1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sharpsl_pm, i32 0, i32 0), align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @READ_GPIO_BIT(i32 %27)
  store i64 %28, i64* %2, align 8
  br label %39

29:                                               ; preds = %1
  %30 = load i32, i32* @MAX1111_ACIN_VOLT, align 4
  %31 = call i64 @sharpsl_pm_pxa_read_max1111(i32 %30)
  store i64 %31, i64* %2, align 8
  br label %39

32:                                               ; preds = %1
  %33 = load i32, i32* @MAX1111_BATT_TEMP, align 4
  %34 = call i64 @sharpsl_pm_pxa_read_max1111(i32 %33)
  store i64 %34, i64* %2, align 8
  br label %39

35:                                               ; preds = %1
  br label %36

36:                                               ; preds = %1, %35
  %37 = load i32, i32* @MAX1111_BATT_VOLT, align 4
  %38 = call i64 @sharpsl_pm_pxa_read_max1111(i32 %37)
  store i64 %38, i64* %2, align 8
  br label %39

39:                                               ; preds = %36, %32, %29, %24, %19, %14, %5
  %40 = load i64, i64* %2, align 8
  ret i64 %40
}

declare dso_local i32 @GPLR(i32) #1

declare dso_local i32 @GPIO_bit(i32) #1

declare dso_local i64 @READ_GPIO_BIT(i32) #1

declare dso_local i64 @sharpsl_pm_pxa_read_max1111(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
