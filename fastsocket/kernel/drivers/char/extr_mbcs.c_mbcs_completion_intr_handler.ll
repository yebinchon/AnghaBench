; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_mbcs.c_mbcs_completion_intr_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_mbcs.c_mbcs_completion_intr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbcs_soft = type { i32, i32, i32, i32, i32, i32, i8* }
%union.cm_status = type { i64 }
%union.cm_control = type { i8* }

@MBCS_CM_STATUS = common dso_local global i32 0, align 4
@MBCS_CM_CONTROL = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mbcs_completion_intr_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbcs_completion_intr_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mbcs_soft*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %union.cm_status, align 8
  %8 = alloca %union.cm_control, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.mbcs_soft*
  store %struct.mbcs_soft* %10, %struct.mbcs_soft** %5, align 8
  %11 = load %struct.mbcs_soft*, %struct.mbcs_soft** %5, align 8
  %12 = getelementptr inbounds %struct.mbcs_soft, %struct.mbcs_soft* %11, i32 0, i32 6
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load i32, i32* @MBCS_CM_STATUS, align 4
  %16 = call i8* @MBCS_MMR_GET(i8* %14, i32 %15)
  %17 = bitcast %union.cm_status* %7 to i8**
  store i8* %16, i8** %17, align 8
  %18 = bitcast %union.cm_status* %7 to i64*
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %2
  %22 = load i8*, i8** %6, align 8
  %23 = load i32, i32* @MBCS_CM_CONTROL, align 4
  %24 = call i8* @MBCS_MMR_GET(i8* %22, i32 %23)
  %25 = bitcast %union.cm_control* %8 to i8**
  store i8* %24, i8** %25, align 8
  %26 = bitcast %union.cm_control* %8 to i32*
  store i32 1, i32* %26, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* @MBCS_CM_CONTROL, align 4
  %29 = bitcast %union.cm_control* %8 to i8**
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @MBCS_MMR_SET(i8* %27, i32 %28, i8* %30)
  %32 = load %struct.mbcs_soft*, %struct.mbcs_soft** %5, align 8
  %33 = getelementptr inbounds %struct.mbcs_soft, %struct.mbcs_soft* %32, i32 0, i32 5
  %34 = call i32 @atomic_set(i32* %33, i32 1)
  %35 = load %struct.mbcs_soft*, %struct.mbcs_soft** %5, align 8
  %36 = getelementptr inbounds %struct.mbcs_soft, %struct.mbcs_soft* %35, i32 0, i32 4
  %37 = call i32 @wake_up(i32* %36)
  br label %38

38:                                               ; preds = %21, %2
  %39 = bitcast %union.cm_status* %7 to i64*
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %38
  %43 = load i8*, i8** %6, align 8
  %44 = load i32, i32* @MBCS_CM_CONTROL, align 4
  %45 = call i8* @MBCS_MMR_GET(i8* %43, i32 %44)
  %46 = bitcast %union.cm_control* %8 to i8**
  store i8* %45, i8** %46, align 8
  %47 = bitcast %union.cm_control* %8 to i32*
  store i32 1, i32* %47, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load i32, i32* @MBCS_CM_CONTROL, align 4
  %50 = bitcast %union.cm_control* %8 to i8**
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @MBCS_MMR_SET(i8* %48, i32 %49, i8* %51)
  %53 = load %struct.mbcs_soft*, %struct.mbcs_soft** %5, align 8
  %54 = getelementptr inbounds %struct.mbcs_soft, %struct.mbcs_soft* %53, i32 0, i32 3
  %55 = call i32 @atomic_set(i32* %54, i32 1)
  %56 = load %struct.mbcs_soft*, %struct.mbcs_soft** %5, align 8
  %57 = getelementptr inbounds %struct.mbcs_soft, %struct.mbcs_soft* %56, i32 0, i32 2
  %58 = call i32 @wake_up(i32* %57)
  br label %59

59:                                               ; preds = %42, %38
  %60 = bitcast %union.cm_status* %7 to i64*
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %80

63:                                               ; preds = %59
  %64 = load i8*, i8** %6, align 8
  %65 = load i32, i32* @MBCS_CM_CONTROL, align 4
  %66 = call i8* @MBCS_MMR_GET(i8* %64, i32 %65)
  %67 = bitcast %union.cm_control* %8 to i8**
  store i8* %66, i8** %67, align 8
  %68 = bitcast %union.cm_control* %8 to i32*
  store i32 1, i32* %68, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = load i32, i32* @MBCS_CM_CONTROL, align 4
  %71 = bitcast %union.cm_control* %8 to i8**
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @MBCS_MMR_SET(i8* %69, i32 %70, i8* %72)
  %74 = load %struct.mbcs_soft*, %struct.mbcs_soft** %5, align 8
  %75 = getelementptr inbounds %struct.mbcs_soft, %struct.mbcs_soft* %74, i32 0, i32 1
  %76 = call i32 @atomic_set(i32* %75, i32 1)
  %77 = load %struct.mbcs_soft*, %struct.mbcs_soft** %5, align 8
  %78 = getelementptr inbounds %struct.mbcs_soft, %struct.mbcs_soft* %77, i32 0, i32 0
  %79 = call i32 @wake_up(i32* %78)
  br label %80

80:                                               ; preds = %63, %59
  %81 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %81
}

declare dso_local i8* @MBCS_MMR_GET(i8*, i32) #1

declare dso_local i32 @MBCS_MMR_SET(i8*, i32, i8*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
