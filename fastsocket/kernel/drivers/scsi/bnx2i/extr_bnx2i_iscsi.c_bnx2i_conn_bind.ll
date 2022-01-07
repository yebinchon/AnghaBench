; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2i/extr_bnx2i_iscsi.c_bnx2i_conn_bind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2i/extr_bnx2i_iscsi.c_bnx2i_conn_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cls_session = type { i32 }
%struct.iscsi_cls_conn = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { %struct.bnx2i_conn* }
%struct.bnx2i_conn = type { %struct.bnx2i_endpoint*, i32, i32 }
%struct.bnx2i_endpoint = type { i64, %struct.bnx2i_hba*, i32, i32, %struct.bnx2i_conn* }
%struct.bnx2i_hba = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.iscsi_endpoint = type { %struct.bnx2i_endpoint* }

@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EP_STATE_TCP_FIN_RCVD = common dso_local global i64 0, align 8
@EP_STATE_TCP_RST_RCVD = common dso_local global i64 0, align 8
@KERN_ALERT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"conn bind, ep=0x%p (%s) does not\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"belong to hba (%s)\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@BNX2I_NX2_DEV_57710 = common dso_local global i32 0, align 4
@CNIC_ARM_CQE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_cls_session*, %struct.iscsi_cls_conn*, i32, i32)* @bnx2i_conn_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2i_conn_bind(%struct.iscsi_cls_session* %0, %struct.iscsi_cls_conn* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iscsi_cls_session*, align 8
  %7 = alloca %struct.iscsi_cls_conn*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.iscsi_conn*, align 8
  %11 = alloca %struct.bnx2i_conn*, align 8
  %12 = alloca %struct.Scsi_Host*, align 8
  %13 = alloca %struct.bnx2i_hba*, align 8
  %14 = alloca %struct.bnx2i_endpoint*, align 8
  %15 = alloca %struct.iscsi_endpoint*, align 8
  %16 = alloca i32, align 4
  store %struct.iscsi_cls_session* %0, %struct.iscsi_cls_session** %6, align 8
  store %struct.iscsi_cls_conn* %1, %struct.iscsi_cls_conn** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %7, align 8
  %18 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %17, i32 0, i32 0
  %19 = load %struct.iscsi_conn*, %struct.iscsi_conn** %18, align 8
  store %struct.iscsi_conn* %19, %struct.iscsi_conn** %10, align 8
  %20 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %21 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %20, i32 0, i32 0
  %22 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %21, align 8
  store %struct.bnx2i_conn* %22, %struct.bnx2i_conn** %11, align 8
  %23 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %6, align 8
  %24 = call %struct.Scsi_Host* @iscsi_session_to_shost(%struct.iscsi_cls_session* %23)
  store %struct.Scsi_Host* %24, %struct.Scsi_Host** %12, align 8
  %25 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  %26 = call %struct.bnx2i_hba* @iscsi_host_priv(%struct.Scsi_Host* %25)
  store %struct.bnx2i_hba* %26, %struct.bnx2i_hba** %13, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call %struct.iscsi_endpoint* @iscsi_lookup_endpoint(i32 %27)
  store %struct.iscsi_endpoint* %28, %struct.iscsi_endpoint** %15, align 8
  %29 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %15, align 8
  %30 = icmp ne %struct.iscsi_endpoint* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %4
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %142

34:                                               ; preds = %4
  %35 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %13, align 8
  %36 = call i64 @bnx2i_adapter_ready(%struct.bnx2i_hba* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %142

41:                                               ; preds = %34
  %42 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %15, align 8
  %43 = getelementptr inbounds %struct.iscsi_endpoint, %struct.iscsi_endpoint* %42, i32 0, i32 0
  %44 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %43, align 8
  store %struct.bnx2i_endpoint* %44, %struct.bnx2i_endpoint** %14, align 8
  %45 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %14, align 8
  %46 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @EP_STATE_TCP_FIN_RCVD, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %56, label %50

50:                                               ; preds = %41
  %51 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %14, align 8
  %52 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @EP_STATE_TCP_RST_RCVD, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %50, %41
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %5, align 4
  br label %142

59:                                               ; preds = %50
  %60 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %6, align 8
  %61 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %7, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i64 @iscsi_conn_bind(%struct.iscsi_cls_session* %60, %struct.iscsi_cls_conn* %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %142

68:                                               ; preds = %59
  %69 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %14, align 8
  %70 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %69, i32 0, i32 1
  %71 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %70, align 8
  %72 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %13, align 8
  %73 = icmp ne %struct.bnx2i_hba* %71, %72
  br i1 %73, label %74, label %102

74:                                               ; preds = %68
  %75 = load i32, i32* @KERN_ALERT, align 4
  %76 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %7, align 8
  %77 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %76, i32 0, i32 0
  %78 = load %struct.iscsi_conn*, %struct.iscsi_conn** %77, align 8
  %79 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %14, align 8
  %80 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %14, align 8
  %81 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %80, i32 0, i32 1
  %82 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %81, align 8
  %83 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %82, i32 0, i32 1
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (i32, %struct.iscsi_conn*, i8*, %struct.bnx2i_endpoint*, ...) @iscsi_conn_printk(i32 %75, %struct.iscsi_conn* %78, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), %struct.bnx2i_endpoint* %79, i32 %86)
  %88 = load i32, i32* @KERN_ALERT, align 4
  %89 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %7, align 8
  %90 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %89, i32 0, i32 0
  %91 = load %struct.iscsi_conn*, %struct.iscsi_conn** %90, align 8
  %92 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %13, align 8
  %93 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %92, i32 0, i32 1
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = inttoptr i64 %97 to %struct.bnx2i_endpoint*
  %99 = call i32 (i32, %struct.iscsi_conn*, i8*, %struct.bnx2i_endpoint*, ...) @iscsi_conn_printk(i32 %88, %struct.iscsi_conn* %91, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), %struct.bnx2i_endpoint* %98)
  %100 = load i32, i32* @EEXIST, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %5, align 4
  br label %142

102:                                              ; preds = %68
  %103 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %11, align 8
  %104 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %14, align 8
  %105 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %104, i32 0, i32 4
  store %struct.bnx2i_conn* %103, %struct.bnx2i_conn** %105, align 8
  %106 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %14, align 8
  %107 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %11, align 8
  %108 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %107, i32 0, i32 0
  store %struct.bnx2i_endpoint* %106, %struct.bnx2i_endpoint** %108, align 8
  %109 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %14, align 8
  %110 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %11, align 8
  %113 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 4
  %114 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %14, align 8
  %115 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %11, align 8
  %118 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 8
  %119 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %13, align 8
  %120 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %11, align 8
  %121 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %14, align 8
  %122 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @bnx2i_bind_conn_to_iscsi_cid(%struct.bnx2i_hba* %119, %struct.bnx2i_conn* %120, i32 %123)
  store i32 %124, i32* %16, align 4
  %125 = load i32, i32* @BNX2I_NX2_DEV_57710, align 4
  %126 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %14, align 8
  %127 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %126, i32 0, i32 1
  %128 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %127, align 8
  %129 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %128, i32 0, i32 0
  %130 = call i64 @test_bit(i32 %125, i32* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %102
  %133 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %11, align 8
  %134 = call i32 @bnx2i_put_rq_buf(%struct.bnx2i_conn* %133, i32 0)
  br label %135

135:                                              ; preds = %132, %102
  %136 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %11, align 8
  %137 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %136, i32 0, i32 0
  %138 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %137, align 8
  %139 = load i32, i32* @CNIC_ARM_CQE, align 4
  %140 = call i32 @bnx2i_arm_cq_event_coalescing(%struct.bnx2i_endpoint* %138, i32 %139)
  %141 = load i32, i32* %16, align 4
  store i32 %141, i32* %5, align 4
  br label %142

142:                                              ; preds = %135, %74, %65, %56, %38, %31
  %143 = load i32, i32* %5, align 4
  ret i32 %143
}

declare dso_local %struct.Scsi_Host* @iscsi_session_to_shost(%struct.iscsi_cls_session*) #1

declare dso_local %struct.bnx2i_hba* @iscsi_host_priv(%struct.Scsi_Host*) #1

declare dso_local %struct.iscsi_endpoint* @iscsi_lookup_endpoint(i32) #1

declare dso_local i64 @bnx2i_adapter_ready(%struct.bnx2i_hba*) #1

declare dso_local i64 @iscsi_conn_bind(%struct.iscsi_cls_session*, %struct.iscsi_cls_conn*, i32) #1

declare dso_local i32 @iscsi_conn_printk(i32, %struct.iscsi_conn*, i8*, %struct.bnx2i_endpoint*, ...) #1

declare dso_local i32 @bnx2i_bind_conn_to_iscsi_cid(%struct.bnx2i_hba*, %struct.bnx2i_conn*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @bnx2i_put_rq_buf(%struct.bnx2i_conn*, i32) #1

declare dso_local i32 @bnx2i_arm_cq_event_coalescing(%struct.bnx2i_endpoint*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
