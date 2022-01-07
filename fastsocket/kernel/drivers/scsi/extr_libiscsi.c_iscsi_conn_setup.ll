; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi.c_iscsi_conn_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi.c_iscsi_conn_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cls_conn = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { i8*, %struct.TYPE_5__*, i32, %struct.TYPE_6__, i32, i32, i32, i32, %struct.TYPE_6__, i32, i64, i32, i32, %struct.iscsi_cls_conn*, %struct.iscsi_session*, %struct.iscsi_conn* }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_6__ = type { i64, i32 }
%struct.iscsi_session = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.iscsi_cls_session = type { %struct.iscsi_session* }

@ISCSI_CONN_INITIAL_STAGE = common dso_local global i32 0, align 4
@TMF_INITIAL = common dso_local global i32 0, align 4
@iscsi_check_transport_timeouts = common dso_local global i32 0, align 4
@iscsi_xmitworker = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ISCSI_DEF_MAX_RECV_SEG_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.iscsi_cls_conn* @iscsi_conn_setup(%struct.iscsi_cls_session* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.iscsi_cls_conn*, align 8
  %5 = alloca %struct.iscsi_cls_session*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.iscsi_session*, align 8
  %9 = alloca %struct.iscsi_conn*, align 8
  %10 = alloca %struct.iscsi_cls_conn*, align 8
  %11 = alloca i8*, align 8
  store %struct.iscsi_cls_session* %0, %struct.iscsi_cls_session** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %5, align 8
  %13 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %12, i32 0, i32 0
  %14 = load %struct.iscsi_session*, %struct.iscsi_session** %13, align 8
  store %struct.iscsi_session* %14, %struct.iscsi_session** %8, align 8
  %15 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = add i64 120, %17
  %19 = trunc i64 %18 to i32
  %20 = load i32, i32* %7, align 4
  %21 = call %struct.iscsi_cls_conn* @iscsi_create_conn(%struct.iscsi_cls_session* %15, i32 %19, i32 %20)
  store %struct.iscsi_cls_conn* %21, %struct.iscsi_cls_conn** %10, align 8
  %22 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %10, align 8
  %23 = icmp ne %struct.iscsi_cls_conn* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  store %struct.iscsi_cls_conn* null, %struct.iscsi_cls_conn** %4, align 8
  br label %138

25:                                               ; preds = %3
  %26 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %10, align 8
  %27 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %26, i32 0, i32 0
  %28 = load %struct.iscsi_conn*, %struct.iscsi_conn** %27, align 8
  store %struct.iscsi_conn* %28, %struct.iscsi_conn** %9, align 8
  %29 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = add i64 120, %31
  %33 = trunc i64 %32 to i32
  %34 = call i32 @memset(%struct.iscsi_conn* %29, i32 0, i32 %33)
  %35 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %10, align 8
  %36 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %35, i32 0, i32 0
  %37 = load %struct.iscsi_conn*, %struct.iscsi_conn** %36, align 8
  %38 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %37, i64 120
  %39 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %40 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %39, i32 0, i32 15
  store %struct.iscsi_conn* %38, %struct.iscsi_conn** %40, align 8
  %41 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %42 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %43 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %42, i32 0, i32 14
  store %struct.iscsi_session* %41, %struct.iscsi_session** %43, align 8
  %44 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %10, align 8
  %45 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %46 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %45, i32 0, i32 13
  store %struct.iscsi_cls_conn* %44, %struct.iscsi_cls_conn** %46, align 8
  %47 = load i32, i32* @ISCSI_CONN_INITIAL_STAGE, align 4
  %48 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %49 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %48, i32 0, i32 12
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %52 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %51, i32 0, i32 11
  store i32 %50, i32* %52, align 8
  %53 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %54 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %53, i32 0, i32 10
  store i64 0, i64* %54, align 8
  %55 = load i32, i32* @TMF_INITIAL, align 4
  %56 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %57 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %56, i32 0, i32 9
  store i32 %55, i32* %57, align 8
  %58 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %59 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %58, i32 0, i32 8
  %60 = call i32 @init_timer(%struct.TYPE_6__* %59)
  %61 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %62 = ptrtoint %struct.iscsi_conn* %61 to i64
  %63 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %64 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %63, i32 0, i32 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  store i64 %62, i64* %65, align 8
  %66 = load i32, i32* @iscsi_check_transport_timeouts, align 4
  %67 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %68 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %67, i32 0, i32 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  store i32 %66, i32* %69, align 8
  %70 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %71 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %70, i32 0, i32 7
  %72 = call i32 @INIT_LIST_HEAD(i32* %71)
  %73 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %74 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %73, i32 0, i32 6
  %75 = call i32 @INIT_LIST_HEAD(i32* %74)
  %76 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %77 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %76, i32 0, i32 5
  %78 = call i32 @INIT_LIST_HEAD(i32* %77)
  %79 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %80 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %79, i32 0, i32 4
  %81 = load i32, i32* @iscsi_xmitworker, align 4
  %82 = call i32 @INIT_WORK(i32* %80, i32 %81)
  %83 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %84 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %83, i32 0, i32 1
  %85 = call i32 @spin_lock_bh(i32* %84)
  %86 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %87 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %91 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %90, i32 0, i32 1
  %92 = bitcast %struct.TYPE_5__** %91 to i8*
  %93 = call i32 @__kfifo_get(i32 %89, i8* %92, i32 8)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %25
  %96 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %97 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %96, i32 0, i32 1
  %98 = call i32 @spin_unlock_bh(i32* %97)
  br label %135

99:                                               ; preds = %25
  %100 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %101 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %100, i32 0, i32 1
  %102 = call i32 @spin_unlock_bh(i32* %101)
  %103 = load i32, i32* @GFP_KERNEL, align 4
  %104 = load i32, i32* @ISCSI_DEF_MAX_RECV_SEG_LEN, align 4
  %105 = call i32 @get_order(i32 %104)
  %106 = call i64 @__get_free_pages(i32 %103, i32 %105)
  %107 = inttoptr i64 %106 to i8*
  store i8* %107, i8** %11, align 8
  %108 = load i8*, i8** %11, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %111, label %110

110:                                              ; preds = %99
  br label %126

111:                                              ; preds = %99
  %112 = load i8*, i8** %11, align 8
  %113 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %114 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %113, i32 0, i32 0
  store i8* %112, i8** %114, align 8
  %115 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %116 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %115, i32 0, i32 1
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  store i8* %112, i8** %118, align 8
  %119 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %120 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %119, i32 0, i32 3
  %121 = call i32 @init_timer(%struct.TYPE_6__* %120)
  %122 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %123 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %122, i32 0, i32 2
  %124 = call i32 @init_waitqueue_head(i32* %123)
  %125 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %10, align 8
  store %struct.iscsi_cls_conn* %125, %struct.iscsi_cls_conn** %4, align 8
  br label %138

126:                                              ; preds = %110
  %127 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %128 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %132 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %131, i32 0, i32 1
  %133 = bitcast %struct.TYPE_5__** %132 to i8*
  %134 = call i32 @__kfifo_put(i32 %130, i8* %133, i32 8)
  br label %135

135:                                              ; preds = %126, %95
  %136 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %10, align 8
  %137 = call i32 @iscsi_destroy_conn(%struct.iscsi_cls_conn* %136)
  store %struct.iscsi_cls_conn* null, %struct.iscsi_cls_conn** %4, align 8
  br label %138

138:                                              ; preds = %135, %111, %24
  %139 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %4, align 8
  ret %struct.iscsi_cls_conn* %139
}

declare dso_local %struct.iscsi_cls_conn* @iscsi_create_conn(%struct.iscsi_cls_session*, i32, i32) #1

declare dso_local i32 @memset(%struct.iscsi_conn*, i32, i32) #1

declare dso_local i32 @init_timer(%struct.TYPE_6__*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @__kfifo_get(i32, i8*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i64 @__get_free_pages(i32, i32) #1

declare dso_local i32 @get_order(i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @__kfifo_put(i32, i8*, i32) #1

declare dso_local i32 @iscsi_destroy_conn(%struct.iscsi_cls_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
