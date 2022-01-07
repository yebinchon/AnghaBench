; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_amd64_edac.c_amd64_get_scrub_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_amd64_edac.c_amd64_get_scrub_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.mem_ctl_info = type { %struct.amd64_pvt* }
%struct.amd64_pvt = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@boot_cpu_data = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@SCRCTRL = common dso_local global i32 0, align 4
@scrubrates = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_ctl_info*)* @amd64_get_scrub_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd64_get_scrub_rate(%struct.mem_ctl_info* %0) #0 {
  %2 = alloca %struct.mem_ctl_info*, align 8
  %3 = alloca %struct.amd64_pvt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %2, align 8
  %7 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %8 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %7, i32 0, i32 0
  %9 = load %struct.amd64_pvt*, %struct.amd64_pvt** %8, align 8
  store %struct.amd64_pvt* %9, %struct.amd64_pvt** %3, align 8
  store i32 0, i32* %4, align 4
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @boot_cpu_data, i32 0, i32 0), align 4
  %13 = icmp eq i32 %12, 21
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %16 = call i32 @f15h_select_dct(%struct.amd64_pvt* %15, i32 0)
  br label %17

17:                                               ; preds = %14, %1
  %18 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %19 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @SCRCTRL, align 4
  %22 = call i32 @amd64_read_pci_cfg(i32 %20, i32 %21, i32* %4)
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %23, 31
  store i32 %24, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %47, %17
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @scrubrates, align 8
  %28 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %27)
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %30, label %50

30:                                               ; preds = %25
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @scrubrates, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %30
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @scrubrates, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %6, align 4
  br label %50

46:                                               ; preds = %30
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %25

50:                                               ; preds = %39, %25
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local i32 @f15h_select_dct(%struct.amd64_pvt*, i32) #1

declare dso_local i32 @amd64_read_pci_cfg(i32, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
