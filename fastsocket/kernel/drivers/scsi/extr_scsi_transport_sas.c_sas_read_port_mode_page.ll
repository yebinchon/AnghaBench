; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_sas.c_sas_read_port_mode_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_sas.c_sas_read_port_mode_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.sas_end_device = type { i32, i8, i8 }
%struct.scsi_mode_data = type { i32, i32 }

@BUF_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sas_read_port_mode_page(%struct.scsi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sas_end_device*, align 8
  %7 = alloca %struct.scsi_mode_data, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  %10 = load i32, i32* @BUF_SIZE, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i8* @kzalloc(i32 %10, i32 %11)
  store i8* %12, i8** %4, align 8
  %13 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %14 = call %struct.sas_end_device* @sas_sdev_to_rdev(%struct.scsi_device* %13)
  store %struct.sas_end_device* %14, %struct.sas_end_device** %6, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %94

20:                                               ; preds = %1
  %21 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = load i32, i32* @BUF_SIZE, align 4
  %24 = load i32, i32* @HZ, align 4
  %25 = mul nsw i32 30, %24
  %26 = call i32 @scsi_mode_sense(%struct.scsi_device* %21, i32 1, i32 25, i8* %22, i32 %23, i32 %25, i32 3, %struct.scsi_mode_data* %7, i32* null)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @scsi_status_is_good(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %20
  br label %90

33:                                               ; preds = %20
  %34 = load i8*, i8** %4, align 8
  %35 = getelementptr inbounds %struct.scsi_mode_data, %struct.scsi_mode_data* %7, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %34, i64 %37
  %39 = getelementptr inbounds %struct.scsi_mode_data, %struct.scsi_mode_data* %7, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %38, i64 %41
  store i8* %42, i8** %5, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = load i8*, i8** %4, align 8
  %45 = ptrtoint i8* %43 to i64
  %46 = ptrtoint i8* %44 to i64
  %47 = sub i64 %45, %46
  %48 = load i32, i32* @BUF_SIZE, align 4
  %49 = sub nsw i32 %48, 8
  %50 = sext i32 %49 to i64
  %51 = icmp sgt i64 %47, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %33
  br label %90

53:                                               ; preds = %33
  store i32 0, i32* %9, align 4
  %54 = load i8*, i8** %5, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 2
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = and i32 %57, 16
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 1, i32 0
  %62 = load %struct.sas_end_device*, %struct.sas_end_device** %6, align 8
  %63 = getelementptr inbounds %struct.sas_end_device, %struct.sas_end_device* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = load i8*, i8** %5, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 4
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = shl i32 %67, 8
  %69 = load i8*, i8** %5, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 5
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = add nsw i32 %68, %72
  %74 = trunc i32 %73 to i8
  %75 = load %struct.sas_end_device*, %struct.sas_end_device** %6, align 8
  %76 = getelementptr inbounds %struct.sas_end_device, %struct.sas_end_device* %75, i32 0, i32 1
  store i8 %74, i8* %76, align 4
  %77 = load i8*, i8** %5, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 6
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = shl i32 %80, 8
  %82 = load i8*, i8** %5, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 7
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = add nsw i32 %81, %85
  %87 = trunc i32 %86 to i8
  %88 = load %struct.sas_end_device*, %struct.sas_end_device** %6, align 8
  %89 = getelementptr inbounds %struct.sas_end_device, %struct.sas_end_device* %88, i32 0, i32 2
  store i8 %87, i8* %89, align 1
  br label %90

90:                                               ; preds = %53, %52, %32
  %91 = load i8*, i8** %4, align 8
  %92 = call i32 @kfree(i8* %91)
  %93 = load i32, i32* %9, align 4
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %90, %17
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local %struct.sas_end_device* @sas_sdev_to_rdev(%struct.scsi_device*) #1

declare dso_local i32 @scsi_mode_sense(%struct.scsi_device*, i32, i32, i8*, i32, i32, i32, %struct.scsi_mode_data*, i32*) #1

declare dso_local i32 @scsi_status_is_good(i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
