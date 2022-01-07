; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iscsi_iser.c_iscsi_iser_session_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iscsi_iser.c_iscsi_iser_session_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cls_session = type { %struct.iscsi_session* }
%struct.iscsi_session = type { i32 }
%struct.iscsi_endpoint = type { %struct.iser_conn* }
%struct.iser_conn = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }
%struct.Scsi_Host = type { i32, i32, i64, i64, i32, i32 }

@iscsi_iser_sht = common dso_local global i32 0, align 4
@iscsi_iser_scsi_transport = common dso_local global i32 0, align 4
@iscsi_max_lun = common dso_local global i32 0, align 4
@iscsi_iser_transport = common dso_local global i32 0, align 4
@ISCSI_DEF_XMIT_CMDS_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iscsi_cls_session* (%struct.iscsi_endpoint*, i32, i32, i32)* @iscsi_iser_session_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iscsi_cls_session* @iscsi_iser_session_create(%struct.iscsi_endpoint* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.iscsi_cls_session*, align 8
  %6 = alloca %struct.iscsi_endpoint*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.iscsi_cls_session*, align 8
  %11 = alloca %struct.iscsi_session*, align 8
  %12 = alloca %struct.Scsi_Host*, align 8
  %13 = alloca %struct.iser_conn*, align 8
  store %struct.iscsi_endpoint* %0, %struct.iscsi_endpoint** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = call %struct.Scsi_Host* @iscsi_host_alloc(i32* @iscsi_iser_sht, i32 0, i32 0)
  store %struct.Scsi_Host* %14, %struct.Scsi_Host** %12, align 8
  %15 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  %16 = icmp ne %struct.Scsi_Host* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store %struct.iscsi_cls_session* null, %struct.iscsi_cls_session** %5, align 8
  br label %79

18:                                               ; preds = %4
  %19 = load i32, i32* @iscsi_iser_scsi_transport, align 4
  %20 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  %21 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %20, i32 0, i32 5
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @iscsi_max_lun, align 4
  %23 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  %24 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 8
  %25 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  %26 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %25, i32 0, i32 3
  store i64 0, i64* %26, align 8
  %27 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  %28 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  %30 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %29, i32 0, i32 0
  store i32 16, i32* %30, align 8
  %31 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %6, align 8
  %32 = icmp ne %struct.iscsi_endpoint* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %18
  %34 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %6, align 8
  %35 = getelementptr inbounds %struct.iscsi_endpoint, %struct.iscsi_endpoint* %34, i32 0, i32 0
  %36 = load %struct.iser_conn*, %struct.iser_conn** %35, align 8
  store %struct.iser_conn* %36, %struct.iser_conn** %13, align 8
  br label %37

37:                                               ; preds = %33, %18
  %38 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  %39 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %6, align 8
  %40 = icmp ne %struct.iscsi_endpoint* %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %37
  %42 = load %struct.iser_conn*, %struct.iser_conn** %13, align 8
  %43 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  br label %50

49:                                               ; preds = %37
  br label %50

50:                                               ; preds = %49, %41
  %51 = phi i32* [ %48, %41 ], [ null, %49 ]
  %52 = call i64 @iscsi_host_add(%struct.Scsi_Host* %38, i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %76

55:                                               ; preds = %50
  %56 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  %57 = load i32, i32* @ISCSI_DEF_XMIT_CMDS_MAX, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call %struct.iscsi_cls_session* @iscsi_session_setup(i32* @iscsi_iser_transport, %struct.Scsi_Host* %56, i32 %57, i32 0, i32 4, i32 %58, i32 0)
  store %struct.iscsi_cls_session* %59, %struct.iscsi_cls_session** %10, align 8
  %60 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %10, align 8
  %61 = icmp ne %struct.iscsi_cls_session* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %55
  br label %73

63:                                               ; preds = %55
  %64 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %10, align 8
  %65 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %64, i32 0, i32 0
  %66 = load %struct.iscsi_session*, %struct.iscsi_session** %65, align 8
  store %struct.iscsi_session* %66, %struct.iscsi_session** %11, align 8
  %67 = load %struct.iscsi_session*, %struct.iscsi_session** %11, align 8
  %68 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  %71 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %10, align 8
  store %struct.iscsi_cls_session* %72, %struct.iscsi_cls_session** %5, align 8
  br label %79

73:                                               ; preds = %62
  %74 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  %75 = call i32 @iscsi_host_remove(%struct.Scsi_Host* %74)
  br label %76

76:                                               ; preds = %73, %54
  %77 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  %78 = call i32 @iscsi_host_free(%struct.Scsi_Host* %77)
  store %struct.iscsi_cls_session* null, %struct.iscsi_cls_session** %5, align 8
  br label %79

79:                                               ; preds = %76, %63, %17
  %80 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %5, align 8
  ret %struct.iscsi_cls_session* %80
}

declare dso_local %struct.Scsi_Host* @iscsi_host_alloc(i32*, i32, i32) #1

declare dso_local i64 @iscsi_host_add(%struct.Scsi_Host*, i32*) #1

declare dso_local %struct.iscsi_cls_session* @iscsi_session_setup(i32*, %struct.Scsi_Host*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @iscsi_host_remove(%struct.Scsi_Host*) #1

declare dso_local i32 @iscsi_host_free(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
