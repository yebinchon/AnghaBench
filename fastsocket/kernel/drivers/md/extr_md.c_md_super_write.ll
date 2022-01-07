; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_md_super_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_md_super_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32 }
%struct.md_rdev = type { i64, i64 }
%struct.page = type { i32 }
%struct.bio = type { i32, %struct.md_rdev*, i32, i64 }

@GFP_NOIO = common dso_local global i32 0, align 4
@super_written = common dso_local global i32 0, align 4
@WRITE_FLUSH_FUA = common dso_local global i32 0, align 4
@BIO_RW_NOIDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @md_super_write(%struct.mddev* %0, %struct.md_rdev* %1, i32 %2, i32 %3, %struct.page* %4) #0 {
  %6 = alloca %struct.mddev*, align 8
  %7 = alloca %struct.md_rdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.page*, align 8
  %11 = alloca %struct.bio*, align 8
  store %struct.mddev* %0, %struct.mddev** %6, align 8
  store %struct.md_rdev* %1, %struct.md_rdev** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.page* %4, %struct.page** %10, align 8
  %12 = load i32, i32* @GFP_NOIO, align 4
  %13 = load %struct.mddev*, %struct.mddev** %6, align 8
  %14 = call %struct.bio* @bio_alloc_mddev(i32 %12, i32 1, %struct.mddev* %13)
  store %struct.bio* %14, %struct.bio** %11, align 8
  %15 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %16 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %5
  %20 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %21 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  br label %27

23:                                               ; preds = %5
  %24 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %25 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  br label %27

27:                                               ; preds = %23, %19
  %28 = phi i64 [ %22, %19 ], [ %26, %23 ]
  %29 = load %struct.bio*, %struct.bio** %11, align 8
  %30 = getelementptr inbounds %struct.bio, %struct.bio* %29, i32 0, i32 3
  store i64 %28, i64* %30, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.bio*, %struct.bio** %11, align 8
  %33 = getelementptr inbounds %struct.bio, %struct.bio* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load %struct.bio*, %struct.bio** %11, align 8
  %35 = load %struct.page*, %struct.page** %10, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @bio_add_page(%struct.bio* %34, %struct.page* %35, i32 %36, i32 0)
  %38 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %39 = load %struct.bio*, %struct.bio** %11, align 8
  %40 = getelementptr inbounds %struct.bio, %struct.bio* %39, i32 0, i32 1
  store %struct.md_rdev* %38, %struct.md_rdev** %40, align 8
  %41 = load i32, i32* @super_written, align 4
  %42 = load %struct.bio*, %struct.bio** %11, align 8
  %43 = getelementptr inbounds %struct.bio, %struct.bio* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.mddev*, %struct.mddev** %6, align 8
  %45 = getelementptr inbounds %struct.mddev, %struct.mddev* %44, i32 0, i32 0
  %46 = call i32 @atomic_inc(i32* %45)
  %47 = load i32, i32* @WRITE_FLUSH_FUA, align 4
  %48 = load i32, i32* @BIO_RW_NOIDLE, align 4
  %49 = shl i32 1, %48
  %50 = xor i32 %49, -1
  %51 = and i32 %47, %50
  %52 = load %struct.bio*, %struct.bio** %11, align 8
  %53 = call i32 @submit_bio(i32 %51, %struct.bio* %52)
  ret void
}

declare dso_local %struct.bio* @bio_alloc_mddev(i32, i32, %struct.mddev*) #1

declare dso_local i32 @bio_add_page(%struct.bio*, %struct.page*, i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @submit_bio(i32, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
