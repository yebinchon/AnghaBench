; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/lguest/extr_lguest_user.c_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/lguest/extr_lguest_user.c_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.lguest* }
%struct.lguest = type { i32, i32, %struct.lguest*, %struct.lguest*, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@lguest_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @close(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.lguest*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %8 = load %struct.file*, %struct.file** %5, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load %struct.lguest*, %struct.lguest** %9, align 8
  store %struct.lguest* %10, %struct.lguest** %6, align 8
  %11 = load %struct.lguest*, %struct.lguest** %6, align 8
  %12 = icmp ne %struct.lguest* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %97

14:                                               ; preds = %2
  %15 = call i32 @mutex_lock(i32* @lguest_lock)
  %16 = load %struct.lguest*, %struct.lguest** %6, align 8
  %17 = call i32 @free_guest_pagetable(%struct.lguest* %16)
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %51, %14
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.lguest*, %struct.lguest** %6, align 8
  %21 = getelementptr inbounds %struct.lguest, %struct.lguest* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ult i32 %19, %22
  br i1 %23, label %24, label %54

24:                                               ; preds = %18
  %25 = load %struct.lguest*, %struct.lguest** %6, align 8
  %26 = getelementptr inbounds %struct.lguest, %struct.lguest* %25, i32 0, i32 5
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = call i32 @hrtimer_cancel(i32* %31)
  %33 = load %struct.lguest*, %struct.lguest** %6, align 8
  %34 = getelementptr inbounds %struct.lguest, %struct.lguest* %33, i32 0, i32 5
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @free_page(i32 %40)
  %42 = load %struct.lguest*, %struct.lguest** %6, align 8
  %43 = getelementptr inbounds %struct.lguest, %struct.lguest* %42, i32 0, i32 5
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @mmput(i32 %49)
  br label %51

51:                                               ; preds = %24
  %52 = load i32, i32* %7, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %18

54:                                               ; preds = %18
  store i32 0, i32* %7, align 4
  br label %55

55:                                               ; preds = %75, %54
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.lguest*, %struct.lguest** %6, align 8
  %58 = getelementptr inbounds %struct.lguest, %struct.lguest* %57, i32 0, i32 3
  %59 = load %struct.lguest*, %struct.lguest** %58, align 8
  %60 = getelementptr inbounds %struct.lguest, %struct.lguest* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp ult i32 %56, %61
  br i1 %62, label %63, label %78

63:                                               ; preds = %55
  %64 = load %struct.lguest*, %struct.lguest** %6, align 8
  %65 = getelementptr inbounds %struct.lguest, %struct.lguest* %64, i32 0, i32 3
  %66 = load %struct.lguest*, %struct.lguest** %65, align 8
  %67 = getelementptr inbounds %struct.lguest, %struct.lguest* %66, i32 0, i32 4
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @eventfd_ctx_put(i32 %73)
  br label %75

75:                                               ; preds = %63
  %76 = load i32, i32* %7, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %55

78:                                               ; preds = %55
  %79 = load %struct.lguest*, %struct.lguest** %6, align 8
  %80 = getelementptr inbounds %struct.lguest, %struct.lguest* %79, i32 0, i32 3
  %81 = load %struct.lguest*, %struct.lguest** %80, align 8
  %82 = call i32 @kfree(%struct.lguest* %81)
  %83 = load %struct.lguest*, %struct.lguest** %6, align 8
  %84 = getelementptr inbounds %struct.lguest, %struct.lguest* %83, i32 0, i32 2
  %85 = load %struct.lguest*, %struct.lguest** %84, align 8
  %86 = call i32 @IS_ERR(%struct.lguest* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %78
  %89 = load %struct.lguest*, %struct.lguest** %6, align 8
  %90 = getelementptr inbounds %struct.lguest, %struct.lguest* %89, i32 0, i32 2
  %91 = load %struct.lguest*, %struct.lguest** %90, align 8
  %92 = call i32 @kfree(%struct.lguest* %91)
  br label %93

93:                                               ; preds = %88, %78
  %94 = load %struct.lguest*, %struct.lguest** %6, align 8
  %95 = call i32 @kfree(%struct.lguest* %94)
  %96 = call i32 @mutex_unlock(i32* @lguest_lock)
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %93, %13
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @free_guest_pagetable(%struct.lguest*) #1

declare dso_local i32 @hrtimer_cancel(i32*) #1

declare dso_local i32 @free_page(i32) #1

declare dso_local i32 @mmput(i32) #1

declare dso_local i32 @eventfd_ctx_put(i32) #1

declare dso_local i32 @kfree(%struct.lguest*) #1

declare dso_local i32 @IS_ERR(%struct.lguest*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
