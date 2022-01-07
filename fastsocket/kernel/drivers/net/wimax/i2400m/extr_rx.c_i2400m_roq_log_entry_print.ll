; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_rx.c_i2400m_roq_log_entry_print.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_rx.c_i2400m_roq_log_entry_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { i32 }
%struct.i2400m_roq_log_entry = type { i32, i32, i32, i32, i32, i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [57 x i8] c"q#%d reset           ws %u cnt %u sn %u/%u - new nws %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"q#%d queue           ws %u cnt %u sn %u/%u\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"q#%d update_ws       ws %u cnt %u sn %u/%u - new nws %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"q#%d queue_update_ws ws %u cnt %u sn %u/%u - new nws %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"q#%d BUG? entry %u - unknown type %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2400m*, i32, i32, %struct.i2400m_roq_log_entry*)* @i2400m_roq_log_entry_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2400m_roq_log_entry_print(%struct.i2400m* %0, i32 %1, i32 %2, %struct.i2400m_roq_log_entry* %3) #0 {
  %5 = alloca %struct.i2400m*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2400m_roq_log_entry*, align 8
  %9 = alloca %struct.device*, align 8
  store %struct.i2400m* %0, %struct.i2400m** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.i2400m_roq_log_entry* %3, %struct.i2400m_roq_log_entry** %8, align 8
  %10 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %11 = call %struct.device* @i2400m_dev(%struct.i2400m* %10)
  store %struct.device* %11, %struct.device** %9, align 8
  %12 = load %struct.i2400m_roq_log_entry*, %struct.i2400m_roq_log_entry** %8, align 8
  %13 = getelementptr inbounds %struct.i2400m_roq_log_entry, %struct.i2400m_roq_log_entry* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %88 [
    i32 129, label %15
    i32 131, label %34
    i32 128, label %50
    i32 130, label %69
  ]

15:                                               ; preds = %4
  %16 = load %struct.device*, %struct.device** %9, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.i2400m_roq_log_entry*, %struct.i2400m_roq_log_entry** %8, align 8
  %19 = getelementptr inbounds %struct.i2400m_roq_log_entry, %struct.i2400m_roq_log_entry* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.i2400m_roq_log_entry*, %struct.i2400m_roq_log_entry** %8, align 8
  %22 = getelementptr inbounds %struct.i2400m_roq_log_entry, %struct.i2400m_roq_log_entry* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.i2400m_roq_log_entry*, %struct.i2400m_roq_log_entry** %8, align 8
  %25 = getelementptr inbounds %struct.i2400m_roq_log_entry, %struct.i2400m_roq_log_entry* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.i2400m_roq_log_entry*, %struct.i2400m_roq_log_entry** %8, align 8
  %28 = getelementptr inbounds %struct.i2400m_roq_log_entry, %struct.i2400m_roq_log_entry* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.i2400m_roq_log_entry*, %struct.i2400m_roq_log_entry** %8, align 8
  %31 = getelementptr inbounds %struct.i2400m_roq_log_entry, %struct.i2400m_roq_log_entry* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (%struct.device*, i8*, i32, i32, i32, ...) @dev_err(%struct.device* %16, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %20, i32 %23, i32 %26, i32 %29, i32 %32)
  br label %96

34:                                               ; preds = %4
  %35 = load %struct.device*, %struct.device** %9, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.i2400m_roq_log_entry*, %struct.i2400m_roq_log_entry** %8, align 8
  %38 = getelementptr inbounds %struct.i2400m_roq_log_entry, %struct.i2400m_roq_log_entry* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.i2400m_roq_log_entry*, %struct.i2400m_roq_log_entry** %8, align 8
  %41 = getelementptr inbounds %struct.i2400m_roq_log_entry, %struct.i2400m_roq_log_entry* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.i2400m_roq_log_entry*, %struct.i2400m_roq_log_entry** %8, align 8
  %44 = getelementptr inbounds %struct.i2400m_roq_log_entry, %struct.i2400m_roq_log_entry* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.i2400m_roq_log_entry*, %struct.i2400m_roq_log_entry** %8, align 8
  %47 = getelementptr inbounds %struct.i2400m_roq_log_entry, %struct.i2400m_roq_log_entry* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (%struct.device*, i8*, i32, i32, i32, ...) @dev_err(%struct.device* %35, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %39, i32 %42, i32 %45, i32 %48)
  br label %96

50:                                               ; preds = %4
  %51 = load %struct.device*, %struct.device** %9, align 8
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.i2400m_roq_log_entry*, %struct.i2400m_roq_log_entry** %8, align 8
  %54 = getelementptr inbounds %struct.i2400m_roq_log_entry, %struct.i2400m_roq_log_entry* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.i2400m_roq_log_entry*, %struct.i2400m_roq_log_entry** %8, align 8
  %57 = getelementptr inbounds %struct.i2400m_roq_log_entry, %struct.i2400m_roq_log_entry* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.i2400m_roq_log_entry*, %struct.i2400m_roq_log_entry** %8, align 8
  %60 = getelementptr inbounds %struct.i2400m_roq_log_entry, %struct.i2400m_roq_log_entry* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.i2400m_roq_log_entry*, %struct.i2400m_roq_log_entry** %8, align 8
  %63 = getelementptr inbounds %struct.i2400m_roq_log_entry, %struct.i2400m_roq_log_entry* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.i2400m_roq_log_entry*, %struct.i2400m_roq_log_entry** %8, align 8
  %66 = getelementptr inbounds %struct.i2400m_roq_log_entry, %struct.i2400m_roq_log_entry* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (%struct.device*, i8*, i32, i32, i32, ...) @dev_err(%struct.device* %51, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %52, i32 %55, i32 %58, i32 %61, i32 %64, i32 %67)
  br label %96

69:                                               ; preds = %4
  %70 = load %struct.device*, %struct.device** %9, align 8
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.i2400m_roq_log_entry*, %struct.i2400m_roq_log_entry** %8, align 8
  %73 = getelementptr inbounds %struct.i2400m_roq_log_entry, %struct.i2400m_roq_log_entry* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.i2400m_roq_log_entry*, %struct.i2400m_roq_log_entry** %8, align 8
  %76 = getelementptr inbounds %struct.i2400m_roq_log_entry, %struct.i2400m_roq_log_entry* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.i2400m_roq_log_entry*, %struct.i2400m_roq_log_entry** %8, align 8
  %79 = getelementptr inbounds %struct.i2400m_roq_log_entry, %struct.i2400m_roq_log_entry* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.i2400m_roq_log_entry*, %struct.i2400m_roq_log_entry** %8, align 8
  %82 = getelementptr inbounds %struct.i2400m_roq_log_entry, %struct.i2400m_roq_log_entry* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.i2400m_roq_log_entry*, %struct.i2400m_roq_log_entry** %8, align 8
  %85 = getelementptr inbounds %struct.i2400m_roq_log_entry, %struct.i2400m_roq_log_entry* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (%struct.device*, i8*, i32, i32, i32, ...) @dev_err(%struct.device* %70, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i32 %71, i32 %74, i32 %77, i32 %80, i32 %83, i32 %86)
  br label %96

88:                                               ; preds = %4
  %89 = load %struct.device*, %struct.device** %9, align 8
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* %7, align 4
  %92 = load %struct.i2400m_roq_log_entry*, %struct.i2400m_roq_log_entry** %8, align 8
  %93 = getelementptr inbounds %struct.i2400m_roq_log_entry, %struct.i2400m_roq_log_entry* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (%struct.device*, i8*, i32, i32, i32, ...) @dev_err(%struct.device* %89, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %90, i32 %91, i32 %94)
  br label %96

96:                                               ; preds = %88, %69, %50, %34, %15
  ret void
}

declare dso_local %struct.device* @i2400m_dev(%struct.i2400m*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
