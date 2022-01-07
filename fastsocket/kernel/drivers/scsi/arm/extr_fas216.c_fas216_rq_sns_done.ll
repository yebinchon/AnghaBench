; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/arm/extr_fas216.c_fas216_rq_sns_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/arm/extr_fas216.c_fas216_rq_sns_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.scsi_cmnd = type { i32 (%struct.scsi_cmnd*)*, i32, %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_6__ = type { i32 }

@LOG_CONNECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"request sense complete, result=0x%04x%02x%02x\00", align 1
@DID_OK = common dso_local global i32 0, align 4
@GOOD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.scsi_cmnd*, i32)* @fas216_rq_sns_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fas216_rq_sns_done(%struct.TYPE_8__* %0, %struct.scsi_cmnd* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %8 = load i32, i32* @LOG_CONNECT, align 4
  %9 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %10 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %9, i32 0, i32 3
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %16 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %20 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @fas216_log_target(%struct.TYPE_8__* %7, i32 %8, i32 %13, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %18, i64 %22)
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @DID_OK, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %34, label %27

27:                                               ; preds = %3
  %28 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %29 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @GOOD, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %27, %3
  %35 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %36 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @memset(i32 %37, i32 0, i32 4)
  br label %39

39:                                               ; preds = %34, %27
  %40 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = call i32 @scsi_eh_restore_cmnd(%struct.scsi_cmnd* %40, i32* %42)
  %44 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %45 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %44, i32 0, i32 0
  %46 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %45, align 8
  %47 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %48 = call i32 %46(%struct.scsi_cmnd* %47)
  ret void
}

declare dso_local i32 @fas216_log_target(%struct.TYPE_8__*, i32, i32, i8*, i32, i32, i64) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @scsi_eh_restore_cmnd(%struct.scsi_cmnd*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
