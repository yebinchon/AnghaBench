; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libsrp.c_srp_iu_pool_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libsrp.c_srp_iu_pool_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srp_queue = type { %struct.iu_entry*, %struct.iu_entry*, i32, i32 }
%struct.iu_entry = type { %struct.srp_buf* }
%struct.srp_buf = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.srp_queue*, i64, %struct.srp_buf**)* @srp_iu_pool_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srp_iu_pool_alloc(%struct.srp_queue* %0, i64 %1, %struct.srp_buf** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.srp_queue*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.srp_buf**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.iu_entry*, align 8
  store %struct.srp_queue* %0, %struct.srp_queue** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.srp_buf** %2, %struct.srp_buf*** %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i8* @kcalloc(i64 %10, i32 8, i32 %11)
  %13 = bitcast i8* %12 to %struct.iu_entry*
  %14 = load %struct.srp_queue*, %struct.srp_queue** %5, align 8
  %15 = getelementptr inbounds %struct.srp_queue, %struct.srp_queue* %14, i32 0, i32 0
  store %struct.iu_entry* %13, %struct.iu_entry** %15, align 8
  %16 = load %struct.srp_queue*, %struct.srp_queue** %5, align 8
  %17 = getelementptr inbounds %struct.srp_queue, %struct.srp_queue* %16, i32 0, i32 0
  %18 = load %struct.iu_entry*, %struct.iu_entry** %17, align 8
  %19 = icmp ne %struct.iu_entry* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %97

23:                                               ; preds = %3
  %24 = load i64, i64* %6, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i8* @kcalloc(i64 %24, i32 8, i32 %25)
  %27 = bitcast i8* %26 to %struct.iu_entry*
  %28 = load %struct.srp_queue*, %struct.srp_queue** %5, align 8
  %29 = getelementptr inbounds %struct.srp_queue, %struct.srp_queue* %28, i32 0, i32 1
  store %struct.iu_entry* %27, %struct.iu_entry** %29, align 8
  %30 = load %struct.srp_queue*, %struct.srp_queue** %5, align 8
  %31 = getelementptr inbounds %struct.srp_queue, %struct.srp_queue* %30, i32 0, i32 1
  %32 = load %struct.iu_entry*, %struct.iu_entry** %31, align 8
  %33 = icmp ne %struct.iu_entry* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %23
  br label %90

35:                                               ; preds = %23
  %36 = load %struct.srp_queue*, %struct.srp_queue** %5, align 8
  %37 = getelementptr inbounds %struct.srp_queue, %struct.srp_queue* %36, i32 0, i32 3
  %38 = call i32 @spin_lock_init(i32* %37)
  %39 = load %struct.srp_queue*, %struct.srp_queue** %5, align 8
  %40 = getelementptr inbounds %struct.srp_queue, %struct.srp_queue* %39, i32 0, i32 0
  %41 = load %struct.iu_entry*, %struct.iu_entry** %40, align 8
  %42 = bitcast %struct.iu_entry* %41 to i8*
  %43 = load i64, i64* %6, align 8
  %44 = mul i64 %43, 8
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = load %struct.srp_queue*, %struct.srp_queue** %5, align 8
  %47 = getelementptr inbounds %struct.srp_queue, %struct.srp_queue* %46, i32 0, i32 3
  %48 = call i32 @kfifo_init(i8* %42, i64 %44, i32 %45, i32* %47)
  %49 = load %struct.srp_queue*, %struct.srp_queue** %5, align 8
  %50 = getelementptr inbounds %struct.srp_queue, %struct.srp_queue* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load %struct.srp_queue*, %struct.srp_queue** %5, align 8
  %52 = getelementptr inbounds %struct.srp_queue, %struct.srp_queue* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @IS_ERR(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %35
  br label %85

57:                                               ; preds = %35
  store i32 0, i32* %8, align 4
  %58 = load %struct.srp_queue*, %struct.srp_queue** %5, align 8
  %59 = getelementptr inbounds %struct.srp_queue, %struct.srp_queue* %58, i32 0, i32 1
  %60 = load %struct.iu_entry*, %struct.iu_entry** %59, align 8
  store %struct.iu_entry* %60, %struct.iu_entry** %9, align 8
  br label %61

61:                                               ; preds = %81, %57
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = load i64, i64* %6, align 8
  %65 = icmp ult i64 %63, %64
  br i1 %65, label %66, label %84

66:                                               ; preds = %61
  %67 = load %struct.srp_queue*, %struct.srp_queue** %5, align 8
  %68 = getelementptr inbounds %struct.srp_queue, %struct.srp_queue* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = bitcast %struct.iu_entry** %9 to i8*
  %71 = call i32 @__kfifo_put(i32 %69, i8* %70, i32 8)
  %72 = load %struct.srp_buf**, %struct.srp_buf*** %7, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.srp_buf*, %struct.srp_buf** %72, i64 %74
  %76 = load %struct.srp_buf*, %struct.srp_buf** %75, align 8
  %77 = load %struct.iu_entry*, %struct.iu_entry** %9, align 8
  %78 = getelementptr inbounds %struct.iu_entry, %struct.iu_entry* %77, i32 0, i32 0
  store %struct.srp_buf* %76, %struct.srp_buf** %78, align 8
  %79 = load %struct.iu_entry*, %struct.iu_entry** %9, align 8
  %80 = getelementptr inbounds %struct.iu_entry, %struct.iu_entry* %79, i32 1
  store %struct.iu_entry* %80, %struct.iu_entry** %9, align 8
  br label %81

81:                                               ; preds = %66
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %8, align 4
  br label %61

84:                                               ; preds = %61
  store i32 0, i32* %4, align 4
  br label %97

85:                                               ; preds = %56
  %86 = load %struct.srp_queue*, %struct.srp_queue** %5, align 8
  %87 = getelementptr inbounds %struct.srp_queue, %struct.srp_queue* %86, i32 0, i32 1
  %88 = load %struct.iu_entry*, %struct.iu_entry** %87, align 8
  %89 = call i32 @kfree(%struct.iu_entry* %88)
  br label %90

90:                                               ; preds = %85, %34
  %91 = load %struct.srp_queue*, %struct.srp_queue** %5, align 8
  %92 = getelementptr inbounds %struct.srp_queue, %struct.srp_queue* %91, i32 0, i32 0
  %93 = load %struct.iu_entry*, %struct.iu_entry** %92, align 8
  %94 = call i32 @kfree(%struct.iu_entry* %93)
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %90, %84, %20
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i8* @kcalloc(i64, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @kfifo_init(i8*, i64, i32, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @__kfifo_put(i32, i8*, i32) #1

declare dso_local i32 @kfree(%struct.iu_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
