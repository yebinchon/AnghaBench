; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad.c_bnad_destroy_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad.c_bnad_destroy_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnad = type { i32, i32, %struct.TYPE_5__, %struct.TYPE_4__*, %struct.bnad_tx_info* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.bna_res_info* }
%struct.bna_res_info = type { i32 }
%struct.bnad_tx_info = type { i64, i32*, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i64 }

@BNA_HARD_CLEANUP = common dso_local global i32 0, align 4
@bnad_cb_tx_disabled = common dso_local global i32 0, align 4
@BNA_INTR_T_MSIX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnad_destroy_tx(%struct.bnad* %0, i64 %1) #0 {
  %3 = alloca %struct.bnad*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.bnad_tx_info*, align 8
  %6 = alloca %struct.bna_res_info*, align 8
  %7 = alloca i64, align 8
  store %struct.bnad* %0, %struct.bnad** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.bnad*, %struct.bnad** %3, align 8
  %9 = getelementptr inbounds %struct.bnad, %struct.bnad* %8, i32 0, i32 4
  %10 = load %struct.bnad_tx_info*, %struct.bnad_tx_info** %9, align 8
  %11 = load i64, i64* %4, align 8
  %12 = getelementptr inbounds %struct.bnad_tx_info, %struct.bnad_tx_info* %10, i64 %11
  store %struct.bnad_tx_info* %12, %struct.bnad_tx_info** %5, align 8
  %13 = load %struct.bnad*, %struct.bnad** %3, align 8
  %14 = getelementptr inbounds %struct.bnad, %struct.bnad* %13, i32 0, i32 3
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = load i64, i64* %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.bna_res_info*, %struct.bna_res_info** %18, align 8
  %20 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %19, i64 0
  store %struct.bna_res_info* %20, %struct.bna_res_info** %6, align 8
  %21 = load %struct.bnad_tx_info*, %struct.bnad_tx_info** %5, align 8
  %22 = getelementptr inbounds %struct.bnad_tx_info, %struct.bnad_tx_info* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  br label %85

26:                                               ; preds = %2
  %27 = load %struct.bnad*, %struct.bnad** %3, align 8
  %28 = getelementptr inbounds %struct.bnad, %struct.bnad* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = call i32 @init_completion(i32* %29)
  %31 = load %struct.bnad*, %struct.bnad** %3, align 8
  %32 = getelementptr inbounds %struct.bnad, %struct.bnad* %31, i32 0, i32 0
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @spin_lock_irqsave(i32* %32, i64 %33)
  %35 = load %struct.bnad_tx_info*, %struct.bnad_tx_info** %5, align 8
  %36 = getelementptr inbounds %struct.bnad_tx_info, %struct.bnad_tx_info* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* @BNA_HARD_CLEANUP, align 4
  %39 = load i32, i32* @bnad_cb_tx_disabled, align 4
  %40 = call i32 @bna_tx_disable(i32* %37, i32 %38, i32 %39)
  %41 = load %struct.bnad*, %struct.bnad** %3, align 8
  %42 = getelementptr inbounds %struct.bnad, %struct.bnad* %41, i32 0, i32 0
  %43 = load i64, i64* %7, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  %45 = load %struct.bnad*, %struct.bnad** %3, align 8
  %46 = getelementptr inbounds %struct.bnad, %struct.bnad* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = call i32 @wait_for_completion(i32* %47)
  %49 = load %struct.bnad_tx_info*, %struct.bnad_tx_info** %5, align 8
  %50 = getelementptr inbounds %struct.bnad_tx_info, %struct.bnad_tx_info* %49, i32 0, i32 2
  %51 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %51, i64 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @BNA_INTR_T_MSIX, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %26
  %59 = load %struct.bnad*, %struct.bnad** %3, align 8
  %60 = load %struct.bnad_tx_info*, %struct.bnad_tx_info** %5, align 8
  %61 = load %struct.bnad*, %struct.bnad** %3, align 8
  %62 = getelementptr inbounds %struct.bnad, %struct.bnad* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @bnad_tx_msix_unregister(%struct.bnad* %59, %struct.bnad_tx_info* %60, i32 %63)
  br label %65

65:                                               ; preds = %58, %26
  %66 = load %struct.bnad*, %struct.bnad** %3, align 8
  %67 = getelementptr inbounds %struct.bnad, %struct.bnad* %66, i32 0, i32 0
  %68 = load i64, i64* %7, align 8
  %69 = call i32 @spin_lock_irqsave(i32* %67, i64 %68)
  %70 = load %struct.bnad_tx_info*, %struct.bnad_tx_info** %5, align 8
  %71 = getelementptr inbounds %struct.bnad_tx_info, %struct.bnad_tx_info* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @bna_tx_destroy(i32* %72)
  %74 = load %struct.bnad*, %struct.bnad** %3, align 8
  %75 = getelementptr inbounds %struct.bnad, %struct.bnad* %74, i32 0, i32 0
  %76 = load i64, i64* %7, align 8
  %77 = call i32 @spin_unlock_irqrestore(i32* %75, i64 %76)
  %78 = load %struct.bnad_tx_info*, %struct.bnad_tx_info** %5, align 8
  %79 = getelementptr inbounds %struct.bnad_tx_info, %struct.bnad_tx_info* %78, i32 0, i32 1
  store i32* null, i32** %79, align 8
  %80 = load %struct.bnad_tx_info*, %struct.bnad_tx_info** %5, align 8
  %81 = getelementptr inbounds %struct.bnad_tx_info, %struct.bnad_tx_info* %80, i32 0, i32 0
  store i64 0, i64* %81, align 8
  %82 = load %struct.bnad*, %struct.bnad** %3, align 8
  %83 = load %struct.bna_res_info*, %struct.bna_res_info** %6, align 8
  %84 = call i32 @bnad_tx_res_free(%struct.bnad* %82, %struct.bna_res_info* %83)
  br label %85

85:                                               ; preds = %65, %25
  ret void
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bna_tx_disable(i32*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @bnad_tx_msix_unregister(%struct.bnad*, %struct.bnad_tx_info*, i32) #1

declare dso_local i32 @bna_tx_destroy(i32*) #1

declare dso_local i32 @bnad_tx_res_free(%struct.bnad*, %struct.bna_res_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
