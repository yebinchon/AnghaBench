; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvscsi.c_ibmvscsi_do_work.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvscsi.c_ibmvscsi_do_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32*, %struct.ibmvscsi_host_data*)*, i32 (%struct.ibmvscsi_host_data*, i32, i32)*, i32 (i32*, %struct.ibmvscsi_host_data*)* }
%struct.ibmvscsi_host_data = type { i32, i32, i32, i32, i64, i64 }

@.str = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@ibmvscsi_ops = common dso_local global %struct.TYPE_2__* null, align 8
@IBMVSCSI_CRQ_INIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"error after %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibmvscsi_host_data*)* @ibmvscsi_do_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmvscsi_do_work(%struct.ibmvscsi_host_data* %0) #0 {
  %2 = alloca %struct.ibmvscsi_host_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store %struct.ibmvscsi_host_data* %0, %struct.ibmvscsi_host_data** %2, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  %5 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %2, align 8
  %6 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %5, i32 0, i32 5
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %35

9:                                                ; preds = %1
  %10 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %2, align 8
  %11 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %10, i32 0, i32 5
  store i64 0, i64* %11, align 8
  %12 = call i32 (...) @smp_mb()
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ibmvscsi_ops, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (i32*, %struct.ibmvscsi_host_data*)*, i32 (i32*, %struct.ibmvscsi_host_data*)** %14, align 8
  %16 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %2, align 8
  %17 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %16, i32 0, i32 3
  %18 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %2, align 8
  %19 = call i32 %15(i32* %17, %struct.ibmvscsi_host_data* %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %9
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ibmvscsi_ops, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32 (%struct.ibmvscsi_host_data*, i32, i32)*, i32 (%struct.ibmvscsi_host_data*, i32, i32)** %24, align 8
  %26 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %2, align 8
  %27 = load i32, i32* @IBMVSCSI_CRQ_INIT, align 4
  %28 = call i32 %25(%struct.ibmvscsi_host_data* %26, i32 %27, i32 0)
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %22, %9
  %30 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %2, align 8
  %31 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @to_vio_dev(i32 %32)
  %34 = call i32 @vio_enable_interrupts(i32 %33)
  br label %63

35:                                               ; preds = %1
  %36 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %2, align 8
  %37 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %61

40:                                               ; preds = %35
  %41 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %2, align 8
  %42 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %41, i32 0, i32 4
  store i64 0, i64* %42, align 8
  %43 = call i32 (...) @smp_mb()
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ibmvscsi_ops, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i32 (i32*, %struct.ibmvscsi_host_data*)*, i32 (i32*, %struct.ibmvscsi_host_data*)** %45, align 8
  %47 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %2, align 8
  %48 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %47, i32 0, i32 3
  %49 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %2, align 8
  %50 = call i32 %46(i32* %48, %struct.ibmvscsi_host_data* %49)
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* %3, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %40
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ibmvscsi_ops, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32 (%struct.ibmvscsi_host_data*, i32, i32)*, i32 (%struct.ibmvscsi_host_data*, i32, i32)** %55, align 8
  %57 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %2, align 8
  %58 = load i32, i32* @IBMVSCSI_CRQ_INIT, align 4
  %59 = call i32 %56(%struct.ibmvscsi_host_data* %57, i32 %58, i32 0)
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %53, %40
  br label %62

61:                                               ; preds = %35
  br label %80

62:                                               ; preds = %60
  br label %63

63:                                               ; preds = %62, %29
  %64 = load i32, i32* %3, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %63
  %67 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %2, align 8
  %68 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %67, i32 0, i32 2
  %69 = call i32 @atomic_set(i32* %68, i32 -1)
  %70 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %2, align 8
  %71 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i8*, i8** %4, align 8
  %74 = call i32 @dev_err(i32 %72, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %73)
  br label %75

75:                                               ; preds = %66, %63
  %76 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %2, align 8
  %77 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @scsi_unblock_requests(i32 %78)
  br label %80

80:                                               ; preds = %75, %61
  ret void
}

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @vio_enable_interrupts(i32) #1

declare dso_local i32 @to_vio_dev(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i8*) #1

declare dso_local i32 @scsi_unblock_requests(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
