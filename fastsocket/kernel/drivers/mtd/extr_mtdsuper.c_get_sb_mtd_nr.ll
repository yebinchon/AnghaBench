; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtdsuper.c_get_sb_mtd_nr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtdsuper.c_get_sb_mtd_nr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_system_type = type { i32 }
%struct.super_block = type opaque
%struct.vfsmount = type { i32 }
%struct.mtd_info = type { i32 }
%struct.super_block.0 = type opaque

@.str = private unnamed_addr constant [43 x i8] c"MTDSB: Device #%u doesn't appear to exist\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file_system_type*, i32, i8*, i8*, i32, i32 (%struct.super_block*, i8*, i32)*, %struct.vfsmount*)* @get_sb_mtd_nr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_sb_mtd_nr(%struct.file_system_type* %0, i32 %1, i8* %2, i8* %3, i32 %4, i32 (%struct.super_block*, i8*, i32)* %5, %struct.vfsmount* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.file_system_type*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32 (%struct.super_block*, i8*, i32)*, align 8
  %15 = alloca %struct.vfsmount*, align 8
  %16 = alloca %struct.mtd_info*, align 8
  store %struct.file_system_type* %0, %struct.file_system_type** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 (%struct.super_block*, i8*, i32)* %5, i32 (%struct.super_block*, i8*, i32)** %14, align 8
  store %struct.vfsmount* %6, %struct.vfsmount** %15, align 8
  %17 = load i32, i32* %13, align 4
  %18 = call %struct.mtd_info* @get_mtd_device(i32* null, i32 %17)
  store %struct.mtd_info* %18, %struct.mtd_info** %16, align 8
  %19 = load %struct.mtd_info*, %struct.mtd_info** %16, align 8
  %20 = call i64 @IS_ERR(%struct.mtd_info* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %7
  %23 = load i32, i32* %13, align 4
  %24 = call i32 @DEBUG(i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.mtd_info*, %struct.mtd_info** %16, align 8
  %26 = call i32 @PTR_ERR(%struct.mtd_info* %25)
  store i32 %26, i32* %8, align 4
  br label %37

27:                                               ; preds = %7
  %28 = load %struct.file_system_type*, %struct.file_system_type** %9, align 8
  %29 = load i32, i32* %10, align 4
  %30 = load i8*, i8** %11, align 8
  %31 = load i8*, i8** %12, align 8
  %32 = load %struct.mtd_info*, %struct.mtd_info** %16, align 8
  %33 = load i32 (%struct.super_block*, i8*, i32)*, i32 (%struct.super_block*, i8*, i32)** %14, align 8
  %34 = bitcast i32 (%struct.super_block*, i8*, i32)* %33 to i32 (%struct.super_block.0*, i8*, i32)*
  %35 = load %struct.vfsmount*, %struct.vfsmount** %15, align 8
  %36 = call i32 @get_sb_mtd_aux(%struct.file_system_type* %28, i32 %29, i8* %30, i8* %31, %struct.mtd_info* %32, i32 (%struct.super_block.0*, i8*, i32)* %34, %struct.vfsmount* %35)
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %27, %22
  %38 = load i32, i32* %8, align 4
  ret i32 %38
}

declare dso_local %struct.mtd_info* @get_mtd_device(i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.mtd_info*) #1

declare dso_local i32 @DEBUG(i32, i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.mtd_info*) #1

declare dso_local i32 @get_sb_mtd_aux(%struct.file_system_type*, i32, i8*, i8*, %struct.mtd_info*, i32 (%struct.super_block.0*, i8*, i32)*, %struct.vfsmount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
