; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_modify_unit_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_modify_unit_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_unit = type { i32, i32 }

@ZFCP_SET = common dso_local global i32 0, align 4
@ZFCP_STATUS_COMMON_ERP_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfcp_erp_modify_unit_status(%struct.zfcp_unit* %0, i8* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.zfcp_unit*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.zfcp_unit* %0, %struct.zfcp_unit** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @ZFCP_SET, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %30

14:                                               ; preds = %5
  %15 = load i32, i32* %9, align 4
  %16 = load %struct.zfcp_unit*, %struct.zfcp_unit** %6, align 8
  %17 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %16, i32 0, i32 1
  %18 = call i64 @status_change_set(i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = load i8*, i8** %7, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load %struct.zfcp_unit*, %struct.zfcp_unit** %6, align 8
  %24 = call i32 @zfcp_dbf_rec_unit(i8* %21, i8* %22, %struct.zfcp_unit* %23)
  br label %25

25:                                               ; preds = %20, %14
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.zfcp_unit*, %struct.zfcp_unit** %6, align 8
  %28 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %27, i32 0, i32 1
  %29 = call i32 @atomic_set_mask(i32 %26, i32* %28)
  br label %55

30:                                               ; preds = %5
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.zfcp_unit*, %struct.zfcp_unit** %6, align 8
  %33 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %32, i32 0, i32 1
  %34 = call i64 @status_change_clear(i32 %31, i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load i8*, i8** %7, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = load %struct.zfcp_unit*, %struct.zfcp_unit** %6, align 8
  %40 = call i32 @zfcp_dbf_rec_unit(i8* %37, i8* %38, %struct.zfcp_unit* %39)
  br label %41

41:                                               ; preds = %36, %30
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.zfcp_unit*, %struct.zfcp_unit** %6, align 8
  %44 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %43, i32 0, i32 1
  %45 = call i32 @atomic_clear_mask(i32 %42, i32* %44)
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @ZFCP_STATUS_COMMON_ERP_FAILED, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %41
  %51 = load %struct.zfcp_unit*, %struct.zfcp_unit** %6, align 8
  %52 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %51, i32 0, i32 0
  %53 = call i32 @atomic_set(i32* %52, i32 0)
  br label %54

54:                                               ; preds = %50, %41
  br label %55

55:                                               ; preds = %54, %25
  ret void
}

declare dso_local i64 @status_change_set(i32, i32*) #1

declare dso_local i32 @zfcp_dbf_rec_unit(i8*, i8*, %struct.zfcp_unit*) #1

declare dso_local i32 @atomic_set_mask(i32, i32*) #1

declare dso_local i64 @status_change_clear(i32, i32*) #1

declare dso_local i32 @atomic_clear_mask(i32, i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
