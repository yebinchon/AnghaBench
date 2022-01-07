; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid1.c_put_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid1.c_put_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r1bio = type { %struct.TYPE_4__*, %struct.bio** }
%struct.TYPE_4__ = type { %struct.r1conf* }
%struct.r1conf = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.bio = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r1bio*)* @put_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_buf(%struct.r1bio* %0) #0 {
  %2 = alloca %struct.r1bio*, align 8
  %3 = alloca %struct.r1conf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bio*, align 8
  store %struct.r1bio* %0, %struct.r1bio** %2, align 8
  %6 = load %struct.r1bio*, %struct.r1bio** %2, align 8
  %7 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.r1conf*, %struct.r1conf** %9, align 8
  store %struct.r1conf* %10, %struct.r1conf** %3, align 8
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %44, %1
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.r1conf*, %struct.r1conf** %3, align 8
  %14 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = mul nsw i32 %15, 2
  %17 = icmp slt i32 %12, %16
  br i1 %17, label %18, label %47

18:                                               ; preds = %11
  %19 = load %struct.r1bio*, %struct.r1bio** %2, align 8
  %20 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %19, i32 0, i32 1
  %21 = load %struct.bio**, %struct.bio*** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.bio*, %struct.bio** %21, i64 %23
  %25 = load %struct.bio*, %struct.bio** %24, align 8
  store %struct.bio* %25, %struct.bio** %5, align 8
  %26 = load %struct.bio*, %struct.bio** %5, align 8
  %27 = getelementptr inbounds %struct.bio, %struct.bio* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %18
  %31 = load %struct.r1conf*, %struct.r1conf** %3, align 8
  %32 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %31, i32 0, i32 2
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.r1bio*, %struct.r1bio** %2, align 8
  %40 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = call i32 @rdev_dec_pending(i32 %38, %struct.TYPE_4__* %41)
  br label %43

43:                                               ; preds = %30, %18
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %11

47:                                               ; preds = %11
  %48 = load %struct.r1bio*, %struct.r1bio** %2, align 8
  %49 = load %struct.r1conf*, %struct.r1conf** %3, align 8
  %50 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @mempool_free(%struct.r1bio* %48, i32 %51)
  %53 = load %struct.r1conf*, %struct.r1conf** %3, align 8
  %54 = call i32 @lower_barrier(%struct.r1conf* %53)
  ret void
}

declare dso_local i32 @rdev_dec_pending(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @mempool_free(%struct.r1bio*, i32) #1

declare dso_local i32 @lower_barrier(%struct.r1conf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
