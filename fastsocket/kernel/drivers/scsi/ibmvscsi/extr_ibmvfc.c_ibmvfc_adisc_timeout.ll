; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_adisc_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_adisc_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvfc_target = type { i64, i32, i32, i32, %struct.ibmvfc_host* }
%struct.ibmvfc_host = type { i64, i64, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.ibmvfc_event = type { %struct.TYPE_4__, %struct.ibmvfc_target* }
%struct.TYPE_4__ = type { %struct.ibmvfc_tmf }
%struct.ibmvfc_tmf = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"ADISC timeout\0A\00", align 1
@disc_threads = common dso_local global i64 0, align 8
@IBMVFC_TGT_ACTION_INIT_WAIT = common dso_local global i64 0, align 8
@IBMVFC_INITIALIZING = common dso_local global i64 0, align 8
@IBMVFC_HOST_ACTION_QUERY_TGTS = common dso_local global i64 0, align 8
@ibmvfc_tgt_adisc_cancel_done = common dso_local global i32 0, align 4
@IBMVFC_MAD_FORMAT = common dso_local global i32 0, align 4
@IBMVFC_TMF_MAD = common dso_local global i32 0, align 4
@default_timeout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Failed to send cancel event for ADISC. rc=%d\0A\00", align 1
@ibmvfc_release_tgt = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Attempting to cancel ADISC\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibmvfc_target*)* @ibmvfc_adisc_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmvfc_adisc_timeout(%struct.ibmvfc_target* %0) #0 {
  %2 = alloca %struct.ibmvfc_target*, align 8
  %3 = alloca %struct.ibmvfc_host*, align 8
  %4 = alloca %struct.ibmvfc_event*, align 8
  %5 = alloca %struct.ibmvfc_tmf*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ibmvfc_target* %0, %struct.ibmvfc_target** %2, align 8
  %8 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %9 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %8, i32 0, i32 4
  %10 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %9, align 8
  store %struct.ibmvfc_host* %10, %struct.ibmvfc_host** %3, align 8
  %11 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %12 = call i32 @tgt_dbg(%struct.ibmvfc_target* %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %14 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %13, i32 0, i32 3
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @spin_lock_irqsave(i32 %17, i64 %18)
  %20 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %21 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @disc_threads, align 8
  %24 = icmp sge i64 %22, %23
  br i1 %24, label %43, label %25

25:                                               ; preds = %1
  %26 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %27 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @IBMVFC_TGT_ACTION_INIT_WAIT, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %43, label %31

31:                                               ; preds = %25
  %32 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %33 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @IBMVFC_INITIALIZING, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %31
  %38 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %39 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @IBMVFC_HOST_ACTION_QUERY_TGTS, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %37, %31, %25, %1
  %44 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %45 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %44, i32 0, i32 3
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32 %48, i64 %49)
  br label %124

51:                                               ; preds = %37
  %52 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %53 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %53, align 8
  %56 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %57 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %56, i32 0, i32 1
  %58 = call i32 @kref_get(i32* %57)
  %59 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %60 = call %struct.ibmvfc_event* @ibmvfc_get_event(%struct.ibmvfc_host* %59)
  store %struct.ibmvfc_event* %60, %struct.ibmvfc_event** %4, align 8
  %61 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %4, align 8
  %62 = load i32, i32* @ibmvfc_tgt_adisc_cancel_done, align 4
  %63 = load i32, i32* @IBMVFC_MAD_FORMAT, align 4
  %64 = call i32 @ibmvfc_init_event(%struct.ibmvfc_event* %61, i32 %62, i32 %63)
  %65 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %66 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %4, align 8
  %67 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %66, i32 0, i32 1
  store %struct.ibmvfc_target* %65, %struct.ibmvfc_target** %67, align 8
  %68 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %4, align 8
  %69 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  store %struct.ibmvfc_tmf* %70, %struct.ibmvfc_tmf** %5, align 8
  %71 = load %struct.ibmvfc_tmf*, %struct.ibmvfc_tmf** %5, align 8
  %72 = call i32 @memset(%struct.ibmvfc_tmf* %71, i32 0, i32 20)
  %73 = load %struct.ibmvfc_tmf*, %struct.ibmvfc_tmf** %5, align 8
  %74 = getelementptr inbounds %struct.ibmvfc_tmf, %struct.ibmvfc_tmf* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  store i32 1, i32* %75, align 4
  %76 = load i32, i32* @IBMVFC_TMF_MAD, align 4
  %77 = load %struct.ibmvfc_tmf*, %struct.ibmvfc_tmf** %5, align 8
  %78 = getelementptr inbounds %struct.ibmvfc_tmf, %struct.ibmvfc_tmf* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 2
  store i32 %76, i32* %79, align 4
  %80 = load %struct.ibmvfc_tmf*, %struct.ibmvfc_tmf** %5, align 8
  %81 = getelementptr inbounds %struct.ibmvfc_tmf, %struct.ibmvfc_tmf* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  store i32 20, i32* %82, align 4
  %83 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %84 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.ibmvfc_tmf*, %struct.ibmvfc_tmf** %5, align 8
  %87 = getelementptr inbounds %struct.ibmvfc_tmf, %struct.ibmvfc_tmf* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %89 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.ibmvfc_tmf*, %struct.ibmvfc_tmf** %5, align 8
  %92 = getelementptr inbounds %struct.ibmvfc_tmf, %struct.ibmvfc_tmf* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 4
  %93 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %4, align 8
  %94 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %95 = load i32, i32* @default_timeout, align 4
  %96 = call i32 @ibmvfc_send_event(%struct.ibmvfc_event* %93, %struct.ibmvfc_host* %94, i32 %95)
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %113

99:                                               ; preds = %51
  %100 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @tgt_err(%struct.ibmvfc_target* %100, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %101)
  %103 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %104 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %105, -1
  store i64 %106, i64* %104, align 8
  %107 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %108 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %107, i32 0, i32 1
  %109 = load i32, i32* @ibmvfc_release_tgt, align 4
  %110 = call i32 @kref_put(i32* %108, i32 %109)
  %111 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %112 = call i32 @__ibmvfc_reset_host(%struct.ibmvfc_host* %111)
  br label %116

113:                                              ; preds = %51
  %114 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %115 = call i32 @tgt_dbg(%struct.ibmvfc_target* %114, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %116

116:                                              ; preds = %113, %99
  %117 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %118 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %117, i32 0, i32 3
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i64, i64* %6, align 8
  %123 = call i32 @spin_unlock_irqrestore(i32 %121, i64 %122)
  br label %124

124:                                              ; preds = %116, %43
  ret void
}

declare dso_local i32 @tgt_dbg(%struct.ibmvfc_target*, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local %struct.ibmvfc_event* @ibmvfc_get_event(%struct.ibmvfc_host*) #1

declare dso_local i32 @ibmvfc_init_event(%struct.ibmvfc_event*, i32, i32) #1

declare dso_local i32 @memset(%struct.ibmvfc_tmf*, i32, i32) #1

declare dso_local i32 @ibmvfc_send_event(%struct.ibmvfc_event*, %struct.ibmvfc_host*, i32) #1

declare dso_local i32 @tgt_err(%struct.ibmvfc_target*, i8*, i32) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @__ibmvfc_reset_host(%struct.ibmvfc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
