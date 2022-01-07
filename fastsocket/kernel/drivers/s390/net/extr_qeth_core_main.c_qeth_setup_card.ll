; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_setup_card.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_setup_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32, i32, %struct.TYPE_8__, i32, i32, i32*, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32*, i32, i32, i32*, i64, i64, i32, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i64, i64, i64, i32 }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i8* }

@SETUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"setupcrd\00", align 1
@CH_STATE_DOWN = common dso_local global i8* null, align 8
@CARD_STATE_DOWN = common dso_local global i32 0, align 4
@qeth_start_kernel_thread = common dso_local global i32 0, align 4
@qeth_buffer_reclaim_work = common dso_local global i32 0, align 4
@qeth_close_dev_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*)* @qeth_setup_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_setup_card(%struct.qeth_card* %0) #0 {
  %2 = alloca %struct.qeth_card*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %2, align 8
  %3 = load i32, i32* @SETUP, align 4
  %4 = call i32 @QETH_DBF_TEXT(i32 %3, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* @SETUP, align 4
  %6 = call i32 @QETH_DBF_HEX(i32 %5, i32 2, %struct.qeth_card** %2, i32 8)
  %7 = load i8*, i8** @CH_STATE_DOWN, align 8
  %8 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %9 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %8, i32 0, i32 25
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  store i8* %7, i8** %10, align 8
  %11 = load i8*, i8** @CH_STATE_DOWN, align 8
  %12 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %13 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %12, i32 0, i32 24
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store i8* %11, i8** %14, align 8
  %15 = load i8*, i8** @CH_STATE_DOWN, align 8
  %16 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %17 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %16, i32 0, i32 23
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  store i8* %15, i8** %18, align 8
  %19 = load i32, i32* @CARD_STATE_DOWN, align 4
  %20 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %21 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %20, i32 0, i32 22
  store i32 %19, i32* %21, align 8
  %22 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %23 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %22, i32 0, i32 21
  store i64 0, i64* %23, align 8
  %24 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %25 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %24, i32 0, i32 20
  store i64 0, i64* %25, align 8
  %26 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %27 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %26, i32 0, i32 19
  store i32* null, i32** %27, align 8
  %28 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %29 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %28, i32 0, i32 18
  %30 = call i32 @spin_lock_init(i32* %29)
  %31 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %32 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %31, i32 0, i32 17
  %33 = call i32 @spin_lock_init(i32* %32)
  %34 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %35 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %34, i32 0, i32 16
  store i32* null, i32** %35, align 8
  %36 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %37 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %36, i32 0, i32 15
  %38 = call i32 @spin_lock_init(i32* %37)
  %39 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %40 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %39, i32 0, i32 14
  %41 = call i32 @spin_lock_init(i32* %40)
  %42 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %43 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %42, i32 0, i32 13
  %44 = call i32 @spin_lock_init(i32* %43)
  %45 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %46 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %45, i32 0, i32 12
  %47 = call i32 @mutex_init(i32* %46)
  %48 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %49 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %48, i32 0, i32 11
  %50 = call i32 @mutex_init(i32* %49)
  %51 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %52 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %51, i32 0, i32 10
  store i64 0, i64* %52, align 8
  %53 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %54 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %53, i32 0, i32 9
  store i64 0, i64* %54, align 8
  %55 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %56 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %55, i32 0, i32 8
  store i64 0, i64* %56, align 8
  %57 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %58 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %57, i32 0, i32 7
  %59 = load i32, i32* @qeth_start_kernel_thread, align 4
  %60 = call i32 @INIT_WORK(i32* %58, i32 %59)
  %61 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %62 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %61, i32 0, i32 6
  %63 = call i32 @INIT_LIST_HEAD(i32* %62)
  %64 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %65 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %64, i32 0, i32 5
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @INIT_LIST_HEAD(i32* %66)
  %68 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %69 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %68, i32 0, i32 4
  %70 = call i32 @INIT_LIST_HEAD(i32* %69)
  %71 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %72 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %71, i32 0, i32 3
  %73 = call i32 @init_waitqueue_head(i32* %72)
  %74 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %75 = call i32 @qeth_set_intial_options(%struct.qeth_card* %74)
  %76 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %77 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 3
  %79 = call i32 @INIT_LIST_HEAD(i32* %78)
  %80 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %81 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 2
  store i64 0, i64* %82, align 8
  %83 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %84 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  store i64 0, i64* %85, align 8
  %86 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %87 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  store i64 0, i64* %88, align 8
  %89 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %90 = call i32 @qeth_init_qdio_info(%struct.qeth_card* %89)
  %91 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %92 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %91, i32 0, i32 1
  %93 = load i32, i32* @qeth_buffer_reclaim_work, align 4
  %94 = call i32 @INIT_DELAYED_WORK(i32* %92, i32 %93)
  %95 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %96 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %95, i32 0, i32 0
  %97 = load i32, i32* @qeth_close_dev_handler, align 4
  %98 = call i32 @INIT_WORK(i32* %96, i32 %97)
  ret i32 0
}

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @QETH_DBF_HEX(i32, i32, %struct.qeth_card**, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @qeth_set_intial_options(%struct.qeth_card*) #1

declare dso_local i32 @qeth_init_qdio_info(%struct.qeth_card*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
