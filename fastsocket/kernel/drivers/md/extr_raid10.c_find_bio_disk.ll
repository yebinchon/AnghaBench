; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid10.c_find_bio_disk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid10.c_find_bio_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r10conf = type { i32 }
%struct.r10bio = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.bio*, %struct.bio* }
%struct.bio = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r10conf*, %struct.r10bio*, %struct.bio*, i32*, i32*)* @find_bio_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_bio_disk(%struct.r10conf* %0, %struct.r10bio* %1, %struct.bio* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.r10conf*, align 8
  %7 = alloca %struct.r10bio*, align 8
  %8 = alloca %struct.bio*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.r10conf* %0, %struct.r10conf** %6, align 8
  store %struct.r10bio* %1, %struct.r10bio** %7, align 8
  store %struct.bio* %2, %struct.bio** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %13

13:                                               ; preds = %44, %5
  %14 = load i32, i32* %11, align 4
  %15 = load %struct.r10conf*, %struct.r10conf** %6, align 8
  %16 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %47

19:                                               ; preds = %13
  %20 = load %struct.r10bio*, %struct.r10bio** %7, align 8
  %21 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %11, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load %struct.bio*, %struct.bio** %26, align 8
  %28 = load %struct.bio*, %struct.bio** %8, align 8
  %29 = icmp eq %struct.bio* %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  br label %47

31:                                               ; preds = %19
  %32 = load %struct.r10bio*, %struct.r10bio** %7, align 8
  %33 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load %struct.bio*, %struct.bio** %38, align 8
  %40 = load %struct.bio*, %struct.bio** %8, align 8
  %41 = icmp eq %struct.bio* %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  store i32 1, i32* %12, align 4
  br label %47

43:                                               ; preds = %31
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %11, align 4
  br label %13

47:                                               ; preds = %42, %30, %13
  %48 = load i32, i32* %11, align 4
  %49 = load %struct.r10conf*, %struct.r10conf** %6, align 8
  %50 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %48, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @BUG_ON(i32 %53)
  %55 = load i32, i32* %11, align 4
  %56 = load %struct.r10bio*, %struct.r10bio** %7, align 8
  %57 = call i32 @update_head_pos(i32 %55, %struct.r10bio* %56)
  %58 = load i32*, i32** %9, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %47
  %61 = load i32, i32* %11, align 4
  %62 = load i32*, i32** %9, align 8
  store i32 %61, i32* %62, align 4
  br label %63

63:                                               ; preds = %60, %47
  %64 = load i32*, i32** %10, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32, i32* %12, align 4
  %68 = load i32*, i32** %10, align 8
  store i32 %67, i32* %68, align 4
  br label %69

69:                                               ; preds = %66, %63
  %70 = load %struct.r10bio*, %struct.r10bio** %7, align 8
  %71 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  ret i32 %77
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @update_head_pos(i32, %struct.r10bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
