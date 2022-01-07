; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_sd7220.c_qib_run_relock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_sd7220.c_qib_run_relock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32, %struct.qib_chip_specific*, %struct.qib_pportdata* }
%struct.qib_chip_specific = type { i32, i32 }
%struct.qib_pportdata = type { i32 }

@QIB_INITTED = common dso_local global i32 0, align 4
@QIBL_IB_AUTONEG_INPROG = common dso_local global i32 0, align 4
@QIBL_LINKINIT = common dso_local global i32 0, align 4
@QIBL_LINKARMED = common dso_local global i32 0, align 4
@QIBL_LINKACTIVE = common dso_local global i32 0, align 4
@qib_relock_by_timer = common dso_local global i64 0, align 8
@QIBL_IB_LINK_DISABLED = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @qib_run_relock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qib_run_relock(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.qib_devdata*, align 8
  %4 = alloca %struct.qib_pportdata*, align 8
  %5 = alloca %struct.qib_chip_specific*, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = inttoptr i64 %7 to %struct.qib_devdata*
  store %struct.qib_devdata* %8, %struct.qib_devdata** %3, align 8
  %9 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %10 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %9, i32 0, i32 2
  %11 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  store %struct.qib_pportdata* %11, %struct.qib_pportdata** %4, align 8
  %12 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %13 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %12, i32 0, i32 1
  %14 = load %struct.qib_chip_specific*, %struct.qib_chip_specific** %13, align 8
  store %struct.qib_chip_specific* %14, %struct.qib_chip_specific** %5, align 8
  %15 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %16 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @QIB_INITTED, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %62

21:                                               ; preds = %1
  %22 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %23 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @QIBL_IB_AUTONEG_INPROG, align 4
  %26 = load i32, i32* @QIBL_LINKINIT, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @QIBL_LINKARMED, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @QIBL_LINKACTIVE, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %24, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %62, label %34

34:                                               ; preds = %21
  %35 = load i64, i64* @qib_relock_by_timer, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %34
  %38 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %39 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @QIBL_IB_LINK_DISABLED, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %37
  %45 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %46 = call i32 @toggle_7220_rclkrls(%struct.qib_devdata* %45)
  br label %47

47:                                               ; preds = %44, %37
  br label %48

48:                                               ; preds = %47, %34
  %49 = load %struct.qib_chip_specific*, %struct.qib_chip_specific** %5, align 8
  %50 = getelementptr inbounds %struct.qib_chip_specific, %struct.qib_chip_specific* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = shl i32 %51, 1
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @HZ, align 4
  %55 = icmp sgt i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = load i32, i32* @HZ, align 4
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %56, %48
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.qib_chip_specific*, %struct.qib_chip_specific** %5, align 8
  %61 = getelementptr inbounds %struct.qib_chip_specific, %struct.qib_chip_specific* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  br label %64

62:                                               ; preds = %21, %1
  %63 = load i32, i32* @HZ, align 4
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %62, %58
  %65 = load %struct.qib_chip_specific*, %struct.qib_chip_specific** %5, align 8
  %66 = getelementptr inbounds %struct.qib_chip_specific, %struct.qib_chip_specific* %65, i32 0, i32 1
  %67 = load i64, i64* @jiffies, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %67, %69
  %71 = call i32 @mod_timer(i32* %66, i64 %70)
  ret void
}

declare dso_local i32 @toggle_7220_rclkrls(%struct.qib_devdata*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
