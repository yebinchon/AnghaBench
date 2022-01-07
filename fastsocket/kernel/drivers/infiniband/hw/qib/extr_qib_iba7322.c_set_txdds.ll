; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7322.c_set_txdds.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7322.c_set_txdds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { %struct.qib_devdata*, i64 }
%struct.qib_devdata = type { i32 }
%struct.txdds_ent = type { i32, i32, i32, i32 }

@IBSD_DDS_MAP_TABLE = common dso_local global i32 0, align 4
@DDS_ENT_AMP_LSB = common dso_local global i32 0, align 4
@DDS_ENT_MAIN_LSB = common dso_local global i32 0, align 4
@DDS_ENT_PRE_LSB = common dso_local global i32 0, align 4
@DDS_ENT_POST_LSB = common dso_local global i32 0, align 4
@kr_scratch = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_pportdata*, i32, %struct.txdds_ent*)* @set_txdds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_txdds(%struct.qib_pportdata* %0, i32 %1, %struct.txdds_ent* %2) #0 {
  %4 = alloca %struct.qib_pportdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.txdds_ent*, align 8
  %7 = alloca %struct.qib_devdata*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.txdds_ent* %2, %struct.txdds_ent** %6, align 8
  %10 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %11 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %10, i32 0, i32 0
  %12 = load %struct.qib_devdata*, %struct.qib_devdata** %11, align 8
  store %struct.qib_devdata* %12, %struct.qib_devdata** %7, align 8
  %13 = load i32, i32* @IBSD_DDS_MAP_TABLE, align 4
  %14 = call i32 @KREG_IBPORT_IDX(i32 %13)
  %15 = load i32, i32* %5, align 4
  %16 = add nsw i32 %14, %15
  store i32 %16, i32* %9, align 4
  %17 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %18 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %3
  %22 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %23 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = udiv i64 %25, 4
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = add i64 %28, %26
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %9, align 4
  br label %31

31:                                               ; preds = %21, %3
  %32 = load %struct.txdds_ent*, %struct.txdds_ent** %6, align 8
  %33 = getelementptr inbounds %struct.txdds_ent, %struct.txdds_ent* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @DDS_ENT_AMP_LSB, align 4
  %36 = shl i32 %34, %35
  store i32 %36, i32* %8, align 4
  %37 = load %struct.txdds_ent*, %struct.txdds_ent** %6, align 8
  %38 = getelementptr inbounds %struct.txdds_ent, %struct.txdds_ent* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @DDS_ENT_MAIN_LSB, align 4
  %41 = shl i32 %39, %40
  %42 = load i32, i32* %8, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %8, align 4
  %44 = load %struct.txdds_ent*, %struct.txdds_ent** %6, align 8
  %45 = getelementptr inbounds %struct.txdds_ent, %struct.txdds_ent* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @DDS_ENT_PRE_LSB, align 4
  %48 = shl i32 %46, %47
  %49 = load i32, i32* %8, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %8, align 4
  %51 = load %struct.txdds_ent*, %struct.txdds_ent** %6, align 8
  %52 = getelementptr inbounds %struct.txdds_ent, %struct.txdds_ent* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @DDS_ENT_POST_LSB, align 4
  %55 = shl i32 %53, %54
  %56 = load i32, i32* %8, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %8, align 4
  %58 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @qib_write_kreg(%struct.qib_devdata* %58, i32 %59, i32 %60)
  %62 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %63 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %62, i32 0, i32 0
  %64 = load %struct.qib_devdata*, %struct.qib_devdata** %63, align 8
  %65 = load i32, i32* @kr_scratch, align 4
  %66 = call i32 @qib_write_kreg(%struct.qib_devdata* %64, i32 %65, i32 0)
  ret void
}

declare dso_local i32 @KREG_IBPORT_IDX(i32) #1

declare dso_local i32 @qib_write_kreg(%struct.qib_devdata*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
