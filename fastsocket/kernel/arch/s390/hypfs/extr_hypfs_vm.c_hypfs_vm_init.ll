; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/hypfs/extr_hypfs_vm.c_hypfs_vm_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/hypfs/extr_hypfs_vm.c_hypfs_vm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MACHINE_IS_VM = common dso_local global i32 0, align 4
@all_guests = common dso_local global i32 0, align 4
@guest_query = common dso_local global i32 0, align 4
@local_guest = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@dbfs_file_2fc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hypfs_vm_init() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @MACHINE_IS_VM, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %23

5:                                                ; preds = %0
  %6 = load i32, i32* @all_guests, align 4
  %7 = call i64 @diag2fc(i32 0, i32 %6, i32* null)
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = load i32, i32* @all_guests, align 4
  store i32 %10, i32* @guest_query, align 4
  br label %21

11:                                               ; preds = %5
  %12 = load i32, i32* @local_guest, align 4
  %13 = call i64 @diag2fc(i32 0, i32 %12, i32* null)
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load i32, i32* @local_guest, align 4
  store i32 %16, i32* @guest_query, align 4
  br label %20

17:                                               ; preds = %11
  %18 = load i32, i32* @EACCES, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %1, align 4
  br label %23

20:                                               ; preds = %15
  br label %21

21:                                               ; preds = %20, %9
  %22 = call i32 @hypfs_dbfs_create_file(i32* @dbfs_file_2fc)
  store i32 %22, i32* %1, align 4
  br label %23

23:                                               ; preds = %21, %17, %4
  %24 = load i32, i32* %1, align 4
  ret i32 %24
}

declare dso_local i64 @diag2fc(i32, i32, i32*) #1

declare dso_local i32 @hypfs_dbfs_create_file(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
