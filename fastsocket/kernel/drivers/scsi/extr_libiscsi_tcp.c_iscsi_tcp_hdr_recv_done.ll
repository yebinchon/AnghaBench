; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi_tcp.c_iscsi_tcp_hdr_recv_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi_tcp.c_iscsi_tcp_hdr_recv_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_tcp_conn = type { %struct.TYPE_6__, i32, %struct.iscsi_conn* }
%struct.TYPE_6__ = type { %struct.iscsi_hdr*, i64 }
%struct.iscsi_hdr = type { i32 }
%struct.iscsi_conn = type { %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.iscsi_segment = type { i32, i32, i32, i64, i32, i64, i32 }

@ISCSI_ERR_AHSLEN = common dso_local global i32 0, align 4
@CAP_DIGEST_OFFLOAD = common dso_local global i32 0, align 4
@ISCSI_DIGEST_SIZE = common dso_local global i64 0, align 8
@ISCSI_ERR_HDR_DGST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_tcp_conn*, %struct.iscsi_segment*)* @iscsi_tcp_hdr_recv_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_tcp_hdr_recv_done(%struct.iscsi_tcp_conn* %0, %struct.iscsi_segment* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_tcp_conn*, align 8
  %5 = alloca %struct.iscsi_segment*, align 8
  %6 = alloca %struct.iscsi_conn*, align 8
  %7 = alloca %struct.iscsi_hdr*, align 8
  %8 = alloca i32, align 4
  store %struct.iscsi_tcp_conn* %0, %struct.iscsi_tcp_conn** %4, align 8
  store %struct.iscsi_segment* %1, %struct.iscsi_segment** %5, align 8
  %9 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %4, align 8
  %10 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %9, i32 0, i32 2
  %11 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  store %struct.iscsi_conn* %11, %struct.iscsi_conn** %6, align 8
  %12 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %4, align 8
  %13 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.iscsi_hdr*
  store %struct.iscsi_hdr* %16, %struct.iscsi_hdr** %7, align 8
  %17 = load %struct.iscsi_segment*, %struct.iscsi_segment** %5, align 8
  %18 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = icmp eq i64 %20, 4
  br i1 %21, label %22, label %49

22:                                               ; preds = %2
  %23 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %7, align 8
  %24 = getelementptr inbounds %struct.iscsi_hdr, %struct.iscsi_hdr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %49

27:                                               ; preds = %22
  %28 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %7, align 8
  %29 = getelementptr inbounds %struct.iscsi_hdr, %struct.iscsi_hdr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 %30, 2
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = zext i32 %32 to i64
  %34 = add i64 4, %33
  %35 = icmp ugt i64 %34, 8
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32, i32* @ISCSI_ERR_AHSLEN, align 4
  store i32 %37, i32* %3, align 4
  br label %105

38:                                               ; preds = %27
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.iscsi_segment*, %struct.iscsi_segment** %5, align 8
  %41 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = add i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.iscsi_segment*, %struct.iscsi_segment** %5, align 8
  %46 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = add i32 %47, %44
  store i32 %48, i32* %46, align 8
  store i32 0, i32* %3, align 4
  br label %105

49:                                               ; preds = %22, %2
  %50 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %51 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %97

54:                                               ; preds = %49
  %55 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %56 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %55, i32 0, i32 0
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @CAP_DIGEST_OFFLOAD, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %97, label %65

65:                                               ; preds = %54
  %66 = load %struct.iscsi_segment*, %struct.iscsi_segment** %5, align 8
  %67 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load %struct.iscsi_segment*, %struct.iscsi_segment** %5, align 8
  %72 = load %struct.iscsi_segment*, %struct.iscsi_segment** %5, align 8
  %73 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @iscsi_tcp_segment_splice_digest(%struct.iscsi_segment* %71, i32 %74)
  store i32 0, i32* %3, align 4
  br label %105

76:                                               ; preds = %65
  %77 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %4, align 8
  %78 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %7, align 8
  %81 = load %struct.iscsi_segment*, %struct.iscsi_segment** %5, align 8
  %82 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %81, i32 0, i32 5
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @ISCSI_DIGEST_SIZE, align 8
  %85 = sub nsw i64 %83, %84
  %86 = load %struct.iscsi_segment*, %struct.iscsi_segment** %5, align 8
  %87 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @iscsi_tcp_dgst_header(i32 %79, %struct.iscsi_hdr* %80, i64 %85, i32 %88)
  %90 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %4, align 8
  %91 = load %struct.iscsi_segment*, %struct.iscsi_segment** %5, align 8
  %92 = call i32 @iscsi_tcp_dgst_verify(%struct.iscsi_tcp_conn* %90, %struct.iscsi_segment* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %76
  %95 = load i32, i32* @ISCSI_ERR_HDR_DGST, align 4
  store i32 %95, i32* %3, align 4
  br label %105

96:                                               ; preds = %76
  br label %97

97:                                               ; preds = %96, %54, %49
  %98 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %7, align 8
  %99 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %4, align 8
  %100 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  store %struct.iscsi_hdr* %98, %struct.iscsi_hdr** %101, align 8
  %102 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %103 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %7, align 8
  %104 = call i32 @iscsi_tcp_hdr_dissect(%struct.iscsi_conn* %102, %struct.iscsi_hdr* %103)
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %97, %94, %70, %38, %36
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @iscsi_tcp_segment_splice_digest(%struct.iscsi_segment*, i32) #1

declare dso_local i32 @iscsi_tcp_dgst_header(i32, %struct.iscsi_hdr*, i64, i32) #1

declare dso_local i32 @iscsi_tcp_dgst_verify(%struct.iscsi_tcp_conn*, %struct.iscsi_segment*) #1

declare dso_local i32 @iscsi_tcp_hdr_dissect(%struct.iscsi_conn*, %struct.iscsi_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
