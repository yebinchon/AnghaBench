; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/sys-i386/extr_tls.c_load_TLS.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/sys-i386/extr_tls.c_load_TLS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.uml_tls_struct* }
%struct.uml_tls_struct = type { i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }

@GDT_ENTRY_TLS_MIN = common dso_local global i32 0, align 4
@GDT_ENTRY_TLS_MAX = common dso_local global i32 0, align 4
@O_FORCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.task_struct*)* @load_TLS to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_TLS(i32 %0, %struct.task_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.uml_tls_struct*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.task_struct* %1, %struct.task_struct** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load i32, i32* @GDT_ENTRY_TLS_MIN, align 4
  store i32 %8, i32* %6, align 4
  br label %9

9:                                                ; preds = %71, %2
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @GDT_ENTRY_TLS_MAX, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %74

13:                                               ; preds = %9
  %14 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %15 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.uml_tls_struct*, %struct.uml_tls_struct** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @GDT_ENTRY_TLS_MIN, align 4
  %21 = sub nsw i32 %19, %20
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.uml_tls_struct, %struct.uml_tls_struct* %18, i64 %22
  store %struct.uml_tls_struct* %23, %struct.uml_tls_struct** %7, align 8
  %24 = load %struct.uml_tls_struct*, %struct.uml_tls_struct** %7, align 8
  %25 = getelementptr inbounds %struct.uml_tls_struct, %struct.uml_tls_struct* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %50, label %28

28:                                               ; preds = %13
  %29 = load %struct.uml_tls_struct*, %struct.uml_tls_struct** %7, align 8
  %30 = getelementptr inbounds %struct.uml_tls_struct, %struct.uml_tls_struct* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %28
  %34 = load %struct.uml_tls_struct*, %struct.uml_tls_struct** %7, align 8
  %35 = getelementptr inbounds %struct.uml_tls_struct, %struct.uml_tls_struct* %34, i32 0, i32 1
  %36 = call i32 @clear_user_desc(%struct.TYPE_8__* %35)
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.uml_tls_struct*, %struct.uml_tls_struct** %7, align 8
  %39 = getelementptr inbounds %struct.uml_tls_struct, %struct.uml_tls_struct* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 4
  br label %49

41:                                               ; preds = %28
  %42 = load %struct.uml_tls_struct*, %struct.uml_tls_struct** %7, align 8
  %43 = getelementptr inbounds %struct.uml_tls_struct, %struct.uml_tls_struct* %42, i32 0, i32 1
  %44 = call i32 @LDT_empty(%struct.TYPE_8__* %43)
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i32 @WARN_ON(i32 %47)
  br label %71

49:                                               ; preds = %33
  br label %50

50:                                               ; preds = %49, %13
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @O_FORCE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %50
  %56 = load %struct.uml_tls_struct*, %struct.uml_tls_struct** %7, align 8
  %57 = getelementptr inbounds %struct.uml_tls_struct, %struct.uml_tls_struct* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %71

61:                                               ; preds = %55, %50
  %62 = load %struct.uml_tls_struct*, %struct.uml_tls_struct** %7, align 8
  %63 = getelementptr inbounds %struct.uml_tls_struct, %struct.uml_tls_struct* %62, i32 0, i32 1
  %64 = call i32 @do_set_thread_area(%struct.TYPE_8__* %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %75

68:                                               ; preds = %61
  %69 = load %struct.uml_tls_struct*, %struct.uml_tls_struct** %7, align 8
  %70 = getelementptr inbounds %struct.uml_tls_struct, %struct.uml_tls_struct* %69, i32 0, i32 0
  store i32 1, i32* %70, align 4
  br label %71

71:                                               ; preds = %68, %60, %41
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %6, align 4
  br label %9

74:                                               ; preds = %9
  br label %75

75:                                               ; preds = %74, %67
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i32 @clear_user_desc(%struct.TYPE_8__*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @LDT_empty(%struct.TYPE_8__*) #1

declare dso_local i32 @do_set_thread_area(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
