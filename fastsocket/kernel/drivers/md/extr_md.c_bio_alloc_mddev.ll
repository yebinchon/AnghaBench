; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_bio_alloc_mddev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_bio_alloc_mddev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32 }
%struct.mddev = type { i32 }

@mddev_bio_destructor = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bio* @bio_alloc_mddev(i32 %0, i32 %1, %struct.mddev* %2) #0 {
  %4 = alloca %struct.bio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mddev*, align 8
  %8 = alloca %struct.bio*, align 8
  %9 = alloca %struct.mddev**, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.mddev* %2, %struct.mddev** %7, align 8
  %10 = load %struct.mddev*, %struct.mddev** %7, align 8
  %11 = icmp ne %struct.mddev* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load %struct.mddev*, %struct.mddev** %7, align 8
  %14 = getelementptr inbounds %struct.mddev, %struct.mddev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %12, %3
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call %struct.bio* @bio_alloc(i32 %18, i32 %19)
  store %struct.bio* %20, %struct.bio** %4, align 8
  br label %42

21:                                               ; preds = %12
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.mddev*, %struct.mddev** %7, align 8
  %25 = getelementptr inbounds %struct.mddev, %struct.mddev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.bio* @bio_alloc_bioset(i32 %22, i32 %23, i32 %26)
  store %struct.bio* %27, %struct.bio** %8, align 8
  %28 = load %struct.bio*, %struct.bio** %8, align 8
  %29 = icmp ne %struct.bio* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %21
  store %struct.bio* null, %struct.bio** %4, align 8
  br label %42

31:                                               ; preds = %21
  %32 = load %struct.bio*, %struct.bio** %8, align 8
  %33 = bitcast %struct.bio* %32 to i8*
  %34 = bitcast i8* %33 to %struct.mddev**
  store %struct.mddev** %34, %struct.mddev*** %9, align 8
  %35 = load %struct.mddev*, %struct.mddev** %7, align 8
  %36 = load %struct.mddev**, %struct.mddev*** %9, align 8
  %37 = getelementptr inbounds %struct.mddev*, %struct.mddev** %36, i64 -1
  store %struct.mddev* %35, %struct.mddev** %37, align 8
  %38 = load i32, i32* @mddev_bio_destructor, align 4
  %39 = load %struct.bio*, %struct.bio** %8, align 8
  %40 = getelementptr inbounds %struct.bio, %struct.bio* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.bio*, %struct.bio** %8, align 8
  store %struct.bio* %41, %struct.bio** %4, align 8
  br label %42

42:                                               ; preds = %31, %30, %17
  %43 = load %struct.bio*, %struct.bio** %4, align 8
  ret %struct.bio* %43
}

declare dso_local %struct.bio* @bio_alloc(i32, i32) #1

declare dso_local %struct.bio* @bio_alloc_bioset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
