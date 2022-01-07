; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_iscsi_tcp.c_iscsi_sw_tcp_xmit_segment.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_iscsi_tcp.c_iscsi_sw_tcp_xmit_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_tcp_conn = type { %struct.iscsi_sw_tcp_conn* }
%struct.iscsi_sw_tcp_conn = type { i32 (%struct.socket*, i32, i32, i32, i32)*, %struct.socket* }
%struct.socket = type { i32 }
%struct.iscsi_segment = type { i32, i32, i64, i64, i64, i64, %struct.scatterlist* }
%struct.scatterlist = type { i64 }
%struct.msghdr = type { i32 }
%struct.kvec = type { i32, i64 }

@MSG_MORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_tcp_conn*, %struct.iscsi_segment*)* @iscsi_sw_tcp_xmit_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_sw_tcp_xmit_segment(%struct.iscsi_tcp_conn* %0, %struct.iscsi_segment* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_tcp_conn*, align 8
  %5 = alloca %struct.iscsi_segment*, align 8
  %6 = alloca %struct.iscsi_sw_tcp_conn*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.scatterlist*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.msghdr, align 4
  %15 = alloca %struct.kvec, align 8
  store %struct.iscsi_tcp_conn* %0, %struct.iscsi_tcp_conn** %4, align 8
  store %struct.iscsi_segment* %1, %struct.iscsi_segment** %5, align 8
  %16 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %4, align 8
  %17 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %16, i32 0, i32 0
  %18 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %17, align 8
  store %struct.iscsi_sw_tcp_conn* %18, %struct.iscsi_sw_tcp_conn** %6, align 8
  %19 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %6, align 8
  %20 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, %struct.iscsi_sw_tcp_conn* %19, i32 0, i32 1
  %21 = load %struct.socket*, %struct.socket** %20, align 8
  store %struct.socket* %21, %struct.socket** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %106, %2
  %23 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %4, align 8
  %24 = load %struct.iscsi_segment*, %struct.iscsi_segment** %5, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @iscsi_tcp_segment_done(%struct.iscsi_tcp_conn* %23, %struct.iscsi_segment* %24, i32 0, i32 %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  br i1 %28, label %29, label %110

29:                                               ; preds = %22
  store i32 0, i32* %13, align 4
  store i32 0, i32* %9, align 4
  %30 = load %struct.iscsi_segment*, %struct.iscsi_segment** %5, align 8
  %31 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %11, align 4
  %33 = load %struct.iscsi_segment*, %struct.iscsi_segment** %5, align 8
  %34 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %11, align 4
  %37 = sub i32 %35, %36
  store i32 %37, i32* %12, align 4
  %38 = load %struct.iscsi_segment*, %struct.iscsi_segment** %5, align 8
  %39 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.iscsi_segment*, %struct.iscsi_segment** %5, align 8
  %42 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = zext i32 %43 to i64
  %45 = add nsw i64 %40, %44
  %46 = load %struct.iscsi_segment*, %struct.iscsi_segment** %5, align 8
  %47 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = icmp slt i64 %45, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %29
  %51 = load i32, i32* @MSG_MORE, align 4
  %52 = load i32, i32* %13, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %13, align 4
  br label %54

54:                                               ; preds = %50, %29
  %55 = load %struct.iscsi_segment*, %struct.iscsi_segment** %5, align 8
  %56 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %84, label %59

59:                                               ; preds = %54
  %60 = load %struct.iscsi_segment*, %struct.iscsi_segment** %5, align 8
  %61 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %60, i32 0, i32 6
  %62 = load %struct.scatterlist*, %struct.scatterlist** %61, align 8
  store %struct.scatterlist* %62, %struct.scatterlist** %10, align 8
  %63 = load %struct.iscsi_segment*, %struct.iscsi_segment** %5, align 8
  %64 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %63, i32 0, i32 5
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %67 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %65, %68
  %70 = load i32, i32* %11, align 4
  %71 = zext i32 %70 to i64
  %72 = add nsw i64 %71, %69
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %11, align 4
  %74 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %6, align 8
  %75 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, %struct.iscsi_sw_tcp_conn* %74, i32 0, i32 0
  %76 = load i32 (%struct.socket*, i32, i32, i32, i32)*, i32 (%struct.socket*, i32, i32, i32, i32)** %75, align 8
  %77 = load %struct.socket*, %struct.socket** %7, align 8
  %78 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %79 = call i32 @sg_page(%struct.scatterlist* %78)
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* %13, align 4
  %83 = call i32 %76(%struct.socket* %77, i32 %79, i32 %80, i32 %81, i32 %82)
  store i32 %83, i32* %9, align 4
  br label %99

84:                                               ; preds = %54
  %85 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %14, i32 0, i32 0
  %86 = load i32, i32* %13, align 4
  store i32 %86, i32* %85, align 4
  %87 = getelementptr inbounds %struct.kvec, %struct.kvec* %15, i32 0, i32 0
  %88 = load i32, i32* %12, align 4
  store i32 %88, i32* %87, align 8
  %89 = getelementptr inbounds %struct.kvec, %struct.kvec* %15, i32 0, i32 1
  %90 = load %struct.iscsi_segment*, %struct.iscsi_segment** %5, align 8
  %91 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %90, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  %93 = load i32, i32* %11, align 4
  %94 = zext i32 %93 to i64
  %95 = add nsw i64 %92, %94
  store i64 %95, i64* %89, align 8
  %96 = load %struct.socket*, %struct.socket** %7, align 8
  %97 = load i32, i32* %12, align 4
  %98 = call i32 @kernel_sendmsg(%struct.socket* %96, %struct.msghdr* %14, %struct.kvec* %15, i32 1, i32 %97)
  store i32 %98, i32* %9, align 4
  br label %99

99:                                               ; preds = %84, %59
  %100 = load i32, i32* %9, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %99
  %103 = load %struct.iscsi_segment*, %struct.iscsi_segment** %5, align 8
  %104 = call i32 @iscsi_tcp_segment_unmap(%struct.iscsi_segment* %103)
  %105 = load i32, i32* %9, align 4
  store i32 %105, i32* %3, align 4
  br label %112

106:                                              ; preds = %99
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* %8, align 4
  %109 = add i32 %108, %107
  store i32 %109, i32* %8, align 4
  br label %22

110:                                              ; preds = %22
  %111 = load i32, i32* %8, align 4
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %110, %102
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @iscsi_tcp_segment_done(%struct.iscsi_tcp_conn*, %struct.iscsi_segment*, i32, i32) #1

declare dso_local i32 @sg_page(%struct.scatterlist*) #1

declare dso_local i32 @kernel_sendmsg(%struct.socket*, %struct.msghdr*, %struct.kvec*, i32, i32) #1

declare dso_local i32 @iscsi_tcp_segment_unmap(%struct.iscsi_segment*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
