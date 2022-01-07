; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_sclp_cpi_sys.c_cpi_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_sclp_cpi_sys.c_cpi_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.completion = type { i32 }
%struct.sclp_req = type { i64, i64, %struct.completion* }
%struct.cpi_sccb = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@sclp_cpi_event = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@EVTYP_CTLPROGIDENT_MASK = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@SCLP_REQ_DONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"request failed (status=0x%02x)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"request failed with response code 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @cpi_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpi_req() #0 {
  %1 = alloca %struct.completion, align 4
  %2 = alloca %struct.sclp_req*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 @sclp_register(%struct.TYPE_6__* @sclp_cpi_event)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  br label %70

9:                                                ; preds = %0
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sclp_cpi_event, i32 0, i32 0), align 4
  %11 = load i32, i32* @EVTYP_CTLPROGIDENT_MASK, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = load i32, i32* @EOPNOTSUPP, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %68

17:                                               ; preds = %9
  %18 = call %struct.sclp_req* (...) @cpi_prepare_req()
  store %struct.sclp_req* %18, %struct.sclp_req** %2, align 8
  %19 = load %struct.sclp_req*, %struct.sclp_req** %2, align 8
  %20 = call i64 @IS_ERR(%struct.sclp_req* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load %struct.sclp_req*, %struct.sclp_req** %2, align 8
  %24 = call i32 @PTR_ERR(%struct.sclp_req* %23)
  store i32 %24, i32* %3, align 4
  br label %68

25:                                               ; preds = %17
  %26 = call i32 @init_completion(%struct.completion* %1)
  %27 = load %struct.sclp_req*, %struct.sclp_req** %2, align 8
  %28 = getelementptr inbounds %struct.sclp_req, %struct.sclp_req* %27, i32 0, i32 2
  store %struct.completion* %1, %struct.completion** %28, align 8
  %29 = load %struct.sclp_req*, %struct.sclp_req** %2, align 8
  %30 = call i32 @sclp_add_request(%struct.sclp_req* %29)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %65

34:                                               ; preds = %25
  %35 = call i32 @wait_for_completion(%struct.completion* %1)
  %36 = load %struct.sclp_req*, %struct.sclp_req** %2, align 8
  %37 = getelementptr inbounds %struct.sclp_req, %struct.sclp_req* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @SCLP_REQ_DONE, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %34
  %42 = load %struct.sclp_req*, %struct.sclp_req** %2, align 8
  %43 = getelementptr inbounds %struct.sclp_req, %struct.sclp_req* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = call i32 @pr_warning(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @EIO, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %65

49:                                               ; preds = %34
  %50 = load %struct.sclp_req*, %struct.sclp_req** %2, align 8
  %51 = getelementptr inbounds %struct.sclp_req, %struct.sclp_req* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to %struct.cpi_sccb*
  %54 = getelementptr inbounds %struct.cpi_sccb, %struct.cpi_sccb* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 32
  br i1 %58, label %59, label %64

59:                                               ; preds = %49
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @pr_warning(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @EIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %59, %49
  br label %65

65:                                               ; preds = %64, %41, %33
  %66 = load %struct.sclp_req*, %struct.sclp_req** %2, align 8
  %67 = call i32 @cpi_free_req(%struct.sclp_req* %66)
  br label %68

68:                                               ; preds = %65, %22, %14
  %69 = call i32 @sclp_unregister(%struct.TYPE_6__* @sclp_cpi_event)
  br label %70

70:                                               ; preds = %68, %8
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @sclp_register(%struct.TYPE_6__*) #1

declare dso_local %struct.sclp_req* @cpi_prepare_req(...) #1

declare dso_local i64 @IS_ERR(%struct.sclp_req*) #1

declare dso_local i32 @PTR_ERR(%struct.sclp_req*) #1

declare dso_local i32 @init_completion(%struct.completion*) #1

declare dso_local i32 @sclp_add_request(%struct.sclp_req*) #1

declare dso_local i32 @wait_for_completion(%struct.completion*) #1

declare dso_local i32 @pr_warning(i8*, i32) #1

declare dso_local i32 @cpi_free_req(%struct.sclp_req*) #1

declare dso_local i32 @sclp_unregister(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
