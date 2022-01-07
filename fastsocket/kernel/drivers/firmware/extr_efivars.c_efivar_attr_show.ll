; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/firmware/extr_efivars.c_efivar_attr_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/firmware/extr_efivars.c_efivar_attr_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.attribute = type { i32 }
%struct.efivar_entry = type { i32 }
%struct.efivar_attribute = type { i32 (%struct.efivar_entry*, i8*)* }

@EIO = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.attribute*, i8*)* @efivar_attr_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efivar_attr_show(%struct.kobject* %0, %struct.attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kobject*, align 8
  %6 = alloca %struct.attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.efivar_entry*, align 8
  %9 = alloca %struct.efivar_attribute*, align 8
  %10 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %5, align 8
  store %struct.attribute* %1, %struct.attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.kobject*, %struct.kobject** %5, align 8
  %12 = call %struct.efivar_entry* @to_efivar_entry(%struct.kobject* %11)
  store %struct.efivar_entry* %12, %struct.efivar_entry** %8, align 8
  %13 = load %struct.attribute*, %struct.attribute** %6, align 8
  %14 = call %struct.efivar_attribute* @to_efivar_attr(%struct.attribute* %13)
  store %struct.efivar_attribute* %14, %struct.efivar_attribute** %9, align 8
  %15 = load i32, i32* @EIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %18 = call i32 @capable(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @EACCES, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %37

23:                                               ; preds = %3
  %24 = load %struct.efivar_attribute*, %struct.efivar_attribute** %9, align 8
  %25 = getelementptr inbounds %struct.efivar_attribute, %struct.efivar_attribute* %24, i32 0, i32 0
  %26 = load i32 (%struct.efivar_entry*, i8*)*, i32 (%struct.efivar_entry*, i8*)** %25, align 8
  %27 = icmp ne i32 (%struct.efivar_entry*, i8*)* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load %struct.efivar_attribute*, %struct.efivar_attribute** %9, align 8
  %30 = getelementptr inbounds %struct.efivar_attribute, %struct.efivar_attribute* %29, i32 0, i32 0
  %31 = load i32 (%struct.efivar_entry*, i8*)*, i32 (%struct.efivar_entry*, i8*)** %30, align 8
  %32 = load %struct.efivar_entry*, %struct.efivar_entry** %8, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 %31(%struct.efivar_entry* %32, i8* %33)
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %28, %23
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %35, %20
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local %struct.efivar_entry* @to_efivar_entry(%struct.kobject*) #1

declare dso_local %struct.efivar_attribute* @to_efivar_attr(%struct.attribute*) #1

declare dso_local i32 @capable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
