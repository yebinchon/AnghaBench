; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_bcm3510.c_bcm3510_set_frontend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_bcm3510.c_bcm3510_set_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.bcm3510_state* }
%struct.bcm3510_state = type { i32, %struct.bcm3510_hab_cmd_ext_acquire, %struct.bcm3510_hab_cmd_ext_acquire }
%struct.bcm3510_hab_cmd_ext_acquire = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32, i32, i64, i64 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.dvb_frontend_parameters = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.bcm3510_hab_cmd_bert_control = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@CMD_ACQUIRE = common dso_local global i32 0, align 4
@MSGID_EXT_TUNER_ACQUIRE = common dso_local global i32 0, align 4
@CMD_STATE_CONTROL = common dso_local global i32 0, align 4
@MSGID_BERT_CONTROL = common dso_local global i32 0, align 4
@MSGID_BERT_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @bcm3510_set_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm3510_set_frontend(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_frontend_parameters*, align 8
  %6 = alloca %struct.bcm3510_state*, align 8
  %7 = alloca %struct.bcm3510_hab_cmd_ext_acquire, align 8
  %8 = alloca %struct.bcm3510_hab_cmd_bert_control, align 8
  %9 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %5, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 0
  %12 = load %struct.bcm3510_state*, %struct.bcm3510_state** %11, align 8
  store %struct.bcm3510_state* %12, %struct.bcm3510_state** %6, align 8
  %13 = call i32 @memset(%struct.bcm3510_hab_cmd_ext_acquire* %7, i32 0, i32 40)
  %14 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %15 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %47 [
    i32 131, label %19
    i32 130, label %26
    i32 128, label %33
    i32 129, label %40
  ]

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.bcm3510_hab_cmd_ext_acquire, %struct.bcm3510_hab_cmd_ext_acquire* %7, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = getelementptr inbounds %struct.bcm3510_hab_cmd_ext_acquire, %struct.bcm3510_hab_cmd_ext_acquire* %7, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = getelementptr inbounds %struct.bcm3510_hab_cmd_ext_acquire, %struct.bcm3510_hab_cmd_ext_acquire* %7, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  store i32 1, i32* %25, align 4
  br label %50

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.bcm3510_hab_cmd_ext_acquire, %struct.bcm3510_hab_cmd_ext_acquire* %7, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  store i32 2, i32* %28, align 8
  %29 = getelementptr inbounds %struct.bcm3510_hab_cmd_ext_acquire, %struct.bcm3510_hab_cmd_ext_acquire* %7, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  store i32 2, i32* %30, align 8
  %31 = getelementptr inbounds %struct.bcm3510_hab_cmd_ext_acquire, %struct.bcm3510_hab_cmd_ext_acquire* %7, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  store i32 1, i32* %32, align 4
  br label %50

33:                                               ; preds = %2
  %34 = getelementptr inbounds %struct.bcm3510_hab_cmd_ext_acquire, %struct.bcm3510_hab_cmd_ext_acquire* %7, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  store i32 8, i32* %35, align 8
  %36 = getelementptr inbounds %struct.bcm3510_hab_cmd_ext_acquire, %struct.bcm3510_hab_cmd_ext_acquire* %7, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  %38 = getelementptr inbounds %struct.bcm3510_hab_cmd_ext_acquire, %struct.bcm3510_hab_cmd_ext_acquire* %7, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  store i32 0, i32* %39, align 4
  br label %50

40:                                               ; preds = %2
  %41 = getelementptr inbounds %struct.bcm3510_hab_cmd_ext_acquire, %struct.bcm3510_hab_cmd_ext_acquire* %7, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  store i32 9, i32* %42, align 8
  %43 = getelementptr inbounds %struct.bcm3510_hab_cmd_ext_acquire, %struct.bcm3510_hab_cmd_ext_acquire* %7, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  store i32 0, i32* %44, align 8
  %45 = getelementptr inbounds %struct.bcm3510_hab_cmd_ext_acquire, %struct.bcm3510_hab_cmd_ext_acquire* %7, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  store i32 0, i32* %46, align 4
  br label %47

47:                                               ; preds = %2, %40
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %96

50:                                               ; preds = %33, %26, %19
  %51 = getelementptr inbounds %struct.bcm3510_hab_cmd_ext_acquire, %struct.bcm3510_hab_cmd_ext_acquire* %7, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 4
  store i64 0, i64* %52, align 8
  %53 = getelementptr inbounds %struct.bcm3510_hab_cmd_ext_acquire, %struct.bcm3510_hab_cmd_ext_acquire* %7, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  store i32 1, i32* %54, align 4
  %55 = getelementptr inbounds %struct.bcm3510_hab_cmd_ext_acquire, %struct.bcm3510_hab_cmd_ext_acquire* %7, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 2
  store i32 1, i32* %56, align 8
  %57 = getelementptr inbounds %struct.bcm3510_hab_cmd_ext_acquire, %struct.bcm3510_hab_cmd_ext_acquire* %7, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 3
  store i64 0, i64* %58, align 8
  %59 = load %struct.bcm3510_state*, %struct.bcm3510_state** %6, align 8
  %60 = load i32, i32* @CMD_ACQUIRE, align 4
  %61 = load i32, i32* @MSGID_EXT_TUNER_ACQUIRE, align 4
  %62 = bitcast %struct.bcm3510_hab_cmd_ext_acquire* %7 to i32*
  %63 = call i32 @bcm3510_do_hab_cmd(%struct.bcm3510_state* %59, i32 %60, i32 %61, i32* %62, i32 40, i32* null, i32 0)
  %64 = getelementptr inbounds %struct.bcm3510_hab_cmd_bert_control, %struct.bcm3510_hab_cmd_bert_control* %8, i32 0, i32 1
  store i64 0, i64* %64, align 8
  %65 = getelementptr inbounds %struct.bcm3510_hab_cmd_bert_control, %struct.bcm3510_hab_cmd_bert_control* %8, i32 0, i32 0
  store i64 0, i64* %65, align 8
  %66 = load %struct.bcm3510_state*, %struct.bcm3510_state** %6, align 8
  %67 = load i32, i32* @CMD_STATE_CONTROL, align 4
  %68 = load i32, i32* @MSGID_BERT_CONTROL, align 4
  %69 = bitcast %struct.bcm3510_hab_cmd_bert_control* %8 to i32*
  %70 = call i32 @bcm3510_do_hab_cmd(%struct.bcm3510_state* %66, i32 %67, i32 %68, i32* %69, i32 16, i32* null, i32 0)
  %71 = load %struct.bcm3510_state*, %struct.bcm3510_state** %6, align 8
  %72 = load i32, i32* @CMD_STATE_CONTROL, align 4
  %73 = load i32, i32* @MSGID_BERT_SET, align 4
  %74 = bitcast %struct.bcm3510_hab_cmd_bert_control* %8 to i32*
  %75 = call i32 @bcm3510_do_hab_cmd(%struct.bcm3510_state* %71, i32 %72, i32 %73, i32* %74, i32 16, i32* null, i32 0)
  %76 = load %struct.bcm3510_state*, %struct.bcm3510_state** %6, align 8
  %77 = call i32 @bcm3510_bert_reset(%struct.bcm3510_state* %76)
  %78 = load %struct.bcm3510_state*, %struct.bcm3510_state** %6, align 8
  %79 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %80 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @bcm3510_set_freq(%struct.bcm3510_state* %78, i32 %81)
  store i32 %82, i32* %9, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %50
  %85 = load i32, i32* %9, align 4
  store i32 %85, i32* %3, align 4
  br label %96

86:                                               ; preds = %50
  %87 = load %struct.bcm3510_state*, %struct.bcm3510_state** %6, align 8
  %88 = getelementptr inbounds %struct.bcm3510_state, %struct.bcm3510_state* %87, i32 0, i32 2
  %89 = call i32 @memset(%struct.bcm3510_hab_cmd_ext_acquire* %88, i32 0, i32 40)
  %90 = load %struct.bcm3510_state*, %struct.bcm3510_state** %6, align 8
  %91 = getelementptr inbounds %struct.bcm3510_state, %struct.bcm3510_state* %90, i32 0, i32 1
  %92 = call i32 @memset(%struct.bcm3510_hab_cmd_ext_acquire* %91, i32 0, i32 40)
  %93 = load %struct.bcm3510_state*, %struct.bcm3510_state** %6, align 8
  %94 = getelementptr inbounds %struct.bcm3510_state, %struct.bcm3510_state* %93, i32 0, i32 0
  store i32 500, i32* %94, align 8
  %95 = call i32 @msleep(i32 200)
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %86, %84, %47
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @memset(%struct.bcm3510_hab_cmd_ext_acquire*, i32, i32) #1

declare dso_local i32 @bcm3510_do_hab_cmd(%struct.bcm3510_state*, i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @bcm3510_bert_reset(%struct.bcm3510_state*) #1

declare dso_local i32 @bcm3510_set_freq(%struct.bcm3510_state*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
