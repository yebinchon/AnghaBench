; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_esp_scsi.c_esp_free_lun_tag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_esp_scsi.c_esp_free_lun_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp_cmd_entry = type { i32* }
%struct.esp_lun_data = type { %struct.esp_cmd_entry*, i32, %struct.esp_cmd_entry** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esp_cmd_entry*, %struct.esp_lun_data*)* @esp_free_lun_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esp_free_lun_tag(%struct.esp_cmd_entry* %0, %struct.esp_lun_data* %1) #0 {
  %3 = alloca %struct.esp_cmd_entry*, align 8
  %4 = alloca %struct.esp_lun_data*, align 8
  store %struct.esp_cmd_entry* %0, %struct.esp_cmd_entry** %3, align 8
  store %struct.esp_lun_data* %1, %struct.esp_lun_data** %4, align 8
  %5 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %3, align 8
  %6 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %41

11:                                               ; preds = %2
  %12 = load %struct.esp_lun_data*, %struct.esp_lun_data** %4, align 8
  %13 = getelementptr inbounds %struct.esp_lun_data, %struct.esp_lun_data* %12, i32 0, i32 2
  %14 = load %struct.esp_cmd_entry**, %struct.esp_cmd_entry*** %13, align 8
  %15 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %3, align 8
  %16 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %14, i64 %20
  %22 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %21, align 8
  %23 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %3, align 8
  %24 = icmp ne %struct.esp_cmd_entry* %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load %struct.esp_lun_data*, %struct.esp_lun_data** %4, align 8
  %28 = getelementptr inbounds %struct.esp_lun_data, %struct.esp_lun_data* %27, i32 0, i32 2
  %29 = load %struct.esp_cmd_entry**, %struct.esp_cmd_entry*** %28, align 8
  %30 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %3, align 8
  %31 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %29, i64 %35
  store %struct.esp_cmd_entry* null, %struct.esp_cmd_entry** %36, align 8
  %37 = load %struct.esp_lun_data*, %struct.esp_lun_data** %4, align 8
  %38 = getelementptr inbounds %struct.esp_lun_data, %struct.esp_lun_data* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %38, align 8
  br label %51

41:                                               ; preds = %2
  %42 = load %struct.esp_lun_data*, %struct.esp_lun_data** %4, align 8
  %43 = getelementptr inbounds %struct.esp_lun_data, %struct.esp_lun_data* %42, i32 0, i32 0
  %44 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %43, align 8
  %45 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %3, align 8
  %46 = icmp ne %struct.esp_cmd_entry* %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @BUG_ON(i32 %47)
  %49 = load %struct.esp_lun_data*, %struct.esp_lun_data** %4, align 8
  %50 = getelementptr inbounds %struct.esp_lun_data, %struct.esp_lun_data* %49, i32 0, i32 0
  store %struct.esp_cmd_entry* null, %struct.esp_cmd_entry** %50, align 8
  br label %51

51:                                               ; preds = %41, %11
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
