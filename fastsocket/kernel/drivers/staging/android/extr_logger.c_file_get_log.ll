; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/android/extr_logger.c_file_get_log.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/android/extr_logger.c_file_get_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.logger_log = type { %struct.logger_log* }
%struct.file = type { i32, %struct.logger_reader* }
%struct.logger_reader = type { %struct.logger_reader* }

@FMODE_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.logger_log* (%struct.file*)* @file_get_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.logger_log* @file_get_log(%struct.file* %0) #0 {
  %2 = alloca %struct.logger_log*, align 8
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.logger_reader*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  %5 = load %struct.file*, %struct.file** %3, align 8
  %6 = getelementptr inbounds %struct.file, %struct.file* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @FMODE_READ, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load %struct.file*, %struct.file** %3, align 8
  %13 = getelementptr inbounds %struct.file, %struct.file* %12, i32 0, i32 1
  %14 = load %struct.logger_reader*, %struct.logger_reader** %13, align 8
  store %struct.logger_reader* %14, %struct.logger_reader** %4, align 8
  %15 = load %struct.logger_reader*, %struct.logger_reader** %4, align 8
  %16 = getelementptr inbounds %struct.logger_reader, %struct.logger_reader* %15, i32 0, i32 0
  %17 = load %struct.logger_reader*, %struct.logger_reader** %16, align 8
  %18 = bitcast %struct.logger_reader* %17 to %struct.logger_log*
  store %struct.logger_log* %18, %struct.logger_log** %2, align 8
  br label %24

19:                                               ; preds = %1
  %20 = load %struct.file*, %struct.file** %3, align 8
  %21 = getelementptr inbounds %struct.file, %struct.file* %20, i32 0, i32 1
  %22 = load %struct.logger_reader*, %struct.logger_reader** %21, align 8
  %23 = bitcast %struct.logger_reader* %22 to %struct.logger_log*
  store %struct.logger_log* %23, %struct.logger_log** %2, align 8
  br label %24

24:                                               ; preds = %19, %11
  %25 = load %struct.logger_log*, %struct.logger_log** %2, align 8
  ret %struct.logger_log* %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
