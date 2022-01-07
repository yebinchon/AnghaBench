; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_salinfo.c_salinfo_log_new_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_salinfo.c_salinfo_log_new_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.salinfo_data = type { i32, i32, i32, i32, i32, %struct.salinfo_data_saved* }
%struct.salinfo_data_saved = type { i32, i64, i32, i64 }
%struct.TYPE_3__ = type { i64 }

@data_saved_lock = common dso_local global i32 0, align 4
@salinfo_log_read_cpu = common dso_local global i32 0, align 4
@STATE_NO_DATA = common dso_local global i32 0, align 4
@STATE_LOG_RECORD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.salinfo_data*)* @salinfo_log_new_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @salinfo_log_new_read(i32 %0, %struct.salinfo_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.salinfo_data*, align 8
  %5 = alloca %struct.salinfo_data_saved*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.salinfo_data* %1, %struct.salinfo_data** %4, align 8
  %10 = load %struct.salinfo_data*, %struct.salinfo_data** %4, align 8
  %11 = getelementptr inbounds %struct.salinfo_data, %struct.salinfo_data* %10, i32 0, i32 5
  %12 = load %struct.salinfo_data_saved*, %struct.salinfo_data_saved** %11, align 8
  %13 = call i32 @ARRAY_SIZE(%struct.salinfo_data_saved* %12)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.salinfo_data*, %struct.salinfo_data** %4, align 8
  %15 = getelementptr inbounds %struct.salinfo_data, %struct.salinfo_data* %14, i32 0, i32 0
  store i32 0, i32* %15, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @spin_lock_irqsave(i32* @data_saved_lock, i64 %16)
  br label %18

18:                                               ; preds = %68, %2
  store i32 0, i32* %7, align 4
  %19 = load %struct.salinfo_data*, %struct.salinfo_data** %4, align 8
  %20 = getelementptr inbounds %struct.salinfo_data, %struct.salinfo_data* %19, i32 0, i32 5
  %21 = load %struct.salinfo_data_saved*, %struct.salinfo_data_saved** %20, align 8
  store %struct.salinfo_data_saved* %21, %struct.salinfo_data_saved** %5, align 8
  br label %22

22:                                               ; preds = %73, %18
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %78

26:                                               ; preds = %22
  %27 = load %struct.salinfo_data_saved*, %struct.salinfo_data_saved** %5, align 8
  %28 = getelementptr inbounds %struct.salinfo_data_saved, %struct.salinfo_data_saved* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %72

31:                                               ; preds = %26
  %32 = load %struct.salinfo_data_saved*, %struct.salinfo_data_saved** %5, align 8
  %33 = getelementptr inbounds %struct.salinfo_data_saved, %struct.salinfo_data_saved* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %72

37:                                               ; preds = %31
  %38 = load %struct.salinfo_data_saved*, %struct.salinfo_data_saved** %5, align 8
  %39 = getelementptr inbounds %struct.salinfo_data_saved, %struct.salinfo_data_saved* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %41, %struct.TYPE_3__** %9, align 8
  %42 = load %struct.salinfo_data_saved*, %struct.salinfo_data_saved** %5, align 8
  %43 = getelementptr inbounds %struct.salinfo_data_saved, %struct.salinfo_data_saved* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.salinfo_data*, %struct.salinfo_data** %4, align 8
  %46 = getelementptr inbounds %struct.salinfo_data, %struct.salinfo_data* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load %struct.salinfo_data*, %struct.salinfo_data** %4, align 8
  %48 = getelementptr inbounds %struct.salinfo_data, %struct.salinfo_data* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %51 = load %struct.salinfo_data*, %struct.salinfo_data** %4, align 8
  %52 = getelementptr inbounds %struct.salinfo_data, %struct.salinfo_data* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @memcpy(i32 %49, %struct.TYPE_3__* %50, i32 %53)
  %55 = call i32 (...) @barrier()
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.salinfo_data_saved*, %struct.salinfo_data_saved** %5, align 8
  %60 = getelementptr inbounds %struct.salinfo_data_saved, %struct.salinfo_data_saved* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %58, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %37
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  %66 = load %struct.salinfo_data*, %struct.salinfo_data** %4, align 8
  %67 = getelementptr inbounds %struct.salinfo_data, %struct.salinfo_data* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  br label %78

68:                                               ; preds = %37
  %69 = load %struct.salinfo_data*, %struct.salinfo_data** %4, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @shift1_data_saved(%struct.salinfo_data* %69, i32 %70)
  br label %18

72:                                               ; preds = %31, %26
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %7, align 4
  %76 = load %struct.salinfo_data_saved*, %struct.salinfo_data_saved** %5, align 8
  %77 = getelementptr inbounds %struct.salinfo_data_saved, %struct.salinfo_data_saved* %76, i32 1
  store %struct.salinfo_data_saved* %77, %struct.salinfo_data_saved** %5, align 8
  br label %22

78:                                               ; preds = %63, %22
  %79 = load i64, i64* %6, align 8
  %80 = call i32 @spin_unlock_irqrestore(i32* @data_saved_lock, i64 %79)
  %81 = load %struct.salinfo_data*, %struct.salinfo_data** %4, align 8
  %82 = getelementptr inbounds %struct.salinfo_data, %struct.salinfo_data* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %78
  %86 = load i32, i32* %3, align 4
  %87 = load i32, i32* @salinfo_log_read_cpu, align 4
  %88 = load %struct.salinfo_data*, %struct.salinfo_data** %4, align 8
  %89 = call i32 @call_on_cpu(i32 %86, i32 %87, %struct.salinfo_data* %88)
  br label %90

90:                                               ; preds = %85, %78
  %91 = load %struct.salinfo_data*, %struct.salinfo_data** %4, align 8
  %92 = getelementptr inbounds %struct.salinfo_data, %struct.salinfo_data* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %104, label %95

95:                                               ; preds = %90
  %96 = load i32, i32* @STATE_NO_DATA, align 4
  %97 = load %struct.salinfo_data*, %struct.salinfo_data** %4, align 8
  %98 = getelementptr inbounds %struct.salinfo_data, %struct.salinfo_data* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* %3, align 4
  %100 = load %struct.salinfo_data*, %struct.salinfo_data** %4, align 8
  %101 = getelementptr inbounds %struct.salinfo_data, %struct.salinfo_data* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @cpu_clear(i32 %99, i32 %102)
  br label %108

104:                                              ; preds = %90
  %105 = load i32, i32* @STATE_LOG_RECORD, align 4
  %106 = load %struct.salinfo_data*, %struct.salinfo_data** %4, align 8
  %107 = getelementptr inbounds %struct.salinfo_data, %struct.salinfo_data* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  br label %108

108:                                              ; preds = %104, %95
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.salinfo_data_saved*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memcpy(i32, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @shift1_data_saved(%struct.salinfo_data*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @call_on_cpu(i32, i32, %struct.salinfo_data*) #1

declare dso_local i32 @cpu_clear(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
