; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_linear.c_linear_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_linear.c_linear_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32, i32, i32, i32, i32 }
%struct.md_rdev = type { i32, i32 }
%struct.linear_conf = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@free_conf = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, %struct.md_rdev*)* @linear_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linear_add(%struct.mddev* %0, %struct.md_rdev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca %struct.md_rdev*, align 8
  %6 = alloca %struct.linear_conf*, align 8
  %7 = alloca %struct.linear_conf*, align 8
  store %struct.mddev* %0, %struct.mddev** %4, align 8
  store %struct.md_rdev* %1, %struct.md_rdev** %5, align 8
  %8 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %9 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.mddev*, %struct.mddev** %4, align 8
  %12 = getelementptr inbounds %struct.mddev, %struct.mddev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %10, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %73

18:                                               ; preds = %2
  %19 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %20 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %23 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %25 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %24, i32 0, i32 0
  store i32 -1, i32* %25, align 4
  %26 = load %struct.mddev*, %struct.mddev** %4, align 8
  %27 = load %struct.mddev*, %struct.mddev** %4, align 8
  %28 = getelementptr inbounds %struct.mddev, %struct.mddev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  %31 = call %struct.linear_conf* @linear_conf(%struct.mddev* %26, i32 %30)
  store %struct.linear_conf* %31, %struct.linear_conf** %6, align 8
  %32 = load %struct.linear_conf*, %struct.linear_conf** %6, align 8
  %33 = icmp ne %struct.linear_conf* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %18
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %73

37:                                               ; preds = %18
  %38 = load %struct.mddev*, %struct.mddev** %4, align 8
  %39 = getelementptr inbounds %struct.mddev, %struct.mddev* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.mddev*, %struct.mddev** %4, align 8
  %42 = getelementptr inbounds %struct.mddev, %struct.mddev* %41, i32 0, i32 4
  %43 = call i32 @lockdep_is_held(i32* %42)
  %44 = call %struct.linear_conf* @rcu_dereference_protected(i32 %40, i32 %43)
  store %struct.linear_conf* %44, %struct.linear_conf** %7, align 8
  %45 = load %struct.mddev*, %struct.mddev** %4, align 8
  %46 = getelementptr inbounds %struct.mddev, %struct.mddev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  %49 = load %struct.mddev*, %struct.mddev** %4, align 8
  %50 = getelementptr inbounds %struct.mddev, %struct.mddev* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.linear_conf*, %struct.linear_conf** %6, align 8
  %53 = call i32 @rcu_assign_pointer(i32 %51, %struct.linear_conf* %52)
  %54 = load %struct.mddev*, %struct.mddev** %4, align 8
  %55 = load %struct.mddev*, %struct.mddev** %4, align 8
  %56 = call i32 @linear_size(%struct.mddev* %55, i32 0, i32 0)
  %57 = call i32 @md_set_array_sectors(%struct.mddev* %54, i32 %56)
  %58 = load %struct.mddev*, %struct.mddev** %4, align 8
  %59 = getelementptr inbounds %struct.mddev, %struct.mddev* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.mddev*, %struct.mddev** %4, align 8
  %62 = getelementptr inbounds %struct.mddev, %struct.mddev* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @set_capacity(i32 %60, i32 %63)
  %65 = load %struct.mddev*, %struct.mddev** %4, align 8
  %66 = getelementptr inbounds %struct.mddev, %struct.mddev* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @revalidate_disk(i32 %67)
  %69 = load %struct.linear_conf*, %struct.linear_conf** %7, align 8
  %70 = getelementptr inbounds %struct.linear_conf, %struct.linear_conf* %69, i32 0, i32 0
  %71 = load i32, i32* @free_conf, align 4
  %72 = call i32 @call_rcu(i32* %70, i32 %71)
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %37, %34, %15
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.linear_conf* @linear_conf(%struct.mddev*, i32) #1

declare dso_local %struct.linear_conf* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.linear_conf*) #1

declare dso_local i32 @md_set_array_sectors(%struct.mddev*, i32) #1

declare dso_local i32 @linear_size(%struct.mddev*, i32, i32) #1

declare dso_local i32 @set_capacity(i32, i32) #1

declare dso_local i32 @revalidate_disk(i32) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
