; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_stop_card.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_stop_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i64, %struct.TYPE_4__, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64, i32 }

@SETUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"stopcard\00", align 1
@CH_STATE_UP = common dso_local global i64 0, align 8
@CARD_STATE_UP = common dso_local global i64 0, align 8
@QETH_CARD_TYPE_OSN = common dso_local global i64 0, align 8
@QETH_LAYER2_MAC_REGISTERED = common dso_local global i32 0, align 4
@CARD_STATE_SOFTSETUP = common dso_local global i64 0, align 8
@CARD_STATE_HARDSETUP = common dso_local global i64 0, align 8
@CARD_STATE_DOWN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, i32)* @qeth_l2_stop_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l2_stop_card(%struct.qeth_card* %0, i32 %1) #0 {
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
  %13 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @CH_STATE_UP, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %64

18:                                               ; preds = %2
  %19 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %20 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CH_STATE_UP, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %64

25:                                               ; preds = %18
  %26 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %27 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @CARD_STATE_UP, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %64

31:                                               ; preds = %25
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %31
  %35 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %36 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @QETH_CARD_TYPE_OSN, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %34
  %42 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %43 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @qeth_l2_stop(i32 %44)
  br label %53

46:                                               ; preds = %34, %31
  %47 = call i32 (...) @rtnl_lock()
  %48 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %49 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @dev_close(i32 %50)
  %52 = call i32 (...) @rtnl_unlock()
  br label %53

53:                                               ; preds = %46, %41
  %54 = load i32, i32* @QETH_LAYER2_MAC_REGISTERED, align 4
  %55 = xor i32 %54, -1
  %56 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %57 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = and i32 %59, %55
  store i32 %60, i32* %58, align 8
  %61 = load i64, i64* @CARD_STATE_SOFTSETUP, align 8
  %62 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %63 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  br label %64

64:                                               ; preds = %53, %25, %18, %2
  %65 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %66 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @CARD_STATE_SOFTSETUP, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %64
  %71 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %72 = call i32 @qeth_l2_del_all_mc(%struct.qeth_card* %71, i32 0)
  %73 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %74 = call i32 @qeth_clear_ipacmd_list(%struct.qeth_card* %73)
  %75 = load i64, i64* @CARD_STATE_HARDSETUP, align 8
  %76 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %77 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  br label %78

78:                                               ; preds = %70, %64
  %79 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %80 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @CARD_STATE_HARDSETUP, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %94

84:                                               ; preds = %78
  %85 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %86 = call i32 @qeth_qdio_clear_card(%struct.qeth_card* %85, i32 0)
  %87 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %88 = call i32 @qeth_clear_qdio_buffers(%struct.qeth_card* %87)
  %89 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %90 = call i32 @qeth_clear_working_pool_list(%struct.qeth_card* %89)
  %91 = load i64, i64* @CARD_STATE_DOWN, align 8
  %92 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %93 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %92, i32 0, i32 0
  store i64 %91, i64* %93, align 8
  br label %94

94:                                               ; preds = %84, %78
  %95 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %96 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @CARD_STATE_DOWN, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %107

100:                                              ; preds = %94
  %101 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %102 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %101, i32 0, i32 2
  %103 = call i32 @qeth_clear_cmd_buffers(%struct.TYPE_4__* %102)
  %104 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %105 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %104, i32 0, i32 1
  %106 = call i32 @qeth_clear_cmd_buffers(%struct.TYPE_4__* %105)
  br label %107

107:                                              ; preds = %100, %94
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @QETH_DBF_HEX(i32, i32, %struct.qeth_card**, i32) #1

declare dso_local i32 @qeth_set_allowed_threads(%struct.qeth_card*, i32, i32) #1

declare dso_local i32 @qeth_l2_stop(i32) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @dev_close(i32) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @qeth_l2_del_all_mc(%struct.qeth_card*, i32) #1

declare dso_local i32 @qeth_clear_ipacmd_list(%struct.qeth_card*) #1

declare dso_local i32 @qeth_qdio_clear_card(%struct.qeth_card*, i32) #1

declare dso_local i32 @qeth_clear_qdio_buffers(%struct.qeth_card*) #1

declare dso_local i32 @qeth_clear_working_pool_list(%struct.qeth_card*) #1

declare dso_local i32 @qeth_clear_cmd_buffers(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
