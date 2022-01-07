; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_send_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_send_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvfc_event = type { i32 (%struct.ibmvfc_event*)*, %struct.TYPE_12__*, %struct.TYPE_13__*, %struct.TYPE_14__, i32, %struct.TYPE_10__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i64, void (i64)*, i64 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32, i8* }
%struct.TYPE_9__ = type { i8* }
%struct.ibmvfc_host = type { i32, i32 }

@IBMVFC_CMD_FORMAT = common dso_local global i64 0, align 8
@IBMVFC_MAD_FORMAT = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@ibmvfc_timeout = common dso_local global i64 0, align 8
@H_CLOSED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Send warning. Receive queue closed, will retry.\0A\00", align 1
@SCSI_MLQUEUE_HOST_BUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Send error (rc=%d)\0A\00", align 1
@DID_ERROR = common dso_local global i32 0, align 4
@IBMVFC_MAD_CRQ_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibmvfc_event*, %struct.ibmvfc_host*, i64)* @ibmvfc_send_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmvfc_send_event(%struct.ibmvfc_event* %0, %struct.ibmvfc_host* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ibmvfc_event*, align 8
  %6 = alloca %struct.ibmvfc_host*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  store %struct.ibmvfc_event* %0, %struct.ibmvfc_event** %5, align 8
  store %struct.ibmvfc_host* %1, %struct.ibmvfc_host** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %11 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %10, i32 0, i32 5
  %12 = bitcast %struct.TYPE_10__* %11 to i8**
  store i8** %12, i8*** %8, align 8
  %13 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %14 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %13, i32 0, i32 1
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %16 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %17 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %16, i32 0, i32 6
  %18 = bitcast %struct.TYPE_12__* %15 to i8*
  %19 = bitcast %struct.TYPE_12__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 24, i1 false)
  %20 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %21 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %20, i32 0, i32 5
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @IBMVFC_CMD_FORMAT, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %3
  %27 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %28 = bitcast %struct.ibmvfc_event* %27 to i8*
  %29 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %30 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %29, i32 0, i32 1
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  store i8* %28, i8** %33, align 8
  br label %52

34:                                               ; preds = %3
  %35 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %36 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %35, i32 0, i32 5
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @IBMVFC_MAD_FORMAT, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %34
  %42 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %43 = bitcast %struct.ibmvfc_event* %42 to i8*
  %44 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %45 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %44, i32 0, i32 1
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  store i8* %43, i8** %48, align 8
  br label %51

49:                                               ; preds = %34
  %50 = call i32 (...) @BUG()
  br label %51

51:                                               ; preds = %49, %41
  br label %52

52:                                               ; preds = %51, %26
  %53 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %54 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %53, i32 0, i32 4
  %55 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %6, align 8
  %56 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %55, i32 0, i32 1
  %57 = call i32 @list_add_tail(i32* %54, i32* %56)
  %58 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %59 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %58, i32 0, i32 3
  %60 = call i32 @init_timer(%struct.TYPE_14__* %59)
  %61 = load i64, i64* %7, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %85

63:                                               ; preds = %52
  %64 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %65 = ptrtoint %struct.ibmvfc_event* %64 to i64
  %66 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %67 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  store i64 %65, i64* %68, align 8
  %69 = load i64, i64* @jiffies, align 8
  %70 = load i64, i64* %7, align 8
  %71 = load i64, i64* @HZ, align 8
  %72 = mul i64 %70, %71
  %73 = add i64 %69, %72
  %74 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %75 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 2
  store i64 %73, i64* %76, align 8
  %77 = load i64, i64* @ibmvfc_timeout, align 8
  %78 = inttoptr i64 %77 to void (i64)*
  %79 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %80 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 1
  store void (i64)* %78, void (i64)** %81, align 8
  %82 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %83 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %82, i32 0, i32 3
  %84 = call i32 @add_timer(%struct.TYPE_14__* %83)
  br label %85

85:                                               ; preds = %63, %52
  %86 = call i32 (...) @mb()
  %87 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %6, align 8
  %88 = load i8**, i8*** %8, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 0
  %90 = load i8*, i8** %89, align 8
  %91 = load i8**, i8*** %8, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i64 1
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @ibmvfc_send_crq(%struct.ibmvfc_host* %87, i8* %90, i8* %93)
  store i32 %94, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %160

96:                                               ; preds = %85
  %97 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %98 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %97, i32 0, i32 4
  %99 = call i32 @list_del(i32* %98)
  %100 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %101 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %100, i32 0, i32 3
  %102 = call i32 @del_timer(%struct.TYPE_14__* %101)
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* @H_CLOSED, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %128

106:                                              ; preds = %96
  %107 = call i64 (...) @printk_ratelimit()
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %106
  %110 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %6, align 8
  %111 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @dev_warn(i32 %112, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %114

114:                                              ; preds = %109, %106
  %115 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %116 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %115, i32 0, i32 2
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %116, align 8
  %118 = icmp ne %struct.TYPE_13__* %117, null
  br i1 %118, label %119, label %124

119:                                              ; preds = %114
  %120 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %121 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %120, i32 0, i32 2
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %121, align 8
  %123 = call i32 @scsi_dma_unmap(%struct.TYPE_13__* %122)
  br label %124

124:                                              ; preds = %119, %114
  %125 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %126 = call i32 @ibmvfc_free_event(%struct.ibmvfc_event* %125)
  %127 = load i32, i32* @SCSI_MLQUEUE_HOST_BUSY, align 4
  store i32 %127, i32* %4, align 4
  br label %164

128:                                              ; preds = %96
  %129 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %6, align 8
  %130 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %9, align 4
  %133 = call i32 @dev_err(i32 %131, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %132)
  %134 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %135 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %134, i32 0, i32 2
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %135, align 8
  %137 = icmp ne %struct.TYPE_13__* %136, null
  br i1 %137, label %138, label %147

138:                                              ; preds = %128
  %139 = load i32, i32* @DID_ERROR, align 4
  %140 = shl i32 %139, 16
  %141 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %142 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %141, i32 0, i32 2
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 0
  store i32 %140, i32* %144, align 4
  %145 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %146 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %145, i32 0, i32 0
  store i32 (%struct.ibmvfc_event*)* @ibmvfc_scsi_eh_done, i32 (%struct.ibmvfc_event*)** %146, align 8
  br label %154

147:                                              ; preds = %128
  %148 = load i32, i32* @IBMVFC_MAD_CRQ_ERROR, align 4
  %149 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %150 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %149, i32 0, i32 1
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 0
  store i32 %148, i32* %153, align 8
  br label %154

154:                                              ; preds = %147, %138
  %155 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %156 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %155, i32 0, i32 0
  %157 = load i32 (%struct.ibmvfc_event*)*, i32 (%struct.ibmvfc_event*)** %156, align 8
  %158 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %159 = call i32 %157(%struct.ibmvfc_event* %158)
  br label %163

160:                                              ; preds = %85
  %161 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %162 = call i32 @ibmvfc_trc_start(%struct.ibmvfc_event* %161)
  br label %163

163:                                              ; preds = %160, %154
  store i32 0, i32* %4, align 4
  br label %164

164:                                              ; preds = %163, %124
  %165 = load i32, i32* %4, align 4
  ret i32 %165
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @BUG(...) #2

declare dso_local i32 @list_add_tail(i32*, i32*) #2

declare dso_local i32 @init_timer(%struct.TYPE_14__*) #2

declare dso_local i32 @add_timer(%struct.TYPE_14__*) #2

declare dso_local i32 @mb(...) #2

declare dso_local i32 @ibmvfc_send_crq(%struct.ibmvfc_host*, i8*, i8*) #2

declare dso_local i32 @list_del(i32*) #2

declare dso_local i32 @del_timer(%struct.TYPE_14__*) #2

declare dso_local i64 @printk_ratelimit(...) #2

declare dso_local i32 @dev_warn(i32, i8*) #2

declare dso_local i32 @scsi_dma_unmap(%struct.TYPE_13__*) #2

declare dso_local i32 @ibmvfc_free_event(%struct.ibmvfc_event*) #2

declare dso_local i32 @dev_err(i32, i8*, i32) #2

declare dso_local i32 @ibmvfc_scsi_eh_done(%struct.ibmvfc_event*) #2

declare dso_local i32 @ibmvfc_trc_start(%struct.ibmvfc_event*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
