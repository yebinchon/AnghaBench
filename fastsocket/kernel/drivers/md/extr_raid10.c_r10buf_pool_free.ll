; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid10.c_r10buf_pool_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid10.c_r10buf_pool_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r10conf = type { i32 }
%struct.r10bio = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.bio*, %struct.bio* }
%struct.bio = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }

@RESYNC_PAGES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @r10buf_pool_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r10buf_pool_free(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.r10conf*, align 8
  %7 = alloca %struct.r10bio*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bio*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.r10conf*
  store %struct.r10conf* %11, %struct.r10conf** %6, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = bitcast i8* %12 to %struct.r10bio*
  store %struct.r10bio* %13, %struct.r10bio** %7, align 8
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %74, %2
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.r10conf*, %struct.r10conf** %6, align 8
  %17 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %77

20:                                               ; preds = %14
  %21 = load %struct.r10bio*, %struct.r10bio** %7, align 8
  %22 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load %struct.bio*, %struct.bio** %27, align 8
  store %struct.bio* %28, %struct.bio** %9, align 8
  %29 = load %struct.bio*, %struct.bio** %9, align 8
  %30 = icmp ne %struct.bio* %29, null
  br i1 %30, label %31, label %59

31:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %53, %31
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @RESYNC_PAGES, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %56

36:                                               ; preds = %32
  %37 = load %struct.bio*, %struct.bio** %9, align 8
  %38 = getelementptr inbounds %struct.bio, %struct.bio* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @safe_put_page(i32* %44)
  %46 = load %struct.bio*, %struct.bio** %9, align 8
  %47 = getelementptr inbounds %struct.bio, %struct.bio* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store i32* null, i32** %52, align 8
  br label %53

53:                                               ; preds = %36
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %32

56:                                               ; preds = %32
  %57 = load %struct.bio*, %struct.bio** %9, align 8
  %58 = call i32 @bio_put(%struct.bio* %57)
  br label %59

59:                                               ; preds = %56, %20
  %60 = load %struct.r10bio*, %struct.r10bio** %7, align 8
  %61 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load %struct.bio*, %struct.bio** %66, align 8
  store %struct.bio* %67, %struct.bio** %9, align 8
  %68 = load %struct.bio*, %struct.bio** %9, align 8
  %69 = icmp ne %struct.bio* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %59
  %71 = load %struct.bio*, %struct.bio** %9, align 8
  %72 = call i32 @bio_put(%struct.bio* %71)
  br label %73

73:                                               ; preds = %70, %59
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %8, align 4
  br label %14

77:                                               ; preds = %14
  %78 = load %struct.r10bio*, %struct.r10bio** %7, align 8
  %79 = load %struct.r10conf*, %struct.r10conf** %6, align 8
  %80 = call i32 @r10bio_pool_free(%struct.r10bio* %78, %struct.r10conf* %79)
  ret void
}

declare dso_local i32 @safe_put_page(i32*) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

declare dso_local i32 @r10bio_pool_free(%struct.r10bio*, %struct.r10conf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
