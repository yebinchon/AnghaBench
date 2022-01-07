; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_rb_first_group.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_rb_first_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfq_group = type { i32 }
%struct.cfq_rb_root = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cfq_group* (%struct.cfq_rb_root*)* @cfq_rb_first_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cfq_group* @cfq_rb_first_group(%struct.cfq_rb_root* %0) #0 {
  %2 = alloca %struct.cfq_group*, align 8
  %3 = alloca %struct.cfq_rb_root*, align 8
  store %struct.cfq_rb_root* %0, %struct.cfq_rb_root** %3, align 8
  %4 = load %struct.cfq_rb_root*, %struct.cfq_rb_root** %3, align 8
  %5 = getelementptr inbounds %struct.cfq_rb_root, %struct.cfq_rb_root* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = load %struct.cfq_rb_root*, %struct.cfq_rb_root** %3, align 8
  %10 = getelementptr inbounds %struct.cfq_rb_root, %struct.cfq_rb_root* %9, i32 0, i32 1
  %11 = call i64 @rb_first(i32* %10)
  %12 = load %struct.cfq_rb_root*, %struct.cfq_rb_root** %3, align 8
  %13 = getelementptr inbounds %struct.cfq_rb_root, %struct.cfq_rb_root* %12, i32 0, i32 0
  store i64 %11, i64* %13, align 8
  br label %14

14:                                               ; preds = %8, %1
  %15 = load %struct.cfq_rb_root*, %struct.cfq_rb_root** %3, align 8
  %16 = getelementptr inbounds %struct.cfq_rb_root, %struct.cfq_rb_root* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.cfq_rb_root*, %struct.cfq_rb_root** %3, align 8
  %21 = getelementptr inbounds %struct.cfq_rb_root, %struct.cfq_rb_root* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call %struct.cfq_group* @rb_entry_cfqg(i64 %22)
  store %struct.cfq_group* %23, %struct.cfq_group** %2, align 8
  br label %25

24:                                               ; preds = %14
  store %struct.cfq_group* null, %struct.cfq_group** %2, align 8
  br label %25

25:                                               ; preds = %24, %19
  %26 = load %struct.cfq_group*, %struct.cfq_group** %2, align 8
  ret %struct.cfq_group* %26
}

declare dso_local i64 @rb_first(i32*) #1

declare dso_local %struct.cfq_group* @rb_entry_cfqg(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
