; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_init.c_pm8001_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_init.c_pm8001_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.pm8001_hba_info*)* }
%struct.pm8001_hba_info = type { %struct.pm8001_hba_info*, i64, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32*, i64, i64 }

@USI_MAX_MEMCNT = common dso_local global i32 0, align 4
@PM8001_CHIP_DISP = common dso_local global %struct.TYPE_6__* null, align 8
@pm8001_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pm8001_hba_info*)* @pm8001_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pm8001_free(%struct.pm8001_hba_info* %0) #0 {
  %2 = alloca %struct.pm8001_hba_info*, align 8
  %3 = alloca i32, align 4
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %2, align 8
  %4 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %5 = icmp ne %struct.pm8001_hba_info* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %93

7:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %66, %7
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @USI_MAX_MEMCNT, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %69

12:                                               ; preds = %8
  %13 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %14 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %65

23:                                               ; preds = %12
  %24 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %25 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %28 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %37 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %35, %44
  %46 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %47 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %56 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load i32, i32* %3, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @pci_free_consistent(i32 %26, i64 %45, i32* %54, i32 %63)
  br label %65

65:                                               ; preds = %23, %12
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %3, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %3, align 4
  br label %8

69:                                               ; preds = %8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** @PM8001_CHIP_DISP, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32 (%struct.pm8001_hba_info*)*, i32 (%struct.pm8001_hba_info*)** %71, align 8
  %73 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %74 = call i32 %72(%struct.pm8001_hba_info* %73)
  %75 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %76 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %69
  %80 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %81 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @scsi_host_put(i64 %82)
  br label %84

84:                                               ; preds = %79, %69
  %85 = load i32, i32* @pm8001_wq, align 4
  %86 = call i32 @flush_workqueue(i32 %85)
  %87 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %88 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %87, i32 0, i32 0
  %89 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %88, align 8
  %90 = call i32 @kfree(%struct.pm8001_hba_info* %89)
  %91 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %92 = call i32 @kfree(%struct.pm8001_hba_info* %91)
  br label %93

93:                                               ; preds = %84, %6
  ret void
}

declare dso_local i32 @pci_free_consistent(i32, i64, i32*, i32) #1

declare dso_local i32 @scsi_host_put(i64) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @kfree(%struct.pm8001_hba_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
