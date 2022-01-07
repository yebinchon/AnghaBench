; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm80xx_hwi.c_mpi_init_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm80xx_hwi.c_mpi_init_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { i32 }

@MSGU_IBDB_SET = common dso_local global i32 0, align 4
@SPCv_MSGU_CFG_TABLE_UPDATE = common dso_local global i32 0, align 4
@GST_GSTLEN_MPIS_OFFSET = common dso_local global i32 0, align 4
@GST_MPI_STATE_INIT = common dso_local global i32 0, align 4
@GST_MPI_STATE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm8001_hba_info*)* @mpi_init_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpi_init_check(%struct.pm8001_hba_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pm8001_hba_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %3, align 8
  %7 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %8 = load i32, i32* @MSGU_IBDB_SET, align 4
  %9 = load i32, i32* @SPCv_MSGU_CFG_TABLE_UPDATE, align 4
  %10 = call i32 @pm8001_cw32(%struct.pm8001_hba_info* %7, i32 0, i32 %8, i32 %9)
  store i32 2000000, i32* %4, align 4
  br label %11

11:                                               ; preds = %26, %1
  %12 = call i32 @udelay(i32 1)
  %13 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %14 = load i32, i32* @MSGU_IBDB_SET, align 4
  %15 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %13, i32 0, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* @SPCv_MSGU_CFG_TABLE_UPDATE, align 4
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %11
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br label %26

26:                                               ; preds = %22, %19
  %27 = phi i1 [ false, %19 ], [ %25, %22 ]
  br i1 %27, label %11, label %28

28:                                               ; preds = %26
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  store i32 -1, i32* %2, align 4
  br label %63

32:                                               ; preds = %28
  store i32 100000, i32* %4, align 4
  br label %33

33:                                               ; preds = %50, %32
  %34 = call i32 @udelay(i32 1)
  %35 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %36 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @GST_GSTLEN_MPIS_OFFSET, align 4
  %39 = call i32 @pm8001_mr32(i32 %37, i32 %38)
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %33
  %41 = load i32, i32* @GST_MPI_STATE_INIT, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @GST_MPI_STATE_MASK, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %41, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br label %50

50:                                               ; preds = %46, %40
  %51 = phi i1 [ false, %40 ], [ %49, %46 ]
  br i1 %51, label %33, label %52

52:                                               ; preds = %50
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  store i32 -1, i32* %2, align 4
  br label %63

56:                                               ; preds = %52
  %57 = load i32, i32* %6, align 4
  %58 = ashr i32 %57, 16
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 0, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  store i32 -1, i32* %2, align 4
  br label %63

62:                                               ; preds = %56
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %62, %61, %55, %31
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @pm8001_cw32(%struct.pm8001_hba_info*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @pm8001_cr32(%struct.pm8001_hba_info*, i32, i32) #1

declare dso_local i32 @pm8001_mr32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
