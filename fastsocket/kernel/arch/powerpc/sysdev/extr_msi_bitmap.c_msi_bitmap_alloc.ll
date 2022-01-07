; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/extr_msi_bitmap.c_msi_bitmap_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/extr_msi_bitmap.c_msi_bitmap_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msi_bitmap = type { i32, i32, i32, i32 }
%struct.device_node = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"msi_bitmap: allocator bitmap size is 0x%x bytes\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"msi_bitmap: ENOMEM allocating allocator bitmap!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msi_bitmap_alloc(%struct.msi_bitmap* %0, i32 %1, %struct.device_node* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.msi_bitmap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i32, align 4
  store %struct.msi_bitmap* %0, %struct.msi_bitmap** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.device_node* %2, %struct.device_node** %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %4, align 4
  br label %46

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @BITS_TO_LONGS(i32 %15)
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 8
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i32 @zalloc_maybe_bootmem(i32 %22, i32 %23)
  %25 = load %struct.msi_bitmap*, %struct.msi_bitmap** %5, align 8
  %26 = getelementptr inbounds %struct.msi_bitmap, %struct.msi_bitmap* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load %struct.msi_bitmap*, %struct.msi_bitmap** %5, align 8
  %28 = getelementptr inbounds %struct.msi_bitmap, %struct.msi_bitmap* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %14
  %32 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %46

35:                                               ; preds = %14
  %36 = load %struct.msi_bitmap*, %struct.msi_bitmap** %5, align 8
  %37 = getelementptr inbounds %struct.msi_bitmap, %struct.msi_bitmap* %36, i32 0, i32 2
  %38 = call i32 @spin_lock_init(i32* %37)
  %39 = load %struct.device_node*, %struct.device_node** %7, align 8
  %40 = call i32 @of_node_get(%struct.device_node* %39)
  %41 = load %struct.msi_bitmap*, %struct.msi_bitmap** %5, align 8
  %42 = getelementptr inbounds %struct.msi_bitmap, %struct.msi_bitmap* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.msi_bitmap*, %struct.msi_bitmap** %5, align 8
  %45 = getelementptr inbounds %struct.msi_bitmap, %struct.msi_bitmap* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %35, %31, %11
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @BITS_TO_LONGS(i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @zalloc_maybe_bootmem(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @of_node_get(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
