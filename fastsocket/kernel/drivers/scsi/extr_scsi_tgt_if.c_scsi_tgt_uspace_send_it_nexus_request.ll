; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_tgt_if.c_scsi_tgt_uspace_send_it_nexus_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_tgt_if.c_scsi_tgt_uspace_send_it_nexus_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tgt_event = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i64 }

@.str = private unnamed_addr constant [12 x i8] c"%d %x %llx\0A\00", align 1
@TGT_KEVENT_IT_NEXUS_REQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"tx buf is full, could not send\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scsi_tgt_uspace_send_it_nexus_request(i32 %0, i64 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.tgt_event, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %11 = call i32 @memset(%struct.tgt_event* %9, i32 0, i32 24)
  %12 = load i32, i32* %5, align 4
  %13 = getelementptr inbounds %struct.tgt_event, %struct.tgt_event* %9, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store i32 %12, i32* %15, align 8
  %16 = load i32, i32* %7, align 4
  %17 = getelementptr inbounds %struct.tgt_event, %struct.tgt_event* %9, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  store i32 %16, i32* %19, align 4
  %20 = load i64, i64* %6, align 8
  %21 = getelementptr inbounds %struct.tgt_event, %struct.tgt_event* %9, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 3
  store i64 %20, i64* %23, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %4
  %27 = getelementptr inbounds %struct.tgt_event, %struct.tgt_event* %9, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 @strncpy(i32 %30, i8* %31, i32 4)
  br label %33

33:                                               ; preds = %26, %4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @dprintk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35, i64 %36)
  %38 = load i32, i32* @TGT_KEVENT_IT_NEXUS_REQ, align 4
  %39 = call i32 @tgt_uspace_send_event(i32 %38, %struct.tgt_event* %9)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = call i32 @eprintk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %33
  %45 = load i32, i32* %10, align 4
  ret i32 %45
}

declare dso_local i32 @memset(%struct.tgt_event*, i32, i32) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @dprintk(i8*, i32, i32, i64) #1

declare dso_local i32 @tgt_uspace_send_event(i32, %struct.tgt_event*) #1

declare dso_local i32 @eprintk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
