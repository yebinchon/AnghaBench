; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_get_next_cfqg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_get_next_cfqg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfq_group = type { i32 }
%struct.cfq_data = type { %struct.cfq_rb_root }
%struct.cfq_rb_root = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cfq_group* (%struct.cfq_data*)* @cfq_get_next_cfqg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cfq_group* @cfq_get_next_cfqg(%struct.cfq_data* %0) #0 {
  %2 = alloca %struct.cfq_group*, align 8
  %3 = alloca %struct.cfq_data*, align 8
  %4 = alloca %struct.cfq_rb_root*, align 8
  %5 = alloca %struct.cfq_group*, align 8
  store %struct.cfq_data* %0, %struct.cfq_data** %3, align 8
  %6 = load %struct.cfq_data*, %struct.cfq_data** %3, align 8
  %7 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %6, i32 0, i32 0
  store %struct.cfq_rb_root* %7, %struct.cfq_rb_root** %4, align 8
  %8 = load %struct.cfq_rb_root*, %struct.cfq_rb_root** %4, align 8
  %9 = getelementptr inbounds %struct.cfq_rb_root, %struct.cfq_rb_root* %8, i32 0, i32 1
  %10 = call i64 @RB_EMPTY_ROOT(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store %struct.cfq_group* null, %struct.cfq_group** %2, align 8
  br label %23

13:                                               ; preds = %1
  %14 = load %struct.cfq_rb_root*, %struct.cfq_rb_root** %4, align 8
  %15 = call %struct.cfq_group* @cfq_rb_first_group(%struct.cfq_rb_root* %14)
  store %struct.cfq_group* %15, %struct.cfq_group** %5, align 8
  %16 = load %struct.cfq_group*, %struct.cfq_group** %5, align 8
  %17 = getelementptr inbounds %struct.cfq_group, %struct.cfq_group* %16, i32 0, i32 0
  %18 = load %struct.cfq_rb_root*, %struct.cfq_rb_root** %4, align 8
  %19 = getelementptr inbounds %struct.cfq_rb_root, %struct.cfq_rb_root* %18, i32 0, i32 0
  store i32* %17, i32** %19, align 8
  %20 = load %struct.cfq_rb_root*, %struct.cfq_rb_root** %4, align 8
  %21 = call i32 @update_min_vdisktime(%struct.cfq_rb_root* %20)
  %22 = load %struct.cfq_group*, %struct.cfq_group** %5, align 8
  store %struct.cfq_group* %22, %struct.cfq_group** %2, align 8
  br label %23

23:                                               ; preds = %13, %12
  %24 = load %struct.cfq_group*, %struct.cfq_group** %2, align 8
  ret %struct.cfq_group* %24
}

declare dso_local i64 @RB_EMPTY_ROOT(i32*) #1

declare dso_local %struct.cfq_group* @cfq_rb_first_group(%struct.cfq_rb_root*) #1

declare dso_local i32 @update_min_vdisktime(%struct.cfq_rb_root*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
