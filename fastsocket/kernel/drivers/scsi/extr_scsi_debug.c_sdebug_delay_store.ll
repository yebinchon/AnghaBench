; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_debug.c_sdebug_delay_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_debug.c_sdebug_delay_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_driver = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"%10s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@scsi_debug_delay = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device_driver*, i8*, i64)* @sdebug_delay_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sdebug_delay_store(%struct.device_driver* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.device_driver*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca [20 x i8], align 16
  store %struct.device_driver* %0, %struct.device_driver** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %12 = call i32 (i8*, i8*, ...) @sscanf(i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = icmp eq i32 1, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %3
  %15 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %16 = call i32 (i8*, i8*, ...) @sscanf(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %8)
  %17 = icmp eq i32 1, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = load i32, i32* %8, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* @scsi_debug_delay, align 4
  %23 = load i64, i64* %7, align 8
  store i64 %23, i64* %4, align 8
  br label %28

24:                                               ; preds = %18, %14
  br label %25

25:                                               ; preds = %24, %3
  %26 = load i64, i64* @EINVAL, align 8
  %27 = sub i64 0, %26
  store i64 %27, i64* %4, align 8
  br label %28

28:                                               ; preds = %25, %21
  %29 = load i64, i64* %4, align 8
  ret i64 %29
}

declare dso_local i32 @sscanf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
