; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2_intr.c_handle_vq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2_intr.c_handle_vq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c2_dev = type { i64* }
%struct.c2wr_hdr = type { i64 }
%struct.c2_mq = type { i32 }
%struct.c2_vq_req = type { i32, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, %struct.iw_cm_event*)*, i32, i32 }
%struct.iw_cm_event = type { i32, i32, i32, i32, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"handle_vq: no repbufs!\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"handle_vq: UNEXPECTEDLY got NULL req\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@C2_QP_STATE_RTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.c2_dev*, i64)* @handle_vq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_vq(%struct.c2_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.c2_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.c2wr_hdr*, align 8
  %8 = alloca %struct.c2wr_hdr, align 8
  %9 = alloca %struct.c2_mq*, align 8
  %10 = alloca %struct.c2_vq_req*, align 8
  %11 = alloca %struct.iw_cm_event, align 8
  %12 = alloca i32, align 4
  store %struct.c2_dev* %0, %struct.c2_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %13 = load %struct.c2_dev*, %struct.c2_dev** %3, align 8
  %14 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = load i64, i64* %4, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.c2_mq*
  store %struct.c2_mq* %19, %struct.c2_mq** %9, align 8
  %20 = load %struct.c2_mq*, %struct.c2_mq** %9, align 8
  %21 = call i8* @c2_mq_consume(%struct.c2_mq* %20)
  store i8* %21, i8** %5, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %128

25:                                               ; preds = %2
  %26 = load %struct.c2_dev*, %struct.c2_dev** %3, align 8
  %27 = call %struct.c2wr_hdr* @vq_repbuf_alloc(%struct.c2_dev* %26)
  store %struct.c2wr_hdr* %27, %struct.c2wr_hdr** %7, align 8
  %28 = load %struct.c2wr_hdr*, %struct.c2wr_hdr** %7, align 8
  %29 = icmp ne %struct.c2wr_hdr* %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = call i32 @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store %struct.c2wr_hdr* %8, %struct.c2wr_hdr** %7, align 8
  %32 = load %struct.c2wr_hdr*, %struct.c2wr_hdr** %7, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @memcpy(%struct.c2wr_hdr* %32, i8* %33, i32 8)
  store i8* null, i8** %6, align 8
  br label %44

35:                                               ; preds = %25
  %36 = load %struct.c2wr_hdr*, %struct.c2wr_hdr** %7, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = load %struct.c2_mq*, %struct.c2_mq** %9, align 8
  %39 = getelementptr inbounds %struct.c2_mq, %struct.c2_mq* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @memcpy(%struct.c2wr_hdr* %36, i8* %37, i32 %40)
  %42 = load %struct.c2wr_hdr*, %struct.c2wr_hdr** %7, align 8
  %43 = bitcast %struct.c2wr_hdr* %42 to i8*
  store i8* %43, i8** %6, align 8
  br label %44

44:                                               ; preds = %35, %30
  %45 = load %struct.c2_mq*, %struct.c2_mq** %9, align 8
  %46 = call i32 @c2_mq_free(%struct.c2_mq* %45)
  %47 = load %struct.c2wr_hdr*, %struct.c2wr_hdr** %7, align 8
  %48 = getelementptr inbounds %struct.c2wr_hdr, %struct.c2wr_hdr* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to %struct.c2_vq_req*
  store %struct.c2_vq_req* %50, %struct.c2_vq_req** %10, align 8
  %51 = load %struct.c2_vq_req*, %struct.c2_vq_req** %10, align 8
  %52 = icmp eq %struct.c2_vq_req* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %44
  %54 = load %struct.c2_dev*, %struct.c2_dev** %3, align 8
  %55 = load %struct.c2wr_hdr*, %struct.c2wr_hdr** %7, align 8
  %56 = call i32 @vq_repbuf_free(%struct.c2_dev* %54, %struct.c2wr_hdr* %55)
  %57 = call i32 @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %128

58:                                               ; preds = %44
  %59 = load i8*, i8** %6, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i8*, i8** %6, align 8
  %63 = call i32 @c2_errno(i8* %62)
  store i32 %63, i32* %12, align 4
  br label %67

64:                                               ; preds = %58
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %12, align 4
  br label %67

67:                                               ; preds = %64, %61
  %68 = load i32, i32* %12, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %113, label %70

70:                                               ; preds = %67
  %71 = load %struct.c2_vq_req*, %struct.c2_vq_req** %10, align 8
  %72 = getelementptr inbounds %struct.c2_vq_req, %struct.c2_vq_req* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  switch i32 %73, label %111 [
    i32 128, label %74
    i32 129, label %82
  ]

74:                                               ; preds = %70
  %75 = load %struct.c2_vq_req*, %struct.c2_vq_req** %10, align 8
  %76 = getelementptr inbounds %struct.c2_vq_req, %struct.c2_vq_req* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @C2_QP_STATE_RTS, align 4
  %79 = call i32 @c2_set_qp_state(i32 %77, i32 %78)
  %80 = getelementptr inbounds %struct.iw_cm_event, %struct.iw_cm_event* %11, i32 0, i32 1
  store i32 128, i32* %80, align 4
  %81 = getelementptr inbounds %struct.iw_cm_event, %struct.iw_cm_event* %11, i32 0, i32 0
  store i32 128, i32* %81, align 8
  br label %82

82:                                               ; preds = %70, %74
  %83 = load %struct.c2_vq_req*, %struct.c2_vq_req** %10, align 8
  %84 = getelementptr inbounds %struct.c2_vq_req, %struct.c2_vq_req* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = getelementptr inbounds %struct.iw_cm_event, %struct.iw_cm_event* %11, i32 0, i32 2
  store i32 %85, i32* %86, align 8
  %87 = getelementptr inbounds %struct.iw_cm_event, %struct.iw_cm_event* %11, i32 0, i32 7
  store i32 0, i32* %87, align 8
  %88 = load %struct.c2_vq_req*, %struct.c2_vq_req** %10, align 8
  %89 = getelementptr inbounds %struct.c2_vq_req, %struct.c2_vq_req* %88, i32 0, i32 4
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.iw_cm_event, %struct.iw_cm_event* %11, i32 0, i32 6
  store i32 %92, i32* %93, align 4
  %94 = load %struct.c2_vq_req*, %struct.c2_vq_req** %10, align 8
  %95 = getelementptr inbounds %struct.c2_vq_req, %struct.c2_vq_req* %94, i32 0, i32 4
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = getelementptr inbounds %struct.iw_cm_event, %struct.iw_cm_event* %11, i32 0, i32 5
  store i32 %98, i32* %99, align 8
  %100 = getelementptr inbounds %struct.iw_cm_event, %struct.iw_cm_event* %11, i32 0, i32 4
  store i32* null, i32** %100, align 8
  %101 = getelementptr inbounds %struct.iw_cm_event, %struct.iw_cm_event* %11, i32 0, i32 3
  store i32 0, i32* %101, align 4
  %102 = load %struct.c2_vq_req*, %struct.c2_vq_req** %10, align 8
  %103 = getelementptr inbounds %struct.c2_vq_req, %struct.c2_vq_req* %102, i32 0, i32 4
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32 (%struct.TYPE_2__*, %struct.iw_cm_event*)*, i32 (%struct.TYPE_2__*, %struct.iw_cm_event*)** %105, align 8
  %107 = load %struct.c2_vq_req*, %struct.c2_vq_req** %10, align 8
  %108 = getelementptr inbounds %struct.c2_vq_req, %struct.c2_vq_req* %107, i32 0, i32 4
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = call i32 %106(%struct.TYPE_2__* %109, %struct.iw_cm_event* %11)
  br label %112

111:                                              ; preds = %70
  br label %112

112:                                              ; preds = %111, %82
  br label %113

113:                                              ; preds = %112, %67
  %114 = load i8*, i8** %6, align 8
  %115 = ptrtoint i8* %114 to i64
  %116 = trunc i64 %115 to i32
  %117 = load %struct.c2_vq_req*, %struct.c2_vq_req** %10, align 8
  %118 = getelementptr inbounds %struct.c2_vq_req, %struct.c2_vq_req* %117, i32 0, i32 3
  store i32 %116, i32* %118, align 4
  %119 = load %struct.c2_vq_req*, %struct.c2_vq_req** %10, align 8
  %120 = getelementptr inbounds %struct.c2_vq_req, %struct.c2_vq_req* %119, i32 0, i32 2
  %121 = call i32 @atomic_set(i32* %120, i32 1)
  %122 = load %struct.c2_vq_req*, %struct.c2_vq_req** %10, align 8
  %123 = getelementptr inbounds %struct.c2_vq_req, %struct.c2_vq_req* %122, i32 0, i32 1
  %124 = call i32 @wake_up(i32* %123)
  %125 = load %struct.c2_dev*, %struct.c2_dev** %3, align 8
  %126 = load %struct.c2_vq_req*, %struct.c2_vq_req** %10, align 8
  %127 = call i32 @vq_req_put(%struct.c2_dev* %125, %struct.c2_vq_req* %126)
  br label %128

128:                                              ; preds = %113, %53, %24
  ret void
}

declare dso_local i8* @c2_mq_consume(%struct.c2_mq*) #1

declare dso_local %struct.c2wr_hdr* @vq_repbuf_alloc(%struct.c2_dev*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @memcpy(%struct.c2wr_hdr*, i8*, i32) #1

declare dso_local i32 @c2_mq_free(%struct.c2_mq*) #1

declare dso_local i32 @vq_repbuf_free(%struct.c2_dev*, %struct.c2wr_hdr*) #1

declare dso_local i32 @c2_errno(i8*) #1

declare dso_local i32 @c2_set_qp_state(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @vq_req_put(%struct.c2_dev*, %struct.c2_vq_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
