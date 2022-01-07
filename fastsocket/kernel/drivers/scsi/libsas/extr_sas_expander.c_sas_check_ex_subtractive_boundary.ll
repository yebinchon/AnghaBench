; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_expander.c_sas_check_ex_subtractive_boundary.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_expander.c_sas_check_ex_subtractive_boundary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain_device = type { i64, i32*, %struct.expander_device }
%struct.expander_device = type { i32, %struct.ex_phy* }
%struct.ex_phy = type { i64, i64, i64, i32* }

@EDGE_DEV = common dso_local global i64 0, align 8
@PHY_VACANT = common dso_local global i64 0, align 8
@PHY_NOT_PRESENT = common dso_local global i64 0, align 8
@FANOUT_DEV = common dso_local global i64 0, align 8
@SUBTRACTIVE_ROUTING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [82 x i8] c"ex %016llx phy 0x%x diverges(%016llx) on subtractive boundary(%016llx). Disabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.domain_device*)* @sas_check_ex_subtractive_boundary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sas_check_ex_subtractive_boundary(%struct.domain_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.domain_device*, align 8
  %4 = alloca %struct.expander_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ex_phy*, align 8
  store %struct.domain_device* %0, %struct.domain_device** %3, align 8
  %8 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %9 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %8, i32 0, i32 2
  store %struct.expander_device* %9, %struct.expander_device** %4, align 8
  store i32* null, i32** %6, align 8
  %10 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %11 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @EDGE_DEV, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %99

16:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %95, %16
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.expander_device*, %struct.expander_device** %4, align 8
  %20 = getelementptr inbounds %struct.expander_device, %struct.expander_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %98

23:                                               ; preds = %17
  %24 = load %struct.expander_device*, %struct.expander_device** %4, align 8
  %25 = getelementptr inbounds %struct.expander_device, %struct.expander_device* %24, i32 0, i32 1
  %26 = load %struct.ex_phy*, %struct.ex_phy** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %26, i64 %28
  store %struct.ex_phy* %29, %struct.ex_phy** %7, align 8
  %30 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %31 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @PHY_VACANT, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %23
  %36 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %37 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PHY_NOT_PRESENT, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35, %23
  br label %95

42:                                               ; preds = %35
  %43 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %44 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @FANOUT_DEV, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %50 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @EDGE_DEV, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %94

54:                                               ; preds = %48, %42
  %55 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %56 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @SUBTRACTIVE_ROUTING, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %94

60:                                               ; preds = %54
  %61 = load i32*, i32** %6, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %68, label %63

63:                                               ; preds = %60
  %64 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %65 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %64, i32 0, i32 3
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  store i32* %67, i32** %6, align 8
  br label %93

68:                                               ; preds = %60
  %69 = load i32*, i32** %6, align 8
  %70 = call i64 @SAS_ADDR(i32* %69)
  %71 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %72 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %71, i32 0, i32 3
  %73 = load i32*, i32** %72, align 8
  %74 = call i64 @SAS_ADDR(i32* %73)
  %75 = icmp ne i64 %70, %74
  br i1 %75, label %76, label %92

76:                                               ; preds = %68
  %77 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %78 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = call i64 @SAS_ADDR(i32* %79)
  %81 = load i32, i32* %5, align 4
  %82 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %83 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %82, i32 0, i32 3
  %84 = load i32*, i32** %83, align 8
  %85 = call i64 @SAS_ADDR(i32* %84)
  %86 = load i32*, i32** %6, align 8
  %87 = call i64 @SAS_ADDR(i32* %86)
  %88 = call i32 @SAS_DPRINTK(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0), i64 %80, i32 %81, i64 %85, i64 %87)
  %89 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @sas_ex_disable_phy(%struct.domain_device* %89, i32 %90)
  br label %92

92:                                               ; preds = %76, %68
  br label %93

93:                                               ; preds = %92, %63
  br label %94

94:                                               ; preds = %93, %54, %48
  br label %95

95:                                               ; preds = %94, %41
  %96 = load i32, i32* %5, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %5, align 4
  br label %17

98:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %99

99:                                               ; preds = %98, %15
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i64 @SAS_ADDR(i32*) #1

declare dso_local i32 @SAS_DPRINTK(i8*, i64, i32, i64, i64) #1

declare dso_local i32 @sas_ex_disable_phy(%struct.domain_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
