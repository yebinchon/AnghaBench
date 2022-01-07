; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_hwmtm.c_mac_drv_rx_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_hwmtm.c_mac_drv_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8*, i8*, i8* }

@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mac_drv_rx_mode(%struct.s_smc* %0, i32 %1) #0 {
  %3 = alloca %struct.s_smc*, align 8
  %4 = alloca i32, align 4
  store %struct.s_smc* %0, %struct.s_smc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %77 [
    i32 129, label %6
    i32 136, label %12
    i32 130, label %18
    i32 137, label %24
    i32 131, label %30
    i32 138, label %36
    i32 139, label %42
    i32 141, label %64
    i32 133, label %70
    i32 134, label %76
    i32 142, label %76
    i32 128, label %76
    i32 135, label %76
    i32 132, label %76
    i32 140, label %76
  ]

6:                                                ; preds = %2
  %7 = load i8*, i8** @TRUE, align 8
  %8 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %9 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 3
  store i8* %7, i8** %11, align 8
  br label %81

12:                                               ; preds = %2
  %13 = load i8*, i8** @FALSE, align 8
  %14 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %15 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 3
  store i8* %13, i8** %17, align 8
  br label %81

18:                                               ; preds = %2
  %19 = load i8*, i8** @TRUE, align 8
  %20 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %21 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  store i8* %19, i8** %23, align 8
  br label %81

24:                                               ; preds = %2
  %25 = load i8*, i8** @FALSE, align 8
  %26 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %27 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  store i8* %25, i8** %29, align 8
  br label %81

30:                                               ; preds = %2
  %31 = load i8*, i8** @TRUE, align 8
  %32 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %33 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  store i8* %31, i8** %35, align 8
  br label %81

36:                                               ; preds = %2
  %37 = load i8*, i8** @FALSE, align 8
  %38 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %39 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  store i8* %37, i8** %41, align 8
  br label %81

42:                                               ; preds = %2
  %43 = load i8*, i8** @FALSE, align 8
  %44 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %45 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  store i8* %43, i8** %47, align 8
  %48 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %49 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 3
  store i8* %43, i8** %51, align 8
  %52 = load i8*, i8** @FALSE, align 8
  %53 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %54 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  store i8* %52, i8** %56, align 8
  %57 = load i8*, i8** @TRUE, align 8
  %58 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %59 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  store i8* %57, i8** %61, align 8
  %62 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %63 = call i32 @mac_set_rx_mode(%struct.s_smc* %62, i32 140)
  br label %81

64:                                               ; preds = %2
  %65 = load i8*, i8** @FALSE, align 8
  %66 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %67 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  store i8* %65, i8** %69, align 8
  br label %81

70:                                               ; preds = %2
  %71 = load i8*, i8** @TRUE, align 8
  %72 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %73 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  store i8* %71, i8** %75, align 8
  br label %81

76:                                               ; preds = %2, %2, %2, %2, %2, %2
  br label %77

77:                                               ; preds = %2, %76
  %78 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @mac_set_rx_mode(%struct.s_smc* %78, i32 %79)
  br label %81

81:                                               ; preds = %77, %70, %64, %42, %36, %30, %24, %18, %12, %6
  ret void
}

declare dso_local i32 @mac_set_rx_mode(%struct.s_smc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
