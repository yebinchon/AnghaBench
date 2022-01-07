; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/power/extr_hibernate_64.c_arch_hibernation_header_restore.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/power/extr_hibernate_64.c_arch_hibernation_header_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.restore_data_record = type { i64, i32, i32 }

@restore_jump_address = common dso_local global i32 0, align 4
@restore_cr3 = common dso_local global i32 0, align 4
@RESTORE_MAGIC = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arch_hibernation_header_restore(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.restore_data_record*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.restore_data_record*
  store %struct.restore_data_record* %5, %struct.restore_data_record** %3, align 8
  %6 = load %struct.restore_data_record*, %struct.restore_data_record** %3, align 8
  %7 = getelementptr inbounds %struct.restore_data_record, %struct.restore_data_record* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* @restore_jump_address, align 4
  %9 = load %struct.restore_data_record*, %struct.restore_data_record** %3, align 8
  %10 = getelementptr inbounds %struct.restore_data_record, %struct.restore_data_record* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* @restore_cr3, align 4
  %12 = load %struct.restore_data_record*, %struct.restore_data_record** %3, align 8
  %13 = getelementptr inbounds %struct.restore_data_record, %struct.restore_data_record* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @RESTORE_MAGIC, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  br label %21

21:                                               ; preds = %18, %17
  %22 = phi i32 [ 0, %17 ], [ %20, %18 ]
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
