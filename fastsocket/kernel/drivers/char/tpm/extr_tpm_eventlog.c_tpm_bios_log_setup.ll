; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/tpm/extr_tpm_eventlog.c_tpm_bios_log_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/tpm/extr_tpm_eventlog.c_tpm_bios_log_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"binary_bios_measurements\00", align 1
@S_IRUSR = common dso_local global i32 0, align 4
@S_IRGRP = common dso_local global i32 0, align 4
@tpm_binary_bios_measurements_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"ascii_bios_measurements\00", align 1
@tpm_ascii_bios_measurements_ops = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry** @tpm_bios_log_setup(i8* %0) #0 {
  %2 = alloca %struct.dentry**, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.dentry**, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.dentry*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.dentry** null, %struct.dentry*** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call %struct.dentry* @securityfs_create_dir(i8* %8, i32* null)
  store %struct.dentry* %9, %struct.dentry** %5, align 8
  %10 = load %struct.dentry*, %struct.dentry** %5, align 8
  %11 = call i64 @is_bad(%struct.dentry* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %60

14:                                               ; preds = %1
  %15 = load i32, i32* @S_IRUSR, align 4
  %16 = load i32, i32* @S_IRGRP, align 4
  %17 = or i32 %15, %16
  %18 = load %struct.dentry*, %struct.dentry** %5, align 8
  %19 = call %struct.dentry* @securityfs_create_file(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %17, %struct.dentry* %18, i32* null, i32* @tpm_binary_bios_measurements_ops)
  store %struct.dentry* %19, %struct.dentry** %6, align 8
  %20 = load %struct.dentry*, %struct.dentry** %6, align 8
  %21 = call i64 @is_bad(%struct.dentry* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  br label %57

24:                                               ; preds = %14
  %25 = load i32, i32* @S_IRUSR, align 4
  %26 = load i32, i32* @S_IRGRP, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.dentry*, %struct.dentry** %5, align 8
  %29 = call %struct.dentry* @securityfs_create_file(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %27, %struct.dentry* %28, i32* null, i32* @tpm_ascii_bios_measurements_ops)
  store %struct.dentry* %29, %struct.dentry** %7, align 8
  %30 = load %struct.dentry*, %struct.dentry** %7, align 8
  %31 = call i64 @is_bad(%struct.dentry* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  br label %54

34:                                               ; preds = %24
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.dentry** @kmalloc(i32 24, i32 %35)
  store %struct.dentry** %36, %struct.dentry*** %4, align 8
  %37 = load %struct.dentry**, %struct.dentry*** %4, align 8
  %38 = icmp ne %struct.dentry** %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  br label %51

40:                                               ; preds = %34
  %41 = load %struct.dentry*, %struct.dentry** %7, align 8
  %42 = load %struct.dentry**, %struct.dentry*** %4, align 8
  %43 = getelementptr inbounds %struct.dentry*, %struct.dentry** %42, i64 0
  store %struct.dentry* %41, %struct.dentry** %43, align 8
  %44 = load %struct.dentry*, %struct.dentry** %6, align 8
  %45 = load %struct.dentry**, %struct.dentry*** %4, align 8
  %46 = getelementptr inbounds %struct.dentry*, %struct.dentry** %45, i64 1
  store %struct.dentry* %44, %struct.dentry** %46, align 8
  %47 = load %struct.dentry*, %struct.dentry** %5, align 8
  %48 = load %struct.dentry**, %struct.dentry*** %4, align 8
  %49 = getelementptr inbounds %struct.dentry*, %struct.dentry** %48, i64 2
  store %struct.dentry* %47, %struct.dentry** %49, align 8
  %50 = load %struct.dentry**, %struct.dentry*** %4, align 8
  store %struct.dentry** %50, %struct.dentry*** %2, align 8
  br label %61

51:                                               ; preds = %39
  %52 = load %struct.dentry*, %struct.dentry** %7, align 8
  %53 = call i32 @securityfs_remove(%struct.dentry* %52)
  br label %54

54:                                               ; preds = %51, %33
  %55 = load %struct.dentry*, %struct.dentry** %6, align 8
  %56 = call i32 @securityfs_remove(%struct.dentry* %55)
  br label %57

57:                                               ; preds = %54, %23
  %58 = load %struct.dentry*, %struct.dentry** %5, align 8
  %59 = call i32 @securityfs_remove(%struct.dentry* %58)
  br label %60

60:                                               ; preds = %57, %13
  store %struct.dentry** null, %struct.dentry*** %2, align 8
  br label %61

61:                                               ; preds = %60, %40
  %62 = load %struct.dentry**, %struct.dentry*** %2, align 8
  ret %struct.dentry** %62
}

declare dso_local %struct.dentry* @securityfs_create_dir(i8*, i32*) #1

declare dso_local i64 @is_bad(%struct.dentry*) #1

declare dso_local %struct.dentry* @securityfs_create_file(i8*, i32, %struct.dentry*, i32*, i32*) #1

declare dso_local %struct.dentry** @kmalloc(i32, i32) #1

declare dso_local i32 @securityfs_remove(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
