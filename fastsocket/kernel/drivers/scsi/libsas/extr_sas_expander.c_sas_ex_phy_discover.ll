; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_expander.c_sas_ex_phy_discover.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_expander.c_sas_ex_phy_discover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain_device = type { %struct.expander_device }
%struct.expander_device = type { i32 }

@DISCOVER_REQ_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DISCOVER_RESP_SIZE = common dso_local global i32 0, align 4
@SMP_DISCOVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sas_ex_phy_discover(%struct.domain_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.domain_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.expander_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.domain_device* %0, %struct.domain_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %12 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %11, i32 0, i32 0
  store %struct.expander_device* %12, %struct.expander_device** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load i32, i32* @DISCOVER_REQ_SIZE, align 4
  %14 = call i32* @alloc_smp_req(i32 %13)
  store i32* %14, i32** %8, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %76

20:                                               ; preds = %2
  %21 = load i32, i32* @DISCOVER_RESP_SIZE, align 4
  %22 = call i32* @alloc_smp_resp(i32 %21)
  store i32* %22, i32** %9, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @kfree(i32* %26)
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %76

30:                                               ; preds = %20
  %31 = load i32, i32* @SMP_DISCOVER, align 4
  %32 = load i32*, i32** %8, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp sle i32 0, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %30
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.expander_device*, %struct.expander_device** %6, align 8
  %39 = getelementptr inbounds %struct.expander_device, %struct.expander_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @sas_ex_phy_discover_helper(%struct.domain_device* %43, i32* %44, i32* %45, i32 %46)
  store i32 %47, i32* %7, align 4
  br label %69

48:                                               ; preds = %36, %30
  store i32 0, i32* %10, align 4
  br label %49

49:                                               ; preds = %65, %48
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.expander_device*, %struct.expander_device** %6, align 8
  %52 = getelementptr inbounds %struct.expander_device, %struct.expander_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %68

55:                                               ; preds = %49
  %56 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @sas_ex_phy_discover_helper(%struct.domain_device* %56, i32* %57, i32* %58, i32 %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  br label %70

64:                                               ; preds = %55
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %10, align 4
  br label %49

68:                                               ; preds = %49
  br label %69

69:                                               ; preds = %68, %42
  br label %70

70:                                               ; preds = %69, %63
  %71 = load i32*, i32** %9, align 8
  %72 = call i32 @kfree(i32* %71)
  %73 = load i32*, i32** %8, align 8
  %74 = call i32 @kfree(i32* %73)
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %70, %25, %17
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32* @alloc_smp_req(i32) #1

declare dso_local i32* @alloc_smp_resp(i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @sas_ex_phy_discover_helper(%struct.domain_device*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
