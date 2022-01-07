; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_stop_card.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_stop_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i64, %struct.TYPE_6__, %struct.TYPE_6__, i64, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@SETUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"stopcard\00", align 1
@SET_PROMISC_MODE_ON = common dso_local global i64 0, align 8
@QETH_DIAGS_CMD_TRACE_DISABLE = common dso_local global i32 0, align 4
@CH_STATE_UP = common dso_local global i64 0, align 8
@CARD_STATE_UP = common dso_local global i64 0, align 8
@CARD_STATE_SOFTSETUP = common dso_local global i64 0, align 8
@CARD_STATE_HARDSETUP = common dso_local global i64 0, align 8
@CARD_STATE_DOWN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, i32)* @qeth_l3_stop_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l3_stop_card(%struct.qeth_card* %0, i32 %1) #0 {
  %3 = alloca %struct.qeth_card*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @SETUP, align 4
  %7 = call i32 @QETH_DBF_TEXT(i32 %6, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @SETUP, align 4
  %9 = call i32 @QETH_DBF_HEX(i32 %8, i32 2, %struct.qeth_card** %3, i32 8)
  %10 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %11 = call i32 @qeth_set_allowed_threads(%struct.qeth_card* %10, i32 0, i32 1)
  %12 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %13 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %2
  %18 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %19 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SET_PROMISC_MODE_ON, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %26 = load i32, i32* @QETH_DIAGS_CMD_TRACE_DISABLE, align 4
  %27 = call i32 @qeth_diags_trace(%struct.qeth_card* %25, i32 %26)
  br label %28

28:                                               ; preds = %24, %17, %2
  %29 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %30 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @CH_STATE_UP, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %73

35:                                               ; preds = %28
  %36 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %37 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @CH_STATE_UP, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %73

42:                                               ; preds = %35
  %43 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %44 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @CARD_STATE_UP, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %73

48:                                               ; preds = %42
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %53 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @qeth_l3_stop(i64 %54)
  br label %69

56:                                               ; preds = %48
  %57 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %58 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = call i32 (...) @rtnl_lock()
  %63 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %64 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @dev_close(i64 %65)
  %67 = call i32 (...) @rtnl_unlock()
  br label %68

68:                                               ; preds = %61, %56
  br label %69

69:                                               ; preds = %68, %51
  %70 = load i64, i64* @CARD_STATE_SOFTSETUP, align 8
  %71 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %72 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  br label %73

73:                                               ; preds = %69, %42, %35, %28
  %74 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %75 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @CARD_STATE_SOFTSETUP, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %73
  %80 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %81 = call i32 @qeth_l3_clear_ip_list(%struct.qeth_card* %80, i32 1)
  %82 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %83 = call i32 @qeth_clear_ipacmd_list(%struct.qeth_card* %82)
  %84 = load i64, i64* @CARD_STATE_HARDSETUP, align 8
  %85 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %86 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  br label %87

87:                                               ; preds = %79, %73
  %88 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %89 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @CARD_STATE_HARDSETUP, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %103

93:                                               ; preds = %87
  %94 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %95 = call i32 @qeth_qdio_clear_card(%struct.qeth_card* %94, i32 0)
  %96 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %97 = call i32 @qeth_clear_qdio_buffers(%struct.qeth_card* %96)
  %98 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %99 = call i32 @qeth_clear_working_pool_list(%struct.qeth_card* %98)
  %100 = load i64, i64* @CARD_STATE_DOWN, align 8
  %101 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %102 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %101, i32 0, i32 0
  store i64 %100, i64* %102, align 8
  br label %103

103:                                              ; preds = %93, %87
  %104 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %105 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @CARD_STATE_DOWN, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %116

109:                                              ; preds = %103
  %110 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %111 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %110, i32 0, i32 2
  %112 = call i32 @qeth_clear_cmd_buffers(%struct.TYPE_6__* %111)
  %113 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %114 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %113, i32 0, i32 1
  %115 = call i32 @qeth_clear_cmd_buffers(%struct.TYPE_6__* %114)
  br label %116

116:                                              ; preds = %109, %103
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @QETH_DBF_HEX(i32, i32, %struct.qeth_card**, i32) #1

declare dso_local i32 @qeth_set_allowed_threads(%struct.qeth_card*, i32, i32) #1

declare dso_local i32 @qeth_diags_trace(%struct.qeth_card*, i32) #1

declare dso_local i32 @qeth_l3_stop(i64) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @dev_close(i64) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @qeth_l3_clear_ip_list(%struct.qeth_card*, i32) #1

declare dso_local i32 @qeth_clear_ipacmd_list(%struct.qeth_card*) #1

declare dso_local i32 @qeth_qdio_clear_card(%struct.qeth_card*, i32) #1

declare dso_local i32 @qeth_clear_qdio_buffers(%struct.qeth_card*) #1

declare dso_local i32 @qeth_clear_working_pool_list(%struct.qeth_card*) #1

declare dso_local i32 @qeth_clear_cmd_buffers(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
