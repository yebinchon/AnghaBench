; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_sds.c_asd_find_dir_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_sds.c_asd_find_dir_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ocm_dir = type { i32, %struct.asd_ocm_dir_ent* }
%struct.asd_ocm_dir_ent = type { i64, i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asd_ocm_dir*, i64, i64*, i64*)* @asd_find_dir_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asd_find_dir_entry(%struct.asd_ocm_dir* %0, i64 %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.asd_ocm_dir*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.asd_ocm_dir_ent*, align 8
  store %struct.asd_ocm_dir* %0, %struct.asd_ocm_dir** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %31, %4
  %13 = load i32, i32* %10, align 4
  %14 = load %struct.asd_ocm_dir*, %struct.asd_ocm_dir** %6, align 8
  %15 = getelementptr inbounds %struct.asd_ocm_dir, %struct.asd_ocm_dir* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %12
  %19 = load %struct.asd_ocm_dir*, %struct.asd_ocm_dir** %6, align 8
  %20 = getelementptr inbounds %struct.asd_ocm_dir, %struct.asd_ocm_dir* %19, i32 0, i32 1
  %21 = load %struct.asd_ocm_dir_ent*, %struct.asd_ocm_dir_ent** %20, align 8
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.asd_ocm_dir_ent, %struct.asd_ocm_dir_ent* %21, i64 %23
  %25 = getelementptr inbounds %struct.asd_ocm_dir_ent, %struct.asd_ocm_dir_ent* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %7, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  br label %34

30:                                               ; preds = %18
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %10, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %10, align 4
  br label %12

34:                                               ; preds = %29, %12
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.asd_ocm_dir*, %struct.asd_ocm_dir** %6, align 8
  %37 = getelementptr inbounds %struct.asd_ocm_dir, %struct.asd_ocm_dir* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp sge i32 %35, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* @ENOENT, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %60

43:                                               ; preds = %34
  %44 = load %struct.asd_ocm_dir*, %struct.asd_ocm_dir** %6, align 8
  %45 = getelementptr inbounds %struct.asd_ocm_dir, %struct.asd_ocm_dir* %44, i32 0, i32 1
  %46 = load %struct.asd_ocm_dir_ent*, %struct.asd_ocm_dir_ent** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.asd_ocm_dir_ent, %struct.asd_ocm_dir_ent* %46, i64 %48
  store %struct.asd_ocm_dir_ent* %49, %struct.asd_ocm_dir_ent** %11, align 8
  %50 = load %struct.asd_ocm_dir_ent*, %struct.asd_ocm_dir_ent** %11, align 8
  %51 = getelementptr inbounds %struct.asd_ocm_dir_ent, %struct.asd_ocm_dir_ent* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @THREE_TO_NUM(i32 %52)
  %54 = load i64*, i64** %8, align 8
  store i64 %53, i64* %54, align 8
  %55 = load %struct.asd_ocm_dir_ent*, %struct.asd_ocm_dir_ent** %11, align 8
  %56 = getelementptr inbounds %struct.asd_ocm_dir_ent, %struct.asd_ocm_dir_ent* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @THREE_TO_NUM(i32 %57)
  %59 = load i64*, i64** %9, align 8
  store i64 %58, i64* %59, align 8
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %43, %40
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i64 @THREE_TO_NUM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
