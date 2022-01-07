; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_super_written.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_super_written.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, %struct.md_rdev* }
%struct.md_rdev = type { %struct.mddev* }
%struct.mddev = type { i32, i32 }

@BIO_UPTODATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"md: super_written gets error=%d, uptodate=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*, i32)* @super_written to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @super_written(%struct.bio* %0, i32 %1) #0 {
  %3 = alloca %struct.bio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.md_rdev*, align 8
  %6 = alloca %struct.mddev*, align 8
  store %struct.bio* %0, %struct.bio** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.bio*, %struct.bio** %3, align 8
  %8 = getelementptr inbounds %struct.bio, %struct.bio* %7, i32 0, i32 1
  %9 = load %struct.md_rdev*, %struct.md_rdev** %8, align 8
  store %struct.md_rdev* %9, %struct.md_rdev** %5, align 8
  %10 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %11 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %10, i32 0, i32 0
  %12 = load %struct.mddev*, %struct.mddev** %11, align 8
  store %struct.mddev* %12, %struct.mddev** %6, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @BIO_UPTODATE, align 4
  %17 = load %struct.bio*, %struct.bio** %3, align 8
  %18 = getelementptr inbounds %struct.bio, %struct.bio* %17, i32 0, i32 0
  %19 = call i32 @test_bit(i32 %16, i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %36, label %21

21:                                               ; preds = %15, %2
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @BIO_UPTODATE, align 4
  %24 = load %struct.bio*, %struct.bio** %3, align 8
  %25 = getelementptr inbounds %struct.bio, %struct.bio* %24, i32 0, i32 0
  %26 = call i32 @test_bit(i32 %23, i32* %25)
  %27 = call i32 @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %26)
  %28 = load i32, i32* @BIO_UPTODATE, align 4
  %29 = load %struct.bio*, %struct.bio** %3, align 8
  %30 = getelementptr inbounds %struct.bio, %struct.bio* %29, i32 0, i32 0
  %31 = call i32 @test_bit(i32 %28, i32* %30)
  %32 = call i32 @WARN_ON(i32 %31)
  %33 = load %struct.mddev*, %struct.mddev** %6, align 8
  %34 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %35 = call i32 @md_error(%struct.mddev* %33, %struct.md_rdev* %34)
  br label %36

36:                                               ; preds = %21, %15
  %37 = load %struct.mddev*, %struct.mddev** %6, align 8
  %38 = getelementptr inbounds %struct.mddev, %struct.mddev* %37, i32 0, i32 1
  %39 = call i64 @atomic_dec_and_test(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load %struct.mddev*, %struct.mddev** %6, align 8
  %43 = getelementptr inbounds %struct.mddev, %struct.mddev* %42, i32 0, i32 0
  %44 = call i32 @wake_up(i32* %43)
  br label %45

45:                                               ; preds = %41, %36
  %46 = load %struct.bio*, %struct.bio** %3, align 8
  %47 = call i32 @bio_put(%struct.bio* %46)
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @printk(i8*, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @md_error(%struct.mddev*, %struct.md_rdev*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
