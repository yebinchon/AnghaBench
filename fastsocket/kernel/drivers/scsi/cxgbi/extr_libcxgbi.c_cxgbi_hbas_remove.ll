; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_hbas_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_hbas_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_device = type { i32, i32, %struct.cxgbi_hba** }
%struct.cxgbi_hba = type { i32 }

@CXGBI_DBG_DEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"cdev 0x%p, p#%u.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cxgbi_hbas_remove(%struct.cxgbi_device* %0) #0 {
  %2 = alloca %struct.cxgbi_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.cxgbi_hba*, align 8
  store %struct.cxgbi_device* %0, %struct.cxgbi_device** %2, align 8
  %5 = load i32, i32* @CXGBI_DBG_DEV, align 4
  %6 = shl i32 1, %5
  %7 = load %struct.cxgbi_device*, %struct.cxgbi_device** %2, align 8
  %8 = load %struct.cxgbi_device*, %struct.cxgbi_device** %2, align 8
  %9 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @log_debug(i32 %6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.cxgbi_device* %7, i32 %10)
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %48, %1
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.cxgbi_device*, %struct.cxgbi_device** %2, align 8
  %15 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %51

18:                                               ; preds = %12
  %19 = load %struct.cxgbi_device*, %struct.cxgbi_device** %2, align 8
  %20 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %19, i32 0, i32 2
  %21 = load %struct.cxgbi_hba**, %struct.cxgbi_hba*** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.cxgbi_hba*, %struct.cxgbi_hba** %21, i64 %23
  %25 = load %struct.cxgbi_hba*, %struct.cxgbi_hba** %24, align 8
  store %struct.cxgbi_hba* %25, %struct.cxgbi_hba** %4, align 8
  %26 = load %struct.cxgbi_hba*, %struct.cxgbi_hba** %4, align 8
  %27 = icmp ne %struct.cxgbi_hba* %26, null
  br i1 %27, label %28, label %47

28:                                               ; preds = %18
  %29 = load %struct.cxgbi_device*, %struct.cxgbi_device** %2, align 8
  %30 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %29, i32 0, i32 2
  %31 = load %struct.cxgbi_hba**, %struct.cxgbi_hba*** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.cxgbi_hba*, %struct.cxgbi_hba** %31, i64 %33
  store %struct.cxgbi_hba* null, %struct.cxgbi_hba** %34, align 8
  %35 = load %struct.cxgbi_hba*, %struct.cxgbi_hba** %4, align 8
  %36 = getelementptr inbounds %struct.cxgbi_hba, %struct.cxgbi_hba* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @iscsi_host_remove(i32 %37)
  %39 = load %struct.cxgbi_device*, %struct.cxgbi_device** %2, align 8
  %40 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @pci_dev_put(i32 %41)
  %43 = load %struct.cxgbi_hba*, %struct.cxgbi_hba** %4, align 8
  %44 = getelementptr inbounds %struct.cxgbi_hba, %struct.cxgbi_hba* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @iscsi_host_free(i32 %45)
  br label %47

47:                                               ; preds = %28, %18
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %3, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %3, align 4
  br label %12

51:                                               ; preds = %12
  ret void
}

declare dso_local i32 @log_debug(i32, i8*, %struct.cxgbi_device*, i32) #1

declare dso_local i32 @iscsi_host_remove(i32) #1

declare dso_local i32 @pci_dev_put(i32) #1

declare dso_local i32 @iscsi_host_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
