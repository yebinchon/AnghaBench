; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-btree-spine.c_ro_step.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-btree-spine.c_ro_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ro_spine = type { i32, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ro_step(%struct.ro_spine* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ro_spine*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ro_spine* %0, %struct.ro_spine** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ro_spine*, %struct.ro_spine** %4, align 8
  %8 = getelementptr inbounds %struct.ro_spine, %struct.ro_spine* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %39

11:                                               ; preds = %2
  %12 = load %struct.ro_spine*, %struct.ro_spine** %4, align 8
  %13 = getelementptr inbounds %struct.ro_spine, %struct.ro_spine* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.ro_spine*, %struct.ro_spine** %4, align 8
  %16 = getelementptr inbounds %struct.ro_spine, %struct.ro_spine* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @unlock_block(i32 %14, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %11
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %62

25:                                               ; preds = %11
  %26 = load %struct.ro_spine*, %struct.ro_spine** %4, align 8
  %27 = getelementptr inbounds %struct.ro_spine, %struct.ro_spine* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ro_spine*, %struct.ro_spine** %4, align 8
  %32 = getelementptr inbounds %struct.ro_spine, %struct.ro_spine* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  store i32 %30, i32* %34, align 4
  %35 = load %struct.ro_spine*, %struct.ro_spine** %4, align 8
  %36 = getelementptr inbounds %struct.ro_spine, %struct.ro_spine* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %36, align 8
  br label %39

39:                                               ; preds = %25, %2
  %40 = load %struct.ro_spine*, %struct.ro_spine** %4, align 8
  %41 = getelementptr inbounds %struct.ro_spine, %struct.ro_spine* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.ro_spine*, %struct.ro_spine** %4, align 8
  %45 = getelementptr inbounds %struct.ro_spine, %struct.ro_spine* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.ro_spine*, %struct.ro_spine** %4, align 8
  %48 = getelementptr inbounds %struct.ro_spine, %struct.ro_spine* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %46, i64 %50
  %52 = call i32 @bn_read_lock(i32 %42, i32 %43, i32* %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %39
  %56 = load %struct.ro_spine*, %struct.ro_spine** %4, align 8
  %57 = getelementptr inbounds %struct.ro_spine, %struct.ro_spine* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 8
  br label %60

60:                                               ; preds = %55, %39
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %60, %23
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @unlock_block(i32, i32) #1

declare dso_local i32 @bn_read_lock(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
