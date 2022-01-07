; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-proc.c_ide_find_setting.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-proc.c_ide_find_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ide_proc_devset = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ide_proc_devset* (%struct.ide_proc_devset*, i8*)* @ide_find_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ide_proc_devset* @ide_find_setting(%struct.ide_proc_devset* %0, i8* %1) #0 {
  %3 = alloca %struct.ide_proc_devset*, align 8
  %4 = alloca i8*, align 8
  store %struct.ide_proc_devset* %0, %struct.ide_proc_devset** %3, align 8
  store i8* %1, i8** %4, align 8
  br label %5

5:                                                ; preds = %18, %2
  %6 = load %struct.ide_proc_devset*, %struct.ide_proc_devset** %3, align 8
  %7 = getelementptr inbounds %struct.ide_proc_devset, %struct.ide_proc_devset* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %5
  %11 = load %struct.ide_proc_devset*, %struct.ide_proc_devset** %3, align 8
  %12 = getelementptr inbounds %struct.ide_proc_devset, %struct.ide_proc_devset* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call i64 @strcmp(i64 %13, i8* %14)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  br label %21

18:                                               ; preds = %10
  %19 = load %struct.ide_proc_devset*, %struct.ide_proc_devset** %3, align 8
  %20 = getelementptr inbounds %struct.ide_proc_devset, %struct.ide_proc_devset* %19, i32 1
  store %struct.ide_proc_devset* %20, %struct.ide_proc_devset** %3, align 8
  br label %5

21:                                               ; preds = %17, %5
  %22 = load %struct.ide_proc_devset*, %struct.ide_proc_devset** %3, align 8
  %23 = getelementptr inbounds %struct.ide_proc_devset, %struct.ide_proc_devset* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load %struct.ide_proc_devset*, %struct.ide_proc_devset** %3, align 8
  br label %29

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi %struct.ide_proc_devset* [ %27, %26 ], [ null, %28 ]
  ret %struct.ide_proc_devset* %30
}

declare dso_local i64 @strcmp(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
