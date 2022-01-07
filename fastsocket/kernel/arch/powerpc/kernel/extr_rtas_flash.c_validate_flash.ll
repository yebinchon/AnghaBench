; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_rtas_flash.c_validate_flash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_rtas_flash.c_validate_flash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtas_validate_flash_t = type { i32, i64, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"ibm,validate-flash-image\00", align 1
@rtas_data_buf_lock = common dso_local global i32 0, align 4
@rtas_data_buf = common dso_local global i32 0, align 4
@VALIDATE_BUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtas_validate_flash_t*)* @validate_flash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @validate_flash(%struct.rtas_validate_flash_t* %0) #0 {
  %2 = alloca %struct.rtas_validate_flash_t*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.rtas_validate_flash_t* %0, %struct.rtas_validate_flash_t** %2, align 8
  %6 = call i32 @rtas_token(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 %6, i32* %3, align 4
  store i64 0, i64* %5, align 8
  br label %7

7:                                                ; preds = %30, %1
  %8 = call i32 @spin_lock(i32* @rtas_data_buf_lock)
  %9 = load i32, i32* @rtas_data_buf, align 4
  %10 = load %struct.rtas_validate_flash_t*, %struct.rtas_validate_flash_t** %2, align 8
  %11 = getelementptr inbounds %struct.rtas_validate_flash_t, %struct.rtas_validate_flash_t* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @VALIDATE_BUF_SIZE, align 4
  %14 = call i32 @memcpy(i32 %9, i32 %12, i32 %13)
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @rtas_data_buf, align 4
  %17 = call i64 @__pa(i32 %16)
  %18 = trunc i64 %17 to i32
  %19 = load %struct.rtas_validate_flash_t*, %struct.rtas_validate_flash_t** %2, align 8
  %20 = getelementptr inbounds %struct.rtas_validate_flash_t, %struct.rtas_validate_flash_t* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @rtas_call(i32 %15, i32 2, i32 2, i32* %4, i32 %18, i32 %21)
  store i64 %22, i64* %5, align 8
  %23 = load %struct.rtas_validate_flash_t*, %struct.rtas_validate_flash_t** %2, align 8
  %24 = getelementptr inbounds %struct.rtas_validate_flash_t, %struct.rtas_validate_flash_t* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @rtas_data_buf, align 4
  %27 = load i32, i32* @VALIDATE_BUF_SIZE, align 4
  %28 = call i32 @memcpy(i32 %25, i32 %26, i32 %27)
  %29 = call i32 @spin_unlock(i32* @rtas_data_buf_lock)
  br label %30

30:                                               ; preds = %7
  %31 = load i64, i64* %5, align 8
  %32 = call i64 @rtas_busy_delay(i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %7, label %34

34:                                               ; preds = %30
  %35 = load i64, i64* %5, align 8
  %36 = load %struct.rtas_validate_flash_t*, %struct.rtas_validate_flash_t** %2, align 8
  %37 = getelementptr inbounds %struct.rtas_validate_flash_t, %struct.rtas_validate_flash_t* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.rtas_validate_flash_t*, %struct.rtas_validate_flash_t** %2, align 8
  %40 = getelementptr inbounds %struct.rtas_validate_flash_t, %struct.rtas_validate_flash_t* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  ret void
}

declare dso_local i32 @rtas_token(i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i64 @rtas_call(i32, i32, i32, i32*, i32, i32) #1

declare dso_local i64 @__pa(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @rtas_busy_delay(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
