; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/firmware/extr_efivars.c_efivar_show_raw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/firmware/extr_efivars.c_efivar_show_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efivar_entry = type { i32, %struct.efi_variable }
%struct.efi_variable = type { i32 }

@EFI_SUCCESS = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efivar_entry*, i8*)* @efivar_show_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efivar_show_raw(%struct.efivar_entry* %0, i8* %1) #0 {
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
  br i1 %14, label %16, label %15

15:                                               ; preds = %12, %2
  store i32 0, i32* %3, align 4
  br label %32

16:                                               ; preds = %12
  %17 = load %struct.efivar_entry*, %struct.efivar_entry** %4, align 8
  %18 = getelementptr inbounds %struct.efivar_entry, %struct.efivar_entry* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.efi_variable*, %struct.efi_variable** %6, align 8
  %21 = call i64 @get_var_data(i32 %19, %struct.efi_variable* %20)
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* @EFI_SUCCESS, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %16
  %26 = load i32, i32* @EIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %32

28:                                               ; preds = %16
  %29 = load i8*, i8** %5, align 8
  %30 = load %struct.efi_variable*, %struct.efi_variable** %6, align 8
  %31 = call i32 @memcpy(i8* %29, %struct.efi_variable* %30, i32 4)
  store i32 4, i32* %3, align 4
  br label %32

32:                                               ; preds = %28, %25, %15
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i64 @get_var_data(i32, %struct.efi_variable*) #1

declare dso_local i32 @memcpy(i8*, %struct.efi_variable*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
