; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_hvc_console.c_hvc_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_hvc_console.c_hvc_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_ops = type { i32 }
%struct.hvc_struct = type { i64, i32, i32, i8*, i32, i32, %struct.hv_ops*, i32, i32, i32 }

@hvc_driver = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@hvc_set_winsz = common dso_local global i32 0, align 4
@hvc_structs_lock = common dso_local global i32 0, align 4
@MAX_NR_HVC_CONSOLES = common dso_local global i32 0, align 4
@vtermnos = common dso_local global i64* null, align 8
@cons_ops = common dso_local global %struct.hv_ops** null, align 8
@last_hvc = common dso_local global i32 0, align 4
@hvc_structs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hvc_struct* @hvc_alloc(i64 %0, i32 %1, %struct.hv_ops* %2, i32 %3) #0 {
  %5 = alloca %struct.hvc_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hv_ops*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.hvc_struct*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.hv_ops* %2, %struct.hv_ops** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* @hvc_driver, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %4
  %16 = call i32 (...) @hvc_init()
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32, i32* %12, align 4
  %21 = call %struct.hvc_struct* @ERR_PTR(i32 %20)
  store %struct.hvc_struct* %21, %struct.hvc_struct** %5, align 8
  br label %112

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %22, %4
  %24 = call i64 @ALIGN(i32 56, i32 8)
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = add i64 %24, %26
  %28 = trunc i64 %27 to i32
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.hvc_struct* @kzalloc(i32 %28, i32 %29)
  store %struct.hvc_struct* %30, %struct.hvc_struct** %10, align 8
  %31 = load %struct.hvc_struct*, %struct.hvc_struct** %10, align 8
  %32 = icmp ne %struct.hvc_struct* %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %23
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  %36 = call %struct.hvc_struct* @ERR_PTR(i32 %35)
  store %struct.hvc_struct* %36, %struct.hvc_struct** %5, align 8
  br label %112

37:                                               ; preds = %23
  %38 = load i64, i64* %6, align 8
  %39 = load %struct.hvc_struct*, %struct.hvc_struct** %10, align 8
  %40 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.hvc_struct*, %struct.hvc_struct** %10, align 8
  %43 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  %44 = load %struct.hv_ops*, %struct.hv_ops** %8, align 8
  %45 = load %struct.hvc_struct*, %struct.hvc_struct** %10, align 8
  %46 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %45, i32 0, i32 6
  store %struct.hv_ops* %44, %struct.hv_ops** %46, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.hvc_struct*, %struct.hvc_struct** %10, align 8
  %49 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load %struct.hvc_struct*, %struct.hvc_struct** %10, align 8
  %51 = bitcast %struct.hvc_struct* %50 to i8*
  %52 = call i64 @ALIGN(i32 56, i32 8)
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  %54 = load %struct.hvc_struct*, %struct.hvc_struct** %10, align 8
  %55 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %54, i32 0, i32 3
  store i8* %53, i8** %55, align 8
  %56 = load %struct.hvc_struct*, %struct.hvc_struct** %10, align 8
  %57 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %56, i32 0, i32 9
  %58 = call i32 @kref_init(i32* %57)
  %59 = load %struct.hvc_struct*, %struct.hvc_struct** %10, align 8
  %60 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %59, i32 0, i32 8
  %61 = load i32, i32* @hvc_set_winsz, align 4
  %62 = call i32 @INIT_WORK(i32* %60, i32 %61)
  %63 = load %struct.hvc_struct*, %struct.hvc_struct** %10, align 8
  %64 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %63, i32 0, i32 7
  %65 = call i32 @spin_lock_init(i32* %64)
  %66 = call i32 @spin_lock(i32* @hvc_structs_lock)
  store i32 0, i32* %11, align 4
  br label %67

67:                                               ; preds = %93, %37
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* @MAX_NR_HVC_CONSOLES, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %96

71:                                               ; preds = %67
  %72 = load i64*, i64** @vtermnos, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.hvc_struct*, %struct.hvc_struct** %10, align 8
  %78 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %76, %79
  br i1 %80, label %81, label %92

81:                                               ; preds = %71
  %82 = load %struct.hv_ops**, %struct.hv_ops*** @cons_ops, align 8
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.hv_ops*, %struct.hv_ops** %82, i64 %84
  %86 = load %struct.hv_ops*, %struct.hv_ops** %85, align 8
  %87 = load %struct.hvc_struct*, %struct.hvc_struct** %10, align 8
  %88 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %87, i32 0, i32 6
  %89 = load %struct.hv_ops*, %struct.hv_ops** %88, align 8
  %90 = icmp eq %struct.hv_ops* %86, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %81
  br label %96

92:                                               ; preds = %81, %71
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %11, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %11, align 4
  br label %67

96:                                               ; preds = %91, %67
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* @MAX_NR_HVC_CONSOLES, align 4
  %99 = icmp sge i32 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %96
  %101 = load i32, i32* @last_hvc, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* @last_hvc, align 4
  store i32 %102, i32* %11, align 4
  br label %103

103:                                              ; preds = %100, %96
  %104 = load i32, i32* %11, align 4
  %105 = load %struct.hvc_struct*, %struct.hvc_struct** %10, align 8
  %106 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %105, i32 0, i32 4
  store i32 %104, i32* %106, align 8
  %107 = load %struct.hvc_struct*, %struct.hvc_struct** %10, align 8
  %108 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %107, i32 0, i32 5
  %109 = call i32 @list_add_tail(i32* %108, i32* @hvc_structs)
  %110 = call i32 @spin_unlock(i32* @hvc_structs_lock)
  %111 = load %struct.hvc_struct*, %struct.hvc_struct** %10, align 8
  store %struct.hvc_struct* %111, %struct.hvc_struct** %5, align 8
  br label %112

112:                                              ; preds = %103, %33, %19
  %113 = load %struct.hvc_struct*, %struct.hvc_struct** %5, align 8
  ret %struct.hvc_struct* %113
}

declare dso_local i32 @hvc_init(...) #1

declare dso_local %struct.hvc_struct* @ERR_PTR(i32) #1

declare dso_local %struct.hvc_struct* @kzalloc(i32, i32) #1

declare dso_local i64 @ALIGN(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
