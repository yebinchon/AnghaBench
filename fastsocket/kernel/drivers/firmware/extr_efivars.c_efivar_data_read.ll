; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/firmware/extr_efivars.c_efivar_data_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/firmware/extr_efivars.c_efivar_data_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efivar_entry = type { i32, %struct.efi_variable }
%struct.efi_variable = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EFI_SUCCESS = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efivar_entry*, i8*)* @efivar_data_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efivar_data_read(%struct.efivar_entry* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.efivar_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.efi_variable*, align 8
  %7 = alloca i64, align 8
  store %struct.efivar_entry* %0, %struct.efivar_entry** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.efivar_entry*, %struct.efivar_entry** %4, align 8
  %9 = getelementptr inbounds %struct.efivar_entry, %struct.efivar_entry* %8, i32 0, i32 1
  store %struct.efi_variable* %9, %struct.efi_variable** %6, align 8
  %10 = load %struct.efivar_entry*, %struct.efivar_entry** %4, align 8
  %11 = icmp ne %struct.efivar_entry* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12, %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %42

18:                                               ; preds = %12
  %19 = load %struct.efivar_entry*, %struct.efivar_entry** %4, align 8
  %20 = getelementptr inbounds %struct.efivar_entry, %struct.efivar_entry* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.efi_variable*, %struct.efi_variable** %6, align 8
  %23 = call i64 @get_var_data(i32 %21, %struct.efi_variable* %22)
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @EFI_SUCCESS, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %42

30:                                               ; preds = %18
  %31 = load i8*, i8** %5, align 8
  %32 = load %struct.efi_variable*, %struct.efi_variable** %6, align 8
  %33 = getelementptr inbounds %struct.efi_variable, %struct.efi_variable* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.efi_variable*, %struct.efi_variable** %6, align 8
  %36 = getelementptr inbounds %struct.efi_variable, %struct.efi_variable* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @memcpy(i8* %31, i32 %34, i32 %37)
  %39 = load %struct.efi_variable*, %struct.efi_variable** %6, align 8
  %40 = getelementptr inbounds %struct.efi_variable, %struct.efi_variable* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %30, %27, %15
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i64 @get_var_data(i32, %struct.efi_variable*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
