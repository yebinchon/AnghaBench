; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_iscsi.c_iscsi_create_flashnode_conn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_iscsi.c_iscsi_create_flashnode_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_bus_flash_conn = type { %struct.iscsi_bus_flash_conn*, %struct.TYPE_3__, %struct.iscsi_transport* }
%struct.TYPE_3__ = type { i32*, i32*, i32* }
%struct.Scsi_Host = type { i32 }
%struct.iscsi_bus_flash_session = type { i32, i32 }
%struct.iscsi_transport = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@iscsi_flashnode_conn_dev_type = common dso_local global i32 0, align 4
@iscsi_flashnode_bus = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"flashnode_conn-%u:%u:0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.iscsi_bus_flash_conn* @iscsi_create_flashnode_conn(%struct.Scsi_Host* %0, %struct.iscsi_bus_flash_session* %1, %struct.iscsi_transport* %2, i32 %3) #0 {
  %5 = alloca %struct.iscsi_bus_flash_conn*, align 8
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.iscsi_bus_flash_session*, align 8
  %8 = alloca %struct.iscsi_transport*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iscsi_bus_flash_conn*, align 8
  %11 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %6, align 8
  store %struct.iscsi_bus_flash_session* %1, %struct.iscsi_bus_flash_session** %7, align 8
  store %struct.iscsi_transport* %2, %struct.iscsi_transport** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = sext i32 %12 to i64
  %14 = add i64 40, %13
  %15 = trunc i64 %14 to i32
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.iscsi_bus_flash_conn* @kzalloc(i32 %15, i32 %16)
  store %struct.iscsi_bus_flash_conn* %17, %struct.iscsi_bus_flash_conn** %10, align 8
  %18 = load %struct.iscsi_bus_flash_conn*, %struct.iscsi_bus_flash_conn** %10, align 8
  %19 = icmp ne %struct.iscsi_bus_flash_conn* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %4
  store %struct.iscsi_bus_flash_conn* null, %struct.iscsi_bus_flash_conn** %5, align 8
  br label %64

21:                                               ; preds = %4
  %22 = load %struct.iscsi_transport*, %struct.iscsi_transport** %8, align 8
  %23 = load %struct.iscsi_bus_flash_conn*, %struct.iscsi_bus_flash_conn** %10, align 8
  %24 = getelementptr inbounds %struct.iscsi_bus_flash_conn, %struct.iscsi_bus_flash_conn* %23, i32 0, i32 2
  store %struct.iscsi_transport* %22, %struct.iscsi_transport** %24, align 8
  %25 = load %struct.iscsi_bus_flash_conn*, %struct.iscsi_bus_flash_conn** %10, align 8
  %26 = getelementptr inbounds %struct.iscsi_bus_flash_conn, %struct.iscsi_bus_flash_conn* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  store i32* @iscsi_flashnode_conn_dev_type, i32** %27, align 8
  %28 = load %struct.iscsi_bus_flash_conn*, %struct.iscsi_bus_flash_conn** %10, align 8
  %29 = getelementptr inbounds %struct.iscsi_bus_flash_conn, %struct.iscsi_bus_flash_conn* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  store i32* @iscsi_flashnode_bus, i32** %30, align 8
  %31 = load %struct.iscsi_bus_flash_session*, %struct.iscsi_bus_flash_session** %7, align 8
  %32 = getelementptr inbounds %struct.iscsi_bus_flash_session, %struct.iscsi_bus_flash_session* %31, i32 0, i32 1
  %33 = load %struct.iscsi_bus_flash_conn*, %struct.iscsi_bus_flash_conn** %10, align 8
  %34 = getelementptr inbounds %struct.iscsi_bus_flash_conn, %struct.iscsi_bus_flash_conn* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32* %32, i32** %35, align 8
  %36 = load %struct.iscsi_bus_flash_conn*, %struct.iscsi_bus_flash_conn** %10, align 8
  %37 = getelementptr inbounds %struct.iscsi_bus_flash_conn, %struct.iscsi_bus_flash_conn* %36, i32 0, i32 1
  %38 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %39 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.iscsi_bus_flash_session*, %struct.iscsi_bus_flash_session** %7, align 8
  %42 = getelementptr inbounds %struct.iscsi_bus_flash_session, %struct.iscsi_bus_flash_session* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dev_set_name(%struct.TYPE_3__* %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %43)
  %45 = load %struct.iscsi_bus_flash_conn*, %struct.iscsi_bus_flash_conn** %10, align 8
  %46 = getelementptr inbounds %struct.iscsi_bus_flash_conn, %struct.iscsi_bus_flash_conn* %45, i32 0, i32 1
  %47 = call i32 @device_register(%struct.TYPE_3__* %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %21
  br label %61

51:                                               ; preds = %21
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load %struct.iscsi_bus_flash_conn*, %struct.iscsi_bus_flash_conn** %10, align 8
  %56 = getelementptr inbounds %struct.iscsi_bus_flash_conn, %struct.iscsi_bus_flash_conn* %55, i64 1
  %57 = load %struct.iscsi_bus_flash_conn*, %struct.iscsi_bus_flash_conn** %10, align 8
  %58 = getelementptr inbounds %struct.iscsi_bus_flash_conn, %struct.iscsi_bus_flash_conn* %57, i32 0, i32 0
  store %struct.iscsi_bus_flash_conn* %56, %struct.iscsi_bus_flash_conn** %58, align 8
  br label %59

59:                                               ; preds = %54, %51
  %60 = load %struct.iscsi_bus_flash_conn*, %struct.iscsi_bus_flash_conn** %10, align 8
  store %struct.iscsi_bus_flash_conn* %60, %struct.iscsi_bus_flash_conn** %5, align 8
  br label %64

61:                                               ; preds = %50
  %62 = load %struct.iscsi_bus_flash_conn*, %struct.iscsi_bus_flash_conn** %10, align 8
  %63 = call i32 @kfree(%struct.iscsi_bus_flash_conn* %62)
  store %struct.iscsi_bus_flash_conn* null, %struct.iscsi_bus_flash_conn** %5, align 8
  br label %64

64:                                               ; preds = %61, %59, %20
  %65 = load %struct.iscsi_bus_flash_conn*, %struct.iscsi_bus_flash_conn** %5, align 8
  ret %struct.iscsi_bus_flash_conn* %65
}

declare dso_local %struct.iscsi_bus_flash_conn* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_3__*, i8*, i32, i32) #1

declare dso_local i32 @device_register(%struct.TYPE_3__*) #1

declare dso_local i32 @kfree(%struct.iscsi_bus_flash_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
