; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid1.c_close_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid1.c_close_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r1bio = type { i32, %struct.TYPE_3__*, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@R1BIO_BehindIO = common dso_local global i32 0, align 4
@R1BIO_Degraded = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r1bio*)* @close_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @close_write(%struct.r1bio* %0) #0 {
  %2 = alloca %struct.r1bio*, align 8
  %3 = alloca i32, align 4
  store %struct.r1bio* %0, %struct.r1bio** %2, align 8
  %4 = load i32, i32* @R1BIO_BehindIO, align 4
  %5 = load %struct.r1bio*, %struct.r1bio** %2, align 8
  %6 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %5, i32 0, i32 2
  %7 = call i64 @test_bit(i32 %4, i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %34

9:                                                ; preds = %1
  %10 = load %struct.r1bio*, %struct.r1bio** %2, align 8
  %11 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %3, align 4
  br label %13

13:                                               ; preds = %17, %9
  %14 = load i32, i32* %3, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %3, align 4
  %16 = icmp ne i32 %14, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %13
  %18 = load %struct.r1bio*, %struct.r1bio** %2, align 8
  %19 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %18, i32 0, i32 5
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @safe_put_page(i32 %25)
  br label %13

27:                                               ; preds = %13
  %28 = load %struct.r1bio*, %struct.r1bio** %2, align 8
  %29 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %28, i32 0, i32 5
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = call i32 @kfree(%struct.TYPE_4__* %30)
  %32 = load %struct.r1bio*, %struct.r1bio** %2, align 8
  %33 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %32, i32 0, i32 5
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %33, align 8
  br label %34

34:                                               ; preds = %27, %1
  %35 = load %struct.r1bio*, %struct.r1bio** %2, align 8
  %36 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %35, i32 0, i32 1
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.r1bio*, %struct.r1bio** %2, align 8
  %41 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.r1bio*, %struct.r1bio** %2, align 8
  %44 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @R1BIO_Degraded, align 4
  %47 = load %struct.r1bio*, %struct.r1bio** %2, align 8
  %48 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %47, i32 0, i32 2
  %49 = call i64 @test_bit(i32 %46, i32* %48)
  %50 = icmp ne i64 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = load i32, i32* @R1BIO_BehindIO, align 4
  %54 = load %struct.r1bio*, %struct.r1bio** %2, align 8
  %55 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %54, i32 0, i32 2
  %56 = call i64 @test_bit(i32 %53, i32* %55)
  %57 = call i32 @bitmap_endwrite(i32 %39, i32 %42, i32 %45, i32 %52, i64 %56)
  %58 = load %struct.r1bio*, %struct.r1bio** %2, align 8
  %59 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %58, i32 0, i32 1
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = call i32 @md_write_end(%struct.TYPE_3__* %60)
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @safe_put_page(i32) #1

declare dso_local i32 @kfree(%struct.TYPE_4__*) #1

declare dso_local i32 @bitmap_endwrite(i32, i32, i32, i32, i64) #1

declare dso_local i32 @md_write_end(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
