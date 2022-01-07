; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/iseries/extr_viopath.c_vio_lookup_rc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/iseries/extr_viopath.c_vio_lookup_rc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vio_error_entry = type { i64 }

@vio_no_error = common dso_local global %struct.vio_error_entry zeroinitializer, align 8
@vio_default_errors = common dso_local global %struct.vio_error_entry* null, align 8
@vio_unknown_error = common dso_local global %struct.vio_error_entry zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vio_error_entry* @vio_lookup_rc(%struct.vio_error_entry* %0, i64 %1) #0 {
  %3 = alloca %struct.vio_error_entry*, align 8
  %4 = alloca %struct.vio_error_entry*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.vio_error_entry*, align 8
  store %struct.vio_error_entry* %0, %struct.vio_error_entry** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store %struct.vio_error_entry* @vio_no_error, %struct.vio_error_entry** %3, align 8
  br label %53

10:                                               ; preds = %2
  %11 = load %struct.vio_error_entry*, %struct.vio_error_entry** %4, align 8
  %12 = icmp ne %struct.vio_error_entry* %11, null
  br i1 %12, label %13, label %33

13:                                               ; preds = %10
  %14 = load %struct.vio_error_entry*, %struct.vio_error_entry** %4, align 8
  store %struct.vio_error_entry* %14, %struct.vio_error_entry** %6, align 8
  br label %15

15:                                               ; preds = %29, %13
  %16 = load %struct.vio_error_entry*, %struct.vio_error_entry** %6, align 8
  %17 = getelementptr inbounds %struct.vio_error_entry, %struct.vio_error_entry* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %15
  %21 = load %struct.vio_error_entry*, %struct.vio_error_entry** %6, align 8
  %22 = getelementptr inbounds %struct.vio_error_entry, %struct.vio_error_entry* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load %struct.vio_error_entry*, %struct.vio_error_entry** %6, align 8
  store %struct.vio_error_entry* %27, %struct.vio_error_entry** %3, align 8
  br label %53

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %28
  %30 = load %struct.vio_error_entry*, %struct.vio_error_entry** %6, align 8
  %31 = getelementptr inbounds %struct.vio_error_entry, %struct.vio_error_entry* %30, i32 1
  store %struct.vio_error_entry* %31, %struct.vio_error_entry** %6, align 8
  br label %15

32:                                               ; preds = %15
  br label %33

33:                                               ; preds = %32, %10
  %34 = load %struct.vio_error_entry*, %struct.vio_error_entry** @vio_default_errors, align 8
  store %struct.vio_error_entry* %34, %struct.vio_error_entry** %6, align 8
  br label %35

35:                                               ; preds = %49, %33
  %36 = load %struct.vio_error_entry*, %struct.vio_error_entry** %6, align 8
  %37 = getelementptr inbounds %struct.vio_error_entry, %struct.vio_error_entry* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %35
  %41 = load %struct.vio_error_entry*, %struct.vio_error_entry** %6, align 8
  %42 = getelementptr inbounds %struct.vio_error_entry, %struct.vio_error_entry* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %5, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load %struct.vio_error_entry*, %struct.vio_error_entry** %6, align 8
  store %struct.vio_error_entry* %47, %struct.vio_error_entry** %3, align 8
  br label %53

48:                                               ; preds = %40
  br label %49

49:                                               ; preds = %48
  %50 = load %struct.vio_error_entry*, %struct.vio_error_entry** %6, align 8
  %51 = getelementptr inbounds %struct.vio_error_entry, %struct.vio_error_entry* %50, i32 1
  store %struct.vio_error_entry* %51, %struct.vio_error_entry** %6, align 8
  br label %35

52:                                               ; preds = %35
  store %struct.vio_error_entry* @vio_unknown_error, %struct.vio_error_entry** %3, align 8
  br label %53

53:                                               ; preds = %52, %46, %26, %9
  %54 = load %struct.vio_error_entry*, %struct.vio_error_entry** %3, align 8
  ret %struct.vio_error_entry* %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
