; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_find_ses_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_find_ses_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_ses_table_entry = type { i8*, i64* }
%struct.ipr_resource_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ipr_std_inq_vpids }
%struct.ipr_std_inq_vpids = type { i64* }

@ipr_ses_table = common dso_local global %struct.ipr_ses_table_entry* null, align 8
@IPR_PROD_ID_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ipr_ses_table_entry* (%struct.ipr_resource_entry*)* @ipr_find_ses_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ipr_ses_table_entry* @ipr_find_ses_entry(%struct.ipr_resource_entry* %0) #0 {
  %2 = alloca %struct.ipr_ses_table_entry*, align 8
  %3 = alloca %struct.ipr_resource_entry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ipr_std_inq_vpids*, align 8
  %8 = alloca %struct.ipr_ses_table_entry*, align 8
  store %struct.ipr_resource_entry* %0, %struct.ipr_resource_entry** %3, align 8
  %9 = load %struct.ipr_ses_table_entry*, %struct.ipr_ses_table_entry** @ipr_ses_table, align 8
  store %struct.ipr_ses_table_entry* %9, %struct.ipr_ses_table_entry** %8, align 8
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %68, %1
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.ipr_ses_table_entry*, %struct.ipr_ses_table_entry** @ipr_ses_table, align 8
  %13 = call i32 @ARRAY_SIZE(%struct.ipr_ses_table_entry* %12)
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %73

15:                                               ; preds = %10
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %58, %15
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @IPR_PROD_ID_LEN, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %61

20:                                               ; preds = %16
  %21 = load %struct.ipr_ses_table_entry*, %struct.ipr_ses_table_entry** %8, align 8
  %22 = getelementptr inbounds %struct.ipr_ses_table_entry, %struct.ipr_ses_table_entry* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 88
  br i1 %29, label %30, label %54

30:                                               ; preds = %20
  %31 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %3, align 8
  %32 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store %struct.ipr_std_inq_vpids* %33, %struct.ipr_std_inq_vpids** %7, align 8
  %34 = load %struct.ipr_std_inq_vpids*, %struct.ipr_std_inq_vpids** %7, align 8
  %35 = getelementptr inbounds %struct.ipr_std_inq_vpids, %struct.ipr_std_inq_vpids* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.ipr_ses_table_entry*, %struct.ipr_ses_table_entry** %8, align 8
  %42 = getelementptr inbounds %struct.ipr_ses_table_entry, %struct.ipr_ses_table_entry* %41, i32 0, i32 1
  %43 = load i64*, i64** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %40, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %30
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %53

52:                                               ; preds = %30
  br label %61

53:                                               ; preds = %49
  br label %57

54:                                               ; preds = %20
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %54, %53
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %16

61:                                               ; preds = %52, %16
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @IPR_PROD_ID_LEN, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load %struct.ipr_ses_table_entry*, %struct.ipr_ses_table_entry** %8, align 8
  store %struct.ipr_ses_table_entry* %66, %struct.ipr_ses_table_entry** %2, align 8
  br label %74

67:                                               ; preds = %61
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %4, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %4, align 4
  %71 = load %struct.ipr_ses_table_entry*, %struct.ipr_ses_table_entry** %8, align 8
  %72 = getelementptr inbounds %struct.ipr_ses_table_entry, %struct.ipr_ses_table_entry* %71, i32 1
  store %struct.ipr_ses_table_entry* %72, %struct.ipr_ses_table_entry** %8, align 8
  br label %10

73:                                               ; preds = %10
  store %struct.ipr_ses_table_entry* null, %struct.ipr_ses_table_entry** %2, align 8
  br label %74

74:                                               ; preds = %73, %65
  %75 = load %struct.ipr_ses_table_entry*, %struct.ipr_ses_table_entry** %2, align 8
  ret %struct.ipr_ses_table_entry* %75
}

declare dso_local i32 @ARRAY_SIZE(%struct.ipr_ses_table_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
