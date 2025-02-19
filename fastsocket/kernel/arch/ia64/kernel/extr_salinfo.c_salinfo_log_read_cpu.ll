; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_salinfo.c_salinfo_log_read_cpu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_salinfo.c_salinfo_log_read_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.salinfo_data = type { i32, i64, i32 }
%struct.TYPE_2__ = type { i64 }

@sal_log_severity_corrected = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @salinfo_log_read_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @salinfo_log_read_cpu(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.salinfo_data*, align 8
  %4 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.salinfo_data*
  store %struct.salinfo_data* %6, %struct.salinfo_data** %3, align 8
  %7 = load %struct.salinfo_data*, %struct.salinfo_data** %3, align 8
  %8 = getelementptr inbounds %struct.salinfo_data, %struct.salinfo_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.salinfo_data*, %struct.salinfo_data** %3, align 8
  %11 = getelementptr inbounds %struct.salinfo_data, %struct.salinfo_data* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i32*
  %14 = call i32 @ia64_sal_get_state_info(i32 %9, i32* %13)
  %15 = load %struct.salinfo_data*, %struct.salinfo_data** %3, align 8
  %16 = getelementptr inbounds %struct.salinfo_data, %struct.salinfo_data* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 8
  %17 = load %struct.salinfo_data*, %struct.salinfo_data** %3, align 8
  %18 = getelementptr inbounds %struct.salinfo_data, %struct.salinfo_data* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %20, %struct.TYPE_2__** %4, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @sal_log_severity_corrected, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %1
  %27 = load %struct.salinfo_data*, %struct.salinfo_data** %3, align 8
  %28 = getelementptr inbounds %struct.salinfo_data, %struct.salinfo_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @ia64_sal_clear_state_info(i32 %29)
  br label %31

31:                                               ; preds = %26, %1
  ret void
}

declare dso_local i32 @ia64_sal_get_state_info(i32, i32*) #1

declare dso_local i32 @ia64_sal_clear_state_info(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
