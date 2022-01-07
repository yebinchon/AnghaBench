; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_more_plogi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_more_plogi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32, i32, i32, i64 }

@KERN_INFO = common dso_local global i32 0, align 4
@LOG_DISCOVERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"0232 Continue discovery with %d PLOGIs to go Data: x%x x%x x%x\0A\00", align 1
@FC_NLP_MORE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_more_plogi(%struct.lpfc_vport* %0) #0 {
  %2 = alloca %struct.lpfc_vport*, align 8
  %3 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %2, align 8
  %4 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %5 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %4, i32 0, i32 3
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %10 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %11, -1
  store i64 %12, i64* %10, align 8
  br label %13

13:                                               ; preds = %8, %1
  %14 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %15 = load i32, i32* @KERN_INFO, align 4
  %16 = load i32, i32* @LOG_DISCOVERY, align 4
  %17 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %18 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %21 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %24 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %27 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %14, i32 %15, i32 %16, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i64 %19, i32 %22, i32 %25, i32 %28)
  %30 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %31 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @FC_NLP_MORE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %13
  %37 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %38 = call i32 @lpfc_els_disc_plogi(%struct.lpfc_vport* %37)
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %36, %13
  ret void
}

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i64, i32, i32, i32) #1

declare dso_local i32 @lpfc_els_disc_plogi(%struct.lpfc_vport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
