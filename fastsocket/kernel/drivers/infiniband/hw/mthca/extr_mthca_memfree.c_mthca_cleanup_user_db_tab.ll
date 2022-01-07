; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_memfree.c_mthca_cleanup_user_db_tab.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_memfree.c_mthca_cleanup_user_db_tab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mthca_uar = type { i32 }
%struct.mthca_user_db_table = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64 }

@MTHCA_ICM_PAGE_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mthca_cleanup_user_db_tab(%struct.mthca_dev* %0, %struct.mthca_uar* %1, %struct.mthca_user_db_table* %2) #0 {
  %4 = alloca %struct.mthca_dev*, align 8
  %5 = alloca %struct.mthca_uar*, align 8
  %6 = alloca %struct.mthca_user_db_table*, align 8
  %7 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %4, align 8
  store %struct.mthca_uar* %1, %struct.mthca_uar** %5, align 8
  store %struct.mthca_user_db_table* %2, %struct.mthca_user_db_table** %6, align 8
  %8 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %9 = call i32 @mthca_is_memfree(%struct.mthca_dev* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  br label %67

12:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %61, %12
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %16 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @MTHCA_ICM_PAGE_SIZE, align 4
  %20 = sdiv i32 %18, %19
  %21 = icmp slt i32 %14, %20
  br i1 %21, label %22, label %64

22:                                               ; preds = %13
  %23 = load %struct.mthca_user_db_table*, %struct.mthca_user_db_table** %6, align 8
  %24 = getelementptr inbounds %struct.mthca_user_db_table, %struct.mthca_user_db_table* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %60

32:                                               ; preds = %22
  %33 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %34 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %35 = load %struct.mthca_uar*, %struct.mthca_uar** %5, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @mthca_uarc_virt(%struct.mthca_dev* %34, %struct.mthca_uar* %35, i32 %36)
  %38 = call i32 @mthca_UNMAP_ICM(%struct.mthca_dev* %33, i32 %37, i32 1)
  %39 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %40 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.mthca_user_db_table*, %struct.mthca_user_db_table** %6, align 8
  %43 = getelementptr inbounds %struct.mthca_user_db_table, %struct.mthca_user_db_table* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %50 = call i32 @pci_unmap_sg(i32 %41, i32* %48, i32 1, i32 %49)
  %51 = load %struct.mthca_user_db_table*, %struct.mthca_user_db_table** %6, align 8
  %52 = getelementptr inbounds %struct.mthca_user_db_table, %struct.mthca_user_db_table* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = call i32 @sg_page(i32* %57)
  %59 = call i32 @put_page(i32 %58)
  br label %60

60:                                               ; preds = %32, %22
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %13

64:                                               ; preds = %13
  %65 = load %struct.mthca_user_db_table*, %struct.mthca_user_db_table** %6, align 8
  %66 = call i32 @kfree(%struct.mthca_user_db_table* %65)
  br label %67

67:                                               ; preds = %64, %11
  ret void
}

declare dso_local i32 @mthca_is_memfree(%struct.mthca_dev*) #1

declare dso_local i32 @mthca_UNMAP_ICM(%struct.mthca_dev*, i32, i32) #1

declare dso_local i32 @mthca_uarc_virt(%struct.mthca_dev*, %struct.mthca_uar*, i32) #1

declare dso_local i32 @pci_unmap_sg(i32, i32*, i32, i32) #1

declare dso_local i32 @put_page(i32) #1

declare dso_local i32 @sg_page(i32*) #1

declare dso_local i32 @kfree(%struct.mthca_user_db_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
