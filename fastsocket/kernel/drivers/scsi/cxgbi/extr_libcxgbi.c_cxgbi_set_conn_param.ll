; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_set_conn_param.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_set_conn_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cls_conn = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { i32, i32, %struct.iscsi_tcp_conn* }
%struct.iscsi_tcp_conn = type { %struct.cxgbi_conn* }
%struct.cxgbi_conn = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.cxgbi_sock* }
%struct.cxgbi_sock = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.cxgbi_sock*, i32, i32, i32, i32)* }

@CXGBI_DBG_ISCSI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"cls_conn 0x%p, param %d, buf(%d) %s.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxgbi_set_conn_param(%struct.iscsi_cls_conn* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iscsi_cls_conn*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iscsi_conn*, align 8
  %11 = alloca %struct.iscsi_tcp_conn*, align 8
  %12 = alloca %struct.cxgbi_conn*, align 8
  %13 = alloca %struct.cxgbi_sock*, align 8
  %14 = alloca i32, align 4
  store %struct.iscsi_cls_conn* %0, %struct.iscsi_cls_conn** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %6, align 8
  %16 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %15, i32 0, i32 0
  %17 = load %struct.iscsi_conn*, %struct.iscsi_conn** %16, align 8
  store %struct.iscsi_conn* %17, %struct.iscsi_conn** %10, align 8
  %18 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %19 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %18, i32 0, i32 2
  %20 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %19, align 8
  store %struct.iscsi_tcp_conn* %20, %struct.iscsi_tcp_conn** %11, align 8
  %21 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %11, align 8
  %22 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %21, i32 0, i32 0
  %23 = load %struct.cxgbi_conn*, %struct.cxgbi_conn** %22, align 8
  store %struct.cxgbi_conn* %23, %struct.cxgbi_conn** %12, align 8
  %24 = load %struct.cxgbi_conn*, %struct.cxgbi_conn** %12, align 8
  %25 = getelementptr inbounds %struct.cxgbi_conn, %struct.cxgbi_conn* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %27, align 8
  store %struct.cxgbi_sock* %28, %struct.cxgbi_sock** %13, align 8
  %29 = load i32, i32* @CXGBI_DBG_ISCSI, align 4
  %30 = shl i32 1, %29
  %31 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 @log_debug(i32 %30, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), %struct.iscsi_cls_conn* %31, i32 %32, i32 %33, i8* %34)
  %36 = load i32, i32* %7, align 4
  switch i32 %36, label %127 [
    i32 131, label %37
    i32 132, label %68
    i32 130, label %99
    i32 129, label %103
    i32 128, label %115
  ]

37:                                               ; preds = %4
  %38 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i8*, i8** %8, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @iscsi_set_param(%struct.iscsi_cls_conn* %38, i32 %39, i8* %40, i32 %41)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %67, label %45

45:                                               ; preds = %37
  %46 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %47 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %67

50:                                               ; preds = %45
  %51 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %13, align 8
  %52 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32 (%struct.cxgbi_sock*, i32, i32, i32, i32)*, i32 (%struct.cxgbi_sock*, i32, i32, i32, i32)** %54, align 8
  %56 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %13, align 8
  %57 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %13, align 8
  %58 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %61 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %64 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 %55(%struct.cxgbi_sock* %56, i32 %59, i32 %62, i32 %65, i32 0)
  store i32 %66, i32* %14, align 4
  br label %67

67:                                               ; preds = %50, %45, %37
  br label %133

68:                                               ; preds = %4
  %69 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %6, align 8
  %70 = load i32, i32* %7, align 4
  %71 = load i8*, i8** %8, align 8
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @iscsi_set_param(%struct.iscsi_cls_conn* %69, i32 %70, i8* %71, i32 %72)
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %14, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %98, label %76

76:                                               ; preds = %68
  %77 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %78 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %98

81:                                               ; preds = %76
  %82 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %13, align 8
  %83 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %82, i32 0, i32 1
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32 (%struct.cxgbi_sock*, i32, i32, i32, i32)*, i32 (%struct.cxgbi_sock*, i32, i32, i32, i32)** %85, align 8
  %87 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %13, align 8
  %88 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %13, align 8
  %89 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %92 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %95 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 %86(%struct.cxgbi_sock* %87, i32 %90, i32 %93, i32 %96, i32 0)
  store i32 %97, i32* %14, align 4
  br label %98

98:                                               ; preds = %81, %76, %68
  br label %133

99:                                               ; preds = %4
  %100 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %101 = load i8*, i8** %8, align 8
  %102 = call i32 @iscsi_tcp_set_max_r2t(%struct.iscsi_conn* %100, i8* %101)
  store i32 %102, i32* %5, align 4
  br label %135

103:                                              ; preds = %4
  %104 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %6, align 8
  %105 = load i32, i32* %7, align 4
  %106 = load i8*, i8** %8, align 8
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @iscsi_set_param(%struct.iscsi_cls_conn* %104, i32 %105, i8* %106, i32 %107)
  store i32 %108, i32* %14, align 4
  %109 = load i32, i32* %14, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %103
  %112 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %113 = call i32 @cxgbi_conn_max_recv_dlength(%struct.iscsi_conn* %112)
  store i32 %113, i32* %14, align 4
  br label %114

114:                                              ; preds = %111, %103
  br label %133

115:                                              ; preds = %4
  %116 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %6, align 8
  %117 = load i32, i32* %7, align 4
  %118 = load i8*, i8** %8, align 8
  %119 = load i32, i32* %9, align 4
  %120 = call i32 @iscsi_set_param(%struct.iscsi_cls_conn* %116, i32 %117, i8* %118, i32 %119)
  store i32 %120, i32* %14, align 4
  %121 = load i32, i32* %14, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %115
  %124 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %125 = call i32 @cxgbi_conn_max_xmit_dlength(%struct.iscsi_conn* %124)
  store i32 %125, i32* %14, align 4
  br label %126

126:                                              ; preds = %123, %115
  br label %133

127:                                              ; preds = %4
  %128 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %6, align 8
  %129 = load i32, i32* %7, align 4
  %130 = load i8*, i8** %8, align 8
  %131 = load i32, i32* %9, align 4
  %132 = call i32 @iscsi_set_param(%struct.iscsi_cls_conn* %128, i32 %129, i8* %130, i32 %131)
  store i32 %132, i32* %5, align 4
  br label %135

133:                                              ; preds = %126, %114, %98, %67
  %134 = load i32, i32* %14, align 4
  store i32 %134, i32* %5, align 4
  br label %135

135:                                              ; preds = %133, %127, %99
  %136 = load i32, i32* %5, align 4
  ret i32 %136
}

declare dso_local i32 @log_debug(i32, i8*, %struct.iscsi_cls_conn*, i32, i32, i8*) #1

declare dso_local i32 @iscsi_set_param(%struct.iscsi_cls_conn*, i32, i8*, i32) #1

declare dso_local i32 @iscsi_tcp_set_max_r2t(%struct.iscsi_conn*, i8*) #1

declare dso_local i32 @cxgbi_conn_max_recv_dlength(%struct.iscsi_conn*) #1

declare dso_local i32 @cxgbi_conn_max_xmit_dlength(%struct.iscsi_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
