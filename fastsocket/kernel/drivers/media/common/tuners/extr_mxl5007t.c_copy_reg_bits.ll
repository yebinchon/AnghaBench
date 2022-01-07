; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_mxl5007t.c_copy_reg_bits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_mxl5007t.c_copy_reg_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reg_pair_t = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.reg_pair_t*, %struct.reg_pair_t*)* @copy_reg_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_reg_bits(%struct.reg_pair_t* %0, %struct.reg_pair_t* %1) #0 {
  %3 = alloca %struct.reg_pair_t*, align 8
  %4 = alloca %struct.reg_pair_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.reg_pair_t* %0, %struct.reg_pair_t** %3, align 8
  store %struct.reg_pair_t* %1, %struct.reg_pair_t** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %73, %2
  %8 = load %struct.reg_pair_t*, %struct.reg_pair_t** %3, align 8
  %9 = load i32, i32* %5, align 4
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.reg_pair_t, %struct.reg_pair_t* %8, i64 %10
  %12 = getelementptr inbounds %struct.reg_pair_t, %struct.reg_pair_t* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %7
  %16 = load %struct.reg_pair_t*, %struct.reg_pair_t** %3, align 8
  %17 = load i32, i32* %5, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.reg_pair_t, %struct.reg_pair_t* %16, i64 %18
  %20 = getelementptr inbounds %struct.reg_pair_t, %struct.reg_pair_t* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br label %23

23:                                               ; preds = %15, %7
  %24 = phi i1 [ true, %7 ], [ %22, %15 ]
  br i1 %24, label %25, label %76

25:                                               ; preds = %23
  br label %26

26:                                               ; preds = %58, %25
  %27 = load %struct.reg_pair_t*, %struct.reg_pair_t** %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.reg_pair_t, %struct.reg_pair_t* %27, i64 %29
  %31 = getelementptr inbounds %struct.reg_pair_t, %struct.reg_pair_t* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %26
  %35 = load %struct.reg_pair_t*, %struct.reg_pair_t** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.reg_pair_t, %struct.reg_pair_t* %35, i64 %37
  %39 = getelementptr inbounds %struct.reg_pair_t, %struct.reg_pair_t* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br label %42

42:                                               ; preds = %34, %26
  %43 = phi i1 [ true, %26 ], [ %41, %34 ]
  br i1 %43, label %44, label %73

44:                                               ; preds = %42
  %45 = load %struct.reg_pair_t*, %struct.reg_pair_t** %3, align 8
  %46 = load i32, i32* %5, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.reg_pair_t, %struct.reg_pair_t* %45, i64 %47
  %49 = getelementptr inbounds %struct.reg_pair_t, %struct.reg_pair_t* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.reg_pair_t*, %struct.reg_pair_t** %4, align 8
  %52 = load i32, i32* %6, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.reg_pair_t, %struct.reg_pair_t* %51, i64 %53
  %55 = getelementptr inbounds %struct.reg_pair_t, %struct.reg_pair_t* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %50, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %44
  %59 = load i32, i32* %6, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %26

61:                                               ; preds = %44
  %62 = load %struct.reg_pair_t*, %struct.reg_pair_t** %3, align 8
  %63 = load i32, i32* %5, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.reg_pair_t, %struct.reg_pair_t* %62, i64 %64
  %66 = getelementptr inbounds %struct.reg_pair_t, %struct.reg_pair_t* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.reg_pair_t*, %struct.reg_pair_t** %4, align 8
  %69 = load i32, i32* %6, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.reg_pair_t, %struct.reg_pair_t* %68, i64 %70
  %72 = getelementptr inbounds %struct.reg_pair_t, %struct.reg_pair_t* %71, i32 0, i32 1
  store i64 %67, i64* %72, align 8
  br label %73

73:                                               ; preds = %61, %42
  %74 = load i32, i32* %5, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %7

76:                                               ; preds = %23
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
