; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_fc.c_store_fc_host_vport_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_fc.c_store_fc_host_vport_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.fc_vport_identifiers = type { i32, i32, i32, i32, i32 }
%struct.fc_vport = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@FC_PORT_ROLE_FCP_INITIATOR = common dso_local global i32 0, align 4
@FC_PORTTYPE_NPIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_fc_host_vport_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_fc_host_vport_create(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.Scsi_Host*, align 8
  %11 = alloca %struct.fc_vport_identifiers, align 4
  %12 = alloca %struct.fc_vport*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.Scsi_Host* @transport_class_to_shost(%struct.device* %15)
  store %struct.Scsi_Host* %16, %struct.Scsi_Host** %10, align 8
  %17 = load i64, i64* %9, align 8
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %13, align 4
  %19 = call i32 @memset(%struct.fc_vport_identifiers* %11, i32 0, i32 20)
  %20 = load i8*, i8** %8, align 8
  %21 = load i32, i32* %13, align 4
  %22 = sub i32 %21, 1
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %20, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 10
  br i1 %27, label %28, label %31

28:                                               ; preds = %4
  %29 = load i32, i32* %13, align 4
  %30 = add i32 %29, -1
  store i32 %30, i32* %13, align 4
  br label %31

31:                                               ; preds = %28, %4
  %32 = load i32, i32* %13, align 4
  %33 = icmp ne i32 %32, 33
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  %35 = load i8*, i8** %8, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 16
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 58
  br i1 %39, label %40, label %43

40:                                               ; preds = %34, %31
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %81

43:                                               ; preds = %34
  %44 = load i8*, i8** %8, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  %46 = getelementptr inbounds %struct.fc_vport_identifiers, %struct.fc_vport_identifiers* %11, i32 0, i32 4
  %47 = call i32 @fc_parse_wwn(i8* %45, i32* %46)
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %14, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* %14, align 4
  store i32 %51, i32* %5, align 4
  br label %81

52:                                               ; preds = %43
  %53 = load i8*, i8** %8, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 17
  %55 = getelementptr inbounds %struct.fc_vport_identifiers, %struct.fc_vport_identifiers* %11, i32 0, i32 3
  %56 = call i32 @fc_parse_wwn(i8* %54, i32* %55)
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %14, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i32, i32* %14, align 4
  store i32 %60, i32* %5, align 4
  br label %81

61:                                               ; preds = %52
  %62 = load i32, i32* @FC_PORT_ROLE_FCP_INITIATOR, align 4
  %63 = getelementptr inbounds %struct.fc_vport_identifiers, %struct.fc_vport_identifiers* %11, i32 0, i32 2
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* @FC_PORTTYPE_NPIV, align 4
  %65 = getelementptr inbounds %struct.fc_vport_identifiers, %struct.fc_vport_identifiers* %11, i32 0, i32 1
  store i32 %64, i32* %65, align 4
  %66 = getelementptr inbounds %struct.fc_vport_identifiers, %struct.fc_vport_identifiers* %11, i32 0, i32 0
  store i32 0, i32* %66, align 4
  %67 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %68 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %69 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %68, i32 0, i32 0
  %70 = call i32 @fc_vport_setup(%struct.Scsi_Host* %67, i32 0, i32* %69, %struct.fc_vport_identifiers* %11, %struct.fc_vport** %12)
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %14, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %61
  %74 = load i32, i32* %14, align 4
  %75 = sext i32 %74 to i64
  br label %78

76:                                               ; preds = %61
  %77 = load i64, i64* %9, align 8
  br label %78

78:                                               ; preds = %76, %73
  %79 = phi i64 [ %75, %73 ], [ %77, %76 ]
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %78, %59, %50, %40
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local %struct.Scsi_Host* @transport_class_to_shost(%struct.device*) #1

declare dso_local i32 @memset(%struct.fc_vport_identifiers*, i32, i32) #1

declare dso_local i32 @fc_parse_wwn(i8*, i32*) #1

declare dso_local i32 @fc_vport_setup(%struct.Scsi_Host*, i32, i32*, %struct.fc_vport_identifiers*, %struct.fc_vport**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
