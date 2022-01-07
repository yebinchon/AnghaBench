; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_update_min_vdisktime.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_update_min_vdisktime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfq_rb_root = type { i32, i64, i64 }
%struct.cfq_group = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfq_rb_root*)* @update_min_vdisktime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_min_vdisktime(%struct.cfq_rb_root* %0) #0 {
  %2 = alloca %struct.cfq_rb_root*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.cfq_group*, align 8
  store %struct.cfq_rb_root* %0, %struct.cfq_rb_root** %2, align 8
  %5 = load %struct.cfq_rb_root*, %struct.cfq_rb_root** %2, align 8
  %6 = getelementptr inbounds %struct.cfq_rb_root, %struct.cfq_rb_root* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %3, align 4
  %8 = load %struct.cfq_rb_root*, %struct.cfq_rb_root** %2, align 8
  %9 = getelementptr inbounds %struct.cfq_rb_root, %struct.cfq_rb_root* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load %struct.cfq_rb_root*, %struct.cfq_rb_root** %2, align 8
  %14 = getelementptr inbounds %struct.cfq_rb_root, %struct.cfq_rb_root* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = call %struct.cfq_group* @rb_entry_cfqg(i64 %15)
  store %struct.cfq_group* %16, %struct.cfq_group** %4, align 8
  %17 = load %struct.cfq_group*, %struct.cfq_group** %4, align 8
  %18 = getelementptr inbounds %struct.cfq_group, %struct.cfq_group* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %12, %1
  %21 = load %struct.cfq_rb_root*, %struct.cfq_rb_root** %2, align 8
  %22 = getelementptr inbounds %struct.cfq_rb_root, %struct.cfq_rb_root* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %20
  %26 = load %struct.cfq_rb_root*, %struct.cfq_rb_root** %2, align 8
  %27 = getelementptr inbounds %struct.cfq_rb_root, %struct.cfq_rb_root* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call %struct.cfq_group* @rb_entry_cfqg(i64 %28)
  store %struct.cfq_group* %29, %struct.cfq_group** %4, align 8
  %30 = load i32, i32* %3, align 4
  %31 = load %struct.cfq_group*, %struct.cfq_group** %4, align 8
  %32 = getelementptr inbounds %struct.cfq_group, %struct.cfq_group* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @min_vdisktime(i32 %30, i32 %33)
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %25, %20
  %36 = load %struct.cfq_rb_root*, %struct.cfq_rb_root** %2, align 8
  %37 = getelementptr inbounds %struct.cfq_rb_root, %struct.cfq_rb_root* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @max_vdisktime(i32 %38, i32 %39)
  %41 = load %struct.cfq_rb_root*, %struct.cfq_rb_root** %2, align 8
  %42 = getelementptr inbounds %struct.cfq_rb_root, %struct.cfq_rb_root* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  ret void
}

declare dso_local %struct.cfq_group* @rb_entry_cfqg(i64) #1

declare dso_local i32 @min_vdisktime(i32, i32) #1

declare dso_local i32 @max_vdisktime(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
