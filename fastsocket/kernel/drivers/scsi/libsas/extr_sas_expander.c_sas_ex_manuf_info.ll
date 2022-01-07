; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_expander.c_sas_ex_manuf_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_expander.c_sas_ex_manuf_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain_device = type { i32 }

@MI_REQ_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MI_RESP_SIZE = common dso_local global i32 0, align 4
@SMP_REPORT_MANUF_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"MI: ex %016llx failed:0x%x\0A\00", align 1
@SMP_RESP_FUNC_ACC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"MI ex %016llx returned SMP result:0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.domain_device*)* @sas_ex_manuf_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sas_ex_manuf_info(%struct.domain_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.domain_device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.domain_device* %0, %struct.domain_device** %3, align 8
  %7 = load i32, i32* @MI_REQ_SIZE, align 4
  %8 = call i32* @alloc_smp_req(i32 %7)
  store i32* %8, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %69

14:                                               ; preds = %1
  %15 = load i32, i32* @MI_RESP_SIZE, align 4
  %16 = call i32* @alloc_smp_resp(i32 %15)
  store i32* %16, i32** %5, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @kfree(i32* %20)
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %69

24:                                               ; preds = %14
  %25 = load i32, i32* @SMP_REPORT_MANUF_INFO, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* @MI_REQ_SIZE, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* @MI_RESP_SIZE, align 4
  %33 = call i32 @smp_execute_task(%struct.domain_device* %28, i32* %29, i32 %30, i32* %31, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %24
  %37 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %38 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @SAS_ADDR(i32 %39)
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @SAS_DPRINTK(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %41)
  br label %63

43:                                               ; preds = %24
  %44 = load i32*, i32** %5, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @SMP_RESP_FUNC_ACC, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %43
  %50 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %51 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @SAS_ADDR(i32 %52)
  %54 = load i32*, i32** %5, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @SAS_DPRINTK(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %56)
  br label %63

58:                                               ; preds = %43
  br label %59

59:                                               ; preds = %58
  %60 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 @ex_assign_manuf_info(%struct.domain_device* %60, i32* %61)
  br label %63

63:                                               ; preds = %59, %49, %36
  %64 = load i32*, i32** %4, align 8
  %65 = call i32 @kfree(i32* %64)
  %66 = load i32*, i32** %5, align 8
  %67 = call i32 @kfree(i32* %66)
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %63, %19, %11
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32* @alloc_smp_req(i32) #1

declare dso_local i32* @alloc_smp_resp(i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @smp_execute_task(%struct.domain_device*, i32*, i32, i32*, i32) #1

declare dso_local i32 @SAS_DPRINTK(i8*, i32, i32) #1

declare dso_local i32 @SAS_ADDR(i32) #1

declare dso_local i32 @ex_assign_manuf_info(%struct.domain_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
