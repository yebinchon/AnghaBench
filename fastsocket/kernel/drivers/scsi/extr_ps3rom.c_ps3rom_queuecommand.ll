; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ps3rom.c_ps3rom_queuecommand.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ps3rom.c_ps3rom_queuecommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { void (%struct.scsi_cmnd*)*, i8*, i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ps3rom_private = type { %struct.scsi_cmnd*, %struct.ps3_storage_device* }
%struct.ps3_storage_device = type { i32 }

@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, void (%struct.scsi_cmnd*)*)* @ps3rom_queuecommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ps3rom_queuecommand(%struct.scsi_cmnd* %0, void (%struct.scsi_cmnd*)* %1) #0 {
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca void (%struct.scsi_cmnd*)*, align 8
  %5 = alloca %struct.ps3rom_private*, align 8
  %6 = alloca %struct.ps3_storage_device*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  store void (%struct.scsi_cmnd*)* %1, void (%struct.scsi_cmnd*)** %4, align 8
  %9 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %10 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %9, i32 0, i32 4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.ps3rom_private* @shost_priv(i32 %13)
  store %struct.ps3rom_private* %14, %struct.ps3rom_private** %5, align 8
  %15 = load %struct.ps3rom_private*, %struct.ps3rom_private** %5, align 8
  %16 = getelementptr inbounds %struct.ps3rom_private, %struct.ps3rom_private* %15, i32 0, i32 1
  %17 = load %struct.ps3_storage_device*, %struct.ps3_storage_device** %16, align 8
  store %struct.ps3_storage_device* %17, %struct.ps3_storage_device** %6, align 8
  %18 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %19 = load %struct.ps3rom_private*, %struct.ps3rom_private** %5, align 8
  %20 = getelementptr inbounds %struct.ps3rom_private, %struct.ps3rom_private* %19, i32 0, i32 0
  store %struct.scsi_cmnd* %18, %struct.scsi_cmnd** %20, align 8
  %21 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %4, align 8
  %22 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %23 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %22, i32 0, i32 0
  store void (%struct.scsi_cmnd*)* %21, void (%struct.scsi_cmnd*)** %23, align 8
  %24 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %25 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  store i8 %28, i8* %7, align 1
  %29 = load i8, i8* %7, align 1
  %30 = zext i8 %29 to i32
  switch i32 %30, label %47 [
    i32 129, label %31
    i32 128, label %39
  ]

31:                                               ; preds = %2
  %32 = load %struct.ps3_storage_device*, %struct.ps3_storage_device** %6, align 8
  %33 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %34 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %35 = call i32 @srb10_lba(%struct.scsi_cmnd* %34)
  %36 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %37 = call i32 @srb10_len(%struct.scsi_cmnd* %36)
  %38 = call i32 @ps3rom_read_request(%struct.ps3_storage_device* %32, %struct.scsi_cmnd* %33, i32 %35, i32 %37)
  store i32 %38, i32* %8, align 4
  br label %51

39:                                               ; preds = %2
  %40 = load %struct.ps3_storage_device*, %struct.ps3_storage_device** %6, align 8
  %41 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %42 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %43 = call i32 @srb10_lba(%struct.scsi_cmnd* %42)
  %44 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %45 = call i32 @srb10_len(%struct.scsi_cmnd* %44)
  %46 = call i32 @ps3rom_write_request(%struct.ps3_storage_device* %40, %struct.scsi_cmnd* %41, i32 %43, i32 %45)
  store i32 %46, i32* %8, align 4
  br label %51

47:                                               ; preds = %2
  %48 = load %struct.ps3_storage_device*, %struct.ps3_storage_device** %6, align 8
  %49 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %50 = call i32 @ps3rom_atapi_request(%struct.ps3_storage_device* %48, %struct.scsi_cmnd* %49)
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %47, %39, %31
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %78

54:                                               ; preds = %51
  %55 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %56 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %59 = call i32 @memset(i32* %57, i32 0, i32 %58)
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %62 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 8
  %63 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %64 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  store i32 112, i32* %66, align 4
  %67 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %68 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %69 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 2
  store i32 %67, i32* %71, align 4
  %72 = load %struct.ps3rom_private*, %struct.ps3rom_private** %5, align 8
  %73 = getelementptr inbounds %struct.ps3rom_private, %struct.ps3rom_private* %72, i32 0, i32 0
  store %struct.scsi_cmnd* null, %struct.scsi_cmnd** %73, align 8
  %74 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %75 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %74, i32 0, i32 0
  %76 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %75, align 8
  %77 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  call void %76(%struct.scsi_cmnd* %77)
  br label %78

78:                                               ; preds = %54, %51
  ret i32 0
}

declare dso_local %struct.ps3rom_private* @shost_priv(i32) #1

declare dso_local i32 @ps3rom_read_request(%struct.ps3_storage_device*, %struct.scsi_cmnd*, i32, i32) #1

declare dso_local i32 @srb10_lba(%struct.scsi_cmnd*) #1

declare dso_local i32 @srb10_len(%struct.scsi_cmnd*) #1

declare dso_local i32 @ps3rom_write_request(%struct.ps3_storage_device*, %struct.scsi_cmnd*, i32, i32) #1

declare dso_local i32 @ps3rom_atapi_request(%struct.ps3_storage_device*, %struct.scsi_cmnd*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
