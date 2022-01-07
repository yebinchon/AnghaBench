; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_storvsc_drv.c_create_bounce_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_storvsc_drv.c_create_bounce_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i32 }
%struct.page = type { i32 }

@WRITE_TYPE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.scatterlist* (%struct.scatterlist*, i32, i32, i32)* @create_bounce_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.scatterlist* @create_bounce_buffer(%struct.scatterlist* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.scatterlist*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.scatterlist*, align 8
  %13 = alloca %struct.page*, align 8
  %14 = alloca i32, align 4
  store %struct.scatterlist* %0, %struct.scatterlist** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @WRITE_TYPE, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  br label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @PAGE_SIZE, align 4
  br label %21

21:                                               ; preds = %19, %18
  %22 = phi i32 [ 0, %18 ], [ %20, %19 ]
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @PAGE_SIZE, align 4
  %25 = call i32 @ALIGN(i32 %23, i32 %24)
  %26 = load i32, i32* @PAGE_SHIFT, align 4
  %27 = ashr i32 %25, %26
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @GFP_ATOMIC, align 4
  %30 = call %struct.scatterlist* @kcalloc(i32 %28, i32 4, i32 %29)
  store %struct.scatterlist* %30, %struct.scatterlist** %12, align 8
  %31 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %32 = icmp ne %struct.scatterlist* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %21
  store %struct.scatterlist* null, %struct.scatterlist** %5, align 8
  br label %65

34:                                               ; preds = %21
  %35 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @sg_init_table(%struct.scatterlist* %35, i32 %36)
  store i32 0, i32* %10, align 4
  br label %38

38:                                               ; preds = %56, %34
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %59

42:                                               ; preds = %38
  %43 = load i32, i32* @GFP_ATOMIC, align 4
  %44 = call %struct.page* @alloc_page(i32 %43)
  store %struct.page* %44, %struct.page** %13, align 8
  %45 = load %struct.page*, %struct.page** %13, align 8
  %46 = icmp ne %struct.page* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  br label %61

48:                                               ; preds = %42
  %49 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %49, i64 %51
  %53 = load %struct.page*, %struct.page** %13, align 8
  %54 = load i32, i32* %14, align 4
  %55 = call i32 @sg_set_page(%struct.scatterlist* %52, %struct.page* %53, i32 %54, i32 0)
  br label %56

56:                                               ; preds = %48
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %10, align 4
  br label %38

59:                                               ; preds = %38
  %60 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  store %struct.scatterlist* %60, %struct.scatterlist** %5, align 8
  br label %65

61:                                               ; preds = %47
  %62 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @destroy_bounce_buffer(%struct.scatterlist* %62, i32 %63)
  store %struct.scatterlist* null, %struct.scatterlist** %5, align 8
  br label %65

65:                                               ; preds = %61, %59, %33
  %66 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  ret %struct.scatterlist* %66
}

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local %struct.scatterlist* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i32 @sg_set_page(%struct.scatterlist*, %struct.page*, i32, i32) #1

declare dso_local i32 @destroy_bounce_buffer(%struct.scatterlist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
