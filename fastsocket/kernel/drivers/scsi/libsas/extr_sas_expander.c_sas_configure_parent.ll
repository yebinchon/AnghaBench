; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_expander.c_sas_configure_parent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_expander.c_sas_configure_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain_device = type { i32, %struct.domain_device*, %struct.expander_device }
%struct.expander_device = type { i64, i32, %struct.ex_phy* }
%struct.ex_phy = type { i64, i32 }

@.str = private unnamed_addr constant [47 x i8] c"ex %016llx has self-configuring routing table\0A\00", align 1
@TABLE_ROUTING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.domain_device*, %struct.domain_device*, i32*, i32)* @sas_configure_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sas_configure_parent(%struct.domain_device* %0, %struct.domain_device* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.domain_device*, align 8
  %7 = alloca %struct.domain_device*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.expander_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ex_phy*, align 8
  store %struct.domain_device* %0, %struct.domain_device** %6, align 8
  store %struct.domain_device* %1, %struct.domain_device** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.domain_device*, %struct.domain_device** %6, align 8
  %15 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %14, i32 0, i32 2
  store %struct.expander_device* %15, %struct.expander_device** %10, align 8
  store i32 0, i32* %11, align 4
  %16 = load %struct.domain_device*, %struct.domain_device** %6, align 8
  %17 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %16, i32 0, i32 1
  %18 = load %struct.domain_device*, %struct.domain_device** %17, align 8
  %19 = icmp ne %struct.domain_device* %18, null
  br i1 %19, label %20, label %33

20:                                               ; preds = %4
  %21 = load %struct.domain_device*, %struct.domain_device** %6, align 8
  %22 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %21, i32 0, i32 1
  %23 = load %struct.domain_device*, %struct.domain_device** %22, align 8
  %24 = load %struct.domain_device*, %struct.domain_device** %6, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @sas_configure_parent(%struct.domain_device* %23, %struct.domain_device* %24, i32* %25, i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %5, align 4
  br label %90

32:                                               ; preds = %20
  br label %33

33:                                               ; preds = %32, %4
  %34 = load %struct.expander_device*, %struct.expander_device** %10, align 8
  %35 = getelementptr inbounds %struct.expander_device, %struct.expander_device* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load %struct.domain_device*, %struct.domain_device** %6, align 8
  %40 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @SAS_ADDR(i32 %41)
  %43 = call i32 @SAS_DPRINTK(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %42)
  store i32 0, i32* %5, align 4
  br label %90

44:                                               ; preds = %33
  store i32 0, i32* %12, align 4
  br label %45

45:                                               ; preds = %85, %44
  %46 = load i32, i32* %12, align 4
  %47 = load %struct.expander_device*, %struct.expander_device** %10, align 8
  %48 = getelementptr inbounds %struct.expander_device, %struct.expander_device* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %88

51:                                               ; preds = %45
  %52 = load %struct.expander_device*, %struct.expander_device** %10, align 8
  %53 = getelementptr inbounds %struct.expander_device, %struct.expander_device* %52, i32 0, i32 2
  %54 = load %struct.ex_phy*, %struct.ex_phy** %53, align 8
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %54, i64 %56
  store %struct.ex_phy* %57, %struct.ex_phy** %13, align 8
  %58 = load %struct.ex_phy*, %struct.ex_phy** %13, align 8
  %59 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @TABLE_ROUTING, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %84

63:                                               ; preds = %51
  %64 = load %struct.ex_phy*, %struct.ex_phy** %13, align 8
  %65 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @SAS_ADDR(i32 %66)
  %68 = load %struct.domain_device*, %struct.domain_device** %7, align 8
  %69 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @SAS_ADDR(i32 %70)
  %72 = icmp eq i64 %67, %71
  br i1 %72, label %73, label %84

73:                                               ; preds = %63
  %74 = load %struct.domain_device*, %struct.domain_device** %6, align 8
  %75 = load i32, i32* %12, align 4
  %76 = load i32*, i32** %8, align 8
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @sas_configure_phy(%struct.domain_device* %74, i32 %75, i32* %76, i32 %77)
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %73
  %82 = load i32, i32* %11, align 4
  store i32 %82, i32* %5, align 4
  br label %90

83:                                               ; preds = %73
  br label %84

84:                                               ; preds = %83, %63, %51
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %12, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %12, align 4
  br label %45

88:                                               ; preds = %45
  %89 = load i32, i32* %11, align 4
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %88, %81, %38, %30
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i32 @SAS_DPRINTK(i8*, i64) #1

declare dso_local i64 @SAS_ADDR(i32) #1

declare dso_local i32 @sas_configure_phy(%struct.domain_device*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
