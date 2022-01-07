; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_bio_clone_mddev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_bio_clone_mddev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, i32 }
%struct.mddev = type { i32 }

@mddev_bio_destructor = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bio* @bio_clone_mddev(%struct.bio* %0, i32 %1, %struct.mddev* %2) #0 {
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mddev*, align 8
  %8 = alloca %struct.bio*, align 8
  %9 = alloca %struct.mddev**, align 8
  %10 = alloca i32, align 4
  store %struct.bio* %0, %struct.bio** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mddev* %2, %struct.mddev** %7, align 8
  %11 = load %struct.mddev*, %struct.mddev** %7, align 8
  %12 = icmp ne %struct.mddev* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load %struct.mddev*, %struct.mddev** %7, align 8
  %15 = getelementptr inbounds %struct.mddev, %struct.mddev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %13, %3
  %19 = load %struct.bio*, %struct.bio** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call %struct.bio* @bio_clone(%struct.bio* %19, i32 %20)
  store %struct.bio* %21, %struct.bio** %4, align 8
  br label %66

22:                                               ; preds = %13
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.bio*, %struct.bio** %5, align 8
  %25 = getelementptr inbounds %struct.bio, %struct.bio* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.mddev*, %struct.mddev** %7, align 8
  %28 = getelementptr inbounds %struct.mddev, %struct.mddev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.bio* @bio_alloc_bioset(i32 %23, i32 %26, i32 %29)
  store %struct.bio* %30, %struct.bio** %8, align 8
  %31 = load %struct.bio*, %struct.bio** %8, align 8
  %32 = icmp ne %struct.bio* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %22
  store %struct.bio* null, %struct.bio** %4, align 8
  br label %66

34:                                               ; preds = %22
  %35 = load %struct.bio*, %struct.bio** %8, align 8
  %36 = bitcast %struct.bio* %35 to i8*
  %37 = bitcast i8* %36 to %struct.mddev**
  store %struct.mddev** %37, %struct.mddev*** %9, align 8
  %38 = load %struct.mddev*, %struct.mddev** %7, align 8
  %39 = load %struct.mddev**, %struct.mddev*** %9, align 8
  %40 = getelementptr inbounds %struct.mddev*, %struct.mddev** %39, i64 -1
  store %struct.mddev* %38, %struct.mddev** %40, align 8
  %41 = load i32, i32* @mddev_bio_destructor, align 4
  %42 = load %struct.bio*, %struct.bio** %8, align 8
  %43 = getelementptr inbounds %struct.bio, %struct.bio* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.bio*, %struct.bio** %8, align 8
  %45 = load %struct.bio*, %struct.bio** %5, align 8
  %46 = call i32 @__bio_clone(%struct.bio* %44, %struct.bio* %45)
  %47 = load %struct.bio*, %struct.bio** %5, align 8
  %48 = call i64 @bio_integrity(%struct.bio* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %34
  %51 = load %struct.bio*, %struct.bio** %8, align 8
  %52 = load %struct.bio*, %struct.bio** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.mddev*, %struct.mddev** %7, align 8
  %55 = getelementptr inbounds %struct.mddev, %struct.mddev* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @bio_integrity_clone(%struct.bio* %51, %struct.bio* %52, i32 %53, i32 %56)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %50
  %61 = load %struct.bio*, %struct.bio** %8, align 8
  %62 = call i32 @bio_put(%struct.bio* %61)
  store %struct.bio* null, %struct.bio** %4, align 8
  br label %66

63:                                               ; preds = %50
  br label %64

64:                                               ; preds = %63, %34
  %65 = load %struct.bio*, %struct.bio** %8, align 8
  store %struct.bio* %65, %struct.bio** %4, align 8
  br label %66

66:                                               ; preds = %64, %60, %33, %18
  %67 = load %struct.bio*, %struct.bio** %4, align 8
  ret %struct.bio* %67
}

declare dso_local %struct.bio* @bio_clone(%struct.bio*, i32) #1

declare dso_local %struct.bio* @bio_alloc_bioset(i32, i32, i32) #1

declare dso_local i32 @__bio_clone(%struct.bio*, %struct.bio*) #1

declare dso_local i64 @bio_integrity(%struct.bio*) #1

declare dso_local i32 @bio_integrity_clone(%struct.bio*, %struct.bio*, i32, i32) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
