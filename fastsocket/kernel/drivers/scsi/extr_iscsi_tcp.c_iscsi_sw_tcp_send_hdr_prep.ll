; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_iscsi_tcp.c_iscsi_sw_tcp_send_hdr_prep.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_iscsi_tcp.c_iscsi_sw_tcp_send_hdr_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { i64, %struct.iscsi_tcp_conn* }
%struct.iscsi_tcp_conn = type { %struct.iscsi_sw_tcp_conn* }
%struct.iscsi_sw_tcp_conn = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i8*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"digest enabled\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"digest disabled\00", align 1
@ISCSI_DIGEST_SIZE = common dso_local global i64 0, align 8
@iscsi_sw_tcp_send_hdr_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iscsi_conn*, i8*, i64)* @iscsi_sw_tcp_send_hdr_prep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iscsi_sw_tcp_send_hdr_prep(%struct.iscsi_conn* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.iscsi_conn*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.iscsi_tcp_conn*, align 8
  %8 = alloca %struct.iscsi_sw_tcp_conn*, align 8
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %10 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %9, i32 0, i32 1
  %11 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %10, align 8
  store %struct.iscsi_tcp_conn* %11, %struct.iscsi_tcp_conn** %7, align 8
  %12 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %7, align 8
  %13 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %12, i32 0, i32 0
  %14 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %13, align 8
  store %struct.iscsi_sw_tcp_conn* %14, %struct.iscsi_sw_tcp_conn** %8, align 8
  %15 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %16 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %17 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)
  %22 = call i32 @ISCSI_SW_TCP_DBG(%struct.iscsi_conn* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %21)
  %23 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %8, align 8
  %24 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, %struct.iscsi_sw_tcp_conn* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = call i32 @memset(i32* %25, i32 0, i32 4)
  %27 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %28 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %3
  %32 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %8, align 8
  %33 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, %struct.iscsi_sw_tcp_conn* %32, i32 0, i32 1
  %34 = load i8*, i8** %5, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = load i64, i64* %6, align 8
  %38 = getelementptr i8, i8* %36, i64 %37
  %39 = call i32 @iscsi_tcp_dgst_header(i32* %33, i8* %34, i64 %35, i8* %38)
  %40 = load i64, i64* @ISCSI_DIGEST_SIZE, align 8
  %41 = load i64, i64* %6, align 8
  %42 = add i64 %41, %40
  store i64 %42, i64* %6, align 8
  br label %43

43:                                               ; preds = %31, %3
  %44 = load i8*, i8** %5, align 8
  %45 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %8, align 8
  %46 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, %struct.iscsi_sw_tcp_conn* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  store i8* %44, i8** %47, align 8
  %48 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %8, align 8
  %49 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, %struct.iscsi_sw_tcp_conn* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i8*, i8** %5, align 8
  %52 = load i64, i64* %6, align 8
  %53 = load i32, i32* @iscsi_sw_tcp_send_hdr_done, align 4
  %54 = call i32 @iscsi_segment_init_linear(i32* %50, i8* %51, i64 %52, i32 %53, i32* null)
  ret void
}

declare dso_local i32 @ISCSI_SW_TCP_DBG(%struct.iscsi_conn*, i8*, i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @iscsi_tcp_dgst_header(i32*, i8*, i64, i8*) #1

declare dso_local i32 @iscsi_segment_init_linear(i32*, i8*, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
