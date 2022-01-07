; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_reconfig.c_proc_ppc64_create_ofdt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_reconfig.c_proc_ppc64_create_ofdt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_dir_entry = type { i64 }

@pseries = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"ppc64/ofdt\00", align 1
@S_IWUSR = common dso_local global i32 0, align 4
@ofdt_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @proc_ppc64_create_ofdt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_ppc64_create_ofdt() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.proc_dir_entry*, align 8
  %3 = load i32, i32* @pseries, align 4
  %4 = call i32 @machine_is(i32 %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %16

7:                                                ; preds = %0
  %8 = load i32, i32* @S_IWUSR, align 4
  %9 = call %struct.proc_dir_entry* @proc_create(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %8, i32* null, i32* @ofdt_fops)
  store %struct.proc_dir_entry* %9, %struct.proc_dir_entry** %2, align 8
  %10 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %2, align 8
  %11 = icmp ne %struct.proc_dir_entry* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %2, align 8
  %14 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %13, i32 0, i32 0
  store i64 0, i64* %14, align 8
  br label %15

15:                                               ; preds = %12, %7
  store i32 0, i32* %1, align 4
  br label %16

16:                                               ; preds = %15, %6
  %17 = load i32, i32* %1, align 4
  ret i32 %17
}

declare dso_local i32 @machine_is(i32) #1

declare dso_local %struct.proc_dir_entry* @proc_create(i8*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
