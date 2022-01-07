; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_ap_bus.c_ap_init_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_ap_bus.c_ap_init_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ap_queue_status = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@AP_MAX_RESET = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ap_interrupt_indicator = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Registering adapter interrupts for AP %d failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ap_init_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ap_init_queue(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ap_queue_status, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ap_queue_status, align 4
  %8 = alloca %struct.ap_queue_status, align 4
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* @ENODEV, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %2, align 4
  %12 = call i64 @ap_reset_queue(i32 %11)
  %13 = bitcast %struct.ap_queue_status* %7 to i64*
  store i64 %12, i64* %13, align 4
  %14 = bitcast %struct.ap_queue_status* %3 to i8*
  %15 = bitcast %struct.ap_queue_status* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 %15, i64 8, i1 false)
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %60, %1
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @AP_MAX_RESET, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %63

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.ap_queue_status, %struct.ap_queue_status* %3, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %35 [
    i32 130, label %23
    i32 129, label %29
    i32 131, label %29
    i32 132, label %29
    i32 128, label %31
    i32 133, label %34
  ]

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.ap_queue_status, %struct.ap_queue_status* %3, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %27, %23
  br label %36

29:                                               ; preds = %20, %20, %20
  %30 = load i32, i32* @AP_MAX_RESET, align 4
  store i32 %30, i32* %6, align 4
  br label %36

31:                                               ; preds = %20
  %32 = load i32, i32* @EBUSY, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %20, %31
  br label %35

35:                                               ; preds = %20, %34
  br label %36

36:                                               ; preds = %35, %29, %28
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp ne i32 %37, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @EBUSY, align 4
  %44 = sub nsw i32 0, %43
  %45 = icmp ne i32 %42, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %63

47:                                               ; preds = %41, %36
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @AP_MAX_RESET, align 4
  %50 = sub nsw i32 %49, 1
  %51 = icmp slt i32 %48, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = call i32 @udelay(i32 5)
  %54 = load i32, i32* %2, align 4
  %55 = call i64 @ap_test_queue(i32 %54, i32* %5, i32* %5)
  %56 = bitcast %struct.ap_queue_status* %8 to i64*
  store i64 %55, i64* %56, align 4
  %57 = bitcast %struct.ap_queue_status* %3 to i8*
  %58 = bitcast %struct.ap_queue_status* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %57, i8* align 4 %58, i64 8, i1 false)
  br label %59

59:                                               ; preds = %52, %47
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %16

63:                                               ; preds = %46, %16
  %64 = load i32, i32* %4, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %63
  %67 = call i64 (...) @ap_using_interrupts()
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %66
  %70 = load i32, i32* %2, align 4
  %71 = load i32, i32* @ap_interrupt_indicator, align 4
  %72 = call i32 @ap_queue_enable_interruption(i32 %70, i32 %71)
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* %4, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = load i32, i32* %2, align 4
  %77 = call i32 @AP_QID_DEVICE(i32 %76)
  %78 = call i32 @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %75, %69
  br label %80

80:                                               ; preds = %79, %66, %63
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i64 @ap_reset_queue(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @ap_test_queue(i32, i32*, i32*) #1

declare dso_local i64 @ap_using_interrupts(...) #1

declare dso_local i32 @ap_queue_enable_interruption(i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @AP_QID_DEVICE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
