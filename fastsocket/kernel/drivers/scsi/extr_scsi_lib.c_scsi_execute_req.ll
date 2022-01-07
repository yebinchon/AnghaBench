; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_lib.c_scsi_execute_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_lib.c_scsi_execute_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.scsi_sense_hdr = type { i32 }

@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@DRIVER_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scsi_execute_req(%struct.scsi_device* %0, i8* %1, i32 %2, i8* %3, i32 %4, %struct.scsi_sense_hdr* %5, i32 %6, i32 %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.scsi_device*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.scsi_sense_hdr*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %11, align 8
  store i8* %1, i8** %12, align 8
  store i32 %2, i32* %13, align 4
  store i8* %3, i8** %14, align 8
  store i32 %4, i32* %15, align 4
  store %struct.scsi_sense_hdr* %5, %struct.scsi_sense_hdr** %16, align 8
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32* %8, i32** %19, align 8
  store i8* null, i8** %20, align 8
  %22 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %16, align 8
  %23 = icmp ne %struct.scsi_sense_hdr* %22, null
  br i1 %23, label %24, label %34

24:                                               ; preds = %9
  %25 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %26 = load i32, i32* @GFP_NOIO, align 4
  %27 = call i8* @kzalloc(i32 %25, i32 %26)
  store i8* %27, i8** %20, align 8
  %28 = load i8*, i8** %20, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* @DRIVER_ERROR, align 4
  %32 = shl i32 %31, 24
  store i32 %32, i32* %10, align 4
  br label %56

33:                                               ; preds = %24
  br label %34

34:                                               ; preds = %33, %9
  %35 = load %struct.scsi_device*, %struct.scsi_device** %11, align 8
  %36 = load i8*, i8** %12, align 8
  %37 = load i32, i32* %13, align 4
  %38 = load i8*, i8** %14, align 8
  %39 = load i32, i32* %15, align 4
  %40 = load i8*, i8** %20, align 8
  %41 = load i32, i32* %17, align 4
  %42 = load i32, i32* %18, align 4
  %43 = load i32*, i32** %19, align 8
  %44 = call i32 @scsi_execute(%struct.scsi_device* %35, i8* %36, i32 %37, i8* %38, i32 %39, i8* %40, i32 %41, i32 %42, i32 0, i32* %43)
  store i32 %44, i32* %21, align 4
  %45 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %16, align 8
  %46 = icmp ne %struct.scsi_sense_hdr* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %34
  %48 = load i8*, i8** %20, align 8
  %49 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %50 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %16, align 8
  %51 = call i32 @scsi_normalize_sense(i8* %48, i32 %49, %struct.scsi_sense_hdr* %50)
  br label %52

52:                                               ; preds = %47, %34
  %53 = load i8*, i8** %20, align 8
  %54 = call i32 @kfree(i8* %53)
  %55 = load i32, i32* %21, align 4
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %52, %30
  %57 = load i32, i32* %10, align 4
  ret i32 %57
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @scsi_execute(%struct.scsi_device*, i8*, i32, i8*, i32, i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @scsi_normalize_sense(i8*, i32, %struct.scsi_sense_hdr*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
