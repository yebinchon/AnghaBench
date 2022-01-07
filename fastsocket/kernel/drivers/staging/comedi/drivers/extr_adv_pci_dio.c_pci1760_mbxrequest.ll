; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adv_pci_dio.c_pci1760_mbxrequest.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adv_pci_dio.c_pci1760_mbxrequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64 }

@CMD_ClearIMB2 = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [64 x i8] c"bug! this function should not be used for CMD_ClearIMB2 command\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IMB2 = common dso_local global i64 0, align 8
@OMBCMD_RETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i8*, i8*)* @pci1760_mbxrequest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci1760_mbxrequest(%struct.comedi_device* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 2
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  %13 = load i8, i8* @CMD_ClearIMB2, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %18 = call i32 @comedi_error(%struct.comedi_device* %17, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %48

21:                                               ; preds = %3
  %22 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %23 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @IMB2, align 8
  %26 = add nsw i64 %24, %25
  %27 = call zeroext i8 @inb(i64 %26)
  %28 = zext i8 %27 to i32
  %29 = load i8*, i8** %6, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 2
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp eq i32 %28, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %21
  %35 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %36 = call i32 @pci1760_clear_imb2(%struct.comedi_device* %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %4, align 4
  br label %48

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41, %21
  %43 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = load i32, i32* @OMBCMD_RETRY, align 4
  %47 = call i32 @pci1760_unchecked_mbxrequest(%struct.comedi_device* %43, i8* %44, i8* %45, i32 %46)
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %42, %39, %16
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

declare dso_local zeroext i8 @inb(i64) #1

declare dso_local i32 @pci1760_clear_imb2(%struct.comedi_device*) #1

declare dso_local i32 @pci1760_unchecked_mbxrequest(%struct.comedi_device*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
