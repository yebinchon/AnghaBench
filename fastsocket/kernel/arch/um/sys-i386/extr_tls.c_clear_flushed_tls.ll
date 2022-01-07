; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/sys-i386/extr_tls.c_clear_flushed_tls.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/sys-i386/extr_tls.c_clear_flushed_tls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.uml_tls_struct* }
%struct.uml_tls_struct = type { i64, i32 }

@GDT_ENTRY_TLS_MIN = common dso_local global i32 0, align 4
@GDT_ENTRY_TLS_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clear_flushed_tls(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.uml_tls_struct*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %5 = load i32, i32* @GDT_ENTRY_TLS_MIN, align 4
  store i32 %5, i32* %3, align 4
  br label %6

6:                                                ; preds = %29, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @GDT_ENTRY_TLS_MAX, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %32

10:                                               ; preds = %6
  %11 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %12 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.uml_tls_struct*, %struct.uml_tls_struct** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @GDT_ENTRY_TLS_MIN, align 4
  %18 = sub nsw i32 %16, %17
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.uml_tls_struct, %struct.uml_tls_struct* %15, i64 %19
  store %struct.uml_tls_struct* %20, %struct.uml_tls_struct** %4, align 8
  %21 = load %struct.uml_tls_struct*, %struct.uml_tls_struct** %4, align 8
  %22 = getelementptr inbounds %struct.uml_tls_struct, %struct.uml_tls_struct* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %10
  br label %29

26:                                               ; preds = %10
  %27 = load %struct.uml_tls_struct*, %struct.uml_tls_struct** %4, align 8
  %28 = getelementptr inbounds %struct.uml_tls_struct, %struct.uml_tls_struct* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  br label %29

29:                                               ; preds = %26, %25
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %6

32:                                               ; preds = %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
