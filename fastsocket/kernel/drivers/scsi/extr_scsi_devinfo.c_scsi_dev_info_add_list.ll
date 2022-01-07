; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_devinfo.c_scsi_dev_info_add_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_devinfo.c_scsi_dev_info_add_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_dev_info_list_table = type { i8*, i32, i32, i32 }

@EEXIST = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@scsi_dev_info_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scsi_dev_info_add_list(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.scsi_dev_info_list_table*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.scsi_dev_info_list_table* @scsi_devinfo_lookup_by_key(i32 %7)
  store %struct.scsi_dev_info_list_table* %8, %struct.scsi_dev_info_list_table** %6, align 8
  %9 = load %struct.scsi_dev_info_list_table*, %struct.scsi_dev_info_list_table** %6, align 8
  %10 = call i32 @IS_ERR(%struct.scsi_dev_info_list_table* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @EEXIST, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %39

15:                                               ; preds = %2
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.scsi_dev_info_list_table* @kmalloc(i32 24, i32 %16)
  store %struct.scsi_dev_info_list_table* %17, %struct.scsi_dev_info_list_table** %6, align 8
  %18 = load %struct.scsi_dev_info_list_table*, %struct.scsi_dev_info_list_table** %6, align 8
  %19 = icmp ne %struct.scsi_dev_info_list_table* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %39

23:                                               ; preds = %15
  %24 = load %struct.scsi_dev_info_list_table*, %struct.scsi_dev_info_list_table** %6, align 8
  %25 = getelementptr inbounds %struct.scsi_dev_info_list_table, %struct.scsi_dev_info_list_table* %24, i32 0, i32 2
  %26 = call i32 @INIT_LIST_HEAD(i32* %25)
  %27 = load %struct.scsi_dev_info_list_table*, %struct.scsi_dev_info_list_table** %6, align 8
  %28 = getelementptr inbounds %struct.scsi_dev_info_list_table, %struct.scsi_dev_info_list_table* %27, i32 0, i32 3
  %29 = call i32 @INIT_LIST_HEAD(i32* %28)
  %30 = load i8*, i8** %5, align 8
  %31 = load %struct.scsi_dev_info_list_table*, %struct.scsi_dev_info_list_table** %6, align 8
  %32 = getelementptr inbounds %struct.scsi_dev_info_list_table, %struct.scsi_dev_info_list_table* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.scsi_dev_info_list_table*, %struct.scsi_dev_info_list_table** %6, align 8
  %35 = getelementptr inbounds %struct.scsi_dev_info_list_table, %struct.scsi_dev_info_list_table* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load %struct.scsi_dev_info_list_table*, %struct.scsi_dev_info_list_table** %6, align 8
  %37 = getelementptr inbounds %struct.scsi_dev_info_list_table, %struct.scsi_dev_info_list_table* %36, i32 0, i32 2
  %38 = call i32 @list_add_tail(i32* %37, i32* @scsi_dev_info_list)
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %23, %20, %12
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.scsi_dev_info_list_table* @scsi_devinfo_lookup_by_key(i32) #1

declare dso_local i32 @IS_ERR(%struct.scsi_dev_info_list_table*) #1

declare dso_local %struct.scsi_dev_info_list_table* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
