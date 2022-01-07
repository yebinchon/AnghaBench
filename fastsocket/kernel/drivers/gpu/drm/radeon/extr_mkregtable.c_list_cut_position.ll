; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_mkregtable.c_list_cut_position.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_mkregtable.c_list_cut_position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { %struct.list_head* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.list_head*, %struct.list_head*, %struct.list_head*)* @list_cut_position to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_cut_position(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #0 {
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca %struct.list_head*, align 8
  store %struct.list_head* %0, %struct.list_head** %4, align 8
  store %struct.list_head* %1, %struct.list_head** %5, align 8
  store %struct.list_head* %2, %struct.list_head** %6, align 8
  %7 = load %struct.list_head*, %struct.list_head** %5, align 8
  %8 = call i64 @list_empty(%struct.list_head* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %38

11:                                               ; preds = %3
  %12 = load %struct.list_head*, %struct.list_head** %5, align 8
  %13 = call i64 @list_is_singular(%struct.list_head* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %11
  %16 = load %struct.list_head*, %struct.list_head** %5, align 8
  %17 = getelementptr inbounds %struct.list_head, %struct.list_head* %16, i32 0, i32 0
  %18 = load %struct.list_head*, %struct.list_head** %17, align 8
  %19 = load %struct.list_head*, %struct.list_head** %6, align 8
  %20 = icmp ne %struct.list_head* %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load %struct.list_head*, %struct.list_head** %5, align 8
  %23 = load %struct.list_head*, %struct.list_head** %6, align 8
  %24 = icmp ne %struct.list_head* %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %38

26:                                               ; preds = %21, %15, %11
  %27 = load %struct.list_head*, %struct.list_head** %6, align 8
  %28 = load %struct.list_head*, %struct.list_head** %5, align 8
  %29 = icmp eq %struct.list_head* %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load %struct.list_head*, %struct.list_head** %4, align 8
  %32 = call i32 @INIT_LIST_HEAD(%struct.list_head* %31)
  br label %38

33:                                               ; preds = %26
  %34 = load %struct.list_head*, %struct.list_head** %4, align 8
  %35 = load %struct.list_head*, %struct.list_head** %5, align 8
  %36 = load %struct.list_head*, %struct.list_head** %6, align 8
  %37 = call i32 @__list_cut_position(%struct.list_head* %34, %struct.list_head* %35, %struct.list_head* %36)
  br label %38

38:                                               ; preds = %10, %25, %33, %30
  ret void
}

declare dso_local i64 @list_empty(%struct.list_head*) #1

declare dso_local i64 @list_is_singular(%struct.list_head*) #1

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local i32 @__list_cut_position(%struct.list_head*, %struct.list_head*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
