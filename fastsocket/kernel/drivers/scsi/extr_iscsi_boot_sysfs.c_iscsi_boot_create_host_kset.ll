; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_iscsi_boot_sysfs.c_iscsi_boot_create_host_kset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_iscsi_boot_sysfs.c_iscsi_boot_create_host_kset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_boot_kset = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"iscsi_boot%u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.iscsi_boot_kset* @iscsi_boot_create_host_kset(i32 %0) #0 {
  %2 = alloca %struct.iscsi_boot_kset*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_boot_kset*, align 8
  %5 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i8* @kasprintf(i32 %6, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %7)
  store i8* %8, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store %struct.iscsi_boot_kset* null, %struct.iscsi_boot_kset** %2, align 8
  br label %18

12:                                               ; preds = %1
  %13 = load i8*, i8** %5, align 8
  %14 = call %struct.iscsi_boot_kset* @iscsi_boot_create_kset(i8* %13)
  store %struct.iscsi_boot_kset* %14, %struct.iscsi_boot_kset** %4, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @kfree(i8* %15)
  %17 = load %struct.iscsi_boot_kset*, %struct.iscsi_boot_kset** %4, align 8
  store %struct.iscsi_boot_kset* %17, %struct.iscsi_boot_kset** %2, align 8
  br label %18

18:                                               ; preds = %12, %11
  %19 = load %struct.iscsi_boot_kset*, %struct.iscsi_boot_kset** %2, align 8
  ret %struct.iscsi_boot_kset* %19
}

declare dso_local i8* @kasprintf(i32, i8*, i32) #1

declare dso_local %struct.iscsi_boot_kset* @iscsi_boot_create_kset(i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
