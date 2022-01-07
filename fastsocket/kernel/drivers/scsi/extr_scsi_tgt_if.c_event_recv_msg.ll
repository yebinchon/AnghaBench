; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_tgt_if.c_event_recv_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_tgt_if.c_event_recv_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tgt_event = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"unknown type %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tgt_event*)* @event_recv_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @event_recv_msg(%struct.tgt_event* %0) #0 {
  %2 = alloca %struct.tgt_event*, align 8
  %3 = alloca i32, align 4
  store %struct.tgt_event* %0, %struct.tgt_event** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.tgt_event*, %struct.tgt_event** %2, align 8
  %5 = getelementptr inbounds %struct.tgt_event, %struct.tgt_event* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %94 [
    i32 130, label %8
    i32 128, label %55
    i32 129, label %77
  ]

8:                                                ; preds = %1
  %9 = load %struct.tgt_event*, %struct.tgt_event** %2, align 8
  %10 = getelementptr inbounds %struct.tgt_event, %struct.tgt_event* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 8
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.tgt_event*, %struct.tgt_event** %2, align 8
  %15 = getelementptr inbounds %struct.tgt_event, %struct.tgt_event* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.tgt_event*, %struct.tgt_event** %2, align 8
  %20 = getelementptr inbounds %struct.tgt_event, %struct.tgt_event* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.tgt_event*, %struct.tgt_event** %2, align 8
  %25 = getelementptr inbounds %struct.tgt_event, %struct.tgt_event* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.tgt_event*, %struct.tgt_event** %2, align 8
  %30 = getelementptr inbounds %struct.tgt_event, %struct.tgt_event* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.tgt_event*, %struct.tgt_event** %2, align 8
  %35 = getelementptr inbounds %struct.tgt_event, %struct.tgt_event* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.tgt_event*, %struct.tgt_event** %2, align 8
  %40 = getelementptr inbounds %struct.tgt_event, %struct.tgt_event* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.tgt_event*, %struct.tgt_event** %2, align 8
  %45 = getelementptr inbounds %struct.tgt_event, %struct.tgt_event* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.tgt_event*, %struct.tgt_event** %2, align 8
  %50 = getelementptr inbounds %struct.tgt_event, %struct.tgt_event* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @scsi_tgt_kspace_exec(i32 %13, i32 %18, i32 %23, i32 %28, i32 %33, i32 %38, i32 %43, i32 %48, i32 %53)
  store i32 %54, i32* %3, align 4
  br label %102

55:                                               ; preds = %1
  %56 = load %struct.tgt_event*, %struct.tgt_event** %2, align 8
  %57 = getelementptr inbounds %struct.tgt_event, %struct.tgt_event* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.tgt_event*, %struct.tgt_event** %2, align 8
  %62 = getelementptr inbounds %struct.tgt_event, %struct.tgt_event* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.tgt_event*, %struct.tgt_event** %2, align 8
  %67 = getelementptr inbounds %struct.tgt_event, %struct.tgt_event* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.tgt_event*, %struct.tgt_event** %2, align 8
  %72 = getelementptr inbounds %struct.tgt_event, %struct.tgt_event* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @scsi_tgt_kspace_tsk_mgmt(i32 %60, i32 %65, i32 %70, i32 %75)
  store i32 %76, i32* %3, align 4
  br label %102

77:                                               ; preds = %1
  %78 = load %struct.tgt_event*, %struct.tgt_event** %2, align 8
  %79 = getelementptr inbounds %struct.tgt_event, %struct.tgt_event* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.tgt_event*, %struct.tgt_event** %2, align 8
  %84 = getelementptr inbounds %struct.tgt_event, %struct.tgt_event* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.tgt_event*, %struct.tgt_event** %2, align 8
  %89 = getelementptr inbounds %struct.tgt_event, %struct.tgt_event* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @scsi_tgt_kspace_it_nexus_rsp(i32 %82, i32 %87, i32 %92)
  store i32 %93, i32* %3, align 4
  br label %102

94:                                               ; preds = %1
  %95 = load %struct.tgt_event*, %struct.tgt_event** %2, align 8
  %96 = getelementptr inbounds %struct.tgt_event, %struct.tgt_event* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @eprintk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %94, %77, %55, %8
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @scsi_tgt_kspace_exec(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @scsi_tgt_kspace_tsk_mgmt(i32, i32, i32, i32) #1

declare dso_local i32 @scsi_tgt_kspace_it_nexus_rsp(i32, i32, i32) #1

declare dso_local i32 @eprintk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
