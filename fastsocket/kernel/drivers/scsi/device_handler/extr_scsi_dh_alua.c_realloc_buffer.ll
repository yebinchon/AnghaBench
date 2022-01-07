; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_alua.c_realloc_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_alua.c_realloc_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alua_dh_data = type { i64, i64, i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@ALUA_INQUIRY_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.alua_dh_data*, i32)* @realloc_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @realloc_buffer(%struct.alua_dh_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.alua_dh_data*, align 8
  %5 = alloca i32, align 4
  store %struct.alua_dh_data* %0, %struct.alua_dh_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.alua_dh_data*, %struct.alua_dh_data** %4, align 8
  %7 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %2
  %11 = load %struct.alua_dh_data*, %struct.alua_dh_data** %4, align 8
  %12 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.alua_dh_data*, %struct.alua_dh_data** %4, align 8
  %15 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %13, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %10
  %19 = load %struct.alua_dh_data*, %struct.alua_dh_data** %4, align 8
  %20 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @kfree(i64 %21)
  br label %23

23:                                               ; preds = %18, %10, %2
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @GFP_NOIO, align 4
  %26 = call i64 @kmalloc(i32 %24, i32 %25)
  %27 = load %struct.alua_dh_data*, %struct.alua_dh_data** %4, align 8
  %28 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.alua_dh_data*, %struct.alua_dh_data** %4, align 8
  %30 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %23
  %34 = load %struct.alua_dh_data*, %struct.alua_dh_data** %4, align 8
  %35 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.alua_dh_data*, %struct.alua_dh_data** %4, align 8
  %38 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load i32, i32* @ALUA_INQUIRY_SIZE, align 4
  %40 = load %struct.alua_dh_data*, %struct.alua_dh_data** %4, align 8
  %41 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  store i32 1, i32* %3, align 4
  br label %46

42:                                               ; preds = %23
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.alua_dh_data*, %struct.alua_dh_data** %4, align 8
  %45 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %42, %33
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @kfree(i64) #1

declare dso_local i64 @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
