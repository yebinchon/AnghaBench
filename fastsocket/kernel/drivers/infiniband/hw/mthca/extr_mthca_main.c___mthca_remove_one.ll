; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_main.c___mthca_remove_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_main.c___mthca_remove_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.mthca_dev = type { i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MTHCA_FLAG_MSI_X = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @__mthca_remove_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__mthca_remove_one(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.mthca_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.mthca_dev* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.mthca_dev* %6, %struct.mthca_dev** %3, align 8
  %7 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %8 = icmp ne %struct.mthca_dev* %7, null
  br i1 %8, label %9, label %84

9:                                                ; preds = %1
  %10 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %11 = call i32 @mthca_free_agents(%struct.mthca_dev* %10)
  %12 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %13 = call i32 @mthca_unregister_device(%struct.mthca_dev* %12)
  store i32 1, i32* %4, align 4
  br label %14

14:                                               ; preds = %25, %9
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %17 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %16, i32 0, i32 5
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp sle i32 %15, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %14
  %22 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @mthca_CLOSE_IB(%struct.mthca_dev* %22, i32 %23)
  br label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %14

28:                                               ; preds = %14
  %29 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %30 = call i32 @mthca_cleanup_mcg_table(%struct.mthca_dev* %29)
  %31 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %32 = call i32 @mthca_cleanup_av_table(%struct.mthca_dev* %31)
  %33 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %34 = call i32 @mthca_cleanup_qp_table(%struct.mthca_dev* %33)
  %35 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %36 = call i32 @mthca_cleanup_srq_table(%struct.mthca_dev* %35)
  %37 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %38 = call i32 @mthca_cleanup_cq_table(%struct.mthca_dev* %37)
  %39 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %40 = call i32 @mthca_cmd_use_polling(%struct.mthca_dev* %39)
  %41 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %42 = call i32 @mthca_cleanup_eq_table(%struct.mthca_dev* %41)
  %43 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %44 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %45 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %44, i32 0, i32 4
  %46 = call i32 @mthca_pd_free(%struct.mthca_dev* %43, i32* %45)
  %47 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %48 = call i32 @mthca_cleanup_mr_table(%struct.mthca_dev* %47)
  %49 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %50 = call i32 @mthca_cleanup_pd_table(%struct.mthca_dev* %49)
  %51 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %52 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @iounmap(i32 %53)
  %55 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %56 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %57 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %56, i32 0, i32 2
  %58 = call i32 @mthca_uar_free(%struct.mthca_dev* %55, i32* %57)
  %59 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %60 = call i32 @mthca_cleanup_uar_table(%struct.mthca_dev* %59)
  %61 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %62 = call i32 @mthca_close_hca(%struct.mthca_dev* %61)
  %63 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %64 = call i32 @mthca_cmd_cleanup(%struct.mthca_dev* %63)
  %65 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %66 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @MTHCA_FLAG_MSI_X, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %28
  %72 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %73 = call i32 @pci_disable_msix(%struct.pci_dev* %72)
  br label %74

74:                                               ; preds = %71, %28
  %75 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %76 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %75, i32 0, i32 1
  %77 = call i32 @ib_dealloc_device(i32* %76)
  %78 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %79 = call i32 @pci_release_regions(%struct.pci_dev* %78)
  %80 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %81 = call i32 @pci_disable_device(%struct.pci_dev* %80)
  %82 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %83 = call i32 @pci_set_drvdata(%struct.pci_dev* %82, i32* null)
  br label %84

84:                                               ; preds = %74, %1
  ret void
}

declare dso_local %struct.mthca_dev* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @mthca_free_agents(%struct.mthca_dev*) #1

declare dso_local i32 @mthca_unregister_device(%struct.mthca_dev*) #1

declare dso_local i32 @mthca_CLOSE_IB(%struct.mthca_dev*, i32) #1

declare dso_local i32 @mthca_cleanup_mcg_table(%struct.mthca_dev*) #1

declare dso_local i32 @mthca_cleanup_av_table(%struct.mthca_dev*) #1

declare dso_local i32 @mthca_cleanup_qp_table(%struct.mthca_dev*) #1

declare dso_local i32 @mthca_cleanup_srq_table(%struct.mthca_dev*) #1

declare dso_local i32 @mthca_cleanup_cq_table(%struct.mthca_dev*) #1

declare dso_local i32 @mthca_cmd_use_polling(%struct.mthca_dev*) #1

declare dso_local i32 @mthca_cleanup_eq_table(%struct.mthca_dev*) #1

declare dso_local i32 @mthca_pd_free(%struct.mthca_dev*, i32*) #1

declare dso_local i32 @mthca_cleanup_mr_table(%struct.mthca_dev*) #1

declare dso_local i32 @mthca_cleanup_pd_table(%struct.mthca_dev*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @mthca_uar_free(%struct.mthca_dev*, i32*) #1

declare dso_local i32 @mthca_cleanup_uar_table(%struct.mthca_dev*) #1

declare dso_local i32 @mthca_close_hca(%struct.mthca_dev*) #1

declare dso_local i32 @mthca_cmd_cleanup(%struct.mthca_dev*) #1

declare dso_local i32 @pci_disable_msix(%struct.pci_dev*) #1

declare dso_local i32 @ib_dealloc_device(i32*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
