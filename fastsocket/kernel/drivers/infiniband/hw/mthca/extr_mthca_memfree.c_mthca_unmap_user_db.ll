; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_memfree.c_mthca_unmap_user_db.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_memfree.c_mthca_unmap_user_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { i32 }
%struct.mthca_uar = type { i32 }
%struct.mthca_user_db_table = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MTHCA_DB_REC_PER_PAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mthca_unmap_user_db(%struct.mthca_dev* %0, %struct.mthca_uar* %1, %struct.mthca_user_db_table* %2, i32 %3) #0 {
  %5 = alloca %struct.mthca_dev*, align 8
  %6 = alloca %struct.mthca_uar*, align 8
  %7 = alloca %struct.mthca_user_db_table*, align 8
  %8 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %5, align 8
  store %struct.mthca_uar* %1, %struct.mthca_uar** %6, align 8
  store %struct.mthca_user_db_table* %2, %struct.mthca_user_db_table** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %10 = call i32 @mthca_is_memfree(%struct.mthca_dev* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  br label %31

13:                                               ; preds = %4
  %14 = load %struct.mthca_user_db_table*, %struct.mthca_user_db_table** %7, align 8
  %15 = getelementptr inbounds %struct.mthca_user_db_table, %struct.mthca_user_db_table* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.mthca_user_db_table*, %struct.mthca_user_db_table** %7, align 8
  %18 = getelementptr inbounds %struct.mthca_user_db_table, %struct.mthca_user_db_table* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @MTHCA_DB_REC_PER_PAGE, align 4
  %22 = sdiv i32 %20, %21
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %25, align 4
  %28 = load %struct.mthca_user_db_table*, %struct.mthca_user_db_table** %7, align 8
  %29 = getelementptr inbounds %struct.mthca_user_db_table, %struct.mthca_user_db_table* %28, i32 0, i32 0
  %30 = call i32 @mutex_unlock(i32* %29)
  br label %31

31:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @mthca_is_memfree(%struct.mthca_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
