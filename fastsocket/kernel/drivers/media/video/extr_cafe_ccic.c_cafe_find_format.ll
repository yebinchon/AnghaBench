; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cafe_ccic.c_cafe_find_format.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cafe_ccic.c_cafe_find_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cafe_format_struct = type { i64 }

@N_CAFE_FMTS = common dso_local global i32 0, align 4
@cafe_formats = common dso_local global %struct.cafe_format_struct* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cafe_format_struct* (i64)* @cafe_find_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cafe_format_struct* @cafe_find_format(i64 %0) #0 {
  %2 = alloca %struct.cafe_format_struct*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %24, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @N_CAFE_FMTS, align 4
  %8 = icmp ult i32 %6, %7
  br i1 %8, label %9, label %27

9:                                                ; preds = %5
  %10 = load %struct.cafe_format_struct*, %struct.cafe_format_struct** @cafe_formats, align 8
  %11 = load i32, i32* %4, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.cafe_format_struct, %struct.cafe_format_struct* %10, i64 %12
  %14 = getelementptr inbounds %struct.cafe_format_struct, %struct.cafe_format_struct* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %3, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %9
  %19 = load %struct.cafe_format_struct*, %struct.cafe_format_struct** @cafe_formats, align 8
  %20 = load i32, i32* %4, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.cafe_format_struct, %struct.cafe_format_struct* %19, i64 %21
  store %struct.cafe_format_struct* %22, %struct.cafe_format_struct** %2, align 8
  br label %29

23:                                               ; preds = %9
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %4, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %5

27:                                               ; preds = %5
  %28 = load %struct.cafe_format_struct*, %struct.cafe_format_struct** @cafe_formats, align 8
  store %struct.cafe_format_struct* %28, %struct.cafe_format_struct** %2, align 8
  br label %29

29:                                               ; preds = %27, %18
  %30 = load %struct.cafe_format_struct*, %struct.cafe_format_struct** %2, align 8
  ret %struct.cafe_format_struct* %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
