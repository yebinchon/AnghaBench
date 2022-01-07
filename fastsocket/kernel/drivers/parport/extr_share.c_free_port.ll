; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/parport/extr_share.c_free_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/parport/extr_share.c_free_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parport = type { %struct.parport*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.parport*, %struct.parport*, %struct.parport*, %struct.parport*, %struct.parport* }

@full_list_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parport*)* @free_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_port(%struct.parport* %0) #0 {
  %2 = alloca %struct.parport*, align 8
  %3 = alloca i32, align 4
  store %struct.parport* %0, %struct.parport** %2, align 8
  %4 = call i32 @spin_lock(i32* @full_list_lock)
  %5 = load %struct.parport*, %struct.parport** %2, align 8
  %6 = getelementptr inbounds %struct.parport, %struct.parport* %5, i32 0, i32 2
  %7 = call i32 @list_del(i32* %6)
  %8 = call i32 @spin_unlock(i32* @full_list_lock)
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %58, %1
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %10, 5
  br i1 %11, label %12, label %61

12:                                               ; preds = %9
  %13 = load %struct.parport*, %struct.parport** %2, align 8
  %14 = getelementptr inbounds %struct.parport, %struct.parport* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 4
  %20 = load %struct.parport*, %struct.parport** %19, align 8
  %21 = call i32 @kfree(%struct.parport* %20)
  %22 = load %struct.parport*, %struct.parport** %2, align 8
  %23 = getelementptr inbounds %struct.parport, %struct.parport* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 3
  %29 = load %struct.parport*, %struct.parport** %28, align 8
  %30 = call i32 @kfree(%struct.parport* %29)
  %31 = load %struct.parport*, %struct.parport** %2, align 8
  %32 = getelementptr inbounds %struct.parport, %struct.parport* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load %struct.parport*, %struct.parport** %37, align 8
  %39 = call i32 @kfree(%struct.parport* %38)
  %40 = load %struct.parport*, %struct.parport** %2, align 8
  %41 = getelementptr inbounds %struct.parport, %struct.parport* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load %struct.parport*, %struct.parport** %46, align 8
  %48 = call i32 @kfree(%struct.parport* %47)
  %49 = load %struct.parport*, %struct.parport** %2, align 8
  %50 = getelementptr inbounds %struct.parport, %struct.parport* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load %struct.parport*, %struct.parport** %55, align 8
  %57 = call i32 @kfree(%struct.parport* %56)
  br label %58

58:                                               ; preds = %12
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %3, align 4
  br label %9

61:                                               ; preds = %9
  %62 = load %struct.parport*, %struct.parport** %2, align 8
  %63 = getelementptr inbounds %struct.parport, %struct.parport* %62, i32 0, i32 0
  %64 = load %struct.parport*, %struct.parport** %63, align 8
  %65 = call i32 @kfree(%struct.parport* %64)
  %66 = load %struct.parport*, %struct.parport** %2, align 8
  %67 = call i32 @kfree(%struct.parport* %66)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.parport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
