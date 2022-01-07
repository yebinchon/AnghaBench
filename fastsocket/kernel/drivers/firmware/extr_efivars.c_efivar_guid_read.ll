; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/firmware/extr_efivars.c_efivar_guid_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/firmware/extr_efivars.c_efivar_guid_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efivar_entry = type { %struct.efi_variable }
%struct.efi_variable = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efivar_entry*, i8*)* @efivar_guid_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efivar_guid_read(%struct.efivar_entry* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.efivar_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.efi_variable*, align 8
  %7 = alloca i8*, align 8
  store %struct.efivar_entry* %0, %struct.efivar_entry** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.efivar_entry*, %struct.efivar_entry** %4, align 8
  %9 = getelementptr inbounds %struct.efivar_entry, %struct.efivar_entry* %8, i32 0, i32 0
  store %struct.efi_variable* %9, %struct.efi_variable** %6, align 8
  %10 = load i8*, i8** %5, align 8
  store i8* %10, i8** %7, align 8
  %11 = load %struct.efivar_entry*, %struct.efivar_entry** %4, align 8
  %12 = icmp ne %struct.efivar_entry* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i8*, i8** %5, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %13, %2
  store i32 0, i32* %3, align 4
  br label %38

17:                                               ; preds = %13
  %18 = load %struct.efi_variable*, %struct.efi_variable** %6, align 8
  %19 = getelementptr inbounds %struct.efi_variable, %struct.efi_variable* %18, i32 0, i32 0
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @efi_guid_unparse(i32* %19, i8* %20)
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @strlen(i8* %22)
  %24 = load i8*, i8** %7, align 8
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  store i8* %26, i8** %7, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @sprintf(i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %29 = load i8*, i8** %7, align 8
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  store i8* %31, i8** %7, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = ptrtoint i8* %32 to i64
  %35 = ptrtoint i8* %33 to i64
  %36 = sub i64 %34, %35
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %17, %16
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @efi_guid_unparse(i32*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
