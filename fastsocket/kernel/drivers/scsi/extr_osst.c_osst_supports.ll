; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_osst.c_osst_supports.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_osst.c_osst_supports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.osst_support_data = type { i8*, i8*, i8*, i8* }
%struct.scsi_device = type { i32, i32, i32 }

@osst_supports.support_list = internal global [1 x %struct.osst_support_data] [%struct.osst_support_data { i8* inttoptr (i64 128 to i8*), i8* null, i8* null, i8* null }], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*)* @osst_supports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @osst_supports(%struct.scsi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.osst_support_data*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  store %struct.osst_support_data* getelementptr inbounds ([1 x %struct.osst_support_data], [1 x %struct.osst_support_data]* @osst_supports.support_list, i64 0, i64 0), %struct.osst_support_data** %4, align 8
  br label %5

5:                                                ; preds = %51, %1
  %6 = load %struct.osst_support_data*, %struct.osst_support_data** %4, align 8
  %7 = getelementptr inbounds %struct.osst_support_data, %struct.osst_support_data* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %54

10:                                               ; preds = %5
  %11 = load %struct.osst_support_data*, %struct.osst_support_data** %4, align 8
  %12 = getelementptr inbounds %struct.osst_support_data, %struct.osst_support_data* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %15 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.osst_support_data*, %struct.osst_support_data** %4, align 8
  %18 = getelementptr inbounds %struct.osst_support_data, %struct.osst_support_data* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @strlen(i8* %19)
  %21 = call i32 @strncmp(i8* %13, i32 %16, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %50, label %23

23:                                               ; preds = %10
  %24 = load %struct.osst_support_data*, %struct.osst_support_data** %4, align 8
  %25 = getelementptr inbounds %struct.osst_support_data, %struct.osst_support_data* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %28 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.osst_support_data*, %struct.osst_support_data** %4, align 8
  %31 = getelementptr inbounds %struct.osst_support_data, %struct.osst_support_data* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @strlen(i8* %32)
  %34 = call i32 @strncmp(i8* %26, i32 %29, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %50, label %36

36:                                               ; preds = %23
  %37 = load %struct.osst_support_data*, %struct.osst_support_data** %4, align 8
  %38 = getelementptr inbounds %struct.osst_support_data, %struct.osst_support_data* %37, i32 0, i32 2
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %41 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.osst_support_data*, %struct.osst_support_data** %4, align 8
  %44 = getelementptr inbounds %struct.osst_support_data, %struct.osst_support_data* %43, i32 0, i32 2
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @strlen(i8* %45)
  %47 = call i32 @strncmp(i8* %39, i32 %42, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %36
  store i32 1, i32* %2, align 4
  br label %55

50:                                               ; preds = %36, %23, %10
  br label %51

51:                                               ; preds = %50
  %52 = load %struct.osst_support_data*, %struct.osst_support_data** %4, align 8
  %53 = getelementptr inbounds %struct.osst_support_data, %struct.osst_support_data* %52, i32 1
  store %struct.osst_support_data* %53, %struct.osst_support_data** %4, align 8
  br label %5

54:                                               ; preds = %5
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %49
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
