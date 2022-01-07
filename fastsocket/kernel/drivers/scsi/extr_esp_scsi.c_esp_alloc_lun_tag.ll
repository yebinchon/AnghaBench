; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_esp_scsi.c_esp_alloc_lun_tag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_esp_scsi.c_esp_alloc_lun_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp_cmd_entry = type { i64* }
%struct.esp_lun_data = type { i32, i64, %struct.esp_cmd_entry**, %struct.esp_cmd_entry* }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.esp_cmd_entry*, %struct.esp_lun_data*)* @esp_alloc_lun_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esp_alloc_lun_tag(%struct.esp_cmd_entry* %0, %struct.esp_lun_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.esp_cmd_entry*, align 8
  %5 = alloca %struct.esp_lun_data*, align 8
  store %struct.esp_cmd_entry* %0, %struct.esp_cmd_entry** %4, align 8
  store %struct.esp_lun_data* %1, %struct.esp_lun_data** %5, align 8
  %6 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %4, align 8
  %7 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %6, i32 0, i32 0
  %8 = load i64*, i64** %7, align 8
  %9 = getelementptr inbounds i64, i64* %8, i64 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %51, label %12

12:                                               ; preds = %2
  %13 = load %struct.esp_lun_data*, %struct.esp_lun_data** %5, align 8
  %14 = getelementptr inbounds %struct.esp_lun_data, %struct.esp_lun_data* %13, i32 0, i32 3
  %15 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %14, align 8
  %16 = icmp ne %struct.esp_cmd_entry* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i32, i32* @EBUSY, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %91

20:                                               ; preds = %12
  %21 = load %struct.esp_lun_data*, %struct.esp_lun_data** %5, align 8
  %22 = getelementptr inbounds %struct.esp_lun_data, %struct.esp_lun_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %20
  %26 = load %struct.esp_lun_data*, %struct.esp_lun_data** %5, align 8
  %27 = getelementptr inbounds %struct.esp_lun_data, %struct.esp_lun_data* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @EBUSY, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %91

33:                                               ; preds = %25
  %34 = load %struct.esp_lun_data*, %struct.esp_lun_data** %5, align 8
  %35 = getelementptr inbounds %struct.esp_lun_data, %struct.esp_lun_data* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  br label %47

36:                                               ; preds = %20
  %37 = load %struct.esp_lun_data*, %struct.esp_lun_data** %5, align 8
  %38 = getelementptr inbounds %struct.esp_lun_data, %struct.esp_lun_data* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load %struct.esp_lun_data*, %struct.esp_lun_data** %5, align 8
  %43 = getelementptr inbounds %struct.esp_lun_data, %struct.esp_lun_data* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = load i32, i32* @EBUSY, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %91

46:                                               ; preds = %36
  br label %47

47:                                               ; preds = %46, %33
  %48 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %4, align 8
  %49 = load %struct.esp_lun_data*, %struct.esp_lun_data** %5, align 8
  %50 = getelementptr inbounds %struct.esp_lun_data, %struct.esp_lun_data* %49, i32 0, i32 3
  store %struct.esp_cmd_entry* %48, %struct.esp_cmd_entry** %50, align 8
  store i32 0, i32* %3, align 4
  br label %91

51:                                               ; preds = %2
  %52 = load %struct.esp_lun_data*, %struct.esp_lun_data** %5, align 8
  %53 = getelementptr inbounds %struct.esp_lun_data, %struct.esp_lun_data* %52, i32 0, i32 3
  %54 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %53, align 8
  %55 = icmp ne %struct.esp_cmd_entry* %54, null
  br i1 %55, label %61, label %56

56:                                               ; preds = %51
  %57 = load %struct.esp_lun_data*, %struct.esp_lun_data** %5, align 8
  %58 = getelementptr inbounds %struct.esp_lun_data, %struct.esp_lun_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56, %51
  %62 = load i32, i32* @EBUSY, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %91

64:                                               ; preds = %56
  br label %65

65:                                               ; preds = %64
  %66 = load %struct.esp_lun_data*, %struct.esp_lun_data** %5, align 8
  %67 = getelementptr inbounds %struct.esp_lun_data, %struct.esp_lun_data* %66, i32 0, i32 2
  %68 = load %struct.esp_cmd_entry**, %struct.esp_cmd_entry*** %67, align 8
  %69 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %4, align 8
  %70 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %69, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 1
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %68, i64 %73
  %75 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %74, align 8
  %76 = call i32 @BUG_ON(%struct.esp_cmd_entry* %75)
  %77 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %4, align 8
  %78 = load %struct.esp_lun_data*, %struct.esp_lun_data** %5, align 8
  %79 = getelementptr inbounds %struct.esp_lun_data, %struct.esp_lun_data* %78, i32 0, i32 2
  %80 = load %struct.esp_cmd_entry**, %struct.esp_cmd_entry*** %79, align 8
  %81 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %4, align 8
  %82 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %81, i32 0, i32 0
  %83 = load i64*, i64** %82, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 1
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %80, i64 %85
  store %struct.esp_cmd_entry* %77, %struct.esp_cmd_entry** %86, align 8
  %87 = load %struct.esp_lun_data*, %struct.esp_lun_data** %5, align 8
  %88 = getelementptr inbounds %struct.esp_lun_data, %struct.esp_lun_data* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %89, 1
  store i64 %90, i64* %88, align 8
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %65, %61, %47, %41, %30, %17
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @BUG_ON(%struct.esp_cmd_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
