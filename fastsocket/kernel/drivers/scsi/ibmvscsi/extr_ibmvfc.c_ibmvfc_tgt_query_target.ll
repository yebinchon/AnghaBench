; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_tgt_query_target.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_tgt_query_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvfc_target = type { i32, %struct.TYPE_6__, %struct.ibmvfc_host* }
%struct.TYPE_6__ = type { i32 }
%struct.ibmvfc_host = type { i64 }
%struct.ibmvfc_query_tgt = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.ibmvfc_event = type { %struct.TYPE_4__, %struct.ibmvfc_target* }
%struct.TYPE_4__ = type { %struct.ibmvfc_query_tgt }

@disc_threads = common dso_local global i64 0, align 8
@ibmvfc_tgt_query_target_done = common dso_local global i32 0, align 4
@IBMVFC_MAD_FORMAT = common dso_local global i32 0, align 4
@IBMVFC_QUERY_TARGET = common dso_local global i32 0, align 4
@IBMVFC_TGT_ACTION_INIT_WAIT = common dso_local global i32 0, align 4
@default_timeout = common dso_local global i32 0, align 4
@IBMVFC_TGT_ACTION_NONE = common dso_local global i32 0, align 4
@ibmvfc_release_tgt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Sent Query Target\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibmvfc_target*)* @ibmvfc_tgt_query_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmvfc_tgt_query_target(%struct.ibmvfc_target* %0) #0 {
  %2 = alloca %struct.ibmvfc_target*, align 8
  %3 = alloca %struct.ibmvfc_query_tgt*, align 8
  %4 = alloca %struct.ibmvfc_host*, align 8
  %5 = alloca %struct.ibmvfc_event*, align 8
  store %struct.ibmvfc_target* %0, %struct.ibmvfc_target** %2, align 8
  %6 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %7 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %6, i32 0, i32 2
  %8 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %7, align 8
  store %struct.ibmvfc_host* %8, %struct.ibmvfc_host** %4, align 8
  %9 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %10 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @disc_threads, align 8
  %13 = icmp sge i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %76

15:                                               ; preds = %1
  %16 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %17 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %16, i32 0, i32 0
  %18 = call i32 @kref_get(i32* %17)
  %19 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %20 = call %struct.ibmvfc_event* @ibmvfc_get_event(%struct.ibmvfc_host* %19)
  store %struct.ibmvfc_event* %20, %struct.ibmvfc_event** %5, align 8
  %21 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %22 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* %22, align 8
  %25 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %26 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %27 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %26, i32 0, i32 1
  store %struct.ibmvfc_target* %25, %struct.ibmvfc_target** %27, align 8
  %28 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %29 = load i32, i32* @ibmvfc_tgt_query_target_done, align 4
  %30 = load i32, i32* @IBMVFC_MAD_FORMAT, align 4
  %31 = call i32 @ibmvfc_init_event(%struct.ibmvfc_event* %28, i32 %29, i32 %30)
  %32 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %33 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store %struct.ibmvfc_query_tgt* %34, %struct.ibmvfc_query_tgt** %3, align 8
  %35 = load %struct.ibmvfc_query_tgt*, %struct.ibmvfc_query_tgt** %3, align 8
  %36 = call i32 @memset(%struct.ibmvfc_query_tgt* %35, i32 0, i32 16)
  %37 = load %struct.ibmvfc_query_tgt*, %struct.ibmvfc_query_tgt** %3, align 8
  %38 = getelementptr inbounds %struct.ibmvfc_query_tgt, %struct.ibmvfc_query_tgt* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  store i32 1, i32* %39, align 4
  %40 = load i32, i32* @IBMVFC_QUERY_TARGET, align 4
  %41 = load %struct.ibmvfc_query_tgt*, %struct.ibmvfc_query_tgt** %3, align 8
  %42 = getelementptr inbounds %struct.ibmvfc_query_tgt, %struct.ibmvfc_query_tgt* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  store i32 %40, i32* %43, align 4
  %44 = load %struct.ibmvfc_query_tgt*, %struct.ibmvfc_query_tgt** %3, align 8
  %45 = getelementptr inbounds %struct.ibmvfc_query_tgt, %struct.ibmvfc_query_tgt* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  store i32 16, i32* %46, align 4
  %47 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %48 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ibmvfc_query_tgt*, %struct.ibmvfc_query_tgt** %3, align 8
  %52 = getelementptr inbounds %struct.ibmvfc_query_tgt, %struct.ibmvfc_query_tgt* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %54 = load i32, i32* @IBMVFC_TGT_ACTION_INIT_WAIT, align 4
  %55 = call i32 @ibmvfc_set_tgt_action(%struct.ibmvfc_target* %53, i32 %54)
  %56 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %57 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %58 = load i32, i32* @default_timeout, align 4
  %59 = call i64 @ibmvfc_send_event(%struct.ibmvfc_event* %56, %struct.ibmvfc_host* %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %15
  %62 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %63 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, -1
  store i64 %65, i64* %63, align 8
  %66 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %67 = load i32, i32* @IBMVFC_TGT_ACTION_NONE, align 4
  %68 = call i32 @ibmvfc_set_tgt_action(%struct.ibmvfc_target* %66, i32 %67)
  %69 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %70 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %69, i32 0, i32 0
  %71 = load i32, i32* @ibmvfc_release_tgt, align 4
  %72 = call i32 @kref_put(i32* %70, i32 %71)
  br label %76

73:                                               ; preds = %15
  %74 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %75 = call i32 @tgt_dbg(%struct.ibmvfc_target* %74, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %76

76:                                               ; preds = %14, %73, %61
  ret void
}

declare dso_local i32 @kref_get(i32*) #1

declare dso_local %struct.ibmvfc_event* @ibmvfc_get_event(%struct.ibmvfc_host*) #1

declare dso_local i32 @ibmvfc_init_event(%struct.ibmvfc_event*, i32, i32) #1

declare dso_local i32 @memset(%struct.ibmvfc_query_tgt*, i32, i32) #1

declare dso_local i32 @ibmvfc_set_tgt_action(%struct.ibmvfc_target*, i32) #1

declare dso_local i64 @ibmvfc_send_event(%struct.ibmvfc_event*, %struct.ibmvfc_host*, i32) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @tgt_dbg(%struct.ibmvfc_target*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
