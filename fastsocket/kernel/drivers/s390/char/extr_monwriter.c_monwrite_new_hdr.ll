; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_monwriter.c_monwrite_new_hdr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_monwriter.c_monwrite_new_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mon_private = type { %struct.mon_buf*, i32, %struct.monwrite_hdr }
%struct.mon_buf = type { i32, %struct.monwrite_hdr, %struct.mon_buf* }
%struct.monwrite_hdr = type { i32, i64, i32 }

@MONWRITE_MAX_DATALEN = common dso_local global i32 0, align 4
@MONWRITE_START_CONFIG = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@MONWRITE_GEN_EVENT = common dso_local global i64 0, align 8
@MONWRITE_STOP_INTERVAL = common dso_local global i64 0, align 8
@APPLDATA_STOP_REC = common dso_local global i32 0, align 4
@mon_buf_count = common dso_local global i64 0, align 8
@mon_max_bufs = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mon_private*)* @monwrite_new_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @monwrite_new_hdr(%struct.mon_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mon_private*, align 8
  %4 = alloca %struct.monwrite_hdr*, align 8
  %5 = alloca %struct.mon_buf*, align 8
  %6 = alloca i32, align 4
  store %struct.mon_private* %0, %struct.mon_private** %3, align 8
  %7 = load %struct.mon_private*, %struct.mon_private** %3, align 8
  %8 = getelementptr inbounds %struct.mon_private, %struct.mon_private* %7, i32 0, i32 2
  store %struct.monwrite_hdr* %8, %struct.monwrite_hdr** %4, align 8
  %9 = load %struct.monwrite_hdr*, %struct.monwrite_hdr** %4, align 8
  %10 = getelementptr inbounds %struct.monwrite_hdr, %struct.monwrite_hdr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @MONWRITE_MAX_DATALEN, align 4
  %13 = icmp sgt i32 %11, %12
  br i1 %13, label %26, label %14

14:                                               ; preds = %1
  %15 = load %struct.monwrite_hdr*, %struct.monwrite_hdr** %4, align 8
  %16 = getelementptr inbounds %struct.monwrite_hdr, %struct.monwrite_hdr* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @MONWRITE_START_CONFIG, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = load %struct.monwrite_hdr*, %struct.monwrite_hdr** %4, align 8
  %22 = getelementptr inbounds %struct.monwrite_hdr, %struct.monwrite_hdr* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = icmp ne i64 %24, 24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20, %14, %1
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %140

29:                                               ; preds = %20
  store %struct.mon_buf* null, %struct.mon_buf** %5, align 8
  %30 = load %struct.monwrite_hdr*, %struct.monwrite_hdr** %4, align 8
  %31 = getelementptr inbounds %struct.monwrite_hdr, %struct.monwrite_hdr* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @MONWRITE_GEN_EVENT, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load %struct.mon_private*, %struct.mon_private** %3, align 8
  %37 = load %struct.monwrite_hdr*, %struct.monwrite_hdr** %4, align 8
  %38 = call %struct.mon_buf* @monwrite_find_hdr(%struct.mon_private* %36, %struct.monwrite_hdr* %37)
  store %struct.mon_buf* %38, %struct.mon_buf** %5, align 8
  br label %39

39:                                               ; preds = %35, %29
  %40 = load %struct.mon_buf*, %struct.mon_buf** %5, align 8
  %41 = icmp ne %struct.mon_buf* %40, null
  br i1 %41, label %42, label %73

42:                                               ; preds = %39
  %43 = load %struct.monwrite_hdr*, %struct.monwrite_hdr** %4, align 8
  %44 = getelementptr inbounds %struct.monwrite_hdr, %struct.monwrite_hdr* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @MONWRITE_STOP_INTERVAL, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %72

48:                                               ; preds = %42
  %49 = load %struct.mon_buf*, %struct.mon_buf** %5, align 8
  %50 = getelementptr inbounds %struct.mon_buf, %struct.mon_buf* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.monwrite_hdr, %struct.monwrite_hdr* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.monwrite_hdr*, %struct.monwrite_hdr** %4, align 8
  %54 = getelementptr inbounds %struct.monwrite_hdr, %struct.monwrite_hdr* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.monwrite_hdr*, %struct.monwrite_hdr** %4, align 8
  %56 = load %struct.mon_buf*, %struct.mon_buf** %5, align 8
  %57 = getelementptr inbounds %struct.mon_buf, %struct.mon_buf* %56, i32 0, i32 2
  %58 = load %struct.mon_buf*, %struct.mon_buf** %57, align 8
  %59 = load i32, i32* @APPLDATA_STOP_REC, align 4
  %60 = call i32 @monwrite_diag(%struct.monwrite_hdr* %55, %struct.mon_buf* %58, i32 %59)
  store i32 %60, i32* %6, align 4
  %61 = load %struct.mon_buf*, %struct.mon_buf** %5, align 8
  %62 = getelementptr inbounds %struct.mon_buf, %struct.mon_buf* %61, i32 0, i32 0
  %63 = call i32 @list_del(i32* %62)
  %64 = load i64, i64* @mon_buf_count, align 8
  %65 = add nsw i64 %64, -1
  store i64 %65, i64* @mon_buf_count, align 8
  %66 = load %struct.mon_buf*, %struct.mon_buf** %5, align 8
  %67 = getelementptr inbounds %struct.mon_buf, %struct.mon_buf* %66, i32 0, i32 2
  %68 = load %struct.mon_buf*, %struct.mon_buf** %67, align 8
  %69 = call i32 @kfree(%struct.mon_buf* %68)
  %70 = load %struct.mon_buf*, %struct.mon_buf** %5, align 8
  %71 = call i32 @kfree(%struct.mon_buf* %70)
  store %struct.mon_buf* null, %struct.mon_buf** %5, align 8
  br label %72

72:                                               ; preds = %48, %42
  br label %136

73:                                               ; preds = %39
  %74 = load %struct.monwrite_hdr*, %struct.monwrite_hdr** %4, align 8
  %75 = getelementptr inbounds %struct.monwrite_hdr, %struct.monwrite_hdr* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @MONWRITE_STOP_INTERVAL, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %135

79:                                               ; preds = %73
  %80 = load i64, i64* @mon_buf_count, align 8
  %81 = load i64, i64* @mon_max_bufs, align 8
  %82 = icmp sge i64 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load i32, i32* @ENOSPC, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %2, align 4
  br label %140

86:                                               ; preds = %79
  %87 = load i32, i32* @GFP_KERNEL, align 4
  %88 = call i8* @kzalloc(i32 40, i32 %87)
  %89 = bitcast i8* %88 to %struct.mon_buf*
  store %struct.mon_buf* %89, %struct.mon_buf** %5, align 8
  %90 = load %struct.mon_buf*, %struct.mon_buf** %5, align 8
  %91 = icmp ne %struct.mon_buf* %90, null
  br i1 %91, label %95, label %92

92:                                               ; preds = %86
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %2, align 4
  br label %140

95:                                               ; preds = %86
  %96 = load %struct.monwrite_hdr*, %struct.monwrite_hdr** %4, align 8
  %97 = getelementptr inbounds %struct.monwrite_hdr, %struct.monwrite_hdr* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @GFP_KERNEL, align 4
  %100 = load i32, i32* @GFP_DMA, align 4
  %101 = or i32 %99, %100
  %102 = call i8* @kzalloc(i32 %98, i32 %101)
  %103 = bitcast i8* %102 to %struct.mon_buf*
  %104 = load %struct.mon_buf*, %struct.mon_buf** %5, align 8
  %105 = getelementptr inbounds %struct.mon_buf, %struct.mon_buf* %104, i32 0, i32 2
  store %struct.mon_buf* %103, %struct.mon_buf** %105, align 8
  %106 = load %struct.mon_buf*, %struct.mon_buf** %5, align 8
  %107 = getelementptr inbounds %struct.mon_buf, %struct.mon_buf* %106, i32 0, i32 2
  %108 = load %struct.mon_buf*, %struct.mon_buf** %107, align 8
  %109 = icmp ne %struct.mon_buf* %108, null
  br i1 %109, label %115, label %110

110:                                              ; preds = %95
  %111 = load %struct.mon_buf*, %struct.mon_buf** %5, align 8
  %112 = call i32 @kfree(%struct.mon_buf* %111)
  %113 = load i32, i32* @ENOMEM, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %2, align 4
  br label %140

115:                                              ; preds = %95
  %116 = load %struct.mon_buf*, %struct.mon_buf** %5, align 8
  %117 = getelementptr inbounds %struct.mon_buf, %struct.mon_buf* %116, i32 0, i32 1
  %118 = load %struct.monwrite_hdr*, %struct.monwrite_hdr** %4, align 8
  %119 = bitcast %struct.monwrite_hdr* %117 to i8*
  %120 = bitcast %struct.monwrite_hdr* %118 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %119, i8* align 8 %120, i64 24, i1 false)
  %121 = load %struct.mon_buf*, %struct.mon_buf** %5, align 8
  %122 = getelementptr inbounds %struct.mon_buf, %struct.mon_buf* %121, i32 0, i32 0
  %123 = load %struct.mon_private*, %struct.mon_private** %3, align 8
  %124 = getelementptr inbounds %struct.mon_private, %struct.mon_private* %123, i32 0, i32 1
  %125 = call i32 @list_add_tail(i32* %122, i32* %124)
  %126 = load %struct.monwrite_hdr*, %struct.monwrite_hdr** %4, align 8
  %127 = getelementptr inbounds %struct.monwrite_hdr, %struct.monwrite_hdr* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @MONWRITE_GEN_EVENT, align 8
  %130 = icmp ne i64 %128, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %115
  %132 = load i64, i64* @mon_buf_count, align 8
  %133 = add nsw i64 %132, 1
  store i64 %133, i64* @mon_buf_count, align 8
  br label %134

134:                                              ; preds = %131, %115
  br label %135

135:                                              ; preds = %134, %73
  br label %136

136:                                              ; preds = %135, %72
  %137 = load %struct.mon_buf*, %struct.mon_buf** %5, align 8
  %138 = load %struct.mon_private*, %struct.mon_private** %3, align 8
  %139 = getelementptr inbounds %struct.mon_private, %struct.mon_private* %138, i32 0, i32 0
  store %struct.mon_buf* %137, %struct.mon_buf** %139, align 8
  store i32 0, i32* %2, align 4
  br label %140

140:                                              ; preds = %136, %110, %92, %83, %26
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local %struct.mon_buf* @monwrite_find_hdr(%struct.mon_private*, %struct.monwrite_hdr*) #1

declare dso_local i32 @monwrite_diag(%struct.monwrite_hdr*, %struct.mon_buf*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.mon_buf*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
