; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_tgt_adisc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_tgt_adisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvfc_target = type { i32, %struct.TYPE_15__, i32, i32, %struct.ibmvfc_host* }
%struct.TYPE_15__ = type { i64, void (i64)*, i64 }
%struct.ibmvfc_host = type { i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.ibmvfc_passthru_mad = type { %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.ibmvfc_event = type { %struct.TYPE_10__, %struct.ibmvfc_target* }
%struct.TYPE_10__ = type { %struct.ibmvfc_passthru_mad }

@disc_threads = common dso_local global i64 0, align 8
@ibmvfc_tgt_adisc_done = common dso_local global i32 0, align 4
@IBMVFC_MAD_FORMAT = common dso_local global i32 0, align 4
@IBMVFC_FC_ELS = common dso_local global i32 0, align 4
@IBMVFC_ADISC = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@IBMVFC_ADISC_TIMEOUT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@ibmvfc_adisc_timeout = common dso_local global i64 0, align 8
@IBMVFC_TGT_ACTION_INIT_WAIT = common dso_local global i32 0, align 4
@IBMVFC_ADISC_PLUS_CANCEL_TIMEOUT = common dso_local global i32 0, align 4
@IBMVFC_TGT_ACTION_NONE = common dso_local global i32 0, align 4
@ibmvfc_release_tgt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Sent ADISC\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibmvfc_target*)* @ibmvfc_tgt_adisc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmvfc_tgt_adisc(%struct.ibmvfc_target* %0) #0 {
  %2 = alloca %struct.ibmvfc_target*, align 8
  %3 = alloca %struct.ibmvfc_passthru_mad*, align 8
  %4 = alloca %struct.ibmvfc_host*, align 8
  %5 = alloca %struct.ibmvfc_event*, align 8
  store %struct.ibmvfc_target* %0, %struct.ibmvfc_target** %2, align 8
  %6 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %7 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %6, i32 0, i32 4
  %8 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %7, align 8
  store %struct.ibmvfc_host* %8, %struct.ibmvfc_host** %4, align 8
  %9 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %10 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @disc_threads, align 8
  %13 = icmp sge i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %157

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
  %25 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %26 = load i32, i32* @ibmvfc_tgt_adisc_done, align 4
  %27 = load i32, i32* @IBMVFC_MAD_FORMAT, align 4
  %28 = call i32 @ibmvfc_init_event(%struct.ibmvfc_event* %25, i32 %26, i32 %27)
  %29 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %30 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %31 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %30, i32 0, i32 1
  store %struct.ibmvfc_target* %29, %struct.ibmvfc_target** %31, align 8
  %32 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %33 = call i32 @ibmvfc_init_passthru(%struct.ibmvfc_event* %32)
  %34 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %35 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  store %struct.ibmvfc_passthru_mad* %36, %struct.ibmvfc_passthru_mad** %3, align 8
  %37 = load i32, i32* @IBMVFC_FC_ELS, align 4
  %38 = load %struct.ibmvfc_passthru_mad*, %struct.ibmvfc_passthru_mad** %3, align 8
  %39 = getelementptr inbounds %struct.ibmvfc_passthru_mad, %struct.ibmvfc_passthru_mad* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 2
  store i32 %37, i32* %40, align 8
  %41 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %42 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ibmvfc_passthru_mad*, %struct.ibmvfc_passthru_mad** %3, align 8
  %45 = getelementptr inbounds %struct.ibmvfc_passthru_mad, %struct.ibmvfc_passthru_mad* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 4
  %47 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %48 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.ibmvfc_passthru_mad*, %struct.ibmvfc_passthru_mad** %3, align 8
  %51 = getelementptr inbounds %struct.ibmvfc_passthru_mad, %struct.ibmvfc_passthru_mad* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 8
  %53 = load i32, i32* @IBMVFC_ADISC, align 4
  %54 = load %struct.ibmvfc_passthru_mad*, %struct.ibmvfc_passthru_mad** %3, align 8
  %55 = getelementptr inbounds %struct.ibmvfc_passthru_mad, %struct.ibmvfc_passthru_mad* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  store i32 %53, i32* %58, align 4
  %59 = load %struct.ibmvfc_passthru_mad*, %struct.ibmvfc_passthru_mad** %3, align 8
  %60 = getelementptr inbounds %struct.ibmvfc_passthru_mad, %struct.ibmvfc_passthru_mad* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  %64 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %65 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %64, i32 0, i32 1
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 2
  %69 = call i32 @memcpy(i32* %63, i32* %68, i32 4)
  %70 = load %struct.ibmvfc_passthru_mad*, %struct.ibmvfc_passthru_mad** %3, align 8
  %71 = getelementptr inbounds %struct.ibmvfc_passthru_mad, %struct.ibmvfc_passthru_mad* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 4
  %75 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %76 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %75, i32 0, i32 1
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 1
  %80 = call i32 @memcpy(i32* %74, i32* %79, i32 4)
  %81 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %82 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %81, i32 0, i32 1
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, 16777215
  %88 = load %struct.ibmvfc_passthru_mad*, %struct.ibmvfc_passthru_mad** %3, align 8
  %89 = getelementptr inbounds %struct.ibmvfc_passthru_mad, %struct.ibmvfc_passthru_mad* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 6
  store i32 %87, i32* %92, align 4
  %93 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %94 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %93, i32 0, i32 1
  %95 = call i64 @timer_pending(%struct.TYPE_15__* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %15
  %98 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %99 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %98, i32 0, i32 1
  %100 = load i64, i64* @jiffies, align 8
  %101 = load i32, i32* @IBMVFC_ADISC_TIMEOUT, align 4
  %102 = load i32, i32* @HZ, align 4
  %103 = mul nsw i32 %101, %102
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %100, %104
  %106 = call i32 @mod_timer(%struct.TYPE_15__* %99, i64 %105)
  br label %130

107:                                              ; preds = %15
  %108 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %109 = ptrtoint %struct.ibmvfc_target* %108 to i64
  %110 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %111 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 0
  store i64 %109, i64* %112, align 8
  %113 = load i64, i64* @jiffies, align 8
  %114 = load i32, i32* @IBMVFC_ADISC_TIMEOUT, align 4
  %115 = load i32, i32* @HZ, align 4
  %116 = mul nsw i32 %114, %115
  %117 = sext i32 %116 to i64
  %118 = add nsw i64 %113, %117
  %119 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %120 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 2
  store i64 %118, i64* %121, align 8
  %122 = load i64, i64* @ibmvfc_adisc_timeout, align 8
  %123 = inttoptr i64 %122 to void (i64)*
  %124 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %125 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 1
  store void (i64)* %123, void (i64)** %126, align 8
  %127 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %128 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %127, i32 0, i32 1
  %129 = call i32 @add_timer(%struct.TYPE_15__* %128)
  br label %130

130:                                              ; preds = %107, %97
  %131 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %132 = load i32, i32* @IBMVFC_TGT_ACTION_INIT_WAIT, align 4
  %133 = call i32 @ibmvfc_set_tgt_action(%struct.ibmvfc_target* %131, i32 %132)
  %134 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %135 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %136 = load i32, i32* @IBMVFC_ADISC_PLUS_CANCEL_TIMEOUT, align 4
  %137 = call i64 @ibmvfc_send_event(%struct.ibmvfc_event* %134, %struct.ibmvfc_host* %135, i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %154

139:                                              ; preds = %130
  %140 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %141 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = add nsw i64 %142, -1
  store i64 %143, i64* %141, align 8
  %144 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %145 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %144, i32 0, i32 1
  %146 = call i32 @del_timer(%struct.TYPE_15__* %145)
  %147 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %148 = load i32, i32* @IBMVFC_TGT_ACTION_NONE, align 4
  %149 = call i32 @ibmvfc_set_tgt_action(%struct.ibmvfc_target* %147, i32 %148)
  %150 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %151 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %150, i32 0, i32 0
  %152 = load i32, i32* @ibmvfc_release_tgt, align 4
  %153 = call i32 @kref_put(i32* %151, i32 %152)
  br label %157

154:                                              ; preds = %130
  %155 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %156 = call i32 @tgt_dbg(%struct.ibmvfc_target* %155, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %157

157:                                              ; preds = %14, %154, %139
  ret void
}

declare dso_local i32 @kref_get(i32*) #1

declare dso_local %struct.ibmvfc_event* @ibmvfc_get_event(%struct.ibmvfc_host*) #1

declare dso_local i32 @ibmvfc_init_event(%struct.ibmvfc_event*, i32, i32) #1

declare dso_local i32 @ibmvfc_init_passthru(%struct.ibmvfc_event*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @timer_pending(%struct.TYPE_15__*) #1

declare dso_local i32 @mod_timer(%struct.TYPE_15__*, i64) #1

declare dso_local i32 @add_timer(%struct.TYPE_15__*) #1

declare dso_local i32 @ibmvfc_set_tgt_action(%struct.ibmvfc_target*, i32) #1

declare dso_local i64 @ibmvfc_send_event(%struct.ibmvfc_event*, %struct.ibmvfc_host*, i32) #1

declare dso_local i32 @del_timer(%struct.TYPE_15__*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @tgt_dbg(%struct.ibmvfc_target*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
