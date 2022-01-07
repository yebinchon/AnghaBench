; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_handle_deferred_eratt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_handle_deferred_eratt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i64, i8**, i32, i32, %struct.TYPE_2__*, i32, i32, %struct.lpfc_sli }
%struct.TYPE_2__ = type { i32 }
%struct.lpfc_sli = type { i64, %struct.lpfc_sli_ring*, i32 }
%struct.lpfc_sli_ring = type { i32 }

@DEFER_ERATT = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"0479 Deferred Adapter Hardware Error Data: x%x x%x x%x\0A\00", align 1
@LPFC_SLI_ACTIVE = common dso_local global i32 0, align 4
@LPFC_MBX_WAIT = common dso_local global i32 0, align 4
@HS_FFER1 = common dso_local global i32 0, align 4
@UNPLUG_ERR = common dso_local global i32 0, align 4
@FC_UNLOADING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*)* @lpfc_handle_deferred_eratt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_handle_deferred_eratt(%struct.lpfc_hba* %0) #0 {
  %2 = alloca %struct.lpfc_hba*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.lpfc_sli_ring*, align 8
  %5 = alloca %struct.lpfc_sli*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %2, align 8
  %6 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %7 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %3, align 4
  %9 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %10 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %9, i32 0, i32 8
  store %struct.lpfc_sli* %10, %struct.lpfc_sli** %5, align 8
  %11 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %12 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %11, i32 0, i32 7
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @pci_channel_offline(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %1
  %17 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %18 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %17, i32 0, i32 3
  %19 = call i32 @spin_lock_irq(i32* %18)
  %20 = load i32, i32* @DEFER_ERATT, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %23 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %27 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %26, i32 0, i32 3
  %28 = call i32 @spin_unlock_irq(i32* %27)
  br label %159

29:                                               ; preds = %1
  %30 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %31 = load i32, i32* @KERN_ERR, align 4
  %32 = load i32, i32* @LOG_INIT, align 4
  %33 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %34 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %37 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %36, i32 0, i32 2
  %38 = load i8**, i8*** %37, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 0
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %42 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %41, i32 0, i32 2
  %43 = load i8**, i8*** %42, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 1
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %30, i32 %31, i32 %32, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %35, i8* %40, i8* %45)
  %47 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %48 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %47, i32 0, i32 3
  %49 = call i32 @spin_lock_irq(i32* %48)
  %50 = load i32, i32* @LPFC_SLI_ACTIVE, align 4
  %51 = xor i32 %50, -1
  %52 = load %struct.lpfc_sli*, %struct.lpfc_sli** %5, align 8
  %53 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = and i32 %54, %51
  store i32 %55, i32* %53, align 8
  %56 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %57 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %56, i32 0, i32 3
  %58 = call i32 @spin_unlock_irq(i32* %57)
  %59 = load %struct.lpfc_sli*, %struct.lpfc_sli** %5, align 8
  %60 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %59, i32 0, i32 1
  %61 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %60, align 8
  %62 = load %struct.lpfc_sli*, %struct.lpfc_sli** %5, align 8
  %63 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %61, i64 %64
  store %struct.lpfc_sli_ring* %65, %struct.lpfc_sli_ring** %4, align 8
  %66 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %67 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %68 = call i32 @lpfc_sli_abort_iocb_ring(%struct.lpfc_hba* %66, %struct.lpfc_sli_ring* %67)
  %69 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %70 = load i32, i32* @LPFC_MBX_WAIT, align 4
  %71 = call i32 @lpfc_offline_prep(%struct.lpfc_hba* %69, i32 %70)
  %72 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %73 = call i32 @lpfc_offline(%struct.lpfc_hba* %72)
  br label %74

74:                                               ; preds = %106, %29
  %75 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %76 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @HS_FFER1, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %107

81:                                               ; preds = %74
  %82 = call i32 @msleep(i32 100)
  %83 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %84 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %87 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %86, i32 0, i32 0
  %88 = call i64 @lpfc_readl(i32 %85, i32* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %81
  %91 = load i32, i32* @UNPLUG_ERR, align 4
  %92 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %93 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  br label %107

94:                                               ; preds = %81
  %95 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %96 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %95, i32 0, i32 5
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @FC_UNLOADING, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %94
  %104 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %105 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %104, i32 0, i32 0
  store i32 0, i32* %105, align 8
  br label %107

106:                                              ; preds = %94
  br label %74

107:                                              ; preds = %103, %90, %74
  %108 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %109 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %128, label %112

112:                                              ; preds = %107
  %113 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %114 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %113, i32 0, i32 5
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @FC_UNLOADING, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %128, label %121

121:                                              ; preds = %112
  %122 = load i32, i32* %3, align 4
  %123 = load i32, i32* @HS_FFER1, align 4
  %124 = xor i32 %123, -1
  %125 = and i32 %122, %124
  %126 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %127 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 8
  br label %128

128:                                              ; preds = %121, %112, %107
  %129 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %130 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %129, i32 0, i32 3
  %131 = call i32 @spin_lock_irq(i32* %130)
  %132 = load i32, i32* @DEFER_ERATT, align 4
  %133 = xor i32 %132, -1
  %134 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %135 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 4
  %137 = and i32 %136, %133
  store i32 %137, i32* %135, align 4
  %138 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %139 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %138, i32 0, i32 3
  %140 = call i32 @spin_unlock_irq(i32* %139)
  %141 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %142 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = add nsw i64 %143, 168
  %145 = call i8* @readl(i64 %144)
  %146 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %147 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %146, i32 0, i32 2
  %148 = load i8**, i8*** %147, align 8
  %149 = getelementptr inbounds i8*, i8** %148, i64 0
  store i8* %145, i8** %149, align 8
  %150 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %151 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = add nsw i64 %152, 172
  %154 = call i8* @readl(i64 %153)
  %155 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %156 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %155, i32 0, i32 2
  %157 = load i8**, i8*** %156, align 8
  %158 = getelementptr inbounds i8*, i8** %157, i64 1
  store i8* %154, i8** %158, align 8
  br label %159

159:                                              ; preds = %128, %16
  ret void
}

declare dso_local i64 @pci_channel_offline(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, i8*, i8*) #1

declare dso_local i32 @lpfc_sli_abort_iocb_ring(%struct.lpfc_hba*, %struct.lpfc_sli_ring*) #1

declare dso_local i32 @lpfc_offline_prep(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_offline(%struct.lpfc_hba*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @lpfc_readl(i32, i32*) #1

declare dso_local i8* @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
