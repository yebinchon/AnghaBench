; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin.c___extract_sorted_bios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin.c___extract_sorted_bios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thin_c = type { i32, i32 }
%struct.rb_node = type { i32 }
%struct.dm_thin_endio_hook = type { i32 }
%struct.bio = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thin_c*)* @__extract_sorted_bios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__extract_sorted_bios(%struct.thin_c* %0) #0 {
  %2 = alloca %struct.thin_c*, align 8
  %3 = alloca %struct.rb_node*, align 8
  %4 = alloca %struct.dm_thin_endio_hook*, align 8
  %5 = alloca %struct.bio*, align 8
  store %struct.thin_c* %0, %struct.thin_c** %2, align 8
  %6 = load %struct.thin_c*, %struct.thin_c** %2, align 8
  %7 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %6, i32 0, i32 0
  %8 = call %struct.rb_node* @rb_first(i32* %7)
  store %struct.rb_node* %8, %struct.rb_node** %3, align 8
  br label %9

9:                                                ; preds = %26, %1
  %10 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %11 = icmp ne %struct.rb_node* %10, null
  br i1 %11, label %12, label %29

12:                                               ; preds = %9
  %13 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %14 = call %struct.dm_thin_endio_hook* @thin_pbd(%struct.rb_node* %13)
  store %struct.dm_thin_endio_hook* %14, %struct.dm_thin_endio_hook** %4, align 8
  %15 = load %struct.dm_thin_endio_hook*, %struct.dm_thin_endio_hook** %4, align 8
  %16 = call %struct.bio* @thin_bio(%struct.dm_thin_endio_hook* %15)
  store %struct.bio* %16, %struct.bio** %5, align 8
  %17 = load %struct.thin_c*, %struct.thin_c** %2, align 8
  %18 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %17, i32 0, i32 1
  %19 = load %struct.bio*, %struct.bio** %5, align 8
  %20 = call i32 @bio_list_add(i32* %18, %struct.bio* %19)
  %21 = load %struct.dm_thin_endio_hook*, %struct.dm_thin_endio_hook** %4, align 8
  %22 = getelementptr inbounds %struct.dm_thin_endio_hook, %struct.dm_thin_endio_hook* %21, i32 0, i32 0
  %23 = load %struct.thin_c*, %struct.thin_c** %2, align 8
  %24 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %23, i32 0, i32 0
  %25 = call i32 @rb_erase(i32* %22, i32* %24)
  br label %26

26:                                               ; preds = %12
  %27 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %28 = call %struct.rb_node* @rb_next(%struct.rb_node* %27)
  store %struct.rb_node* %28, %struct.rb_node** %3, align 8
  br label %9

29:                                               ; preds = %9
  %30 = load %struct.thin_c*, %struct.thin_c** %2, align 8
  %31 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %30, i32 0, i32 0
  %32 = call i32 @RB_EMPTY_ROOT(i32* %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i32 @WARN_ON(i32 %35)
  ret void
}

declare dso_local %struct.rb_node* @rb_first(i32*) #1

declare dso_local %struct.dm_thin_endio_hook* @thin_pbd(%struct.rb_node*) #1

declare dso_local %struct.bio* @thin_bio(%struct.dm_thin_endio_hook*) #1

declare dso_local i32 @bio_list_add(i32*, %struct.bio*) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local %struct.rb_node* @rb_next(%struct.rb_node*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @RB_EMPTY_ROOT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
