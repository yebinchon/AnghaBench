; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap-persistent.c_free_area.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap-persistent.c_free_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pstore = type { i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pstore*)* @free_area to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_area(%struct.pstore* %0) #0 {
  %2 = alloca %struct.pstore*, align 8
  store %struct.pstore* %0, %struct.pstore** %2, align 8
  %3 = load %struct.pstore*, %struct.pstore** %2, align 8
  %4 = getelementptr inbounds %struct.pstore, %struct.pstore* %3, i32 0, i32 2
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.pstore*, %struct.pstore** %2, align 8
  %9 = getelementptr inbounds %struct.pstore, %struct.pstore* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @vfree(i32* %10)
  br label %12

12:                                               ; preds = %7, %1
  %13 = load %struct.pstore*, %struct.pstore** %2, align 8
  %14 = getelementptr inbounds %struct.pstore, %struct.pstore* %13, i32 0, i32 2
  store i32* null, i32** %14, align 8
  %15 = load %struct.pstore*, %struct.pstore** %2, align 8
  %16 = getelementptr inbounds %struct.pstore, %struct.pstore* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %12
  %20 = load %struct.pstore*, %struct.pstore** %2, align 8
  %21 = getelementptr inbounds %struct.pstore, %struct.pstore* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @vfree(i32* %22)
  br label %24

24:                                               ; preds = %19, %12
  %25 = load %struct.pstore*, %struct.pstore** %2, align 8
  %26 = getelementptr inbounds %struct.pstore, %struct.pstore* %25, i32 0, i32 1
  store i32* null, i32** %26, align 8
  %27 = load %struct.pstore*, %struct.pstore** %2, align 8
  %28 = getelementptr inbounds %struct.pstore, %struct.pstore* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load %struct.pstore*, %struct.pstore** %2, align 8
  %33 = getelementptr inbounds %struct.pstore, %struct.pstore* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @vfree(i32* %34)
  br label %36

36:                                               ; preds = %31, %24
  %37 = load %struct.pstore*, %struct.pstore** %2, align 8
  %38 = getelementptr inbounds %struct.pstore, %struct.pstore* %37, i32 0, i32 0
  store i32* null, i32** %38, align 8
  ret void
}

declare dso_local i32 @vfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
