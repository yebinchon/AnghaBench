; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/android/extr_logger.c_logger_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/android/extr_logger.c_logger_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.logger_reader* }
%struct.logger_reader = type { i64, %struct.logger_log* }
%struct.logger_log = type { i64, i32, i32 }

@POLLOUT = common dso_local global i32 0, align 4
@POLLWRNORM = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @logger_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @logger_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.logger_reader*, align 8
  %7 = alloca %struct.logger_log*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32, i32* @POLLOUT, align 4
  %10 = load i32, i32* @POLLWRNORM, align 4
  %11 = or i32 %9, %10
  store i32 %11, i32* %8, align 4
  %12 = load %struct.file*, %struct.file** %4, align 8
  %13 = getelementptr inbounds %struct.file, %struct.file* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @FMODE_READ, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %3, align 4
  br label %53

20:                                               ; preds = %2
  %21 = load %struct.file*, %struct.file** %4, align 8
  %22 = getelementptr inbounds %struct.file, %struct.file* %21, i32 0, i32 1
  %23 = load %struct.logger_reader*, %struct.logger_reader** %22, align 8
  store %struct.logger_reader* %23, %struct.logger_reader** %6, align 8
  %24 = load %struct.logger_reader*, %struct.logger_reader** %6, align 8
  %25 = getelementptr inbounds %struct.logger_reader, %struct.logger_reader* %24, i32 0, i32 1
  %26 = load %struct.logger_log*, %struct.logger_log** %25, align 8
  store %struct.logger_log* %26, %struct.logger_log** %7, align 8
  %27 = load %struct.file*, %struct.file** %4, align 8
  %28 = load %struct.logger_log*, %struct.logger_log** %7, align 8
  %29 = getelementptr inbounds %struct.logger_log, %struct.logger_log* %28, i32 0, i32 2
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @poll_wait(%struct.file* %27, i32* %29, i32* %30)
  %32 = load %struct.logger_log*, %struct.logger_log** %7, align 8
  %33 = getelementptr inbounds %struct.logger_log, %struct.logger_log* %32, i32 0, i32 1
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.logger_log*, %struct.logger_log** %7, align 8
  %36 = getelementptr inbounds %struct.logger_log, %struct.logger_log* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.logger_reader*, %struct.logger_reader** %6, align 8
  %39 = getelementptr inbounds %struct.logger_reader, %struct.logger_reader* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %37, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %20
  %43 = load i32, i32* @POLLIN, align 4
  %44 = load i32, i32* @POLLRDNORM, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* %8, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %42, %20
  %49 = load %struct.logger_log*, %struct.logger_log** %7, align 8
  %50 = getelementptr inbounds %struct.logger_log, %struct.logger_log* %49, i32 0, i32 1
  %51 = call i32 @mutex_unlock(i32* %50)
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %48, %18
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
