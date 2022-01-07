; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hpsa.c_hpsa_scsi_find_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hpsa.c_hpsa_scsi_find_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsa_scsi_dev_t = type { i32 }

@DEVICE_CHANGED = common dso_local global i32 0, align 4
@DEVICE_NOT_FOUND = common dso_local global i32 0, align 4
@DEVICE_SAME = common dso_local global i32 0, align 4
@DEVICE_UPDATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t**, i32, i32*)* @hpsa_scsi_find_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpsa_scsi_find_entry(%struct.hpsa_scsi_dev_t* %0, %struct.hpsa_scsi_dev_t** %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hpsa_scsi_dev_t*, align 8
  %7 = alloca %struct.hpsa_scsi_dev_t**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.hpsa_scsi_dev_t* %0, %struct.hpsa_scsi_dev_t** %6, align 8
  store %struct.hpsa_scsi_dev_t** %1, %struct.hpsa_scsi_dev_t*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %60, %4
  %12 = load i32, i32* %10, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %63

15:                                               ; preds = %11
  %16 = load %struct.hpsa_scsi_dev_t**, %struct.hpsa_scsi_dev_t*** %7, align 8
  %17 = load i32, i32* %10, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %16, i64 %18
  %20 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %19, align 8
  %21 = icmp eq %struct.hpsa_scsi_dev_t* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %60

23:                                               ; preds = %15
  %24 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %6, align 8
  %25 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.hpsa_scsi_dev_t**, %struct.hpsa_scsi_dev_t*** %7, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %27, i64 %29
  %31 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %30, align 8
  %32 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @SCSI3ADDR_EQ(i32 %26, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %59

36:                                               ; preds = %23
  %37 = load i32, i32* %10, align 4
  %38 = load i32*, i32** %9, align 8
  store i32 %37, i32* %38, align 4
  %39 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %6, align 8
  %40 = load %struct.hpsa_scsi_dev_t**, %struct.hpsa_scsi_dev_t*** %7, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %40, i64 %42
  %44 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %43, align 8
  %45 = call i64 @device_is_the_same(%struct.hpsa_scsi_dev_t* %39, %struct.hpsa_scsi_dev_t* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %36
  %48 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %6, align 8
  %49 = load %struct.hpsa_scsi_dev_t**, %struct.hpsa_scsi_dev_t*** %7, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %49, i64 %51
  %53 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %52, align 8
  %54 = call i64 @device_updated(%struct.hpsa_scsi_dev_t* %48, %struct.hpsa_scsi_dev_t* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  store i32 3, i32* %5, align 4
  br label %65

57:                                               ; preds = %47
  store i32 2, i32* %5, align 4
  br label %65

58:                                               ; preds = %36
  store i32 1, i32* %5, align 4
  br label %65

59:                                               ; preds = %23
  br label %60

60:                                               ; preds = %59, %22
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %10, align 4
  br label %11

63:                                               ; preds = %11
  %64 = load i32*, i32** %9, align 8
  store i32 -1, i32* %64, align 4
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %63, %58, %57, %56
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i64 @SCSI3ADDR_EQ(i32, i32) #1

declare dso_local i64 @device_is_the_same(%struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t*) #1

declare dso_local i64 @device_updated(%struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
