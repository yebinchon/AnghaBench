; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_hd.c_reset_hd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_hd.c_reset_hd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hd_i_struct = type { i32, i32, i32, i64, i32 }

@reset_hd.i = internal global i32 0, align 4
@reset = common dso_local global i64 0, align 8
@NR_HD = common dso_local global i32 0, align 4
@hd_info = common dso_local global %struct.hd_i_struct* null, align 8
@ATA_CMD_INIT_DEV_PARAMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @reset_hd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_hd() #0 {
  %1 = alloca %struct.hd_i_struct*, align 8
  br label %2

2:                                                ; preds = %45, %11, %0
  %3 = load i64, i64* @reset, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  store i64 0, i64* @reset, align 8
  store i32 -1, i32* @reset_hd.i, align 4
  %6 = call i32 (...) @reset_controller()
  br label %13

7:                                                ; preds = %2
  %8 = call i32 (...) @check_status()
  %9 = load i64, i64* @reset, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  br label %2

12:                                               ; preds = %7
  br label %13

13:                                               ; preds = %12, %5
  %14 = load i32, i32* @reset_hd.i, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* @reset_hd.i, align 4
  %16 = load i32, i32* @NR_HD, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %47

18:                                               ; preds = %13
  %19 = load %struct.hd_i_struct*, %struct.hd_i_struct** @hd_info, align 8
  %20 = load i32, i32* @reset_hd.i, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.hd_i_struct, %struct.hd_i_struct* %19, i64 %21
  store %struct.hd_i_struct* %22, %struct.hd_i_struct** %1, align 8
  %23 = load %struct.hd_i_struct*, %struct.hd_i_struct** %1, align 8
  %24 = getelementptr inbounds %struct.hd_i_struct, %struct.hd_i_struct* %23, i32 0, i32 1
  store i32 1, i32* %24, align 4
  %25 = load %struct.hd_i_struct*, %struct.hd_i_struct** %1, align 8
  %26 = getelementptr inbounds %struct.hd_i_struct, %struct.hd_i_struct* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load %struct.hd_i_struct*, %struct.hd_i_struct** %1, align 8
  %28 = load %struct.hd_i_struct*, %struct.hd_i_struct** %1, align 8
  %29 = getelementptr inbounds %struct.hd_i_struct, %struct.hd_i_struct* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.hd_i_struct*, %struct.hd_i_struct** %1, align 8
  %32 = getelementptr inbounds %struct.hd_i_struct, %struct.hd_i_struct* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.hd_i_struct*, %struct.hd_i_struct** %1, align 8
  %35 = getelementptr inbounds %struct.hd_i_struct, %struct.hd_i_struct* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %36, 1
  %38 = load %struct.hd_i_struct*, %struct.hd_i_struct** %1, align 8
  %39 = getelementptr inbounds %struct.hd_i_struct, %struct.hd_i_struct* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @ATA_CMD_INIT_DEV_PARAMS, align 4
  %42 = call i32 @hd_out(%struct.hd_i_struct* %27, i32 %30, i32 %33, i64 %37, i32 %40, i32 %41, void (...)* bitcast (void ()* @reset_hd to void (...)*))
  %43 = load i64, i64* @reset, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %18
  br label %2

46:                                               ; preds = %18
  br label %49

47:                                               ; preds = %13
  %48 = call i32 (...) @hd_request()
  br label %49

49:                                               ; preds = %47, %46
  ret void
}

declare dso_local i32 @reset_controller(...) #1

declare dso_local i32 @check_status(...) #1

declare dso_local i32 @hd_out(%struct.hd_i_struct*, i32, i32, i64, i32, i32, void (...)*) #1

declare dso_local i32 @hd_request(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
