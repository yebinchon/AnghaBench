; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/ia32/extr_sys_ia32.c_set_tls_desc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/ia32/extr_sys_ia32.c_set_tls_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.thread_struct }
%struct.thread_struct = type { %struct.desc_struct* }
%struct.desc_struct = type { i64, i64 }
%struct.task_struct = type { %struct.thread_struct }
%struct.ia32_user_desc = type { i32 }

@GDT_ENTRY_TLS_MIN = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*, i32, %struct.ia32_user_desc*, i32)* @set_tls_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_tls_desc(%struct.task_struct* %0, i32 %1, %struct.ia32_user_desc* %2, i32 %3) #0 {
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ia32_user_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.thread_struct*, align 8
  %10 = alloca %struct.desc_struct*, align 8
  %11 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ia32_user_desc* %2, %struct.ia32_user_desc** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %13 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %12, i32 0, i32 0
  store %struct.thread_struct* %13, %struct.thread_struct** %9, align 8
  %14 = load %struct.thread_struct*, %struct.thread_struct** %9, align 8
  %15 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %14, i32 0, i32 0
  %16 = load %struct.desc_struct*, %struct.desc_struct** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @GDT_ENTRY_TLS_MIN, align 4
  %19 = sub nsw i32 %17, %18
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %16, i64 %20
  store %struct.desc_struct* %21, %struct.desc_struct** %10, align 8
  %22 = call i32 (...) @get_cpu()
  store i32 %22, i32* %11, align 4
  br label %23

23:                                               ; preds = %45, %4
  %24 = load i32, i32* %8, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %8, align 4
  %26 = icmp sgt i32 %24, 0
  br i1 %26, label %27, label %50

27:                                               ; preds = %23
  %28 = load %struct.ia32_user_desc*, %struct.ia32_user_desc** %7, align 8
  %29 = call i64 @LDT_empty(%struct.ia32_user_desc* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load %struct.desc_struct*, %struct.desc_struct** %10, align 8
  %33 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = load %struct.desc_struct*, %struct.desc_struct** %10, align 8
  %35 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  br label %45

36:                                               ; preds = %27
  %37 = load %struct.ia32_user_desc*, %struct.ia32_user_desc** %7, align 8
  %38 = call i64 @LDT_entry_a(%struct.ia32_user_desc* %37)
  %39 = load %struct.desc_struct*, %struct.desc_struct** %10, align 8
  %40 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  %41 = load %struct.ia32_user_desc*, %struct.ia32_user_desc** %7, align 8
  %42 = call i64 @LDT_entry_b(%struct.ia32_user_desc* %41)
  %43 = load %struct.desc_struct*, %struct.desc_struct** %10, align 8
  %44 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  br label %45

45:                                               ; preds = %36, %31
  %46 = load %struct.ia32_user_desc*, %struct.ia32_user_desc** %7, align 8
  %47 = getelementptr inbounds %struct.ia32_user_desc, %struct.ia32_user_desc* %46, i32 1
  store %struct.ia32_user_desc* %47, %struct.ia32_user_desc** %7, align 8
  %48 = load %struct.desc_struct*, %struct.desc_struct** %10, align 8
  %49 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %48, i32 1
  store %struct.desc_struct* %49, %struct.desc_struct** %10, align 8
  br label %23

50:                                               ; preds = %23
  %51 = load %struct.thread_struct*, %struct.thread_struct** %9, align 8
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = icmp eq %struct.thread_struct* %51, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load %struct.thread_struct*, %struct.thread_struct** %9, align 8
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @load_TLS(%struct.thread_struct* %56, i32 %57)
  br label %59

59:                                               ; preds = %55, %50
  %60 = call i32 (...) @put_cpu()
  ret void
}

declare dso_local i32 @get_cpu(...) #1

declare dso_local i64 @LDT_empty(%struct.ia32_user_desc*) #1

declare dso_local i64 @LDT_entry_a(%struct.ia32_user_desc*) #1

declare dso_local i64 @LDT_entry_b(%struct.ia32_user_desc*) #1

declare dso_local i32 @load_TLS(%struct.thread_struct*, i32) #1

declare dso_local i32 @put_cpu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
