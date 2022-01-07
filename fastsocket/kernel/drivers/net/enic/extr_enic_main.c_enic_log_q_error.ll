; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/enic/extr_enic_main.c_enic_log_q_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/enic/extr_enic_main.c_enic_log_q_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enic = type { i32, i32, i32, i32*, i32* }

@.str = private unnamed_addr constant [24 x i8] c"WQ[%d] error_status %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"RQ[%d] error_status %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.enic*)* @enic_log_q_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enic_log_q_error(%struct.enic* %0) #0 {
  %2 = alloca %struct.enic*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.enic* %0, %struct.enic** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %29, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.enic*, %struct.enic** %2, align 8
  %8 = getelementptr inbounds %struct.enic, %struct.enic* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ult i32 %6, %9
  br i1 %10, label %11, label %32

11:                                               ; preds = %5
  %12 = load %struct.enic*, %struct.enic** %2, align 8
  %13 = getelementptr inbounds %struct.enic, %struct.enic* %12, i32 0, i32 4
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = call i64 @vnic_wq_error_status(i32* %17)
  store i64 %18, i64* %4, align 8
  %19 = load i64, i64* %4, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %11
  %22 = load %struct.enic*, %struct.enic** %2, align 8
  %23 = getelementptr inbounds %struct.enic, %struct.enic* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @netdev_err(i32 %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %25, i64 %26)
  br label %28

28:                                               ; preds = %21, %11
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %3, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %5

32:                                               ; preds = %5
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %57, %32
  %34 = load i32, i32* %3, align 4
  %35 = load %struct.enic*, %struct.enic** %2, align 8
  %36 = getelementptr inbounds %struct.enic, %struct.enic* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ult i32 %34, %37
  br i1 %38, label %39, label %60

39:                                               ; preds = %33
  %40 = load %struct.enic*, %struct.enic** %2, align 8
  %41 = getelementptr inbounds %struct.enic, %struct.enic* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %3, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = call i64 @vnic_rq_error_status(i32* %45)
  store i64 %46, i64* %4, align 8
  %47 = load i64, i64* %4, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %39
  %50 = load %struct.enic*, %struct.enic** %2, align 8
  %51 = getelementptr inbounds %struct.enic, %struct.enic* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %3, align 4
  %54 = load i64, i64* %4, align 8
  %55 = call i32 @netdev_err(i32 %52, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %53, i64 %54)
  br label %56

56:                                               ; preds = %49, %39
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %3, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %3, align 4
  br label %33

60:                                               ; preds = %33
  ret void
}

declare dso_local i64 @vnic_wq_error_status(i32*) #1

declare dso_local i32 @netdev_err(i32, i8*, i32, i64) #1

declare dso_local i64 @vnic_rq_error_status(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
