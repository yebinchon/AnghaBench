; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-eh.c_ata_eh_analyze_ncq_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-eh.c_ata_eh_analyze_ncq_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_link = type { i32, %struct.ata_device*, %struct.ata_eh_context, %struct.ata_port* }
%struct.ata_device = type { i32 }
%struct.ata_eh_context = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ata_port = type { i32 }
%struct.ata_queued_cmd = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ata_taskfile = type { i32 }

@ATA_PFLAG_FROZEN = common dso_local global i32 0, align 4
@AC_ERR_DEV = common dso_local global i32 0, align 4
@ATA_MAX_QUEUE = common dso_local global i32 0, align 4
@ATA_QCFLAG_FAILED = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"failed to read log page 10h (errno=%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"log page 10h reported inactive tag %d\0A\00", align 1
@ATA_TFLAG_ISADDR = common dso_local global i32 0, align 4
@ATA_TFLAG_LBA = common dso_local global i32 0, align 4
@ATA_TFLAG_LBA48 = common dso_local global i32 0, align 4
@AC_ERR_NCQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ata_eh_analyze_ncq_error(%struct.ata_link* %0) #0 {
  %2 = alloca %struct.ata_link*, align 8
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_eh_context*, align 8
  %5 = alloca %struct.ata_device*, align 8
  %6 = alloca %struct.ata_queued_cmd*, align 8
  %7 = alloca %struct.ata_taskfile, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ata_link* %0, %struct.ata_link** %2, align 8
  %10 = load %struct.ata_link*, %struct.ata_link** %2, align 8
  %11 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %10, i32 0, i32 3
  %12 = load %struct.ata_port*, %struct.ata_port** %11, align 8
  store %struct.ata_port* %12, %struct.ata_port** %3, align 8
  %13 = load %struct.ata_link*, %struct.ata_link** %2, align 8
  %14 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %13, i32 0, i32 2
  store %struct.ata_eh_context* %14, %struct.ata_eh_context** %4, align 8
  %15 = load %struct.ata_link*, %struct.ata_link** %2, align 8
  %16 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %15, i32 0, i32 1
  %17 = load %struct.ata_device*, %struct.ata_device** %16, align 8
  store %struct.ata_device* %17, %struct.ata_device** %5, align 8
  %18 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %19 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @ATA_PFLAG_FROZEN, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %118

25:                                               ; preds = %1
  %26 = load %struct.ata_link*, %struct.ata_link** %2, align 8
  %27 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load %struct.ata_eh_context*, %struct.ata_eh_context** %4, align 8
  %32 = getelementptr inbounds %struct.ata_eh_context, %struct.ata_eh_context* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @AC_ERR_DEV, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %30, %25
  br label %118

39:                                               ; preds = %30
  store i32 0, i32* %8, align 4
  br label %40

40:                                               ; preds = %62, %39
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @ATA_MAX_QUEUE, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %65

44:                                               ; preds = %40
  %45 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call %struct.ata_queued_cmd* @__ata_qc_from_tag(%struct.ata_port* %45, i32 %46)
  store %struct.ata_queued_cmd* %47, %struct.ata_queued_cmd** %6, align 8
  %48 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %49 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @ATA_QCFLAG_FAILED, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %44
  br label %62

55:                                               ; preds = %44
  %56 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %57 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %118

61:                                               ; preds = %55
  br label %62

62:                                               ; preds = %61, %54
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
  br label %40

65:                                               ; preds = %40
  %66 = call i32 @memset(%struct.ata_taskfile* %7, i32 0, i32 4)
  %67 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %68 = call i32 @ata_eh_read_log_10h(%struct.ata_device* %67, i32* %8, %struct.ata_taskfile* %7)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %65
  %72 = load %struct.ata_link*, %struct.ata_link** %2, align 8
  %73 = load i32, i32* @KERN_ERR, align 4
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @ata_link_printk(%struct.ata_link* %72, i32 %73, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %74)
  br label %118

76:                                               ; preds = %65
  %77 = load %struct.ata_link*, %struct.ata_link** %2, align 8
  %78 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = shl i32 1, %80
  %82 = and i32 %79, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %76
  %85 = load %struct.ata_link*, %struct.ata_link** %2, align 8
  %86 = load i32, i32* @KERN_ERR, align 4
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @ata_link_printk(%struct.ata_link* %85, i32 %86, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %87)
  br label %118

89:                                               ; preds = %76
  %90 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %91 = load i32, i32* %8, align 4
  %92 = call %struct.ata_queued_cmd* @__ata_qc_from_tag(%struct.ata_port* %90, i32 %91)
  store %struct.ata_queued_cmd* %92, %struct.ata_queued_cmd** %6, align 8
  %93 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %94 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %93, i32 0, i32 2
  %95 = call i32 @memcpy(%struct.TYPE_4__* %94, %struct.ata_taskfile* %7, i32 4)
  %96 = load i32, i32* @ATA_TFLAG_ISADDR, align 4
  %97 = load i32, i32* @ATA_TFLAG_LBA, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @ATA_TFLAG_LBA48, align 4
  %100 = or i32 %98, %99
  %101 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %102 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  store i32 %100, i32* %103, align 4
  %104 = load i32, i32* @AC_ERR_DEV, align 4
  %105 = load i32, i32* @AC_ERR_NCQ, align 4
  %106 = or i32 %104, %105
  %107 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %108 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 4
  %111 = load i32, i32* @AC_ERR_DEV, align 4
  %112 = xor i32 %111, -1
  %113 = load %struct.ata_eh_context*, %struct.ata_eh_context** %4, align 8
  %114 = getelementptr inbounds %struct.ata_eh_context, %struct.ata_eh_context* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = and i32 %116, %112
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %89, %84, %71, %60, %38, %24
  ret void
}

declare dso_local %struct.ata_queued_cmd* @__ata_qc_from_tag(%struct.ata_port*, i32) #1

declare dso_local i32 @memset(%struct.ata_taskfile*, i32, i32) #1

declare dso_local i32 @ata_eh_read_log_10h(%struct.ata_device*, i32*, %struct.ata_taskfile*) #1

declare dso_local i32 @ata_link_printk(%struct.ata_link*, i32, i8*, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_4__*, %struct.ata_taskfile*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
