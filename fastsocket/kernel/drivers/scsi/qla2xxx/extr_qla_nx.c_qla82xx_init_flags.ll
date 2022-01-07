; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_init_flags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_init_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla82xx_legacy_intr_set = type { i32, i32, i32, i32 }
%struct.qla_hw_data = type { i32, i32, i32, i64, %struct.TYPE_4__, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@legacy_intr = common dso_local global %struct.qla82xx_legacy_intr_set* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qla82xx_init_flags(%struct.qla_hw_data* %0) #0 {
  %2 = alloca %struct.qla_hw_data*, align 8
  %3 = alloca %struct.qla82xx_legacy_intr_set*, align 8
  store %struct.qla_hw_data* %0, %struct.qla_hw_data** %2, align 8
  %4 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %5 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %4, i32 0, i32 6
  %6 = call i32 @rwlock_init(i32* %5)
  %7 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %8 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %7, i32 0, i32 0
  store i32 -1, i32* %8, align 8
  %9 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %10 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %9, i32 0, i32 1
  store i32 -1, i32* %10, align 4
  %11 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %12 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %11, i32 0, i32 2
  store i32 255, i32* %12, align 8
  %13 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %14 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %13, i32 0, i32 5
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @PCI_FUNC(i32 %17)
  %19 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %20 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %19, i32 0, i32 3
  store i64 %18, i64* %20, align 8
  %21 = load %struct.qla82xx_legacy_intr_set*, %struct.qla82xx_legacy_intr_set** @legacy_intr, align 8
  %22 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %23 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.qla82xx_legacy_intr_set, %struct.qla82xx_legacy_intr_set* %21, i64 %24
  store %struct.qla82xx_legacy_intr_set* %25, %struct.qla82xx_legacy_intr_set** %3, align 8
  %26 = load %struct.qla82xx_legacy_intr_set*, %struct.qla82xx_legacy_intr_set** %3, align 8
  %27 = getelementptr inbounds %struct.qla82xx_legacy_intr_set, %struct.qla82xx_legacy_intr_set* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %30 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 3
  store i32 %28, i32* %31, align 4
  %32 = load %struct.qla82xx_legacy_intr_set*, %struct.qla82xx_legacy_intr_set** %3, align 8
  %33 = getelementptr inbounds %struct.qla82xx_legacy_intr_set, %struct.qla82xx_legacy_intr_set* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %36 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  store i32 %34, i32* %37, align 8
  %38 = load %struct.qla82xx_legacy_intr_set*, %struct.qla82xx_legacy_intr_set** %3, align 8
  %39 = getelementptr inbounds %struct.qla82xx_legacy_intr_set, %struct.qla82xx_legacy_intr_set* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %42 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  store i32 %40, i32* %43, align 4
  %44 = load %struct.qla82xx_legacy_intr_set*, %struct.qla82xx_legacy_intr_set** %3, align 8
  %45 = getelementptr inbounds %struct.qla82xx_legacy_intr_set, %struct.qla82xx_legacy_intr_set* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %48 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 8
  ret void
}

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i64 @PCI_FUNC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
