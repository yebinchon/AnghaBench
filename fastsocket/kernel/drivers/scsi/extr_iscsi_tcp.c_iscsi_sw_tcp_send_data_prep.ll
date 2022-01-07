; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_iscsi_tcp.c_iscsi_sw_tcp_send_data_prep.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_iscsi_tcp.c_iscsi_sw_tcp_send_data_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { i64, %struct.iscsi_tcp_conn* }
%struct.iscsi_tcp_conn = type { %struct.iscsi_sw_tcp_conn* }
%struct.iscsi_sw_tcp_conn = type { %struct.TYPE_4__, %struct.hash_desc }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.hash_desc = type { i32 }
%struct.scatterlist = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"offset=%d, datalen=%d %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"digest enabled\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"digest disabled\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_conn*, %struct.scatterlist*, i32, i32, i32)* @iscsi_sw_tcp_send_data_prep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_sw_tcp_send_data_prep(%struct.iscsi_conn* %0, %struct.scatterlist* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.iscsi_conn*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.iscsi_tcp_conn*, align 8
  %12 = alloca %struct.iscsi_sw_tcp_conn*, align 8
  %13 = alloca %struct.hash_desc*, align 8
  %14 = alloca i32, align 4
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %6, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %16 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %15, i32 0, i32 1
  %17 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %16, align 8
  store %struct.iscsi_tcp_conn* %17, %struct.iscsi_tcp_conn** %11, align 8
  %18 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %11, align 8
  %19 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %18, i32 0, i32 0
  %20 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %19, align 8
  store %struct.iscsi_sw_tcp_conn* %20, %struct.iscsi_sw_tcp_conn** %12, align 8
  store %struct.hash_desc* null, %struct.hash_desc** %13, align 8
  %21 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %25 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)
  %30 = call i32 @ISCSI_SW_TCP_DBG(%struct.iscsi_conn* %21, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23, i8* %29)
  %31 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %12, align 8
  %32 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, %struct.iscsi_sw_tcp_conn* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ntoh24(i32 %36)
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i64 @iscsi_padded(i32 %38)
  %40 = load i32, i32* %14, align 4
  %41 = call i64 @iscsi_padded(i32 %40)
  %42 = icmp ne i64 %39, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @WARN_ON(i32 %43)
  %45 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %46 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %5
  %50 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %12, align 8
  %51 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, %struct.iscsi_sw_tcp_conn* %50, i32 0, i32 1
  store %struct.hash_desc* %51, %struct.hash_desc** %13, align 8
  br label %52

52:                                               ; preds = %49, %5
  %53 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %12, align 8
  %54 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, %struct.iscsi_sw_tcp_conn* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.hash_desc*, %struct.hash_desc** %13, align 8
  %61 = call i32 @iscsi_segment_seek_sg(i32* %55, %struct.scatterlist* %56, i32 %57, i32 %58, i32 %59, i32* null, %struct.hash_desc* %60)
  ret i32 %61
}

declare dso_local i32 @ISCSI_SW_TCP_DBG(%struct.iscsi_conn*, i8*, i32, i32, i8*) #1

declare dso_local i32 @ntoh24(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @iscsi_padded(i32) #1

declare dso_local i32 @iscsi_segment_seek_sg(i32*, %struct.scatterlist*, i32, i32, i32, i32*, %struct.hash_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
