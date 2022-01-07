; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_salinfo.c_salinfo_log_clear.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_salinfo.c_salinfo_log_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.salinfo_data = type { i64, i32, i64, i64 }
%struct.TYPE_2__ = type { i64 }

@data_saved_lock = common dso_local global i32 0, align 4
@STATE_NO_DATA = common dso_local global i64 0, align 8
@sal_log_severity_corrected = common dso_local global i64 0, align 8
@salinfo_log_clear_cpu = common dso_local global i32 0, align 4
@STATE_LOG_RECORD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.salinfo_data*, i32)* @salinfo_log_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @salinfo_log_clear(%struct.salinfo_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.salinfo_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_2__*, align 8
  %7 = alloca i64, align 8
  store %struct.salinfo_data* %0, %struct.salinfo_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i64, i64* %7, align 8
  %9 = call i32 @spin_lock_irqsave(i32* @data_saved_lock, i64 %8)
  %10 = load i64, i64* @STATE_NO_DATA, align 8
  %11 = load %struct.salinfo_data*, %struct.salinfo_data** %4, align 8
  %12 = getelementptr inbounds %struct.salinfo_data, %struct.salinfo_data* %11, i32 0, i32 0
  store i64 %10, i64* %12, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.salinfo_data*, %struct.salinfo_data** %4, align 8
  %15 = getelementptr inbounds %struct.salinfo_data, %struct.salinfo_data* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @cpu_isset(i32 %13, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @spin_unlock_irqrestore(i32* @data_saved_lock, i64 %20)
  store i32 0, i32* %3, align 4
  br label %80

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.salinfo_data*, %struct.salinfo_data** %4, align 8
  %25 = getelementptr inbounds %struct.salinfo_data, %struct.salinfo_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @cpu_clear(i32 %23, i32 %26)
  %28 = load %struct.salinfo_data*, %struct.salinfo_data** %4, align 8
  %29 = getelementptr inbounds %struct.salinfo_data, %struct.salinfo_data* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %22
  %33 = load %struct.salinfo_data*, %struct.salinfo_data** %4, align 8
  %34 = load %struct.salinfo_data*, %struct.salinfo_data** %4, align 8
  %35 = getelementptr inbounds %struct.salinfo_data, %struct.salinfo_data* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %36, 1
  %38 = call i32 @shift1_data_saved(%struct.salinfo_data* %33, i64 %37)
  %39 = load %struct.salinfo_data*, %struct.salinfo_data** %4, align 8
  %40 = getelementptr inbounds %struct.salinfo_data, %struct.salinfo_data* %39, i32 0, i32 3
  store i64 0, i64* %40, align 8
  br label %41

41:                                               ; preds = %32, %22
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* @data_saved_lock, i64 %42)
  %44 = load %struct.salinfo_data*, %struct.salinfo_data** %4, align 8
  %45 = getelementptr inbounds %struct.salinfo_data, %struct.salinfo_data* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %47, %struct.TYPE_2__** %6, align 8
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @sal_log_severity_corrected, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %41
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @salinfo_log_clear_cpu, align 4
  %56 = load %struct.salinfo_data*, %struct.salinfo_data** %4, align 8
  %57 = call i32 @call_on_cpu(i32 %54, i32 %55, %struct.salinfo_data* %56)
  br label %58

58:                                               ; preds = %53, %41
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.salinfo_data*, %struct.salinfo_data** %4, align 8
  %61 = call i32 @salinfo_log_new_read(i32 %59, %struct.salinfo_data* %60)
  %62 = load %struct.salinfo_data*, %struct.salinfo_data** %4, align 8
  %63 = getelementptr inbounds %struct.salinfo_data, %struct.salinfo_data* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @STATE_LOG_RECORD, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %79

67:                                               ; preds = %58
  %68 = load i64, i64* %7, align 8
  %69 = call i32 @spin_lock_irqsave(i32* @data_saved_lock, i64 %68)
  %70 = load i32, i32* %5, align 4
  %71 = load %struct.salinfo_data*, %struct.salinfo_data** %4, align 8
  %72 = getelementptr inbounds %struct.salinfo_data, %struct.salinfo_data* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @cpu_set(i32 %70, i32 %73)
  %75 = load %struct.salinfo_data*, %struct.salinfo_data** %4, align 8
  %76 = call i32 @salinfo_work_to_do(%struct.salinfo_data* %75)
  %77 = load i64, i64* %7, align 8
  %78 = call i32 @spin_unlock_irqrestore(i32* @data_saved_lock, i64 %77)
  br label %79

79:                                               ; preds = %67, %58
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %79, %19
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @cpu_isset(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @cpu_clear(i32, i32) #1

declare dso_local i32 @shift1_data_saved(%struct.salinfo_data*, i64) #1

declare dso_local i32 @call_on_cpu(i32, i32, %struct.salinfo_data*) #1

declare dso_local i32 @salinfo_log_new_read(i32, %struct.salinfo_data*) #1

declare dso_local i32 @cpu_set(i32, i32) #1

declare dso_local i32 @salinfo_work_to_do(%struct.salinfo_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
