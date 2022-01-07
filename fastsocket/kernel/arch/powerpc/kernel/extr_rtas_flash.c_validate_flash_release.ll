; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_rtas_flash.c_validate_flash_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_rtas_flash.c_validate_flash_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.proc_dir_entry = type { i32, i64 }
%struct.rtas_validate_flash_t = type { i64, i32 }

@VALIDATE_READY = common dso_local global i64 0, align 8
@VALIDATE_BUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @validate_flash_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_flash_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.proc_dir_entry*, align 8
  %6 = alloca %struct.rtas_validate_flash_t*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = load %struct.file*, %struct.file** %4, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.proc_dir_entry* @PDE(i32 %12)
  store %struct.proc_dir_entry* %13, %struct.proc_dir_entry** %5, align 8
  %14 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %15 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.rtas_validate_flash_t*
  store %struct.rtas_validate_flash_t* %17, %struct.rtas_validate_flash_t** %6, align 8
  %18 = load %struct.rtas_validate_flash_t*, %struct.rtas_validate_flash_t** %6, align 8
  %19 = getelementptr inbounds %struct.rtas_validate_flash_t, %struct.rtas_validate_flash_t* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @VALIDATE_READY, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load i32, i32* @VALIDATE_BUF_SIZE, align 4
  %25 = load %struct.rtas_validate_flash_t*, %struct.rtas_validate_flash_t** %6, align 8
  %26 = getelementptr inbounds %struct.rtas_validate_flash_t, %struct.rtas_validate_flash_t* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  %27 = load %struct.rtas_validate_flash_t*, %struct.rtas_validate_flash_t** %6, align 8
  %28 = call i32 @validate_flash(%struct.rtas_validate_flash_t* %27)
  br label %29

29:                                               ; preds = %23, %2
  %30 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %31 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %30, i32 0, i32 0
  %32 = call i32 @atomic_dec(i32* %31)
  ret i32 0
}

declare dso_local %struct.proc_dir_entry* @PDE(i32) #1

declare dso_local i32 @validate_flash(%struct.rtas_validate_flash_t*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
