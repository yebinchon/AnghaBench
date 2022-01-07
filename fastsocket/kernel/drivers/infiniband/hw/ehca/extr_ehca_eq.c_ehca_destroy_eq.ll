; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_eq.c_ehca_destroy_eq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_eq.c_ehca_destroy_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehca_shca = type { i32, i32 }
%struct.ehca_eq = type { i32, i32, i64, i32 }

@shca_list_lock = common dso_local global i32 0, align 4
@H_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Can't free EQ resources.\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ehca_destroy_eq(%struct.ehca_shca* %0, %struct.ehca_eq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ehca_shca*, align 8
  %5 = alloca %struct.ehca_eq*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.ehca_shca* %0, %struct.ehca_shca** %4, align 8
  store %struct.ehca_eq* %1, %struct.ehca_eq** %5, align 8
  %8 = load %struct.ehca_eq*, %struct.ehca_eq** %5, align 8
  %9 = getelementptr inbounds %struct.ehca_eq, %struct.ehca_eq* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.ehca_shca*, %struct.ehca_shca** %4, align 8
  %12 = bitcast %struct.ehca_shca* %11 to i8*
  %13 = call i32 @ibmebus_free_irq(i32 %10, i8* %12)
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @spin_lock_irqsave(i32* @shca_list_lock, i64 %14)
  %16 = load %struct.ehca_eq*, %struct.ehca_eq** %5, align 8
  %17 = getelementptr inbounds %struct.ehca_eq, %struct.ehca_eq* %16, i32 0, i32 2
  store i64 0, i64* %17, align 8
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @spin_unlock_irqrestore(i32* @shca_list_lock, i64 %18)
  %20 = load %struct.ehca_eq*, %struct.ehca_eq** %5, align 8
  %21 = getelementptr inbounds %struct.ehca_eq, %struct.ehca_eq* %20, i32 0, i32 1
  %22 = call i32 @tasklet_kill(i32* %21)
  %23 = load %struct.ehca_shca*, %struct.ehca_shca** %4, align 8
  %24 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ehca_eq*, %struct.ehca_eq** %5, align 8
  %27 = call i64 @hipz_h_destroy_eq(i32 %25, %struct.ehca_eq* %26)
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* @H_SUCCESS, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %2
  %32 = load %struct.ehca_shca*, %struct.ehca_shca** %4, align 8
  %33 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %32, i32 0, i32 0
  %34 = call i32 @ehca_err(i32* %33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %41

37:                                               ; preds = %2
  %38 = load %struct.ehca_eq*, %struct.ehca_eq** %5, align 8
  %39 = getelementptr inbounds %struct.ehca_eq, %struct.ehca_eq* %38, i32 0, i32 0
  %40 = call i32 @ipz_queue_dtor(i32* null, i32* %39)
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %37, %31
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @ibmebus_free_irq(i32, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i64 @hipz_h_destroy_eq(i32, %struct.ehca_eq*) #1

declare dso_local i32 @ehca_err(i32*, i8*) #1

declare dso_local i32 @ipz_queue_dtor(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
