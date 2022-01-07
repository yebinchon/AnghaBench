; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_do_offline.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_do_offline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { %struct.lpfc_sli, %struct.TYPE_2__* }
%struct.lpfc_sli = type { i32, %struct.lpfc_sli_ring* }
%struct.lpfc_sli_ring = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.completion = type { i32 }

@FC_OFFLINE_MODE = common dso_local global i32 0, align 4
@LPFC_EVT_OFFLINE_PREP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"0466 Outstanding IO when bringing Adapter offline\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, i32)* @lpfc_do_offline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_do_offline(%struct.lpfc_hba* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.completion, align 4
  %7 = alloca %struct.lpfc_sli_ring*, align 8
  %8 = alloca %struct.lpfc_sli*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %14 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @FC_OFFLINE_MODE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %94

22:                                               ; preds = %2
  %23 = call i32 @init_completion(%struct.completion* %6)
  %24 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %25 = load i32, i32* @LPFC_EVT_OFFLINE_PREP, align 4
  %26 = call i32 @lpfc_workq_post_event(%struct.lpfc_hba* %24, i32* %9, %struct.completion* %6, i32 %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %94

32:                                               ; preds = %22
  %33 = call i32 @wait_for_completion(%struct.completion* %6)
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %94

39:                                               ; preds = %32
  %40 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %41 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %40, i32 0, i32 0
  store %struct.lpfc_sli* %41, %struct.lpfc_sli** %8, align 8
  store i32 0, i32* %11, align 4
  br label %42

42:                                               ; preds = %73, %39
  %43 = load i32, i32* %11, align 4
  %44 = load %struct.lpfc_sli*, %struct.lpfc_sli** %8, align 8
  %45 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %76

48:                                               ; preds = %42
  %49 = load %struct.lpfc_sli*, %struct.lpfc_sli** %8, align 8
  %50 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %49, i32 0, i32 1
  %51 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %50, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %51, i64 %53
  store %struct.lpfc_sli_ring* %54, %struct.lpfc_sli_ring** %7, align 8
  br label %55

55:                                               ; preds = %71, %48
  %56 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %7, align 8
  %57 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %56, i32 0, i32 0
  %58 = call i32 @list_empty(i32* %57)
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  br i1 %60, label %61, label %72

61:                                               ; preds = %55
  %62 = call i32 @msleep(i32 10)
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %10, align 4
  %65 = icmp sgt i32 %63, 500
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %68 = load i32, i32* @KERN_WARNING, align 4
  %69 = load i32, i32* @LOG_INIT, align 4
  %70 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %67, i32 %68, i32 %69, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %72

71:                                               ; preds = %61
  br label %55

72:                                               ; preds = %66, %55
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %11, align 4
  br label %42

76:                                               ; preds = %42
  %77 = call i32 @init_completion(%struct.completion* %6)
  %78 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @lpfc_workq_post_event(%struct.lpfc_hba* %78, i32* %9, %struct.completion* %6, i32 %79)
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %12, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %76
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %94

86:                                               ; preds = %76
  %87 = call i32 @wait_for_completion(%struct.completion* %6)
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = load i32, i32* @EIO, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %3, align 4
  br label %94

93:                                               ; preds = %86
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %93, %90, %83, %36, %29, %21
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @init_completion(%struct.completion*) #1

declare dso_local i32 @lpfc_workq_post_event(%struct.lpfc_hba*, i32*, %struct.completion*, i32) #1

declare dso_local i32 @wait_for_completion(%struct.completion*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
