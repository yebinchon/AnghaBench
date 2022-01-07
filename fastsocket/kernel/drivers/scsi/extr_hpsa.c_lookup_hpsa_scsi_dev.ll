; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hpsa.c_lookup_hpsa_scsi_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hpsa.c_lookup_hpsa_scsi_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsa_scsi_dev_t = type { i32, i32, i32 }
%struct.ctlr_info = type { i32, %struct.hpsa_scsi_dev_t** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hpsa_scsi_dev_t* (%struct.ctlr_info*, i32, i32, i32)* @lookup_hpsa_scsi_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hpsa_scsi_dev_t* @lookup_hpsa_scsi_dev(%struct.ctlr_info* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.hpsa_scsi_dev_t*, align 8
  %6 = alloca %struct.ctlr_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.hpsa_scsi_dev_t*, align 8
  store %struct.ctlr_info* %0, %struct.ctlr_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %46, %4
  %13 = load i32, i32* %10, align 4
  %14 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %15 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %49

18:                                               ; preds = %12
  %19 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %20 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %19, i32 0, i32 1
  %21 = load %struct.hpsa_scsi_dev_t**, %struct.hpsa_scsi_dev_t*** %20, align 8
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %21, i64 %23
  %25 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %24, align 8
  store %struct.hpsa_scsi_dev_t* %25, %struct.hpsa_scsi_dev_t** %11, align 8
  %26 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %11, align 8
  %27 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %18
  %32 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %11, align 8
  %33 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %31
  %38 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %11, align 8
  %39 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %11, align 8
  store %struct.hpsa_scsi_dev_t* %44, %struct.hpsa_scsi_dev_t** %5, align 8
  br label %50

45:                                               ; preds = %37, %31, %18
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %10, align 4
  br label %12

49:                                               ; preds = %12
  store %struct.hpsa_scsi_dev_t* null, %struct.hpsa_scsi_dev_t** %5, align 8
  br label %50

50:                                               ; preds = %49, %43
  %51 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %5, align 8
  ret %struct.hpsa_scsi_dev_t* %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
