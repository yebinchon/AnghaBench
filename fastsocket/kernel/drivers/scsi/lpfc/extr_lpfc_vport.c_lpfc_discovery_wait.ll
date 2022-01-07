; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_vport.c_lpfc_discovery_wait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_vport.c_lpfc_discovery_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i64, i32, i64, %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32 }

@FC_RSCN_MODE = common dso_local global i32 0, align 4
@FC_RSCN_DISCOVERY = common dso_local global i32 0, align 4
@FC_NLP_MORE = common dso_local global i32 0, align 4
@FC_RSCN_DEFERRED = common dso_local global i32 0, align 4
@FC_NDISC_ACTIVE = common dso_local global i32 0, align 4
@FC_DISC_TMO = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@LPFC_VPORT_FAILED = common dso_local global i64 0, align 8
@LPFC_VPORT_READY = common dso_local global i64 0, align 8
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_VPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [114 x i8] c"1833 Vport discovery quiesce Wait: state x%x fc_flags x%x num_nodes x%x, waiting 1000 msecs total wait msecs x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [70 x i8] c"1834 Vport discovery quiesced: state x%x fc_flags x%x wait msecs x%x\0A\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [76 x i8] c"1835 Vport discovery quiesce failed: state x%x fc_flags x%x wait msecs x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_vport*)* @lpfc_discovery_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_discovery_wait(%struct.lpfc_vport* %0) #0 {
  %2 = alloca %struct.lpfc_vport*, align 8
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %2, align 8
  %7 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %8 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %7, i32 0, i32 3
  %9 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  store %struct.lpfc_hba* %9, %struct.lpfc_hba** %3, align 8
  store i32 0, i32* %4, align 4
  %10 = load i32, i32* @FC_RSCN_MODE, align 4
  %11 = load i32, i32* @FC_RSCN_DISCOVERY, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @FC_NLP_MORE, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @FC_RSCN_DEFERRED, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @FC_NDISC_ACTIVE, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @FC_DISC_TMO, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %4, align 4
  %21 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %22 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %23, 3
  %25 = add nsw i32 %24, 3
  %26 = mul nsw i32 %25, 1000
  %27 = call i64 @msecs_to_jiffies(i32 %26)
  store i64 %27, i64* %5, align 8
  %28 = load i64, i64* @jiffies, align 8
  %29 = load i64, i64* %5, align 8
  %30 = add i64 %29, %28
  store i64 %30, i64* %5, align 8
  %31 = load i64, i64* @jiffies, align 8
  store i64 %31, i64* %6, align 8
  br label %32

32:                                               ; preds = %96, %1
  %33 = load i64, i64* @jiffies, align 8
  %34 = load i64, i64* %5, align 8
  %35 = call i64 @time_before(i64 %33, i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %97

37:                                               ; preds = %32
  %38 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %39 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %61, label %42

42:                                               ; preds = %37
  %43 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %44 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %61, label %49

49:                                               ; preds = %42
  %50 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %51 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @LPFC_VPORT_FAILED, align 8
  %54 = icmp sgt i64 %52, %53
  br i1 %54, label %55, label %80

55:                                               ; preds = %49
  %56 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %57 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @LPFC_VPORT_READY, align 8
  %60 = icmp slt i64 %58, %59
  br i1 %60, label %61, label %80

61:                                               ; preds = %55, %42, %37
  %62 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %63 = load i32, i32* @KERN_INFO, align 4
  %64 = load i32, i32* @LOG_VPORT, align 4
  %65 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %66 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %69 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %72 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @jiffies, align 8
  %75 = load i64, i64* %6, align 8
  %76 = sub i64 %74, %75
  %77 = call i32 @jiffies_to_msecs(i64 %76)
  %78 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i64, i32, i64, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %62, i32 %63, i32 %64, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str, i64 0, i64 0), i64 %67, i32 %70, i64 %73, i32 %77)
  %79 = call i32 @msleep(i32 1000)
  br label %96

80:                                               ; preds = %55, %49
  %81 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %82 = load i32, i32* @KERN_INFO, align 4
  %83 = load i32, i32* @LOG_VPORT, align 4
  %84 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %85 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %88 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load i64, i64* @jiffies, align 8
  %91 = load i64, i64* %6, align 8
  %92 = sub i64 %90, %91
  %93 = call i32 @jiffies_to_msecs(i64 %92)
  %94 = sext i32 %93 to i64
  %95 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i64, i32, i64, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %81, i32 %82, i32 %83, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i64 %86, i32 %89, i64 %94)
  br label %97

96:                                               ; preds = %61
  br label %32

97:                                               ; preds = %80, %32
  %98 = load i64, i64* @jiffies, align 8
  %99 = load i64, i64* %5, align 8
  %100 = call i64 @time_after(i64 %98, i64 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %118

102:                                              ; preds = %97
  %103 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %104 = load i32, i32* @KERN_ERR, align 4
  %105 = load i32, i32* @LOG_VPORT, align 4
  %106 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %107 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %110 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load i64, i64* @jiffies, align 8
  %113 = load i64, i64* %6, align 8
  %114 = sub i64 %112, %113
  %115 = call i32 @jiffies_to_msecs(i64 %114)
  %116 = sext i32 %115 to i64
  %117 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i64, i32, i64, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %103, i32 %104, i32 %105, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.2, i64 0, i64 0), i64 %108, i32 %111, i64 %116)
  br label %118

118:                                              ; preds = %102, %97
  ret void
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i64, i32, i64, ...) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
