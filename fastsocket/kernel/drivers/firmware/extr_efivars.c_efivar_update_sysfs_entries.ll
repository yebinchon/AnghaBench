; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/firmware/extr_efivars.c_efivar_update_sysfs_entries.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/firmware/extr_efivars.c_efivar_update_sysfs_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efivars = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (i64*, i32*, i32*)* }
%struct.work_struct = type { i32 }

@__efivars = common dso_local global %struct.efivars zeroinitializer, align 8
@EFI_NOT_FOUND = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"efivars: Memory allocation failed.\0A\00", align 1
@EFI_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @efivar_update_sysfs_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efivar_update_sysfs_entries(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca %struct.efivars*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  store %struct.efivars* @__efivars, %struct.efivars** %3, align 8
  store i64 1024, i64* %6, align 8
  %9 = load i64, i64* @EFI_NOT_FOUND, align 8
  store i64 %9, i64* %7, align 8
  br label %10

10:                                               ; preds = %1, %58
  %11 = load i64, i64* %6, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i32* @kzalloc(i64 %11, i32 %12)
  store i32* %13, i32** %5, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %10
  %17 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %59

18:                                               ; preds = %10
  %19 = load %struct.efivars*, %struct.efivars** %3, align 8
  %20 = getelementptr inbounds %struct.efivars, %struct.efivars* %19, i32 0, i32 0
  %21 = call i32 @spin_lock_irq(i32* %20)
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %18, %40
  store i64 1024, i64* %6, align 8
  %23 = load %struct.efivars*, %struct.efivars** %3, align 8
  %24 = getelementptr inbounds %struct.efivars, %struct.efivars* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64 (i64*, i32*, i32*)*, i64 (i64*, i32*, i32*)** %26, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = call i64 %27(i64* %6, i32* %28, i32* %4)
  store i64 %29, i64* %7, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* @EFI_SUCCESS, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %22
  br label %41

34:                                               ; preds = %22
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @variable_is_present(i32* %35, i32* %4)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  store i32 1, i32* %8, align 4
  br label %41

39:                                               ; preds = %34
  br label %40

40:                                               ; preds = %39
  br label %22

41:                                               ; preds = %38, %33
  %42 = load %struct.efivars*, %struct.efivars** %3, align 8
  %43 = getelementptr inbounds %struct.efivars, %struct.efivars* %42, i32 0, i32 0
  %44 = call i32 @spin_unlock_irq(i32* %43)
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %41
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @kfree(i32* %48)
  br label %59

50:                                               ; preds = %41
  %51 = load i32*, i32** %5, align 8
  %52 = load i64, i64* %6, align 8
  %53 = call i64 @var_name_strnsize(i32* %51, i64 %52)
  store i64 %53, i64* %6, align 8
  %54 = load %struct.efivars*, %struct.efivars** %3, align 8
  %55 = load i64, i64* %6, align 8
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @efivar_create_sysfs_entry(%struct.efivars* %54, i64 %55, i32* %56, i32* %4)
  br label %58

58:                                               ; preds = %50
  br label %10

59:                                               ; preds = %16, %47
  ret void
}

declare dso_local i32* @kzalloc(i64, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @variable_is_present(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i64 @var_name_strnsize(i32*, i64) #1

declare dso_local i32 @efivar_create_sysfs_entry(%struct.efivars*, i64, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
