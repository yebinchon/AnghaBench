; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_mxl5007t.c_mxl5007t_write_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_mxl5007t.c_mxl5007t_write_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxl5007t_state = type { i32 }
%struct.reg_pair_t = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxl5007t_state*, %struct.reg_pair_t*)* @mxl5007t_write_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxl5007t_write_regs(%struct.mxl5007t_state* %0, %struct.reg_pair_t* %1) #0 {
  %3 = alloca %struct.mxl5007t_state*, align 8
  %4 = alloca %struct.reg_pair_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mxl5007t_state* %0, %struct.mxl5007t_state** %3, align 8
  store %struct.reg_pair_t* %1, %struct.reg_pair_t** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %30, %2
  %8 = load i32, i32* %6, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %28

10:                                               ; preds = %7
  %11 = load %struct.reg_pair_t*, %struct.reg_pair_t** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.reg_pair_t, %struct.reg_pair_t* %11, i64 %13
  %15 = getelementptr inbounds %struct.reg_pair_t, %struct.reg_pair_t* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %10
  %19 = load %struct.reg_pair_t*, %struct.reg_pair_t** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.reg_pair_t, %struct.reg_pair_t* %19, i64 %21
  %23 = getelementptr inbounds %struct.reg_pair_t, %struct.reg_pair_t* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %18, %10
  %27 = phi i1 [ true, %10 ], [ %25, %18 ]
  br label %28

28:                                               ; preds = %26, %7
  %29 = phi i1 [ false, %7 ], [ %27, %26 ]
  br i1 %29, label %30, label %47

30:                                               ; preds = %28
  %31 = load %struct.mxl5007t_state*, %struct.mxl5007t_state** %3, align 8
  %32 = load %struct.reg_pair_t*, %struct.reg_pair_t** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.reg_pair_t, %struct.reg_pair_t* %32, i64 %34
  %36 = getelementptr inbounds %struct.reg_pair_t, %struct.reg_pair_t* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.reg_pair_t*, %struct.reg_pair_t** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.reg_pair_t, %struct.reg_pair_t* %38, i64 %40
  %42 = getelementptr inbounds %struct.reg_pair_t, %struct.reg_pair_t* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @mxl5007t_write_reg(%struct.mxl5007t_state* %31, i64 %37, i64 %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %5, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %7

47:                                               ; preds = %28
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local i32 @mxl5007t_write_reg(%struct.mxl5007t_state*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
