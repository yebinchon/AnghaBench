; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iser_initiator.c_iser_post_rx_bufs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iser_initiator.c_iser_post_rx_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { %struct.iscsi_iser_conn* }
%struct.iscsi_iser_conn = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.iscsi_hdr = type { i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"req op %x flags %x\0A\00", align 1
@ISCSI_FULL_FEATURE_PHASE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Initially post: %d\0A\00", align 1
@ISER_MIN_POSTED_RX = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_conn*, %struct.iscsi_hdr*)* @iser_post_rx_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iser_post_rx_bufs(%struct.iscsi_conn* %0, %struct.iscsi_hdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_conn*, align 8
  %5 = alloca %struct.iscsi_hdr*, align 8
  %6 = alloca %struct.iscsi_iser_conn*, align 8
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %4, align 8
  store %struct.iscsi_hdr* %1, %struct.iscsi_hdr** %5, align 8
  %7 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %8 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %7, i32 0, i32 0
  %9 = load %struct.iscsi_iser_conn*, %struct.iscsi_iser_conn** %8, align 8
  store %struct.iscsi_iser_conn* %9, %struct.iscsi_iser_conn** %6, align 8
  %10 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %5, align 8
  %11 = getelementptr inbounds %struct.iscsi_hdr, %struct.iscsi_hdr* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %5, align 8
  %14 = getelementptr inbounds %struct.iscsi_hdr, %struct.iscsi_hdr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 (i8*, i32, ...) @iser_dbg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %15)
  %17 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %5, align 8
  %18 = getelementptr inbounds %struct.iscsi_hdr, %struct.iscsi_hdr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @ISCSI_FULL_FEATURE_PHASE, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @ISCSI_FULL_FEATURE_PHASE, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %54

25:                                               ; preds = %2
  %26 = load %struct.iscsi_iser_conn*, %struct.iscsi_iser_conn** %6, align 8
  %27 = getelementptr inbounds %struct.iscsi_iser_conn, %struct.iscsi_iser_conn* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 1
  %32 = zext i1 %31 to i32
  %33 = call i32 @WARN_ON(i32 %32)
  %34 = load %struct.iscsi_iser_conn*, %struct.iscsi_iser_conn** %6, align 8
  %35 = getelementptr inbounds %struct.iscsi_iser_conn, %struct.iscsi_iser_conn* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = call i64 @atomic_read(i32* %37)
  %39 = icmp ne i64 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @WARN_ON(i32 %40)
  %42 = load i32, i32* @ISER_MIN_POSTED_RX, align 4
  %43 = call i32 (i8*, i32, ...) @iser_dbg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load %struct.iscsi_iser_conn*, %struct.iscsi_iser_conn** %6, align 8
  %45 = getelementptr inbounds %struct.iscsi_iser_conn, %struct.iscsi_iser_conn* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* @ISER_MIN_POSTED_RX, align 4
  %48 = call i64 @iser_post_recvm(%struct.TYPE_2__* %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %25
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %54

53:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %50, %24
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @iser_dbg(i8*, i32, ...) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @iser_post_recvm(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
