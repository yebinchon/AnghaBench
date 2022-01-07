; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_rtas_flash.c_create_flash_pde.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_rtas_flash.c_create_flash_pde.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_dir_entry = type { i32 }
%struct.file_operations = type { i32 }

@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.proc_dir_entry* (i8*, %struct.file_operations*)* @create_flash_pde to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.proc_dir_entry* @create_flash_pde(i8* %0, %struct.file_operations* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.file_operations*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.file_operations* %1, %struct.file_operations** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i32, i32* @S_IRUSR, align 4
  %7 = load i32, i32* @S_IWUSR, align 4
  %8 = or i32 %6, %7
  %9 = load %struct.file_operations*, %struct.file_operations** %4, align 8
  %10 = call %struct.proc_dir_entry* @proc_create(i8* %5, i32 %8, i32* null, %struct.file_operations* %9)
  ret %struct.proc_dir_entry* %10
}

declare dso_local %struct.proc_dir_entry* @proc_create(i8*, i32, i32*, %struct.file_operations*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
