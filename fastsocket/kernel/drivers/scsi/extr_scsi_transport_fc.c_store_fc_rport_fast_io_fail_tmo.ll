; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_fc.c_store_fc_rport_fast_io_fail_tmo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_fc.c_store_fc_rport_fast_io_fail_tmo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.fc_rport = type { i64, i32, i32 }

@FC_PORTSTATE_BLOCKED = common dso_local global i64 0, align 8
@FC_PORTSTATE_DELETED = common dso_local global i64 0, align 8
@FC_PORTSTATE_NOTPRESENT = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"off\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@SCSI_DEVICE_BLOCK_MAX_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_fc_rport_fast_io_fail_tmo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_fc_rport_fast_io_fail_tmo(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.fc_rport*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.fc_rport* @transport_class_to_rport(%struct.device* %13)
  store %struct.fc_rport* %14, %struct.fc_rport** %12, align 8
  %15 = load %struct.fc_rport*, %struct.fc_rport** %12, align 8
  %16 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @FC_PORTSTATE_BLOCKED, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %32, label %20

20:                                               ; preds = %4
  %21 = load %struct.fc_rport*, %struct.fc_rport** %12, align 8
  %22 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @FC_PORTSTATE_DELETED, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = load %struct.fc_rport*, %struct.fc_rport** %12, align 8
  %28 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @FC_PORTSTATE_NOTPRESENT, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26, %20, %4
  %33 = load i64, i64* @EBUSY, align 8
  %34 = sub i64 0, %33
  store i64 %34, i64* %5, align 8
  br label %79

35:                                               ; preds = %26
  %36 = load i8*, i8** %8, align 8
  %37 = call i64 @strncmp(i8* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load %struct.fc_rport*, %struct.fc_rport** %12, align 8
  %41 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %40, i32 0, i32 1
  store i32 -1, i32* %41, align 8
  br label %77

42:                                               ; preds = %35
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 @simple_strtoul(i8* %43, i8** %11, i32 0)
  store i32 %44, i32* %10, align 4
  %45 = load i8*, i8** %11, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %42
  %50 = load i8*, i8** %11, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 10
  br i1 %53, label %57, label %54

54:                                               ; preds = %49, %42
  %55 = load i32, i32* %10, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54, %49
  %58 = load i64, i64* @EINVAL, align 8
  %59 = sub i64 0, %58
  store i64 %59, i64* %5, align 8
  br label %79

60:                                               ; preds = %54
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.fc_rport*, %struct.fc_rport** %12, align 8
  %63 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = icmp sge i32 %61, %64
  br i1 %65, label %70, label %66

66:                                               ; preds = %60
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @SCSI_DEVICE_BLOCK_MAX_TIMEOUT, align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %66, %60
  %71 = load i64, i64* @EINVAL, align 8
  %72 = sub i64 0, %71
  store i64 %72, i64* %5, align 8
  br label %79

73:                                               ; preds = %66
  %74 = load i32, i32* %10, align 4
  %75 = load %struct.fc_rport*, %struct.fc_rport** %12, align 8
  %76 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 8
  br label %77

77:                                               ; preds = %73, %39
  %78 = load i64, i64* %9, align 8
  store i64 %78, i64* %5, align 8
  br label %79

79:                                               ; preds = %77, %70, %57, %32
  %80 = load i64, i64* %5, align 8
  ret i64 %80
}

declare dso_local %struct.fc_rport* @transport_class_to_rport(%struct.device*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @simple_strtoul(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
