; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_sd7220.c_qib_sd7220_presets.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_sd7220.c_qib_sd7220_presets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [10 x i8] c"link-down\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qib_sd7220_presets(%struct.qib_devdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qib_devdata*, align 8
  %4 = alloca i32, align 4
  store %struct.qib_devdata* %0, %struct.qib_devdata** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %6 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %26

13:                                               ; preds = %1
  %14 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %15 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  %18 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %19 = call i32 @qib_ibsd_reset(%struct.qib_devdata* %18, i32 1)
  %20 = call i32 @udelay(i32 2)
  %21 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %22 = call i32 @qib_sd_trimdone_monitor(%struct.qib_devdata* %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %24 = call i32 @qib_internal_presets(%struct.qib_devdata* %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %13, %11
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @qib_ibsd_reset(%struct.qib_devdata*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @qib_sd_trimdone_monitor(%struct.qib_devdata*, i8*) #1

declare dso_local i32 @qib_internal_presets(%struct.qib_devdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
