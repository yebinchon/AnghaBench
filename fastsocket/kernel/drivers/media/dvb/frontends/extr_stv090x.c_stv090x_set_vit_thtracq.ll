; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv090x.c_stv090x_set_vit_thtracq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv090x.c_stv090x_set_vit_thtracq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv090x_state = type { i32 }

@VTH12 = common dso_local global i32 0, align 4
@VTH23 = common dso_local global i32 0, align 4
@VTH34 = common dso_local global i32 0, align 4
@VTH56 = common dso_local global i32 0, align 4
@VTH67 = common dso_local global i32 0, align 4
@VTH78 = common dso_local global i32 0, align 4
@FE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"I/O error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv090x_state*)* @stv090x_set_vit_thtracq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv090x_set_vit_thtracq(%struct.stv090x_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stv090x_state*, align 8
  store %struct.stv090x_state* %0, %struct.stv090x_state** %3, align 8
  %4 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %5 = load i32, i32* @VTH12, align 4
  %6 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %4, i32 %5, i32 208)
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %40

9:                                                ; preds = %1
  %10 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %11 = load i32, i32* @VTH23, align 4
  %12 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %10, i32 %11, i32 125)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  br label %40

15:                                               ; preds = %9
  %16 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %17 = load i32, i32* @VTH34, align 4
  %18 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %16, i32 %17, i32 83)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %40

21:                                               ; preds = %15
  %22 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %23 = load i32, i32* @VTH56, align 4
  %24 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %22, i32 %23, i32 47)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %40

27:                                               ; preds = %21
  %28 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %29 = load i32, i32* @VTH67, align 4
  %30 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %28, i32 %29, i32 36)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %40

33:                                               ; preds = %27
  %34 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %35 = load i32, i32* @VTH78, align 4
  %36 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %34, i32 %35, i32 31)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %40

39:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %43

40:                                               ; preds = %38, %32, %26, %20, %14, %8
  %41 = load i32, i32* @FE_ERROR, align 4
  %42 = call i32 @dprintk(i32 %41, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %43

43:                                               ; preds = %40, %39
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state*, i32, i32) #1

declare dso_local i32 @dprintk(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
