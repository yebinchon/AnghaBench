; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_brd.c_brd_do_bvec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_brd.c_brd_do_bvec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brd_device = type { i32 }
%struct.page = type { i32 }

@READ = common dso_local global i32 0, align 4
@KM_USER0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brd_device*, %struct.page*, i32, i32, i32, i32)* @brd_do_bvec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brd_do_bvec(%struct.brd_device* %0, %struct.page* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.brd_device*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.brd_device* %0, %struct.brd_device** %7, align 8
  store %struct.page* %1, %struct.page** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* %11, align 4
  %16 = load i32, i32* @READ, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %6
  %19 = load %struct.brd_device*, %struct.brd_device** %7, align 8
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @copy_to_brd_setup(%struct.brd_device* %19, i32 %20, i32 %21)
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %60

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %26, %6
  %28 = load %struct.page*, %struct.page** %8, align 8
  %29 = load i32, i32* @KM_USER0, align 4
  %30 = call i8* @kmap_atomic(%struct.page* %28, i32 %29)
  store i8* %30, i8** %13, align 8
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @READ, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %27
  %35 = load i8*, i8** %13, align 8
  %36 = load i32, i32* %10, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr i8, i8* %35, i64 %37
  %39 = load %struct.brd_device*, %struct.brd_device** %7, align 8
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @copy_from_brd(i8* %38, %struct.brd_device* %39, i32 %40, i32 %41)
  %43 = load %struct.page*, %struct.page** %8, align 8
  %44 = call i32 @flush_dcache_page(%struct.page* %43)
  br label %56

45:                                               ; preds = %27
  %46 = load %struct.page*, %struct.page** %8, align 8
  %47 = call i32 @flush_dcache_page(%struct.page* %46)
  %48 = load %struct.brd_device*, %struct.brd_device** %7, align 8
  %49 = load i8*, i8** %13, align 8
  %50 = load i32, i32* %10, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr i8, i8* %49, i64 %51
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @copy_to_brd(%struct.brd_device* %48, i8* %52, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %45, %34
  %57 = load i8*, i8** %13, align 8
  %58 = load i32, i32* @KM_USER0, align 4
  %59 = call i32 @kunmap_atomic(i8* %57, i32 %58)
  br label %60

60:                                               ; preds = %56, %25
  %61 = load i32, i32* %14, align 4
  ret i32 %61
}

declare dso_local i32 @copy_to_brd_setup(%struct.brd_device*, i32, i32) #1

declare dso_local i8* @kmap_atomic(%struct.page*, i32) #1

declare dso_local i32 @copy_from_brd(i8*, %struct.brd_device*, i32, i32) #1

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

declare dso_local i32 @copy_to_brd(%struct.brd_device*, i8*, i32, i32) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
