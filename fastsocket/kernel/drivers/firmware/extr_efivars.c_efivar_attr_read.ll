; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/firmware/extr_efivars.c_efivar_attr_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/firmware/extr_efivars.c_efivar_attr_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efivar_entry = type { i32, %struct.efi_variable }
%struct.efi_variable = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EFI_SUCCESS = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"EFI_VARIABLE_NON_VOLATILE\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"EFI_VARIABLE_BOOTSERVICE_ACCESS\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"EFI_VARIABLE_RUNTIME_ACCESS\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efivar_entry*, i8*)* @efivar_attr_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efivar_attr_read(%struct.efivar_entry* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.efivar_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.efi_variable*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.efivar_entry* %0, %struct.efivar_entry** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.efivar_entry*, %struct.efivar_entry** %4, align 8
  %10 = getelementptr inbounds %struct.efivar_entry, %struct.efivar_entry* %9, i32 0, i32 1
  store %struct.efi_variable* %10, %struct.efi_variable** %6, align 8
  %11 = load i8*, i8** %5, align 8
  store i8* %11, i8** %7, align 8
  %12 = load %struct.efivar_entry*, %struct.efivar_entry** %4, align 8
  %13 = icmp ne %struct.efivar_entry* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14, %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %75

20:                                               ; preds = %14
  %21 = load %struct.efivar_entry*, %struct.efivar_entry** %4, align 8
  %22 = getelementptr inbounds %struct.efivar_entry, %struct.efivar_entry* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.efi_variable*, %struct.efi_variable** %6, align 8
  %25 = call i64 @get_var_data(i32 %23, %struct.efi_variable* %24)
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* @EFI_SUCCESS, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %75

32:                                               ; preds = %20
  %33 = load %struct.efi_variable*, %struct.efi_variable** %6, align 8
  %34 = getelementptr inbounds %struct.efi_variable, %struct.efi_variable* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 1
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 @sprintf(i8* %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %41 = load i8*, i8** %7, align 8
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  store i8* %43, i8** %7, align 8
  br label %44

44:                                               ; preds = %38, %32
  %45 = load %struct.efi_variable*, %struct.efi_variable** %6, align 8
  %46 = getelementptr inbounds %struct.efi_variable, %struct.efi_variable* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 2
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %44
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @sprintf(i8* %51, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i8*, i8** %7, align 8
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  store i8* %55, i8** %7, align 8
  br label %56

56:                                               ; preds = %50, %44
  %57 = load %struct.efi_variable*, %struct.efi_variable** %6, align 8
  %58 = getelementptr inbounds %struct.efi_variable, %struct.efi_variable* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = load i8*, i8** %7, align 8
  %64 = call i32 @sprintf(i8* %63, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i8*, i8** %7, align 8
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  store i8* %67, i8** %7, align 8
  br label %68

68:                                               ; preds = %62, %56
  %69 = load i8*, i8** %7, align 8
  %70 = load i8*, i8** %5, align 8
  %71 = ptrtoint i8* %69 to i64
  %72 = ptrtoint i8* %70 to i64
  %73 = sub i64 %71, %72
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %68, %29, %17
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i64 @get_var_data(i32, %struct.efi_variable*) #1

declare dso_local i32 @sprintf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
