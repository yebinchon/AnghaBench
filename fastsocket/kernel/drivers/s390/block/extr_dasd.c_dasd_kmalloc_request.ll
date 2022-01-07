; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd.c_dasd_kmalloc_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd.c_dasd_kmalloc_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_ccw_req = type { i32, i32, %struct.dasd_ccw_req*, i32* }
%struct.dasd_device = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@DASD_CQR_FLAGS_USE_ERP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dasd_ccw_req* @dasd_kmalloc_request(i32 %0, i32 %1, i32 %2, %struct.dasd_device* %3) #0 {
  %5 = alloca %struct.dasd_ccw_req*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dasd_device*, align 8
  %10 = alloca %struct.dasd_ccw_req*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.dasd_device* %3, %struct.dasd_device** %9, align 8
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @PAGE_SIZE, align 4
  %13 = icmp sgt i32 %11, %12
  br i1 %13, label %21, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 4
  %18 = load i32, i32* @PAGE_SIZE, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp ugt i64 %17, %19
  br label %21

21:                                               ; preds = %14, %4
  %22 = phi i1 [ true, %4 ], [ %20, %14 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load i32, i32* @GFP_ATOMIC, align 4
  %26 = call i8* @kzalloc(i32 24, i32 %25)
  %27 = bitcast i8* %26 to %struct.dasd_ccw_req*
  store %struct.dasd_ccw_req* %27, %struct.dasd_ccw_req** %10, align 8
  %28 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %10, align 8
  %29 = icmp eq %struct.dasd_ccw_req* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %21
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  %33 = call %struct.dasd_ccw_req* @ERR_PTR(i32 %32)
  store %struct.dasd_ccw_req* %33, %struct.dasd_ccw_req** %5, align 8
  br label %98

34:                                               ; preds = %21
  %35 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %10, align 8
  %36 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %35, i32 0, i32 2
  store %struct.dasd_ccw_req* null, %struct.dasd_ccw_req** %36, align 8
  %37 = load i32, i32* %7, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %58

39:                                               ; preds = %34
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @GFP_ATOMIC, align 4
  %42 = load i32, i32* @GFP_DMA, align 4
  %43 = or i32 %41, %42
  %44 = call %struct.dasd_ccw_req* @kcalloc(i32 %40, i32 4, i32 %43)
  %45 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %10, align 8
  %46 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %45, i32 0, i32 2
  store %struct.dasd_ccw_req* %44, %struct.dasd_ccw_req** %46, align 8
  %47 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %10, align 8
  %48 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %47, i32 0, i32 2
  %49 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %48, align 8
  %50 = icmp eq %struct.dasd_ccw_req* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %39
  %52 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %10, align 8
  %53 = call i32 @kfree(%struct.dasd_ccw_req* %52)
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  %56 = call %struct.dasd_ccw_req* @ERR_PTR(i32 %55)
  store %struct.dasd_ccw_req* %56, %struct.dasd_ccw_req** %5, align 8
  br label %98

57:                                               ; preds = %39
  br label %58

58:                                               ; preds = %57, %34
  %59 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %10, align 8
  %60 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %59, i32 0, i32 3
  store i32* null, i32** %60, align 8
  %61 = load i32, i32* %8, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %87

63:                                               ; preds = %58
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @GFP_ATOMIC, align 4
  %66 = load i32, i32* @GFP_DMA, align 4
  %67 = or i32 %65, %66
  %68 = call i8* @kzalloc(i32 %64, i32 %67)
  %69 = bitcast i8* %68 to i32*
  %70 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %10, align 8
  %71 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %70, i32 0, i32 3
  store i32* %69, i32** %71, align 8
  %72 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %10, align 8
  %73 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %72, i32 0, i32 3
  %74 = load i32*, i32** %73, align 8
  %75 = icmp eq i32* %74, null
  br i1 %75, label %76, label %86

76:                                               ; preds = %63
  %77 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %10, align 8
  %78 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %77, i32 0, i32 2
  %79 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %78, align 8
  %80 = call i32 @kfree(%struct.dasd_ccw_req* %79)
  %81 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %10, align 8
  %82 = call i32 @kfree(%struct.dasd_ccw_req* %81)
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  %85 = call %struct.dasd_ccw_req* @ERR_PTR(i32 %84)
  store %struct.dasd_ccw_req* %85, %struct.dasd_ccw_req** %5, align 8
  br label %98

86:                                               ; preds = %63
  br label %87

87:                                               ; preds = %86, %58
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %10, align 8
  %90 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load i32, i32* @DASD_CQR_FLAGS_USE_ERP, align 4
  %92 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %10, align 8
  %93 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %92, i32 0, i32 1
  %94 = call i32 @set_bit(i32 %91, i32* %93)
  %95 = load %struct.dasd_device*, %struct.dasd_device** %9, align 8
  %96 = call i32 @dasd_get_device(%struct.dasd_device* %95)
  %97 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %10, align 8
  store %struct.dasd_ccw_req* %97, %struct.dasd_ccw_req** %5, align 8
  br label %98

98:                                               ; preds = %87, %76, %51, %30
  %99 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %5, align 8
  ret %struct.dasd_ccw_req* %99
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local %struct.dasd_ccw_req* @ERR_PTR(i32) #1

declare dso_local %struct.dasd_ccw_req* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.dasd_ccw_req*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @dasd_get_device(%struct.dasd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
