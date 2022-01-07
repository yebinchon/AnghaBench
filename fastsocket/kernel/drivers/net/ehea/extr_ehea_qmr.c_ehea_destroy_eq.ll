; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_qmr.c_ehea_destroy_eq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_qmr.c_ehea_destroy_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehea_eq = type { i32, i32, i32 }

@NORMAL_FREE = common dso_local global i32 0, align 4
@H_R_STATE = common dso_local global i64 0, align 8
@FORCE_FREE = common dso_local global i32 0, align 4
@H_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"destroy EQ failed\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ehea_destroy_eq(%struct.ehea_eq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ehea_eq*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.ehea_eq* %0, %struct.ehea_eq** %3, align 8
  %7 = load %struct.ehea_eq*, %struct.ehea_eq** %3, align 8
  %8 = icmp ne %struct.ehea_eq* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %40

10:                                               ; preds = %1
  %11 = load %struct.ehea_eq*, %struct.ehea_eq** %3, align 8
  %12 = getelementptr inbounds %struct.ehea_eq, %struct.ehea_eq* %11, i32 0, i32 2
  %13 = call i32 @hcp_epas_dtor(i32* %12)
  %14 = load %struct.ehea_eq*, %struct.ehea_eq** %3, align 8
  %15 = load i32, i32* @NORMAL_FREE, align 4
  %16 = call i64 @ehea_destroy_eq_res(%struct.ehea_eq* %14, i32 %15)
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @H_R_STATE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %10
  %21 = load %struct.ehea_eq*, %struct.ehea_eq** %3, align 8
  %22 = getelementptr inbounds %struct.ehea_eq, %struct.ehea_eq* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ehea_eq*, %struct.ehea_eq** %3, align 8
  %25 = getelementptr inbounds %struct.ehea_eq, %struct.ehea_eq* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ehea_error_data(i32 %23, i32 %26, i64* %5, i64* %6)
  %28 = load %struct.ehea_eq*, %struct.ehea_eq** %3, align 8
  %29 = load i32, i32* @FORCE_FREE, align 4
  %30 = call i64 @ehea_destroy_eq_res(%struct.ehea_eq* %28, i32 %29)
  store i64 %30, i64* %4, align 8
  br label %31

31:                                               ; preds = %20, %10
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* @H_SUCCESS, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = call i32 @ehea_error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %40

39:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %35, %9
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @hcp_epas_dtor(i32*) #1

declare dso_local i64 @ehea_destroy_eq_res(%struct.ehea_eq*, i32) #1

declare dso_local i32 @ehea_error_data(i32, i32, i64*, i64*) #1

declare dso_local i32 @ehea_error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
