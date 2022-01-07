; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hpsa.c_device_is_the_same.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hpsa.c_device_is_the_same.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsa_scsi_dev_t = type { i64, i64, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t*)* @device_is_the_same to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @device_is_the_same(%struct.hpsa_scsi_dev_t* %0, %struct.hpsa_scsi_dev_t* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hpsa_scsi_dev_t*, align 8
  %5 = alloca %struct.hpsa_scsi_dev_t*, align 8
  store %struct.hpsa_scsi_dev_t* %0, %struct.hpsa_scsi_dev_t** %4, align 8
  store %struct.hpsa_scsi_dev_t* %1, %struct.hpsa_scsi_dev_t** %5, align 8
  %6 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %4, align 8
  %7 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %6, i32 0, i32 5
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %5, align 8
  %10 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @memcmp(i32 %8, i32 %11, i32 4)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %64

15:                                               ; preds = %2
  %16 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %4, align 8
  %17 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %5, align 8
  %20 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @memcmp(i32 %18, i32 %21, i32 4)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %64

25:                                               ; preds = %15
  %26 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %4, align 8
  %27 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %5, align 8
  %30 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @memcmp(i32 %28, i32 %31, i32 4)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %64

35:                                               ; preds = %25
  %36 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %4, align 8
  %37 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %5, align 8
  %40 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @memcmp(i32 %38, i32 %41, i32 4)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %64

45:                                               ; preds = %35
  %46 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %4, align 8
  %47 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %5, align 8
  %50 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %48, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %64

54:                                               ; preds = %45
  %55 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %4, align 8
  %56 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %5, align 8
  %59 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %57, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %64

63:                                               ; preds = %54
  store i32 1, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %62, %53, %44, %34, %24, %14
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i64 @memcmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
